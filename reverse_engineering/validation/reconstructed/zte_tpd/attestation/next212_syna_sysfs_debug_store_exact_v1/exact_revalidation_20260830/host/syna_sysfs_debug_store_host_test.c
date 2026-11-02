#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef long long __int64;
typedef uint64_t _QWORD;

struct parent_storage;

struct kobject {
	uint8_t reserved_0000[0x18];
	struct parent_storage *parent;
};

struct kobj_attribute {
	int token;
};

struct attribute_group {
	int token;
};

struct tcm_storage {
	uint8_t reserved_0000[0x398];
	__int64 sysfs_dir;
	__int64 debug_dir;
};

struct parent_storage {
	uint8_t reserved_0000[0x98];
	struct tcm_storage *tcm;
};

_Static_assert(offsetof(struct kobject, parent) == 0x18,
	       "kobject parent offset");
_Static_assert(offsetof(struct parent_storage, tcm) == 0x98,
	       "parent tcm offset");
_Static_assert(offsetof(struct tcm_storage, sysfs_dir) == 0x398,
	       "tcm sysfs_dir offset");
_Static_assert(offsetof(struct tcm_storage, debug_dir) == 0x3a0,
	       "tcm debug_dir offset");

enum event_id {
	EVENT_PARSE,
	EVENT_KOBJECT_CREATE,
	EVENT_SYSFS_GROUP_CREATE,
	EVENT_PRINTK,
	EVENT_SYSFS_GROUP_REMOVE,
	EVENT_KOBJECT_PUT,
};

struct event {
	enum event_id id;
	const void *arg0;
	const void *arg1;
};

struct attribute_group attr_debug_group = { .token = 0x47 };

static struct event events[16];
static size_t event_count;
static struct kobject created_object;
static struct kobject parent_object;
static __int64 create_result;
static int group_result;
static int forced_parse_result;
static char last_log[192];

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

int kstrtouint(__int64 text_address, unsigned int base, unsigned int *value)
{
	const char *text = (const char *)(uintptr_t)text_address;
	char *end = NULL;
	unsigned long parsed;

	record_event(EVENT_PARSE, text, value);
	if (forced_parse_result)
		return forced_parse_result;

	parsed = strtoul(text, &end, base);
	if (end == text || (*end != '\0' && *end != '\n'))
		return -22;
	*value = (unsigned int)parsed;
	return 0;
}

__int64 kobject_create_and_add(const char *name, __int64 parent)
{
	record_event(EVENT_KOBJECT_CREATE, name,
		     (const void *)(uintptr_t)parent);
	return create_result;
}

int sysfs_create_group(__int64 kobj,
		       const struct attribute_group *group)
{
	record_event(EVENT_SYSFS_GROUP_CREATE,
		     (const void *)(uintptr_t)kobj, group);
	return group_result;
}

void sysfs_remove_group(__int64 kobj,
			const struct attribute_group *group)
{
	record_event(EVENT_SYSFS_GROUP_REMOVE,
		     (const void *)(uintptr_t)kobj, group);
}

void kobject_put(__int64 kobj)
{
	record_event(EVENT_KOBJECT_PUT,
		     (const void *)(uintptr_t)kobj, NULL);
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

#include "../../../reconstructed/zte_tpd/syna_sysfs_debug_store.c"

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

static void reset_state(struct kobject *kobj,
			struct parent_storage *parent,
			struct tcm_storage *tcm)
{
	memset(kobj, 0, sizeof(*kobj));
	memset(parent, 0, sizeof(*parent));
	memset(tcm, 0, sizeof(*tcm));
	memset(events, 0, sizeof(events));
	event_count = 0;
	kobj->parent = parent;
	parent->tcm = tcm;
	tcm->sysfs_dir = (__int64)(uintptr_t)&parent_object;
	create_result = (__int64)(uintptr_t)&created_object;
	group_result = 0;
	forced_parse_result = 0;
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

static void test_parse_failure(void)
{
	const char *case_name = "parse_failure";
	struct kobject kobj;
	struct parent_storage parent;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &tcm);
	forced_parse_result = -34;
	result = syna_sysfs_debug_store(&kobj, NULL, "1", 1);

	expect(result == -22, case_name, "return mismatch");
	expect(event_count == 1, case_name, "event count mismatch");
	expect(events[0].id == EVENT_PARSE, case_name, "parse order mismatch");
}

static void test_unknown_option(void)
{
	const char *case_name = "unknown_option";
	struct kobject kobj;
	struct parent_storage parent;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &tcm);
	result = syna_sysfs_debug_store(&kobj, NULL, "2", 1);

	expect(result == -22, case_name, "return mismatch");
	expect(event_count == 2, case_name, "event count mismatch");
	expect(events[1].id == EVENT_PRINTK, case_name, "printk order mismatch");
	expect(strcmp(last_log,
		      "\0014[warn ] syna_sysfs_debug_store: Unknown option 2 "
		      "(0:disable / 1:enable)\n") == 0,
	       case_name, "log mismatch");
}

