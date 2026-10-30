#include <stdbool.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;

static __int64 tpd_cdev;
static unsigned int printk_calls;
static unsigned int cancel_calls;
static const char *last_printk_format;
static const char *last_printk_function;
static __int64 last_cancel_work;
static unsigned int failures;

static int test_printk(const char *format, ...)
{
	va_list args;

	printk_calls++;
	last_printk_format = format;
	va_start(args, format);
	last_printk_function = va_arg(args, const char *);
	va_end(args);
	return 0;
}

static int test_cancel_delayed_work_sync(__int64 work)
{
	cancel_calls++;
	last_cancel_work = work;
	return 1;
}

#define printk test_printk
#define cancel_delayed_work_sync test_cancel_delayed_work_sync
#include "../../../reconstructed/zte_tpd/tpd_probe_work_deinit.c"
#undef cancel_delayed_work_sync
#undef printk

static void reset_trace(void)
{
	printk_calls = 0;
	cancel_calls = 0;
	last_printk_format = NULL;
	last_printk_function = NULL;
	last_cancel_work = 0;
}

static void expect_int(const char *name, unsigned int actual, unsigned int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %u expected %u\n", name, actual, expected);
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

static void test_deinit_contract(void)
{
	unsigned char device_storage[0x8d0 + 64];

	tpd_cdev = (__int64)(uintptr_t)device_storage;
	reset_trace();
	tpd_probe_work_deinit();
	expect_int("printk calls", printk_calls, 1);
	expect_int("cancel calls", cancel_calls, 1);
	expect_true("printk format", last_printk_format &&
			strcmp(last_printk_format, "\0015tpd: %s enter") == 0);
	expect_true("printk function", last_printk_function &&
			strcmp(last_printk_function, "tpd_probe_work_deinit") == 0);
	expect_true("delayed work offset", last_cancel_work ==
			(__int64)(uintptr_t)device_storage + 0x8d0);
}

static void test_repeated_deinit_contract(void)
{
	unsigned char device_storage[0x8d0 + 64];

	tpd_cdev = (__int64)(uintptr_t)device_storage;
	reset_trace();
	tpd_probe_work_deinit();
	tpd_probe_work_deinit();
	expect_int("repeat printk calls", printk_calls, 2);
	expect_int("repeat cancel calls", cancel_calls, 2);
	expect_true("repeat delayed work offset", last_cancel_work ==
			(__int64)(uintptr_t)device_storage + 0x8d0);
}

int main(void)
{
	test_deinit_contract();
	test_repeated_deinit_contract();
	if (failures != 0)
		return 1;
	puts("PASS tpd_probe_work_deinit host tests (2 cases)");
	return 0;
}
