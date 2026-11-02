#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef long long __int64;
typedef uint64_t _QWORD;
typedef uint8_t _BYTE;

struct tcm_storage;

struct device {
	uint8_t reserved_0000[0x98];
	struct tcm_storage *tcm;
};

struct parent_storage {
	uint8_t reserved_0000[0x18];
	struct device *device;
};

struct kobject {
	uint8_t reserved_0000[0x18];
	struct parent_storage *parent;
};

struct kobj_attribute {
	int token;
};

struct tcm_storage {
	uint8_t reserved_0000[0x582];
	uint8_t connection_flags;
	uint8_t reserved_0583[0x13d];
	int (*resume)(struct device *device);
	int (*suspend)(struct device *device);
};

_Static_assert(offsetof(struct kobject, parent) == 0x18,
	       "kobject parent offset");
_Static_assert(offsetof(struct parent_storage, device) == 0x18,
	       "parent device offset");
_Static_assert(offsetof(struct device, tcm) == 0x98,
	       "device tcm offset");
_Static_assert(offsetof(struct tcm_storage, connection_flags) == 0x582,
	       "tcm connection flag offset");
_Static_assert(offsetof(struct tcm_storage, resume) == 0x6c0,
	       "tcm resume callback offset");
_Static_assert(offsetof(struct tcm_storage, suspend) == 0x6c8,
	       "tcm suspend callback offset");

static unsigned int resume_calls;
static unsigned int suspend_calls;
static struct device *last_callback_device;
static int resume_result;
static int suspend_result;
static char last_log[192];
static unsigned int log_calls;

static int resume_callback(struct device *device)
{
	resume_calls++;
	last_callback_device = device;
	return resume_result;
}

static int suspend_callback(struct device *device)
{
	suspend_calls++;
	last_callback_device = device;
	return suspend_result;
}

int printk(const char *format, ...)
{
	va_list arguments;

	log_calls++;
	va_start(arguments, format);
	vsnprintf(last_log, sizeof(last_log), format, arguments);
	va_end(arguments);
	return (int)strlen(last_log);
}

#include "../../../reconstructed/zte_tpd/syna_sysfs_pwr_store.c"

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
			struct device *device,
			struct tcm_storage *tcm)
{
	memset(kobj, 0, sizeof(*kobj));
	memset(parent, 0, sizeof(*parent));
	memset(device, 0, sizeof(*device));
	memset(tcm, 0, sizeof(*tcm));
	kobj->parent = parent;
	parent->device = device;
	device->tcm = tcm;
	resume_calls = 0;
	suspend_calls = 0;
	last_callback_device = NULL;
	resume_result = 0;
	suspend_result = 0;
	last_log[0] = '\0';
	log_calls = 0;
}

static void test_disconnected(void)
{
	const char *case_name = "disconnected";
	struct kobject kobj;
	struct parent_storage parent;
	struct device device;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &device, &tcm);
	result = syna_sysfs_pwr_store(&kobj, NULL, "resume", 6);

	expect(result == 6, case_name, "return mismatch");
	expect(log_calls == 1, case_name, "log count mismatch");
	expect(strcmp(last_log,
		      "\0014[warn ] syna_sysfs_pwr_store: "
		      "Device is NOT connected\n") == 0,
	       case_name, "log mismatch");
	expect(resume_calls == 0 && suspend_calls == 0,
	       case_name, "callback called");
}

static void test_disconnected_preserves_wide_count(void)
{
	const char *case_name = "disconnected_wide_count";
	struct kobject kobj;
	struct parent_storage parent;
	struct device device;
	struct tcm_storage tcm;
	const size_t count = (size_t)UINT32_MAX + 3U;
	ssize_t result;

	reset_state(&kobj, &parent, &device, &tcm);
	result = syna_sysfs_pwr_store(&kobj, NULL, "ignored", count);

	expect(result == (ssize_t)count, case_name,
	       "disconnected path truncated count");
	expect(log_calls == 1, case_name, "log count mismatch");
}

static void test_invalid_option(void)
{
	const char *case_name = "invalid_option";
	struct kobject kobj;
	struct parent_storage parent;
	struct device device;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &device, &tcm);
	tcm.connection_flags = 1;
	result = syna_sysfs_pwr_store(&kobj, NULL, "wake", 4);

	expect(result == -22, case_name, "return mismatch");
	expect(log_calls == 1, case_name, "log count mismatch");
	expect(strcmp(last_log,
		      "\0014[warn ] syna_sysfs_pwr_store: "
		      "Unknown option wake\n") == 0,
	       case_name, "log mismatch");
	expect(resume_calls == 0 && suspend_calls == 0,
	       case_name, "callback called");
}