static void test_enable_existing(void)
{
	const char *case_name = "enable_existing";
	struct kobject kobj;
	struct parent_storage parent;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &tcm);
	tcm.debug_dir = (__int64)(uintptr_t)&created_object;
	result = syna_sysfs_debug_store(&kobj, NULL, "1", 1);

	expect(result == -22, case_name, "return mismatch");
	expect(event_count == 2, case_name, "event count mismatch");
	expect(strstr(last_log, "Unknown option 1") != NULL,
	       case_name, "log mismatch");
}

static void test_create_failure(void)
{
	const char *case_name = "create_failure";
	struct kobject kobj;
	struct parent_storage parent;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &tcm);
	create_result = 0;
	result = syna_sysfs_debug_store(&kobj, NULL, "1", 1);

	expect(result == -20, case_name, "return mismatch");
	expect(tcm.debug_dir == 0, case_name, "debug_dir mismatch");
	expect(event_count == 3, case_name, "event count mismatch");
	expect_event(case_name, 1, EVENT_KOBJECT_CREATE, "utility",
		     &parent_object);
	expect(events[2].id == EVENT_PRINTK, case_name, "printk order mismatch");
	expect(strcmp(last_log,
		      "\0013[error] syna_sysfs_debug_store: Fail to create "
		      "sysfs sub directory for debugging\n") == 0,
	       case_name, "log mismatch");
}

static void test_group_failure(void)
{
	const char *case_name = "group_failure";
	struct kobject kobj;
	struct parent_storage parent;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &tcm);
	group_result = -31;
	result = syna_sysfs_debug_store(&kobj, NULL, "1", 1);

	expect(result == -20, case_name, "return mismatch");
	expect(tcm.debug_dir == (__int64)(uintptr_t)&created_object,
	       case_name, "stock dangling debug_dir behavior changed");
	expect(event_count == 5, case_name, "event count mismatch");
	expect_event(case_name, 2, EVENT_SYSFS_GROUP_CREATE, &created_object,
		     &attr_debug_group);
	expect(events[3].id == EVENT_PRINTK, case_name, "printk order mismatch");
	expect_event(case_name, 4, EVENT_KOBJECT_PUT, &created_object, NULL);
	expect(strcmp(last_log,
		      "\0013[error] syna_sysfs_debug_store: Fail to create "
		      "sysfs debug group\n") == 0,
	       case_name, "log mismatch");
}

static void test_enable_success(void)
{
	const char *case_name = "enable_success";
	struct kobject kobj;
	struct parent_storage parent;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &tcm);
	result = syna_sysfs_debug_store(&kobj, NULL, "1\n", 2);

	expect(result == 2, case_name, "return mismatch");
	expect(tcm.debug_dir == (__int64)(uintptr_t)&created_object,
	       case_name, "debug_dir mismatch");
	expect(event_count == 3, case_name, "event count mismatch");
	expect_event(case_name, 1, EVENT_KOBJECT_CREATE, "utility",
		     &parent_object);
	expect_event(case_name, 2, EVENT_SYSFS_GROUP_CREATE, &created_object,
		     &attr_debug_group);
	expect(last_log[0] == '\0', case_name, "unexpected log");
}

static void test_positive_group_success(void)
{
	const char *case_name = "positive_group_success";
	struct kobject kobj;
	struct parent_storage parent;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &tcm);
	group_result = 7;
	result = syna_sysfs_debug_store(&kobj, NULL, "1", 1);

	expect(result == 1, case_name, "positive result was rejected");
	expect(event_count == 3, case_name, "event count mismatch");
	expect(last_log[0] == '\0', case_name, "unexpected log");
}

static void test_disable_absent(void)
{
	const char *case_name = "disable_absent";
	struct kobject kobj;
	struct parent_storage parent;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &tcm);
	result = syna_sysfs_debug_store(&kobj, NULL, "0\n", 2);

	expect(result == 2, case_name, "return mismatch");
	expect(event_count == 1, case_name, "unexpected teardown");
	expect(tcm.debug_dir == 0, case_name, "debug_dir mismatch");
}

static void test_disable_present(void)
{
	const char *case_name = "disable_present";
	struct kobject kobj;
	struct parent_storage parent;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &tcm);
	tcm.debug_dir = (__int64)(uintptr_t)&created_object;
	result = syna_sysfs_debug_store(&kobj, NULL, "0", 1);

	expect(result == 1, case_name, "return mismatch");
	expect(tcm.debug_dir == 0, case_name, "debug_dir was not cleared");
	expect(event_count == 3, case_name, "event count mismatch");
	expect_event(case_name, 1, EVENT_SYSFS_GROUP_REMOVE, &created_object,
		     &attr_debug_group);
	expect_event(case_name, 2, EVENT_KOBJECT_PUT, &created_object, NULL);
}

int main(void)
{
	test_parse_failure();
	test_unknown_option();
	test_enable_existing();
	test_create_failure();
	test_group_failure();
	test_enable_success();
	test_positive_group_success();
	test_disable_absent();
	test_disable_present();
	puts("PASS syna_sysfs_debug_store host tests (9 cases)");
	return 0;
}
