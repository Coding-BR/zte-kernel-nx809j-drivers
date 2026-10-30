#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct kobject {
	int token;
};

struct syna_tcm {
	uint8_t reserved_0000[0x3a8];
	struct kobject *testing_dir;
};

struct attribute_group {
	int token;
};

_Static_assert(offsetof(struct syna_tcm, testing_dir) == 0x3a8,
	       "syna_tcm.testing_dir offset");

struct attribute_group attr_testing_group = { .token = 0x53 };

enum event_id {
	EVENT_SYSFS_GROUP_REMOVE,
	EVENT_KOBJECT_PUT,
};

struct event {
	enum event_id id;
	const void *arg0;
	const void *arg1;
};

static struct event events[4];
static size_t event_count;
static struct syna_tcm *active_tcm;
static struct kobject *replacement_after_remove;

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

void sysfs_remove_group(struct kobject *kobj, const struct attribute_group *group)
{
	record_event(EVENT_SYSFS_GROUP_REMOVE, kobj, group);
	if (replacement_after_remove)
		active_tcm->testing_dir = replacement_after_remove;
}

void kobject_put(struct kobject *kobj)
{
	record_event(EVENT_KOBJECT_PUT, kobj, NULL);
}

#include "../../../reconstructed/zte_tpd/syna_testing_remove_dir.c"

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
	memset(tcm, 0, sizeof(*tcm));
	memset(events, 0, sizeof(events));
	event_count = 0;
	active_tcm = tcm;
	replacement_after_remove = NULL;
}

static void expect_event(const char *case_name, size_t index,
			 enum event_id id, const void *arg0, const void *arg1)
{
	expect(index < event_count, case_name, "missing event");
	expect(events[index].id == id, case_name, "event id mismatch");
	expect(events[index].arg0 == arg0, case_name, "event arg0 mismatch");
	expect(events[index].arg1 == arg1, case_name, "event arg1 mismatch");
}

static void test_null_directory_is_noop(void)
{
	const char *case_name = "null_directory_is_noop";
	struct syna_tcm tcm;

	reset_state(&tcm);
	syna_testing_remove_dir(&tcm);

	expect(tcm.testing_dir == NULL, case_name, "testing_dir changed");
	expect(event_count == 0, case_name, "unexpected calls");
}

static void test_existing_directory_removes_group_then_puts(void)
{
	const char *case_name = "existing_directory_removes_group_then_puts";
	struct syna_tcm tcm;
	struct kobject directory = { .token = 0x71 };

	reset_state(&tcm);
	tcm.testing_dir = &directory;
	syna_testing_remove_dir(&tcm);

	expect(tcm.testing_dir == &directory, case_name, "testing_dir changed");
	expect(event_count == 2, case_name, "event count mismatch");
	expect_event(case_name, 0, EVENT_SYSFS_GROUP_REMOVE, &directory,
		     &attr_testing_group);
	expect_event(case_name, 1, EVENT_KOBJECT_PUT, &directory, NULL);
}

static void test_kobject_put_reloads_directory_after_group_remove(void)
{
	const char *case_name = "kobject_put_reloads_directory_after_group_remove";
	struct syna_tcm tcm;
	struct kobject initial = { .token = 0x72 };
	struct kobject replacement = { .token = 0x73 };

	reset_state(&tcm);
	tcm.testing_dir = &initial;
	replacement_after_remove = &replacement;
	syna_testing_remove_dir(&tcm);

	expect(tcm.testing_dir == &replacement, case_name, "replacement missing");
	expect(event_count == 2, case_name, "event count mismatch");
	expect_event(case_name, 0, EVENT_SYSFS_GROUP_REMOVE, &initial,
		     &attr_testing_group);
	expect_event(case_name, 1, EVENT_KOBJECT_PUT, &replacement, NULL);
}

int main(void)
{
	test_null_directory_is_noop();
	test_existing_directory_removes_group_then_puts();
	test_kobject_put_reloads_directory_after_group_remove();
	puts("PASS syna_testing_remove_dir host tests (3 cases)");
	return 0;
}
