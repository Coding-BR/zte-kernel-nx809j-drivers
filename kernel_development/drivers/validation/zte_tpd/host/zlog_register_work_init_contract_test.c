#include <stdbool.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct delayed_work {
	unsigned char opaque[64];
};

struct ztp_device {
	unsigned char prefix[0x100];
	struct delayed_work zlog_register_work;
};

static struct ztp_device device_a;
static struct ztp_device device_b;
static struct ztp_device *current_device;
static const char *printk_format;
static const char *printk_argument;
static unsigned int printk_calls;
static void *initialized_work;
static void *initialized_callback;
static unsigned int init_calls;
static unsigned int failures;

static void expect_true(const char *name, bool condition)
{
	if (!condition) {
		fprintf(stderr, "%s: condition failed\n", name);
		failures++;
	}
}

static void expect_int(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual,
			expected);
		failures++;
	}
}

static struct ztp_device *test_tpd_zlog_device(void)
{
	return current_device;
}

static int test_printk(const char *format, ...)
{
	va_list args;

	printk_calls++;
	printk_format = format;
	va_start(args, format);
	printk_argument = va_arg(args, const char *);
	va_end(args);
	return 0;
}

static void zlog_register_work(void *work)
{
	(void)work;
}

static void test_init_delayed_work(void *work, void *callback)
{
	init_calls++;
	initialized_work = work;
	initialized_callback = callback;
}

#define tpd_zlog_device test_tpd_zlog_device
#define printk test_printk
#define INIT_DELAYED_WORK(work, callback) \
	test_init_delayed_work((void *)(work), (void *)(callback))
#include "../../../reconstructed/zte_tpd/zlog_register_work_init.c"
#undef INIT_DELAYED_WORK
#undef printk
#undef tpd_zlog_device

static void reset_trace(void)
{
	memset(&device_a, 0, sizeof(device_a));
	memset(&device_b, 0, sizeof(device_b));
	current_device = &device_a;
	printk_format = NULL;
	printk_argument = NULL;
	printk_calls = 0;
	initialized_work = NULL;
	initialized_callback = NULL;
	init_calls = 0;
}

static void test_print_contract(void)
{
	reset_trace();
	zlog_register_work_init();
	expect_int("print call count", printk_calls, 1);
	expect_true("print format", printk_format &&
		strcmp(printk_format, "\0015tpd: %s enter") == 0);
	expect_true("print function argument", printk_argument &&
		strcmp(printk_argument, "zlog_register_work_init") == 0);
}

static void test_delayed_work_contract(void)
{
	reset_trace();
	zlog_register_work_init();
	expect_int("init call count", init_calls, 1);
	expect_true("initialized work address",
		initialized_work == (void *)&device_a.zlog_register_work);
	expect_true("initialized callback",
		initialized_callback == (void *)zlog_register_work);
}

static void test_repeatability_contract(void)
{
	reset_trace();
	zlog_register_work_init();
	current_device = &device_b;
	zlog_register_work_init();
	expect_int("repeat printk count", printk_calls, 2);
	expect_int("repeat init count", init_calls, 2);
	expect_true("repeat second work address",
		initialized_work == (void *)&device_b.zlog_register_work);
	expect_true("repeat callback",
		initialized_callback == (void *)zlog_register_work);
}

static void test_device_selection_contract(void)
{
	reset_trace();
	current_device = &device_b;
	zlog_register_work_init();
	expect_true("selected device work address",
		initialized_work == (void *)&device_b.zlog_register_work);
	expect_true("selected device callback",
		initialized_callback == (void *)zlog_register_work);
}

int main(void)
{
	test_print_contract();
	test_delayed_work_contract();
	test_repeatability_contract();
	test_device_selection_contract();
	if (failures != 0)
		return 1;
	puts("PASS zlog_register_work_init host tests (4 cases)");
	return 0;
}
