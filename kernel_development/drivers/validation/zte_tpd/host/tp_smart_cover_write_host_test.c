#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
typedef long long __int64;
typedef int16_t __int16;
typedef uint64_t _QWORD;
typedef uint8_t _BOOL8;
typedef uint32_t _BOOL4;

struct file {
	int unused;
};

struct ztp_device;

long long tpd_cdev;
char unk_328A8[256] = "zte_tpd_log";

static unsigned int callback_calls;
static unsigned int wrong_callback_calls;
static uintptr_t callback_argument;
static int callback_value;
static unsigned int printk_calls;

static int enable_smart_cover(struct ztp_device *cdev, int value)
{
	callback_calls++;
	callback_argument = (uintptr_t)cdev;
	callback_value = value;
	return 0;
}

static int wrong_callback(struct ztp_device *cdev, int value)
{
	(void)cdev;
	(void)value;
	wrong_callback_calls++;
	return 0;
}

int printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

int kstrtouint_from_user(__int64 buffer, __int64 count, unsigned int base,
				unsigned int *value)
{
	char local[64];
	char *end;
	unsigned long parsed;
	size_t length = (size_t)count;

	if (base != 10 || length == 0 || length >= sizeof(local))
		return -EINVAL;
	memcpy(local, (const void *)(uintptr_t)buffer, length);
	local[length] = '\0';
	parsed = strtoul(local, &end, base);
	if (end == local || (*end != '\0' && *end != '\n') || parsed > UINT32_MAX)
		return -EINVAL;
	*value = (unsigned int)parsed;
	return 0;
}

#include "../../../reconstructed/zte_tpd/tp_smart_cover_write.c"

struct fixture {
	uint8_t device[0xe50];
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

static void store_ptr(uint8_t *base, size_t offset, void *value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static void fixture_init(struct fixture *fixture, int with_callback)
{
	memset(fixture, 0, sizeof(*fixture));
	store_ptr(fixture->device, 0xc88, (void *)wrong_callback);
	if (with_callback)
		store_ptr(fixture->device, 0xe40, (void *)enable_smart_cover);
	else
		store_ptr(fixture->device, 0xe40, NULL);
	tpd_cdev = (long long)(uintptr_t)fixture->device;
	callback_calls = 0;
	wrong_callback_calls = 0;
	callback_argument = 0;
	callback_value = -1;
	printk_calls = 0;
}

static void test_valid_write_uses_correct_callback_slot(void)
{
	const char *case_name = "valid_write_uses_correct_callback_slot";
	struct fixture fixture;
	struct file file = {0};
	loff_t offset = 0;
	const char input[] = "7\n";
	ssize_t result;

	fixture_init(&fixture, 1);
	result = tp_smart_cover_write(&file, input, sizeof(input) - 1, &offset);
	expect(result == 2, case_name, "successful write did not return count");
	expect(callback_calls == 1, case_name, "callback was not called");
	expect(wrong_callback_calls == 0, case_name,
	       "stale callback slot was used");
	expect(callback_argument == (uintptr_t)fixture.device, case_name,
	       "callback argument differs");
	expect(callback_value == 1, case_name,
	       "nonzero input was not normalized to one");
	expect(printk_calls == 1, case_name, "log contract differs");
}

static void test_invalid_write_returns_einval_without_callback(void)
{
	const char *case_name = "invalid_write_returns_einval_without_callback";
	struct fixture fixture;
	struct file file = {0};
	loff_t offset = 0;
	const char input[] = "invalid";
	ssize_t result;

	fixture_init(&fixture, 1);
	result = tp_smart_cover_write(&file, input, sizeof(input) - 1, &offset);
	expect(result == -EINVAL, case_name, "invalid input did not return -EINVAL");
	expect(callback_calls == 0 && wrong_callback_calls == 0, case_name,
	       "callback ran after parse failure");
	expect(printk_calls == 0, case_name, "parse failure was logged");
}

static void test_zero_write_without_callback(void)
{
	const char *case_name = "zero_write_without_callback";
	struct fixture fixture;
	struct file file = {0};
	loff_t offset = 0;
	const char input[] = "0";
	ssize_t result;

	fixture_init(&fixture, 0);
	result = tp_smart_cover_write(&file, input, sizeof(input) - 1, &offset);
	expect(result == 1, case_name, "zero write did not return count");
	expect(callback_calls == 0, case_name, "missing callback was invoked");
	expect(wrong_callback_calls == 0, case_name,
	       "stale callback was invoked");
	expect(printk_calls == 1, case_name, "valid zero was not logged");
}

int main(void)
{
	test_valid_write_uses_correct_callback_slot();
	test_invalid_write_returns_einval_without_callback();
	test_zero_write_without_callback();
	puts("PASS tp_smart_cover_write host tests (3 cases)");
	return 0;
}
