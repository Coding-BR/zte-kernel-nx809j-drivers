#include <stdarg.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

struct work_struct {
	unsigned long marker;
};

static unsigned int printk_calls;
static unsigned int module_init_calls;
static const char *last_printk_format;
static unsigned int failures;

static int test_printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	last_printk_format = format;
	return 0;
}

static void test_syna_dev_module_init(void)
{
	module_init_calls++;
}

#define printk test_printk
#define syna_dev_module_init test_syna_dev_module_init
#include "../../../reconstructed/zte_tpd/ztp_probe_work.c"
#undef syna_dev_module_init
#undef printk

static void reset_trace(void)
{
	printk_calls = 0;
	module_init_calls = 0;
	last_printk_format = NULL;
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

static void test_nonnull_work_argument_is_ignored(void)
{
	struct work_struct work = { .marker = 0x1122334455667788UL };

	reset_trace();
	ztp_probe_work(&work);
	expect_int("nonnull printk calls", printk_calls, 1);
	expect_int("nonnull module init calls", module_init_calls, 1);
	expect_true("nonnull printk format", last_printk_format &&
			strcmp(last_printk_format, "\0015tpd: ztp_probe_work in") == 0);
}

static void test_null_work_argument_is_ignored(void)
{
	reset_trace();
	ztp_probe_work(NULL);
	expect_int("null printk calls", printk_calls, 1);
	expect_int("null module init calls", module_init_calls, 1);
	expect_true("null printk format", last_printk_format &&
			strcmp(last_printk_format, "\0015tpd: ztp_probe_work in") == 0);
}

static void test_repeated_invocation_is_deterministic(void)
{
	struct work_struct work = { .marker = 0xa5a5a5a5UL };

	reset_trace();
	ztp_probe_work(&work);
	ztp_probe_work(&work);
	expect_int("repeat printk calls", printk_calls, 2);
	expect_int("repeat module init calls", module_init_calls, 2);
}

int main(void)
{
	test_nonnull_work_argument_is_ignored();
	test_null_work_argument_is_ignored();
	test_repeated_invocation_is_deterministic();
	if (failures != 0)
		return 1;
	puts("PASS ztp_probe_work host tests (3 cases)");
	return 0;
}
