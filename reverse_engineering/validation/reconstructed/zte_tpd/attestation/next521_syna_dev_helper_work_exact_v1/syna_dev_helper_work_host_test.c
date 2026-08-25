#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
#define __int8 char
#define __int16 short
#define _DWORD int32_t
#define _WORD int16_t
#define _BYTE uint8_t
#define __fastcall

struct work_struct { unsigned char bytes[0x800]; };
struct tcm_dev { unsigned char bytes[0x240]; };
struct syna_tcm;

static int boot_info_result;
static unsigned int boot_info_calls;
static unsigned int queue_calls;
static unsigned int printk_calls;
static unsigned int break_calls;
static unsigned int callback_calls;
static unsigned int failures;
static const char *unk_35A8D = "boot-info";
static const char *unk_32FB1 = "report-pending";
static const char *unk_34811 = "report-ready";

static int queue_delayed_work_on(unsigned int cpu, __int64 workqueue,
					__int64 work, unsigned long delay)
{
	if (cpu != 32 || workqueue != 0x12340000 || delay != 25)
		failures++;
	if (work == 0)
		failures++;
	queue_calls++;
	return 1;
}

static int syna_tcm_get_boot_info(struct tcm_dev *tcm, void *buffer,
					unsigned int size)
{
	(void)tcm;
	(void)buffer;
	if (size != 20)
		failures++;
	boot_info_calls++;
	return boot_info_result;
}

static int printk(const char *format, ...)
{
	va_list args;
	(void)format;
	va_start(args, format);
	va_end(args);
	printk_calls++;
	return 0;
}

static int helper_callback(struct syna_tcm *context)
{
	if (context == 0)
		failures++;
	callback_calls++;
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_dev_helper_work.c"

struct fixture {
	unsigned char storage[0x1000];
	struct work_struct *work;
	struct tcm_dev *tcm;
};

static void reset_fixture(struct fixture *fixture)
{
	memset(fixture, 0, sizeof(*fixture));
	fixture->work = (struct work_struct *)(fixture->storage + 0x600);
	fixture->tcm = (struct tcm_dev *)(fixture->storage + 0x100);
	*(__int64 *)((unsigned char *)fixture->work - 0x528) =
		(__int64)(uintptr_t)fixture->tcm;
	*(__int64 *)((unsigned char *)fixture->work - 0xf8) = 0x12340000;
	*(__int64 *)((unsigned char *)fixture->work + 400) =
		(__int64)(uintptr_t)helper_callback;
	boot_info_result = 0;
	boot_info_calls = 0;
	queue_calls = 0;
	printk_calls = 0;
	break_calls = 0;
	callback_calls = 0;
	failures = 0;
}

static void expect_int(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual, expected);
		failures++;
	}
}

static void run_helper(struct fixture *fixture, unsigned int state,
				unsigned int mode, unsigned int report_size)
{
  *(int32_t *)((unsigned char *)fixture->work - 8) = (int32_t)state;
	fixture->tcm->bytes[9] = (unsigned char)mode;
  *(int16_t *)(fixture->tcm->bytes + 0xb2) = (int16_t)report_size;
	syna_dev_helper_work(fixture->work);
}

static void test_inactive_state(void)
{
	struct fixture fixture;
	reset_fixture(&fixture);
	run_helper(&fixture, 0, 11, 0);
	expect_int("inactive state cleared", *(int *)((unsigned char *)fixture.work - 8), 0);
	expect_int("inactive boot calls", boot_info_calls, 0);
	expect_int("inactive queue calls", queue_calls, 0);
}

static void test_boot_mode_requeues(void)
{
	struct fixture fixture;
	reset_fixture(&fixture);
	run_helper(&fixture, 1, 11, 0);
	expect_int("mode 11 state cleared", *(int *)((unsigned char *)fixture.work - 8), 0);
	expect_int("mode 11 boot calls", boot_info_calls, 1);
	expect_int("mode 11 queue calls", queue_calls, 1);
	expect_int("mode 11 callback calls", callback_calls, 0);
}

static void test_pending_report_requeues(void)
{
	struct fixture fixture;
	reset_fixture(&fixture);
	run_helper(&fixture, 1, 1, 7);
	expect_int("pending state cleared", *(int *)((unsigned char *)fixture.work - 8), 0);
	expect_int("pending boot calls", boot_info_calls, 0);
	expect_int("pending queue calls", queue_calls, 0);
	expect_int("pending printk calls", printk_calls, 1);
}

static void test_ready_report_invokes_callback(void)
{
	struct fixture fixture;
	reset_fixture(&fixture);
	run_helper(&fixture, 1, 1, 0);
	expect_int("ready state cleared", *(int *)((unsigned char *)fixture.work - 8), 0);
	expect_int("ready callback calls", callback_calls, 1);
	expect_int("ready queue calls", queue_calls, 0);
	expect_int("ready CFI break calls", break_calls, 0);
}

static void test_boot_failure_still_requeues(void)
{
	struct fixture fixture;
	reset_fixture(&fixture);
	boot_info_result = -5;
	run_helper(&fixture, 1, 11, 0);
	expect_int("failed boot state cleared", *(int *)((unsigned char *)fixture.work - 8), 0);
	expect_int("failed boot queue calls", queue_calls, 1);
	expect_int("failed boot printk calls", printk_calls, 0);
}

int main(void)
{
	test_inactive_state();
	test_boot_mode_requeues();
	test_pending_report_requeues();
	test_ready_report_invokes_callback();
	test_boot_failure_still_requeues();
	if (failures) {
		fprintf(stderr, "FAIL syna_dev_helper_work host tests (%u failures)\n", failures);
		return 1;
	}
	puts("PASS syna_dev_helper_work host tests (5 cases)");
	return 0;
}
