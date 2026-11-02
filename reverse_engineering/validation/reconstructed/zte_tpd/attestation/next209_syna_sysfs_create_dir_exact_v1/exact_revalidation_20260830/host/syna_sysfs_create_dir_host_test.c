#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct kobject {
	int token;
};

struct device {
	struct kobject kobj;
};

struct platform_device {
	uint8_t reserved_0000[0x10];
	struct device dev;
};

struct syna_tcm {
	uint8_t reserved_0000[0x398];
	struct kobject *sysfs_dir;
};

struct attribute_group {
	int token;
};

_Static_assert(offsetof(struct platform_device, dev) == 0x10,
	       "platform_device.dev offset");
_Static_assert(offsetof(struct syna_tcm, sysfs_dir) == 0x398,
	       "syna_tcm.sysfs_dir offset");

enum event_id {
	EVENT_KOBJECT_CREATE,
	EVENT_SYSFS_GROUP_CREATE,
	EVENT_TESTING_CREATE,
	EVENT_PRINTK,
	EVENT_SYSFS_GROUP_REMOVE,
	EVENT_KOBJECT_PUT,
};

struct event {
	enum event_id id;
	const void *arg0;
	const void *arg1;
};

struct attribute_group attr_group = { .token = 0x47 };

static struct event events[16];
static size_t event_count;
static struct kobject created_object = { .token = 0x91 };
static struct kobject *create_result;
static int group_result;
static int testing_result;
static struct syna_tcm *testing_tcm;
static char last_log[160];

static void record_event(enum event_id id, const void *arg0, const void *arg1)
{
	if (event_count >= sizeof(events) / sizeof(events[0])) {
		fprintf(stderr, "event overflow\n");
		exit(2);
	}
	events[event_count++] = (struct event){
		.id = id,
		.arg0 = arg0,
		.arg1 = arg1,
	};
}

struct kobject *kobject_create_and_add(const char *name,
				      struct kobject *parent)
{
	record_event(EVENT_KOBJECT_CREATE, name, parent);
	return create_result;
}

int sysfs_create_group(struct kobject *kobj,
		       const struct attribute_group *group)
{
	record_event(EVENT_SYSFS_GROUP_CREATE, kobj, group);
	return group_result;
}

int syna_testing_create_dir(struct syna_tcm *tcm)
{
	testing_tcm = tcm;
	record_event(EVENT_TESTING_CREATE, tcm, NULL);
	return testing_result;
}

int printk(const char *format, ...)
{
	va_list arguments;

	record_event(EVENT_PRINTK, format, NULL);
	va_start(arguments, format);
	vsnprintf(last_log, sizeof(last_log), format, arguments);
	va_end(arguments);
	return (int)strlen(last_log);
}

void sysfs_remove_group(struct kobject *kobj,
			const struct attribute_group *group)
{
	record_event(EVENT_SYSFS_GROUP_REMOVE, kobj, group);
}

void kobject_put(struct kobject *kobj)
{
	record_event(EVENT_KOBJECT_PUT, kobj, NULL);
}

#include "../../../reconstructed/zte_tpd/syna_sysfs_create_dir.c"

static void fail(const char *case_name, const char *message)
{
	fprintf(stderr, "FAIL %s: %s\n", case_name, message);
	exit(1);
}

static void expect(int condition, const char *case_name, const char *message)
{
	if (!condition)
		fail(case_name, message);
}

static void reset_state(struct syna_tcm *tcm)
{
	memset(tcm, 0xa5, sizeof(*tcm));
	memset(events, 0, sizeof(events));
	event_count = 0;
	create_result = &created_object;
	group_result = 0;
	testing_result = 0;
	testing_tcm = NULL;
	last_log[0] = '\0';
}

static void expect_event(const char *case_name, size_t index,
			 enum event_id id, const void *arg0,
			 const void *arg1)
{
	expect(index < event_count, case_name, "missing event");
	expect(events[index].id == id, case_name, "event id mismatch");
	expect(events[index].arg0 == arg0, case_name, "event arg0 mismatch");
	expect(events[index].arg1 == arg1, case_name, "event arg1 mismatch");
}

static void test_directory_failure(void)
{
	const char *case_name = "directory_failure";
	struct platform_device parent = { 0 };
	struct syna_tcm tcm;
	int result;

	reset_state(&tcm);
	create_result = NULL;
	result = syna_sysfs_create_dir(&tcm, &parent);

	expect(result == -20, case_name, "return mismatch");
	expect(tcm.sysfs_dir == NULL, case_name, "sysfs_dir was not stored");
	expect(event_count == 2, case_name, "event count mismatch");
	expect_event(case_name, 0, EVENT_KOBJECT_CREATE, "sysfs",
		     &parent.dev.kobj);
	expect(events[1].id == EVENT_PRINTK, case_name, "printk order mismatch");
	expect(strcmp(last_log,
		      "\0013[error] syna_sysfs_create_dir: "
		      "Fail to create sysfs directory\n") == 0,
	       case_name, "log mismatch");
}

