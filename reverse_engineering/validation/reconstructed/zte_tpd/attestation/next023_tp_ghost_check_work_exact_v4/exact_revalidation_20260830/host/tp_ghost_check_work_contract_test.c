#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;

struct work_struct {
	unsigned long marker;
};

struct ztp_device;
long long tpd_cdev;

static unsigned char cdev_storage[0x1100];
static unsigned long ghost_check_result;
static unsigned int ghost_check_calls;
static unsigned int ghost_check_reset_calls;
static unsigned int callback_calls;
static struct ztp_device *callback_argument;
static unsigned int printk_calls;
static const char *printk_formats[3];
static int printk_int_arguments[3];
static unsigned int failures;

static void expect_int(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual,
			expected);
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

static unsigned long test_tp_ghost_check(void)
{
	ghost_check_calls++;
	return ghost_check_result;
}

static void test_ghost_check_reset(void)
{
	ghost_check_reset_calls++;
}

static int test_reset_callback(struct ztp_device *cdev)
{
	callback_calls++;
	callback_argument = cdev;
	return 0;
}

static int test_printk(const char *format, ...)
{
	va_list args;

	if (printk_calls < 3)
		printk_formats[printk_calls] = format;
	va_start(args, format);
	if (printk_calls < 3 && strstr(format, "%d") != NULL)
		printk_int_arguments[printk_calls] = va_arg(args, int);
	va_end(args);
	printk_calls++;
	return 0;
}

#define tp_ghost_check test_tp_ghost_check
#define ghost_check_reset test_ghost_check_reset
#define printk test_printk
#include "../../../reconstructed/zte_tpd/tp_ghost_check_work.c"
#undef printk
#undef ghost_check_reset
#undef tp_ghost_check

static int *ghost_count(void)
{
	return (int *)(void *)(cdev_storage + 0x4a8);
}

static unsigned char *ghost_flag(void)
{
	return cdev_storage + 0x488;
}

static void reset_trace(int count, bool with_callback)
{
	memset(cdev_storage, 0, sizeof(cdev_storage));
	tpd_cdev = (long long)(uintptr_t)cdev_storage;
	ghost_check_result = 0;
	ghost_check_calls = 0;
	ghost_check_reset_calls = 0;
	callback_calls = 0;
	callback_argument = NULL;
	printk_calls = 0;
	memset(printk_formats, 0, sizeof(printk_formats));
	memset(printk_int_arguments, 0, sizeof(printk_int_arguments));
	*ghost_count() = count;
	*ghost_flag() = 0xa5;
	if (with_callback)
		*(uintptr_t *)(void *)(cdev_storage + 0xff0) =
			(uintptr_t)test_reset_callback;
}

static void expect_common_tail(const char *case_name)
{
	char label[80];

	snprintf(label, sizeof(label), "%s ghost_check calls", case_name);
	expect_int(label, ghost_check_calls, 1);
	snprintf(label, sizeof(label), "%s reset calls", case_name);
	expect_int(label, ghost_check_reset_calls, 1);
	snprintf(label, sizeof(label), "%s flag reset", case_name);
	expect_int(label, *ghost_flag(), 0);
}

static void test_no_ghost(void)
{
	reset_trace(1, false);
	tp_ghost_check_work(NULL);
	expect_common_tail("no ghost");
	expect_int("no ghost printk calls", printk_calls, 0);
	expect_int("no ghost count", *ghost_count(), 1);
	expect_int("no ghost callback calls", callback_calls, 0);
}

static void test_ghost_without_callback_increments(void)
{
	reset_trace(0, false);
	ghost_check_result = 1;
	tp_ghost_check_work(NULL);
	expect_common_tail("increment");
	expect_int("increment printk calls", printk_calls, 1);
	expect_int("increment count", *ghost_count(), 1);
	expect_int("increment callback calls", callback_calls, 0);
	expect_true("increment warning format", printk_formats[0] &&
			strcmp(printk_formats[0], "\0015tpd: may be ghost point") == 0);
}

static void test_ghost_limit_skips_callback(void)
{
	reset_trace(3, true);
	ghost_check_result = 1;
	tp_ghost_check_work(NULL);
	expect_common_tail("limit");
	expect_int("limit printk calls", printk_calls, 2);
	expect_int("limit count", *ghost_count(), 3);
	expect_int("limit callback calls", callback_calls, 0);
	expect_true("limit format", printk_formats[1] &&
			strcmp(printk_formats[1],
			       "\0015tpd: ghost_rst_num has already exceeded 3 times, skip") == 0);
}

static void test_ghost_callback_and_increment(void)
{
	reset_trace(1, true);
	ghost_check_result = 1;
	tp_ghost_check_work(NULL);
	expect_common_tail("callback");
	expect_int("callback printk calls", printk_calls, 2);
	expect_int("callback count", *ghost_count(), 2);
	expect_int("callback calls", callback_calls, 1);
	expect_true("callback argument", callback_argument ==
			(struct ztp_device *)(uintptr_t)tpd_cdev);
	expect_true("callback format", printk_formats[1] &&
			strcmp(printk_formats[1],
			       "\0015tpd: ghost check reset, ghost_rst_num = %d") == 0);
	expect_int("callback logged count", printk_int_arguments[1], 2);
}

static void test_ghost_boundary_callback(void)
{
	reset_trace(2, true);
	ghost_check_result = 1;
	tp_ghost_check_work(NULL);
	expect_common_tail("boundary callback");
	expect_int("boundary callback count", *ghost_count(), 3);
	expect_int("boundary callback calls", callback_calls, 1);
}

int main(void)
{
	test_no_ghost();
	test_ghost_without_callback_increments();
	test_ghost_limit_skips_callback();
	test_ghost_callback_and_increment();
	test_ghost_boundary_callback();
	if (failures != 0)
		return 1;
	puts("PASS tp_ghost_check_work host tests (5 cases)");
	return 0;
}
