#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define __int64 long long
typedef unsigned long long _QWORD;

struct delayed_work;
long long tpd_cdev;
const char *unk_322AA = "\0015tpd: %s enter";

static unsigned char cdev_storage[0x1100];
static unsigned char zlog_storage[32];
static unsigned int report_deinit_calls;
static unsigned int resume_deinit_calls;
static unsigned int cancel_calls;
static unsigned int cancel_offsets[4];
static unsigned int vfree_calls;
static const void *vfree_argument;
static unsigned int printk_calls;
static const char *printk_labels[4];
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

static int test_printk(const char *format, ...)
{
	va_list args;
	const char *label;

	va_start(args, format);
	label = va_arg(args, const char *);
	if (printk_calls < 4)
		printk_labels[printk_calls] = label;
	printk_calls++;
	va_end(args);
	return 0;
}

static void test_tpd_report_work_deinit(void)
{
	report_deinit_calls++;
}

static void test_tpd_resume_work_deinit(void)
{
	resume_deinit_calls++;
}

static int test_cancel_delayed_work_sync(long long work)
{
	uintptr_t base = (uintptr_t)cdev_storage;
	uintptr_t address = (uintptr_t)(unsigned long long)work;

	if (cancel_calls < 4)
		cancel_offsets[cancel_calls] = (unsigned int)(address - base);
	cancel_calls++;
	return 1;
}

static void test_vfree(const void *address)
{
	vfree_calls++;
	vfree_argument = address;
}

#define printk test_printk
#define tpd_report_work_deinit test_tpd_report_work_deinit
#define tpd_resume_work_deinit test_tpd_resume_work_deinit
#define cancel_delayed_work_sync test_cancel_delayed_work_sync
#define vfree test_vfree
#include "../../../reconstructed/zte_tpd/tpd_workqueue_deinit.c"
#undef vfree
#undef cancel_delayed_work_sync
#undef tpd_resume_work_deinit
#undef tpd_report_work_deinit
#undef printk

static void reset_trace(const void *zlog_buffer)
{
	memset(cdev_storage, 0, sizeof(cdev_storage));
	tpd_cdev = (long long)(uintptr_t)cdev_storage;
	report_deinit_calls = 0;
	resume_deinit_calls = 0;
	cancel_calls = 0;
	memset(cancel_offsets, 0, sizeof(cancel_offsets));
	vfree_calls = 0;
	vfree_argument = NULL;
	printk_calls = 0;
	memset(printk_labels, 0, sizeof(printk_labels));
	*(_QWORD *)(void *)(cdev_storage + 0xbe8) =
		(_QWORD)(uintptr_t)zlog_buffer;
}

static void expect_trace(const char *case_name, const void *expected_buffer)
{
	char label[96];

	snprintf(label, sizeof(label), "%s report deinit calls", case_name);
	expect_int(label, report_deinit_calls, 1);
	snprintf(label, sizeof(label), "%s resume deinit calls", case_name);
	expect_int(label, resume_deinit_calls, 1);
	snprintf(label, sizeof(label), "%s printk calls", case_name);
	expect_int(label, printk_calls, 3);
	expect_true("first log", printk_labels[0] &&
		strcmp(printk_labels[0], "tpd_workqueue_deinit") == 0);
	expect_true("probe log", printk_labels[1] &&
		strcmp(printk_labels[1], "tpd_probe_work_deinit") == 0);
	expect_true("zlog log", printk_labels[2] &&
		strcmp(printk_labels[2], "zlog_register_work_deinit") == 0);
	snprintf(label, sizeof(label), "%s cancel calls", case_name);
	expect_int(label, cancel_calls, 3);
	expect_int("probe cancel offset", cancel_offsets[0], 0x8d0);
	expect_int("zlog cancel offset", cancel_offsets[1], 0xa50);
	expect_int("ghost cancel offset", cancel_offsets[2], 0x938);
	snprintf(label, sizeof(label), "%s vfree calls", case_name);
	expect_int(label, vfree_calls, 1);
	expect_true("vfree argument", vfree_argument == expected_buffer);
	expect_int("zlog slot clear", *(_QWORD *)(void *)(cdev_storage + 0xbe8), 0);
}

static void test_buffer_release(void)
{
	reset_trace(zlog_storage);
	tpd_workqueue_deinit();
	expect_trace("buffer release", zlog_storage);
}

static void test_null_buffer_release(void)
{
	reset_trace(NULL);
	tpd_workqueue_deinit();
	expect_trace("null buffer release", NULL);
}

int main(void)
{
	test_buffer_release();
	test_null_buffer_release();
	if (failures != 0)
		return 1;
	puts("PASS tpd_workqueue_deinit host tests (2 cases)");
	return 0;
}
