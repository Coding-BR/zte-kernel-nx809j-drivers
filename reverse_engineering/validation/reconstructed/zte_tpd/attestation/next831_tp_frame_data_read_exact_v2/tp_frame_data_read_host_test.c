#include <stdint.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __user
#define __int64 long long
#define __int16 short
#define _QWORD unsigned long long
#define _DWORD unsigned int
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
static unsigned long long callback_argument;

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

static void frame_callback(unsigned long long argument)
{
	++callback_calls;
	callback_argument = argument;
}

#define _ReadStatusReg(x) read_sp_el0_stub()
#define printk printk_stub
#define unk_3A127 "tpd: %s val:%u"

static ssize_t simple_read_from_buffer(__int64 destination_address,
					       __int64 count, __int64 *position,
					       const void *source, __int64 available)
{
	char *destination = (char *)(uintptr_t)destination_address;
	const char *source_bytes = source;
	__int64 copied;

	if (*position < 0 || count < 0 || available < 0)
		return -1;
	if (*position >= available)
		return 0;
	copied = available - *position;
	if (copied > count)
		copied = count;
	memcpy(destination, source_bytes + *position, (size_t)copied);
	*position += copied;
	return (ssize_t)copied;
}

#include "../../../reconstructed/zte_tpd/tp_frame_data_read.c"

struct fixture {
	unsigned char device[0x1000 + sizeof(void *)];
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

static void fixture_init(struct fixture *fixture, unsigned int frame_value,
				void (*callback)(unsigned long long))
{
	memset(fixture, 0, sizeof(*fixture));
	memcpy(fixture->device + 0x460, &frame_value, sizeof(frame_value));
	memcpy(fixture->device + 0x1000, &callback, sizeof(callback));
	tpd_cdev = (long long)(uintptr_t)fixture->device;
	memset(fake_sp, 0, sizeof(fake_sp));
	printk_calls = 0;
	callback_calls = 0;
	callback_argument = 0;
}

static void test_callback_and_value(void)
{
	const char *name = "callback_and_value";
	struct fixture fixture;
	char output[16] = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 1234U, frame_callback);
	result = tp_frame_data_read(NULL, output, sizeof(output), &position);
	expect_case(result == 5 && memcmp(output, "1234\n", 5) == 0, name,
			    "formatted frame value differs");
	expect_case(callback_calls == 1U && callback_argument ==
			    (unsigned long long)tpd_cdev, name,
			    "callback contract differs");
	expect_case(printk_calls == 1U, name, "log contract differs");
}

static void test_null_callback(void)
{
	const char *name = "null_callback";
	struct fixture fixture;
	char output[8] = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 7U, NULL);
	result = tp_frame_data_read(NULL, output, sizeof(output), &position);
	expect_case(result == 2 && memcmp(output, "7\n", 2) == 0, name,
			    "null callback path differs");
	expect_case(callback_calls == 0U && printk_calls == 1U, name,
			    "null callback side effects differ");
}

static void test_eof(void)
{
	const char *name = "eof";
	struct fixture fixture;
	char output[8];
	loff_t position = 1;
	ssize_t result;

	fixture_init(&fixture, 9U, frame_callback);
	memset(output, 0xa5, sizeof(output));
	result = tp_frame_data_read(NULL, output, sizeof(output), &position);
	expect_case(result == 0 && position == 1 && callback_calls == 0U &&
			    printk_calls == 0U, name, "EOF path differs");
}

static void test_short_and_zero_count(void)
{
	const char *name = "short_and_zero_count";
	struct fixture fixture;
	char output[8] = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 42U, NULL);
	result = tp_frame_data_read(NULL, output, 1, &position);
	expect_case(result == 1 && output[0] == '4' && position == 1, name,
			    "short read differs");
	position = 0;
	result = tp_frame_data_read(NULL, output, 0, &position);
	expect_case(result == 0 && position == 0, name,
			    "zero-count differs");
}

int main(void)
{
	test_callback_and_value();
	test_null_callback();
	test_eof();
	test_short_and_zero_count();
	(void)puts("tp_frame_data_read host contract: PASS (4 cases)");
	return 0;
}