static void test_group_failure(void)
{
	const char *case_name = "group_failure";
	struct platform_device parent = { 0 };
	struct syna_tcm tcm;
	int result;

	reset_state(&tcm);
	group_result = -31;
	result = syna_sysfs_create_dir(&tcm, &parent);

	expect(result == -31, case_name, "return mismatch");
	expect(tcm.sysfs_dir == &created_object, case_name,
	       "sysfs_dir mismatch");
	expect(event_count == 4, case_name, "event count mismatch");
	expect_event(case_name, 0, EVENT_KOBJECT_CREATE, "sysfs",
		     &parent.dev.kobj);
	expect_event(case_name, 1, EVENT_SYSFS_GROUP_CREATE, &created_object,
		     &attr_group);
	expect(events[2].id == EVENT_PRINTK, case_name, "printk order mismatch");
	expect_event(case_name, 3, EVENT_KOBJECT_PUT, &created_object, NULL);
	expect(strcmp(last_log,
		      "\0013[error] syna_sysfs_create_dir: "
		      "Fail to create sysfs group\n") == 0,
	       case_name, "log mismatch");
}

static void test_testing_failure(void)
{
	const char *case_name = "testing_failure";
	struct platform_device parent = { 0 };
	struct syna_tcm tcm;
	int result;

	reset_state(&tcm);
	testing_result = -42;
	result = syna_sysfs_create_dir(&tcm, &parent);

	expect(result == -42, case_name, "return mismatch");
	expect(tcm.sysfs_dir == &created_object, case_name,
	       "sysfs_dir mismatch");
	expect(testing_tcm == &tcm, case_name, "testing tcm mismatch");
	expect(event_count == 6, case_name, "event count mismatch");
	expect_event(case_name, 0, EVENT_KOBJECT_CREATE, "sysfs",
		     &parent.dev.kobj);
	expect_event(case_name, 1, EVENT_SYSFS_GROUP_CREATE, &created_object,
		     &attr_group);
	expect_event(case_name, 2, EVENT_TESTING_CREATE, &tcm, NULL);
	expect(events[3].id == EVENT_PRINTK, case_name, "printk order mismatch");
	expect_event(case_name, 4, EVENT_SYSFS_GROUP_REMOVE, &created_object,
		     &attr_group);
	expect_event(case_name, 5, EVENT_KOBJECT_PUT, &created_object, NULL);
	expect(strcmp(last_log,
		      "\0013[error] syna_sysfs_create_dir: "
		      "Fail to create testing sysfs\n") == 0,
	       case_name, "log mismatch");
}

static void test_zero_success(void)
{
	const char *case_name = "zero_success";
	struct platform_device parent = { 0 };
	struct syna_tcm tcm;
	int result;

	reset_state(&tcm);
	result = syna_sysfs_create_dir(&tcm, &parent);

	expect(result == 0, case_name, "return mismatch");
	expect(tcm.sysfs_dir == &created_object, case_name,
	       "sysfs_dir mismatch");
	expect(event_count == 3, case_name, "event count mismatch");
	expect_event(case_name, 0, EVENT_KOBJECT_CREATE, "sysfs",
		     &parent.dev.kobj);
	expect_event(case_name, 1, EVENT_SYSFS_GROUP_CREATE, &created_object,
		     &attr_group);
	expect_event(case_name, 2, EVENT_TESTING_CREATE, &tcm, NULL);
	expect(last_log[0] == '\0', case_name, "unexpected log");
}

static void test_positive_success(void)
{
	const char *case_name = "positive_success";
	struct platform_device parent = { 0 };
	struct syna_tcm tcm;
	int result;

	reset_state(&tcm);
	group_result = 7;
	testing_result = 11;
	result = syna_sysfs_create_dir(&tcm, &parent);

	expect(result == 0, case_name, "positive result was not normalized");
	expect(event_count == 3, case_name, "event count mismatch");
	expect_event(case_name, 2, EVENT_TESTING_CREATE, &tcm, NULL);
	expect(last_log[0] == '\0', case_name, "unexpected log");
}

int main(void)
{
	test_directory_failure();
	test_group_failure();
	test_testing_failure();
	test_zero_success();
	test_positive_success();
	puts("PASS syna_sysfs_create_dir host tests (5 cases)");
	return 0;
}
