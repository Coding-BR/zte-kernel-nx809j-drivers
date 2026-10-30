#include <stdbool.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct delayed_work {
	unsigned char opaque[64];
};

struct ztp_device {
	struct delayed_work zlog_register_work;
	void *ztp_zlog_buffer;
};

static struct ztp_device device_a;
static struct ztp_device device_b;
static struct ztp_device *current_device;
static const char *printk_format;
static const char *printk_argument;
static unsigned int printk_calls;
static void *cancelled_work;
static unsigned int cancel_calls;
static void *freed_buffer;
static unsigned int free_calls;
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

static int test_cancel_delayed_work_sync(void *work)
{
	cancel_calls++;
	cancelled_work = work;
	return 1;
}

static void test_vfree(void *buffer)
{
	free_calls++;
	freed_buffer = buffer;
}

#define tpd_zlog_device test_tpd_zlog_device
#define cancel_delayed_work_sync test_cancel_delayed_work_sync
#define vfree test_vfree
#define printk test_printk
static int test_printk(const char *format, ...);
#include "../../../reconstructed/zte_tpd/zlog_register_work_deinit.c"
#undef printk
#undef vfree
#undef cancel_delayed_work_sync
#undef tpd_zlog_device

static int test_printk(const char *format, ...)
{
	printk_calls++;
	printk_format = format;
	printk_argument = "zlog_register_work_deinit";
	return 0;
}

static void reset_trace(void)
{
	memset(&device_a, 0, sizeof(device_a));
	memset(&device_b, 0, sizeof(device_b));
	current_device = &device_a;
	printk_format = NULL;
	printk_argument = NULL;
	printk_calls = 0;
	cancelled_work = NULL;
	cancel_calls = 0;
	freed_buffer = NULL;
	free_calls = 0;
}

static void test_deinit_frees_and_clears_buffer(void)
{
	void *buffer = (void *)(uintptr_t)0x12345000;

	reset_trace();
	device_a.ztp_zlog_buffer = buffer;
	zlog_register_work_deinit();
	expect_int("allocated printk calls", printk_calls, 1);
	expect_true("allocated printk format", printk_format &&
		strcmp(printk_format, "\0015tpd: %s enter") == 0);
	expect_true("allocated printk argument", printk_argument &&
		strcmp(printk_argument, "zlog_register_work_deinit") == 0);
	expect_int("allocated cancel calls", cancel_calls, 1);
	expect_true("allocated cancel address",
		cancelled_work == (void *)&device_a.zlog_register_work);
	expect_int("allocated free calls", free_calls, 1);
	expect_true("allocated freed buffer", freed_buffer == buffer);
	expect_true("allocated field cleared", device_a.ztp_zlog_buffer == NULL);
}

static void test_deinit_handles_null_buffer(void)
{
	reset_trace();
	zlog_register_work_deinit();
	expect_int("null cancel calls", cancel_calls, 1);
	expect_int("null free calls", free_calls, 1);
	expect_true("null buffer passed", freed_buffer == NULL);
	expect_true("null field remains clear", device_a.ztp_zlog_buffer == NULL);
}

static void test_deinit_selects_current_device(void)
{
	void *buffer = (void *)(uintptr_t)0x56789000;

	reset_trace();
	current_device = &device_b;
	device_b.ztp_zlog_buffer = buffer;
	zlog_register_work_deinit();
	expect_true("selected cancel address",
		cancelled_work == (void *)&device_b.zlog_register_work);
	expect_true("selected freed buffer", freed_buffer == buffer);
	expect_true("selected field cleared", device_b.ztp_zlog_buffer == NULL);
	expect_true("other device untouched", device_a.ztp_zlog_buffer == NULL);
}

static void test_deinit_is_repeatable(void)
{
	void *buffer = (void *)(uintptr_t)0x9abc0000;

	reset_trace();
	device_a.ztp_zlog_buffer = buffer;
	zlog_register_work_deinit();
	zlog_register_work_deinit();
	expect_int("repeat cancel calls", cancel_calls, 2);
	expect_int("repeat free calls", free_calls, 2);
	expect_true("repeat field cleared", device_a.ztp_zlog_buffer == NULL);
	expect_true("repeat second free is null", freed_buffer == NULL);
}

int main(void)
{
	test_deinit_frees_and_clears_buffer();
	test_deinit_handles_null_buffer();
	test_deinit_selects_current_device();
	test_deinit_is_repeatable();
	if (failures != 0)
		return 1;
	puts("PASS zlog_register_work_deinit host tests (4 cases)");
	return 0;
}
