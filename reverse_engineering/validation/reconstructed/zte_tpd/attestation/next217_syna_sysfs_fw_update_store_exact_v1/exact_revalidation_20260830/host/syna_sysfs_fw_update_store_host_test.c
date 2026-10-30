#include <errno.h>
#include <stdbool.h>
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

struct syna_tcm;

struct tcm_dev {
	uint8_t reserved_0000[9];
	uint8_t device_mode;
};

struct syna_tcm {
	struct tcm_dev *tcm_dev;
	uint8_t reserved_0008[0x57a];
	uint8_t connection_flags;
	uint8_t reserved_0583[0x135];
	int (*set_up_app_fw)(struct syna_tcm *tcm);
};

struct device {
	uint8_t reserved_0000[0x98];
	struct syna_tcm *tcm;
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

_Static_assert(offsetof(struct kobject, parent) == 0x18,
	       "kobject parent offset");
_Static_assert(offsetof(struct parent_storage, device) == 0x18,
	       "parent device offset");
_Static_assert(offsetof(struct device, tcm) == 0x98,
	       "device tcm offset");
_Static_assert(offsetof(struct syna_tcm, connection_flags) == 0x582,
	       "tcm connection flag offset");
_Static_assert(offsetof(struct syna_tcm, set_up_app_fw) == 0x6b8,
	       "tcm setup callback offset");
_Static_assert(offsetof(struct tcm_dev, device_mode) == 9,
	       "tcm device mode offset");

static unsigned int parse_calls;
static unsigned int reflash_calls;
static unsigned int callback_calls;
static unsigned int parsed_value;
static bool last_force_reflash;
static struct syna_tcm *last_reflash_tcm;
static struct syna_tcm *last_callback_tcm;
static int reflash_result;
static int callback_result;
static char last_log[192];
static unsigned int log_calls;

int kstrtouint(const char *buffer, unsigned int base, unsigned int *value)
{
	char *end;
	unsigned long parsed;

	parse_calls++;
	if (!buffer || !value || base != 10 || !buffer[0])
		return -EINVAL;
	parsed = strtoul(buffer, &end, base);
	if (end == buffer || (*end && *end != '\n') || parsed > UINT32_MAX)
		return -EINVAL;
	*value = (unsigned int)parsed;
	parsed_value = *value;
	return 0;
}

int syna_dev_do_reflash(struct syna_tcm *tcm, bool force_reflash)
{
	reflash_calls++;
	last_reflash_tcm = tcm;
	last_force_reflash = force_reflash;
	return reflash_result;
}

static int set_up_app_fw_callback(struct syna_tcm *tcm)
{
	callback_calls++;
	last_callback_tcm = tcm;
	return callback_result;
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

#include "../../../reconstructed/zte_tpd/syna_sysfs_fw_update_store.c"

struct fixture {
	struct kobject kobj;
	struct parent_storage parent;
	struct device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
};

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

static void reset_fixture(struct fixture *fixture)
{
	memset(fixture, 0, sizeof(*fixture));
	fixture->kobj.parent = &fixture->parent;
	fixture->parent.device = &fixture->device;
	fixture->device.tcm = &fixture->tcm;
	fixture->tcm.tcm_dev = &fixture->tcm_dev;
	parse_calls = 0;
	reflash_calls = 0;
	callback_calls = 0;
	parsed_value = 0;
	last_force_reflash = false;
	last_reflash_tcm = NULL;
	last_callback_tcm = NULL;
	reflash_result = 0;
	callback_result = 0;
	last_log[0] = '\0';
	log_calls = 0;
}

static void test_disconnected(void)
{
	const char *name = "disconnected";
	struct fixture fixture;
	ssize_t result;

	reset_fixture(&fixture);
	result = syna_sysfs_fw_update_store(&fixture.kobj, NULL, "1", 1);
	expect(result == 1, name, "return mismatch");
	expect(parse_calls == 0 && reflash_calls == 0 && callback_calls == 0,
	       name, "work executed while disconnected");
	expect(log_calls == 1, name, "log count mismatch");
	expect(strcmp(last_log,
	      "\0014[warn ] syna_sysfs_fw_update_store: "
	      "Device is NOT connected\n") == 0, name, "log mismatch");
}

static void test_disconnected_wide_count(void)
{
	const char *name = "disconnected_wide_count";
	const size_t count = (size_t)UINT32_MAX + 3U;
	struct fixture fixture;

	reset_fixture(&fixture);
	expect(syna_sysfs_fw_update_store(&fixture.kobj, NULL, "1", count) ==
	       (ssize_t)count, name, "count truncated");
}

static void test_disconnected_bit_one_only(void)
{
	const char *name = "disconnected_bit_one_only";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 2;
	expect(syna_sysfs_fw_update_store(&fixture.kobj, NULL, "1", 1) == 1,
	       name, "return mismatch");
	expect(parse_calls == 0 && log_calls == 1, name, "bit zero not enforced");
}

static void test_parse_error(void)
{
	const char *name = "parse_error";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	expect(syna_sysfs_fw_update_store(&fixture.kobj, NULL, "bad", 3) ==
	       -EINVAL, name, "return mismatch");
	expect(parse_calls == 1 && reflash_calls == 0 && log_calls == 0,
	       name, "parse failure side effect");
}

static void test_parse_overflow(void)
{
	const char *name = "parse_overflow";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	expect(syna_sysfs_fw_update_store(&fixture.kobj, NULL,
	       "4294967296", 10) == -EINVAL, name, "overflow accepted");
	expect(reflash_calls == 0, name, "reflash called");
}

static void test_reflash_failure(void)
{
	const char *name = "reflash_failure";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	reflash_result = -5;
	expect(syna_sysfs_fw_update_store(&fixture.kobj, NULL, "7", 1) == -5,
	       name, "return mismatch");
	expect(reflash_calls == 1 && last_reflash_tcm == &fixture.tcm &&
	       last_force_reflash, name, "reflash arguments mismatch");
	expect(strcmp(last_log,
	      "\0013[error] syna_sysfs_fw_update_store: "
	      "Fail to do reflash\n") == 0, name, "log mismatch");
	expect(callback_calls == 0, name, "callback called after failure");
}

static void test_success_non_app_mode(void)
{
	const char *name = "success_non_app_mode";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	fixture.tcm.set_up_app_fw = set_up_app_fw_callback;
	expect(syna_sysfs_fw_update_store(&fixture.kobj, NULL, "9", 4) == 4,
	       name, "return mismatch");
	expect(parsed_value == 9 && reflash_calls == 1, name, "input mismatch");
	expect(callback_calls == 0 && log_calls == 0, name, "unexpected effect");
}

static void test_success_wide_count_truncates(void)
{
	const char *name = "success_wide_count_truncates";
	const size_t count = (size_t)UINT32_MAX + 3U;
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	expect(syna_sysfs_fw_update_store(&fixture.kobj, NULL, "1", count) == 2,
	       name, "stock signed-32 return not preserved");
}

static void test_callback_success(void)
{
	const char *name = "callback_success";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	fixture.tcm_dev.device_mode = 1;
	fixture.tcm.set_up_app_fw = set_up_app_fw_callback;
	expect(syna_sysfs_fw_update_store(&fixture.kobj, NULL, "3\n", 2) == 2,
	       name, "return mismatch");
	expect(callback_calls == 1 && last_callback_tcm == &fixture.tcm,
	       name, "callback argument mismatch");
}

static void test_callback_return_ignored(void)
{
	const char *name = "callback_return_ignored";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	fixture.tcm_dev.device_mode = 1;
	fixture.tcm.set_up_app_fw = set_up_app_fw_callback;
	callback_result = -19;
	expect(syna_sysfs_fw_update_store(&fixture.kobj, NULL, "4", 8) == 8,
	       name, "callback return leaked");
	expect(callback_calls == 1, name, "callback missing");
}

static void test_connection_other_bits(void)
{
	const char *name = "connection_other_bits";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 0xff;
	expect(syna_sysfs_fw_update_store(&fixture.kobj, NULL, "5", 1) == 1,
	       name, "connected path rejected");
	expect(reflash_calls == 1 && log_calls == 0, name, "path mismatch");
}

static void test_maximum_value(void)
{
	const char *name = "maximum_value";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	expect(syna_sysfs_fw_update_store(&fixture.kobj, NULL,
	       "4294967295", 10) == 10, name, "maximum value rejected");
	expect(parsed_value == UINT32_MAX && reflash_calls == 1,
	       name, "maximum value mismatch");
}

int main(void)
{
	test_disconnected();
	test_disconnected_wide_count();
	test_disconnected_bit_one_only();
	test_parse_error();
	test_parse_overflow();
	test_reflash_failure();
	test_success_non_app_mode();
	test_success_wide_count_truncates();
	test_callback_success();
	test_callback_return_ignored();
	test_connection_other_bits();
	test_maximum_value();
	puts("PASS syna_sysfs_fw_update_store host tests (12 cases)");
	return 0;
}
