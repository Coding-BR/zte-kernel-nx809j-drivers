#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
#define __int8 char
#define __int16 int16_t
#define __int64 long long
#define _QWORD uint64_t
#define _DWORD uint32_t
#define _BYTE uint8_t
#define _BOOL8 unsigned char
#define _BOOL4 int
#define ZTE_TPD_HOST_TEST 1

struct file {
	int unused;
};

static long long tpd_cdev;
static unsigned int callback_calls;
static unsigned int callback_value;
static unsigned int printk_calls;
static int copy_should_fail;

static void host_callback(long long device, unsigned char value)
{
	(void)device;
	callback_calls++;
	callback_value = value;
}

int printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

void _check_object_size(const void *pointer, size_t size, int write)
{
	(void)pointer;
	(void)size;
	(void)write;
}

unsigned long zte_inline_copy_from_user(void *destination,
						const void *source, unsigned long size)
{
	if (copy_should_fail)
		return size ? size : 1;
	memcpy(destination, source, (size_t)size);
	return 0;
}

int kstrtouint(const char *text, unsigned int base, unsigned int *value)
{
	char *end;
	unsigned long parsed;

	if (!text || !*text || base != 0)
		return -EINVAL;
	errno = 0;
	parsed = strtoul(text, &end, base);
	if (end == text)
		return -EINVAL;
	if (*end == '\n' && end[1] == '\0')
		end++;
	if (*end != '\0' || errno == ERANGE || parsed > UINT32_MAX)
		return -EINVAL;
	*value = (unsigned int)parsed;
	return 0;
}

#include "../../../reconstructed/zte_tpd/tp_pen_only_write.c"

struct fixture {
	uint8_t device[0xf88 + sizeof(void *)];
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

static void store_u8(uint8_t *base, size_t offset, uint8_t value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static uint8_t load_u8(const uint8_t *base, size_t offset)
{
	uint8_t value;
	memcpy(&value, base + offset, sizeof(value));
	return value;
}

static void fixture_init(struct fixture *fixture, uint8_t value,
					 void *callback)
{
	memset(fixture, 0, sizeof(*fixture));
	store_u8(fixture->device, 0x441, value);
	store_ptr(fixture->device, 0xf88, callback);
	tpd_cdev = (long long)(uintptr_t)fixture->device;
	callback_calls = 0;
	callback_value = 0xff;
	printk_calls = 0;
	copy_should_fail = 0;
}

static void test_write_one_calls_callback(void)
{
	const char *case_name = "write_one_calls_callback";
	struct fixture fixture;
	const char input[] = "1\n";
	ssize_t result;

	fixture_init(&fixture, 0, (void *)host_callback);
	result = tp_pen_only_write(NULL, input, sizeof(input) - 1, NULL);
	expect(result == 2, case_name, "unexpected write length");
	expect(load_u8(fixture.device, 0x441) == 1, case_name,
	       "enabled state was not stored");
	expect(callback_calls == 1 && callback_value == 1, case_name,
	       "callback contract differs");
	expect(printk_calls == 1, case_name, "log contract differs");
}

static void test_write_zero_without_callback(void)
{
	const char *case_name = "write_zero_without_callback";
	struct fixture fixture;
	const char input[] = "0";
	ssize_t result;

	fixture_init(&fixture, 1, NULL);
	result = tp_pen_only_write(NULL, input, sizeof(input) - 1, NULL);
	expect(result == 1, case_name, "unexpected write length");
	expect(load_u8(fixture.device, 0x441) == 0, case_name,
	       "disabled state was not stored");
	expect(callback_calls == 0, case_name, "unexpected callback");
}

static void test_count_is_clamped_to_nine(void)
{
	const char *case_name = "count_is_clamped_to_nine";
	struct fixture fixture;
	const char input[] = "1234567890";
	ssize_t result;

	fixture_init(&fixture, 0, NULL);
	result = tp_pen_only_write(NULL, input, sizeof(input) - 1, NULL);
	expect(result == 9, case_name, "count was not clamped to nine");
	expect(load_u8(fixture.device, 0x441) == 1, case_name,
	       "clamped numeric input did not enable state");
}

static void test_copy_failure_preserves_state(void)
{
	const char *case_name = "copy_failure_preserves_state";
	struct fixture fixture;
	const char input[] = "1";
	ssize_t result;

	fixture_init(&fixture, 0, (void *)host_callback);
	copy_should_fail = 1;
	result = tp_pen_only_write(NULL, input, sizeof(input) - 1, NULL);
	expect(result == -22, case_name, "copy failure did not return -EINVAL");
	expect(load_u8(fixture.device, 0x441) == 0, case_name,
	       "copy failure changed state");
	expect(callback_calls == 0, case_name, "copy failure called callback");
}

static void test_invalid_and_empty_input_preserve_state(void)
{
	const char *case_name = "invalid_and_empty_input_preserve_state";
	struct fixture fixture;
	const char invalid[] = "x";
	ssize_t result;

	fixture_init(&fixture, 1, (void *)host_callback);
	result = tp_pen_only_write(NULL, invalid, sizeof(invalid) - 1, NULL);
	expect(result == -22, case_name, "invalid input did not return -EINVAL");
	expect(load_u8(fixture.device, 0x441) == 1, case_name,
	       "invalid input changed state");
	expect(callback_calls == 0, case_name, "invalid input called callback");

	result = tp_pen_only_write(NULL, invalid, 0, NULL);
	expect(result == -22, case_name, "empty input did not return -EINVAL");
	expect(load_u8(fixture.device, 0x441) == 1, case_name,
	       "empty input changed state");
}

int main(void)
{
	test_write_one_calls_callback();
	test_write_zero_without_callback();
	test_count_is_clamped_to_nine();
	test_copy_failure_preserves_state();
	test_invalid_and_empty_input_preserve_state();
	puts("PASS tp_pen_only_write: 5 cases");
	return 0;
}
