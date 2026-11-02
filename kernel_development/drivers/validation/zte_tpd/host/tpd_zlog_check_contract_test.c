#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef unsigned int zlog_error_no;

#define TP_ZLOG_ERROR_MAX 19
#define EIO 5

struct zlog_client;

struct zlog_error_item {
	unsigned long count[TP_ZLOG_ERROR_MAX];
	unsigned long timer[TP_ZLOG_ERROR_MAX];
};

struct ztp_device {
	u8 reserved_0000[0xa48];
	struct zlog_client *zlog_client;
	u8 reserved_a50[0x68];
	struct zlog_error_item zlog_item;
};

static struct ztp_device expected_device;
static struct ztp_device *tpd_cdev = &expected_device;
static unsigned long jiffies;
static unsigned int jiffies_to_msecs_calls;
static unsigned int printk_calls;
static unsigned int last_elapsed_ms;
static unsigned int last_error_no;
static const char *last_printk_format;
static unsigned int failures;

static unsigned int test_jiffies_to_msecs(unsigned long value)
{
	jiffies_to_msecs_calls++;
	return (unsigned int)value;
}

static int test_printk(const char *format, ...)
{
	va_list args;

	printk_calls++;
	last_printk_format = format;
	va_start(args, format);
	last_elapsed_ms = va_arg(args, unsigned int);
	last_error_no = va_arg(args, unsigned int);
	va_end(args);
	return 0;
}

static struct ztp_device *tpd_zlog_device(void)
{
	return tpd_cdev;
}

#define jiffies_to_msecs test_jiffies_to_msecs
#define printk test_printk
#include "../../../reconstructed/zte_tpd/tpd_zlog_check.c"
#undef jiffies_to_msecs
#undef printk

static void reset_trace(void)
{
	memset(&expected_device, 0, sizeof(expected_device));
	jiffies = 0;
	jiffies_to_msecs_calls = 0;
	printk_calls = 0;
	last_elapsed_ms = 0;
	last_error_no = 0;
	last_printk_format = NULL;
}

static void expect_int(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual, expected);
		failures++;
	}
}

static void expect_true(const char *name, bool value)
{
	if (!value) {
		fprintf(stderr, "%s: condition failed\n", name);
		failures++;
	}
}

static void test_first_event(void)
{
	reset_trace();
	jiffies = 100;
	expect_int("first return", tpd_zlog_check(1), 0);
	expect_int("first count", expected_device.zlog_item.count[1], 1);
	expect_int("first printk", printk_calls, 0);
	expect_int("first conversion calls", jiffies_to_msecs_calls, 0);
}

static void test_repeat_inside_window(void)
{
	reset_trace();
	jiffies = 100000;
	expected_device.zlog_item.count[1] = 1;
	expected_device.zlog_item.timer[1] = 99000;
	expect_int("repeat return", tpd_zlog_check(1), -EIO);
	expect_int("repeat count", expected_device.zlog_item.count[1], 2);
	expect_int("repeat printk", printk_calls, 1);
	expect_int("repeat elapsed", last_elapsed_ms, 1000);
	expect_int("repeat error", last_error_no, 1);
	expect_true("repeat format", last_printk_format &&
			    strcmp(last_printk_format,
				   "\0015tpd_zlog: zlog error repeated notify, timer:%d, no:%d") == 0);
	expect_int("repeat conversion calls", jiffies_to_msecs_calls, 2);
}

static void test_exact_window_boundary(void)
{
	reset_trace();
	jiffies = 100000;
	expected_device.zlog_item.count[18] = 1;
	expected_device.zlog_item.timer[18] = 40000;
	expect_int("boundary return", tpd_zlog_check(18), 0);
	expect_int("boundary count", expected_device.zlog_item.count[18], 2);
	expect_int("boundary printk", printk_calls, 0);
	expect_int("boundary conversion calls", jiffies_to_msecs_calls, 1);
}

static void test_expired_window(void)
{
	reset_trace();
	jiffies = 100000;
	expected_device.zlog_item.count[2] = 1;
	expected_device.zlog_item.timer[2] = 39999;
	expect_int("expired return", tpd_zlog_check(2), 0);
	expect_int("expired count", expected_device.zlog_item.count[2], 2);
	expect_int("expired printk", printk_calls, 0);
	expect_int("expired conversion calls", jiffies_to_msecs_calls, 1);
}

static void test_zero_and_last_valid_indices(void)
{
	reset_trace();
	expect_int("zero index return", tpd_zlog_check(0), 0);
	expect_int("zero index count", expected_device.zlog_item.count[0], 1);
	expect_int("last index return", tpd_zlog_check(18), 0);
	expect_int("last index count", expected_device.zlog_item.count[18], 1);
}

int main(void)
{
	test_first_event();
	test_repeat_inside_window();
	test_exact_window_boundary();
	test_expired_window();
	test_zero_and_last_valid_indices();
	if (failures != 0)
		return 1;
	puts("PASS tpd_zlog_check host tests (5 cases)");
	return 0;
}
