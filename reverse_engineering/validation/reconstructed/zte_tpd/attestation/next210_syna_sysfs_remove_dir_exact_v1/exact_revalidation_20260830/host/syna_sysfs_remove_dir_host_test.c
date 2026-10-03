#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct kobject {
	int token;
};

struct syna_tcm {
	uint8_t reserved_0000[0x398];
	struct kobject *sysfs_dir;
	struct kobject *utility_dir;
};

struct attribute_group {
	int token;
};

_Static_assert(offsetof(struct syna_tcm, sysfs_dir) == 0x398,
	       "syna_tcm.sysfs_dir offset");
_Static_assert(offsetof(struct syna_tcm, utility_dir) == 0x3a0,
	       "syna_tcm.utility_dir offset");

enum event_id {
	EVENT_TESTING_REMOVE,
	EVENT_SYSFS_GROUP_REMOVE,
	EVENT_KOBJECT_PUT,
	EVENT_PRINTK,
};

struct event {
	enum event_id id;
	const void *arg0;
	const void *arg1;
};

struct attribute_group attr_group = { .token = 0x47 };
struct attribute_group attr_debug_group = { .token = 0x64 };

static struct event events[12];
static size_t event_count;
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

void syna_testing_remove_dir(struct syna_tcm *tcm)
{
	record_event(EVENT_TESTING_REMOVE, tcm, NULL);
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

int printk(const char *format, ...)
{
	va_list arguments;

	record_event(EVENT_PRINTK, format, NULL);
	va_start(arguments, format);
	vsnprintf(last_log, sizeof(last_log), format, arguments);
	va_end(arguments);
	return (int)strlen(last_log);
}

#include "../../../reconstructed/zte_tpd/syna_sysfs_remove_dir.c"

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

static void reset_state(void)
{
	memset(events, 0, sizeof(events));
	event_count = 0;
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

static void test_null_tcm(void)
{
	const char *case_name = "null_tcm";

	reset_state();
	syna_sysfs_remove_dir(NULL);

	expect(event_count == 1, case_name, "event count mismatch");
	expect(events[0].id == EVENT_PRINTK, case_name, "printk order mismatch");
	expect(strcmp(last_log,
		      "\0013[error] syna_sysfs_remove_dir: "
		      "Invalid tcm device handle\n") == 0,
	       case_name, "log mismatch");
}

static void test_missing_sysfs_dir(void)
{
	const char *case_name = "missing_sysfs_dir";
	struct kobject utility = { .token = 0x31 };
	struct syna_tcm tcm = {
		.sysfs_dir = NULL,
		.utility_dir = &utility,
	};

	reset_state();
	syna_sysfs_remove_dir(&tcm);

	expect(event_count == 0, case_name, "unexpected teardown call");
	expect(tcm.sysfs_dir == NULL, case_name, "sysfs_dir changed");
	expect(tcm.utility_dir == &utility, case_name, "utility_dir changed");
}

static void test_without_utility_dir(void)
{
	const char *case_name = "without_utility_dir";
	struct kobject sysfs = { .token = 0x41 };
	struct syna_tcm tcm = {
		.sysfs_dir = &sysfs,
		.utility_dir = NULL,
	};

	reset_state();
	syna_sysfs_remove_dir(&tcm);

	expect(event_count == 3, case_name, "event count mismatch");
	expect_event(case_name, 0, EVENT_TESTING_REMOVE, &tcm, NULL);
	expect_event(case_name, 1, EVENT_SYSFS_GROUP_REMOVE, &sysfs,
		     &attr_group);
	expect_event(case_name, 2, EVENT_KOBJECT_PUT, &sysfs, NULL);
	expect(tcm.sysfs_dir == &sysfs, case_name, "sysfs_dir was cleared");
	expect(tcm.utility_dir == NULL, case_name, "utility_dir changed");
	expect(last_log[0] == '\0', case_name, "unexpected log");
}

static void test_full_teardown(void)
{
	const char *case_name = "full_teardown";
	struct kobject sysfs = { .token = 0x51 };
	struct kobject utility = { .token = 0x52 };
	struct syna_tcm tcm = {
		.sysfs_dir = &sysfs,
		.utility_dir = &utility,
	};

	reset_state();
	syna_sysfs_remove_dir(&tcm);

	expect(event_count == 5, case_name, "event count mismatch");
	expect_event(case_name, 0, EVENT_TESTING_REMOVE, &tcm, NULL);
	expect_event(case_name, 1, EVENT_SYSFS_GROUP_REMOVE, &utility,
		     &attr_debug_group);
	expect_event(case_name, 2, EVENT_KOBJECT_PUT, &utility, NULL);
	expect_event(case_name, 3, EVENT_SYSFS_GROUP_REMOVE, &sysfs,
		     &attr_group);
	expect_event(case_name, 4, EVENT_KOBJECT_PUT, &sysfs, NULL);
	expect(tcm.sysfs_dir == &sysfs, case_name, "sysfs_dir was cleared");
	expect(tcm.utility_dir == &utility, case_name, "utility_dir was cleared");
	expect(last_log[0] == '\0', case_name, "unexpected log");
}

int main(void)
{
	test_null_tcm();
	test_missing_sysfs_dir();
	test_without_utility_dir();
	test_full_teardown();
	puts("PASS syna_sysfs_remove_dir host tests (4 cases)");
	return 0;
}
