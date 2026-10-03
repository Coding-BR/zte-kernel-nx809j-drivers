#include <stdint.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <limits.h>

#define __user
#define __int64 long long
#define _QWORD unsigned long long
#define _BOOL8 unsigned char
#define _BOOL4 int
#define SP_EL0 0
#define __fastcall

typedef long ssize_t;
typedef long long zte_loff_t;
#define loff_t zte_loff_t

struct file {
	int unused;
};

static unsigned char fake_sp[2048];
static long long tpd_cdev;
static unsigned int printk_calls;
static unsigned int callback_calls;
static unsigned long long callback_value;

static int printk_stub(const char *format, ...)
{
	(void)format;
	++printk_calls;
	return 0;
}

static uintptr_t read_sp_el0_stub(void)
{
	return (uintptr_t)fake_sp;
}

static void frame_callback(long long device, unsigned char enabled)
{
	++callback_calls;
	callback_value = (unsigned long long)(enabled != 0U);
	if ((unsigned long long)device != (unsigned long long)tpd_cdev)
		abort();
}

static int kstrtouint_from_user_stub(__int64 buffer_address, __int64 count,
					     unsigned int base, int *value)
{
	char text[64];
	char *end;
	unsigned long parsed;
	const size_t length = (size_t)count;

	if (base != 10U || length == 0U || length >= sizeof(text))
		return -EINVAL;
	memcpy(text, (const void *)(uintptr_t)buffer_address, length);
	text[length] = '\0';
	parsed = strtoul(text, &end, base);
	if (end == text)
		return -EINVAL;
	while (*end == '\n' || *end == '\r' || *end == ' ' || *end == '\t')
		++end;
	if (*end != '\0' || parsed > UINT_MAX)
		return -EINVAL;
	*value = (int)parsed;
	return 0;
}

#define _ReadStatusReg(x) read_sp_el0_stub()
#define printk printk_stub
#define kstrtouint_from_user kstrtouint_from_user_stub
#define unk_374F7 "tpd: %s val:%d"

#include "../../../reconstructed/zte_tpd/tp_frame_data_write.c"

struct fixture {
	unsigned char device[0xff8 + sizeof(void *)];
};

static void fail_case(const char *name, const char *message)
{
	(void)fprintf(stderr, "FAIL %s: %s\n", name, message);
	exit(1);
}

static void expect_case(int condition, const char *name, const char *message)
{
	if (!condition)
		fail_case(name, message);
}

static void fixture_init(struct fixture *fixture,
				void (*callback)(long long, unsigned char))
{
	memset(fixture, 0, sizeof(*fixture));
	memcpy(fixture->device + 0xff8, &callback, sizeof(callback));
	tpd_cdev = (long long)(uintptr_t)fixture->device;
	memset(fake_sp, 0, sizeof(fake_sp));
	printk_calls = 0;
	callback_calls = 0;
	callback_value = 99U;
}

static void test_zero_value(void)
{
	const char *name = "zero_value";
	struct fixture fixture;
	const char input[] = "0";
	ssize_t result;

	fixture_init(&fixture, frame_callback);
	result = tp_frame_data_write(NULL, input, sizeof(input) - 1U, NULL);
	expect_case(result == 1 && callback_calls == 1U && callback_value == 0U,
			    name, "zero value contract differs");
	expect_case(printk_calls == 1U, name, "zero value log contract differs");
}

static void test_nonzero_value_is_boolean(void)
{
	const char *name = "nonzero_value_is_boolean";
	struct fixture fixture;
	const char input[] = "42";
	ssize_t result;

	fixture_init(&fixture, frame_callback);
	result = tp_frame_data_write(NULL, input, sizeof(input) - 1U, NULL);
	expect_case(result == 2 && callback_calls == 1U && callback_value == 1U,
			    name, "nonzero value was not normalized to one");
	}

static void test_invalid_input(void)
{
	const char *name = "invalid_input";
	struct fixture fixture;
	const char input[] = "x";
	ssize_t result;

	fixture_init(&fixture, frame_callback);
	result = tp_frame_data_write(NULL, input, sizeof(input) - 1U, NULL);
	expect_case(result == -EINVAL && callback_calls == 0U && printk_calls == 0U,
			    name, "invalid input contract differs");
}

static void test_null_callback(void)
{
	const char *name = "null_callback";
	struct fixture fixture;
	const char input[] = "7";
	ssize_t result;

	fixture_init(&fixture, NULL);
	result = tp_frame_data_write(NULL, input, sizeof(input) - 1U, NULL);
	expect_case(result == 1 && callback_calls == 0U && printk_calls == 1U,
			    name, "null callback contract differs");
}

int main(void)
{
	test_zero_value();
	test_nonzero_value_is_boolean();
	test_invalid_input();
	test_null_callback();
	(void)puts("tp_frame_data_write host contract: PASS (4 cases)");
	return 0;
}