static void test_resume_callback(void)
{
	const char *case_name = "resume_callback";
	struct kobject kobj;
	struct parent_storage parent;
	struct device device;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &device, &tcm);
	tcm.connection_flags = 1;
	tcm.resume = resume_callback;
	resume_result = -5;
	result = syna_sysfs_pwr_store(&kobj, NULL, "resume", 6);

	expect(result == 6, case_name, "return mismatch");
	expect(resume_calls == 1 && suspend_calls == 0,
	       case_name, "callback count mismatch");
	expect(last_callback_device == &device, case_name,
	       "callback argument mismatch");
	expect(log_calls == 0, case_name, "unexpected log");
}

static void test_resume_callback_absent(void)
{
	const char *case_name = "resume_callback_absent";
	struct kobject kobj;
	struct parent_storage parent;
	struct device device;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &device, &tcm);
	tcm.connection_flags = 1;
	result = syna_sysfs_pwr_store(&kobj, NULL, "resume", 6);

	expect(result == 6, case_name, "return mismatch");
	expect(resume_calls == 0 && suspend_calls == 0,
	       case_name, "callback called");
	expect(log_calls == 0, case_name, "unexpected log");
}

static void test_suspend_callback(void)
{
	const char *case_name = "suspend_callback";
	struct kobject kobj;
	struct parent_storage parent;
	struct device device;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &device, &tcm);
	tcm.connection_flags = 1;
	tcm.suspend = suspend_callback;
	suspend_result = -19;
	result = syna_sysfs_pwr_store(&kobj, NULL, "suspend", 7);

	expect(result == 7, case_name, "return mismatch");
	expect(resume_calls == 0 && suspend_calls == 1,
	       case_name, "callback count mismatch");
	expect(last_callback_device == &device, case_name,
	       "callback argument mismatch");
	expect(log_calls == 0, case_name, "unexpected log");
}

static void test_suspend_callback_absent(void)
{
	const char *case_name = "suspend_callback_absent";
	struct kobject kobj;
	struct parent_storage parent;
	struct device device;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &device, &tcm);
	tcm.connection_flags = 1;
	result = syna_sysfs_pwr_store(&kobj, NULL, "suspend", 7);

	expect(result == 7, case_name, "return mismatch");
	expect(resume_calls == 0 && suspend_calls == 0,
	       case_name, "callback called");
	expect(log_calls == 0, case_name, "unexpected log");
}

static void test_resume_prefix(void)
{
	const char *case_name = "resume_prefix";
	struct kobject kobj;
	struct parent_storage parent;
	struct device device;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &device, &tcm);
	tcm.connection_flags = 1;
	tcm.resume = resume_callback;
	result = syna_sysfs_pwr_store(&kobj, NULL, "resume-extra", 12);

	expect(result == 12, case_name, "return mismatch");
	expect(resume_calls == 1 && suspend_calls == 0,
	       case_name, "stock prefix behavior changed");
}

static void test_suspend_prefix(void)
{
	const char *case_name = "suspend_prefix";
	struct kobject kobj;
	struct parent_storage parent;
	struct device device;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &device, &tcm);
	tcm.connection_flags = 1;
	tcm.suspend = suspend_callback;
	result = syna_sysfs_pwr_store(&kobj, NULL, "suspend-extra", 13);

	expect(result == 13, case_name, "return mismatch");
	expect(resume_calls == 0 && suspend_calls == 1,
	       case_name, "stock prefix behavior changed");
}

static void test_case_sensitive_command(void)
{
	const char *case_name = "case_sensitive";
	struct kobject kobj;
	struct parent_storage parent;
	struct device device;
	struct tcm_storage tcm;
	ssize_t result;

	reset_state(&kobj, &parent, &device, &tcm);
	tcm.connection_flags = 1;
	tcm.resume = resume_callback;
	result = syna_sysfs_pwr_store(&kobj, NULL, "Resume", 6);

	expect(result == -22, case_name, "return mismatch");
	expect(resume_calls == 0 && suspend_calls == 0,
	       case_name, "callback called");
	expect(strstr(last_log, "Unknown option Resume") != NULL,
	       case_name, "log mismatch");
}

int main(void)
{
	test_disconnected();
	test_disconnected_preserves_wide_count();
	test_invalid_option();
	test_resume_callback();
	test_resume_callback_absent();
	test_suspend_callback();
	test_suspend_callback_absent();
	test_resume_prefix();
	test_suspend_prefix();
	test_case_sensitive_command();
	puts("PASS syna_sysfs_pwr_store host tests (10 cases)");
	return 0;
}
