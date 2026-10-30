#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define EINVAL 22

struct kobject {
	int token;
};

struct syna_tcm {
	uint8_t reserved_0000[0x398];
	struct kobject *sysfs_dir;
	struct kobject *utility_dir;
	struct kobject *testing_dir;
};

struct attribute_group {
	int token;
};

_Static_assert(offsetof(struct syna_tcm, sysfs_dir) == 0x398,
	       "syna_tcm.sysfs_dir offset");
_Static_assert(offsetof(struct syna_tcm, testing_dir) == 0x3a8,
	       "syna_tcm.testing_dir offset");

enum event_id {
	EVENT_KOBJECT_CREATE,
	EVENT_SYSFS_GROUP_CREATE,
	EVENT_PRINTK,
	EVENT_KOBJECT_PUT,
};

struct event {
	enum event_id id;
	const void *arg0;
	const void *arg1;
};

struct attribute_group attr_testing_group = { .token = 0x53 };

static struct event events[8];
static size_t event_count;
static struct kobject created_object = { .token = 0x95 };
static struct kobject *create_result;
static int group_result;
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

struct kobject *kobject_create_and_add(const char *name, struct kobject *parent)
{
	record_event(EVENT_KOBJECT_CREATE, name, parent);
	return create_result;
}

int sysfs_create_group(struct kobject *kobj, const struct attribute_group *group)
{
	record_event(EVENT_SYSFS_GROUP_CREATE, kobj, group);
	return group_result;
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

void kobject_put(struct kobject *kobj)
{
	record_event(EVENT_KOBJECT_PUT, kobj, NULL);
}

#include "../../../reconstructed/zte_tpd/syna_testing_create_dir.c"

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
	last_log[0] = '\0';
}

static void expect_event(const char *case_name, size_t index,
			 enum event_id id, const void *arg0, const void *arg1)
{
	expect(index < event_count, case_name, "missing event");
	expect(events[index].id == id, case_name, "event id mismatch");
	expect(events[index].arg0 == arg0, case_name, "event arg0 mismatch");
	expect(events[index].arg1 == arg1, case_name, "event arg1 mismatch");
}

static void test_directory_failure(void)
{
	const char *case_name = "directory_failure";
	struct syna_tcm tcm;
	struct kobject parent = { .token = 0x12 };
	int result;

	reset_state(&tcm);
	tcm.sysfs_dir = &parent;
	create_result = NULL;
	result = syna_testing_create_dir(&tcm);

	expect(result == -22, case_name, "return mismatch");
	expect(tcm.testing_dir == NULL, case_name, "testing_dir was not stored");
	expect(event_count == 2, case_name, "event count mismatch");
	expect_event(case_name, 0, EVENT_KOBJECT_CREATE, "testing", &parent);
	expect(events[1].id == EVENT_PRINTK, case_name, "printk order mismatch");
	expect(strcmp(last_log,
		      "\0013[error] syna_testing_create_dir: "
		      "Fail to create testing directory\n") == 0,
	       case_name, "log mismatch");
}

static void test_group_failure(void)
{
	const char *case_name = "group_failure";
	struct syna_tcm tcm;
	struct kobject parent = { .token = 0x13 };
	int result;

	reset_state(&tcm);
	tcm.sysfs_dir = &parent;
	group_result = -31;
	result = syna_testing_create_dir(&tcm);

	expect(result == -31, case_name, "return mismatch");
	expect(tcm.testing_dir == &created_object, case_name,
	       "testing_dir mismatch");
	expect(event_count == 4, case_name, "event count mismatch");
	expect_event(case_name, 0, EVENT_KOBJECT_CREATE, "testing", &parent);
	expect_event(case_name, 1, EVENT_SYSFS_GROUP_CREATE, &created_object,
		     &attr_testing_group);
	expect(events[2].id == EVENT_PRINTK, case_name, "printk order mismatch");
	expect_event(case_name, 3, EVENT_KOBJECT_PUT, &created_object, NULL);
	expect(strcmp(last_log,
		      "\0013[error] syna_testing_create_dir: "
		      "Fail to create sysfs group\n") == 0,
	       case_name, "log mismatch");
}

static void test_zero_success(void)
{
	const char *case_name = "zero_success";
	struct syna_tcm tcm;
	struct kobject parent = { .token = 0x14 };
	int result;

	reset_state(&tcm);
	tcm.sysfs_dir = &parent;
	result = syna_testing_create_dir(&tcm);

	expect(result == 0, case_name, "return mismatch");
	expect(tcm.testing_dir == &created_object, case_name,
	       "testing_dir mismatch");
	expect(event_count == 2, case_name, "event count mismatch");
	expect_event(case_name, 0, EVENT_KOBJECT_CREATE, "testing", &parent);
	expect_event(case_name, 1, EVENT_SYSFS_GROUP_CREATE, &created_object,
		     &attr_testing_group);
	expect(last_log[0] == '\0', case_name, "unexpected log");
}

static void test_positive_success(void)
{
	const char *case_name = "positive_success";
	struct syna_tcm tcm;
	struct kobject parent = { .token = 0x15 };
	int result;

	reset_state(&tcm);
	tcm.sysfs_dir = &parent;
	group_result = 7;
	result = syna_testing_create_dir(&tcm);

	expect(result == 0, case_name, "positive result was not normalized");
	expect(event_count == 2, case_name, "event count mismatch");
	expect(last_log[0] == '\0', case_name, "unexpected log");
}

int main(void)
{
	test_directory_failure();
	test_group_failure();
	test_zero_success();
	test_positive_success();
	puts("PASS syna_testing_create_dir host tests (4 cases)");
	return 0;
}
