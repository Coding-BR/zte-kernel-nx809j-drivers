#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int64 long long
#define __int8 char
#define __fastcall
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
struct platform_device { unsigned char bytes[0x110]; };
struct syna_tcm { unsigned char bytes[0x800]; };
struct device { unsigned char bytes[16]; };

static unsigned char context_storage[0x800];
static unsigned char pdev_storage[0x110];
static unsigned char managed_storage[64];
static __int64 active_panel;
static int managed_available;
static int notifier_present;
static int buffer_active;
static unsigned int calls[16];
static int failures;

static char *unk_38D7D = "missing";
static char *unk_34878 = "remove";
static char *unk_3BE43 = "managed";
static char *unk_34845 = "buffer";

static int printk(const char *format, ...)
{
	va_list args;
	(void)format;
	va_start(args, format);
	(void)va_arg(args, const char *);
	va_end(args);
	return 0;
}

static void cancel_work_sync(__int64 work)
{
	(void)work; calls[0]++;
}

static void _flush_workqueue(__int64 workqueue)
{
	(void)workqueue; calls[1]++;
}

static void destroy_workqueue(__int64 workqueue)
{
	(void)workqueue; calls[2]++;
}

static void panel_event_notifier_unregister(void *notifier)
{
	if (!notifier) failures++;
	calls[3]++;
}

static void syna_sysfs_remove_dir(struct syna_tcm *tcm)
{
	if (tcm != (struct syna_tcm *)context_storage) failures++;
	calls[4]++;
}

static void syna_cdev_remove(struct syna_tcm *tcm)
{
	if (tcm != (struct syna_tcm *)context_storage) failures++;
	calls[5]++;
}

static int syna_dev_disconnect(struct syna_tcm *tcm)
{
	if (tcm != (struct syna_tcm *)context_storage) failures++;
	calls[6]++;
	return 0;
}

static __int64 syna_request_managed_device(void)
{
	calls[7]++;
	return managed_available ? (__int64)(uintptr_t)managed_storage : 0;
}

static int devm_kfree(__int64 device, void *ptr)
{
	if (!device || !ptr) failures++;
	free(ptr); calls[8]++;
	return 0;
}

static void kfree(const void *ptr)
{
	if (!ptr) failures++;
	free((void *)ptr); calls[9]++;
}

static void syna_tcm_remove_device(__int64 tcm)
{
	if (tcm != (__int64)(uintptr_t)(context_storage + 0x300)) failures++;
	calls[10]++;
}

#include "../../../reconstructed/zte_tpd/syna_dev_remove.c"

static void reset_trace(void)
{
	memset(context_storage, 0, sizeof(context_storage));
	memset(pdev_storage, 0, sizeof(pdev_storage));
	memset(calls, 0, sizeof(calls));
	managed_available = 1; active_panel = 0; notifier_present = 0;
	buffer_active = 0; failures = 0;
	*(__int64 *)(pdev_storage + 168) = (__int64)(uintptr_t)context_storage;
	*(__int64 *)(context_storage + 0) = (__int64)(uintptr_t)(context_storage + 0x300);
	*(__int64 *)(context_storage + 1320) = 0x101;
	*(__int64 *)(context_storage + 1352) = 0x202;
	*(__int64 *)(context_storage + 1448) = (__int64)(uintptr_t)malloc(32);
	*(__int64 *)(context_storage + 680) = (__int64)(uintptr_t)malloc(32);
	*(__int64 *)(context_storage + 1120) = (__int64)(uintptr_t)malloc(32);
	*(_BYTE *)(context_storage + 744) = 0;
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
	if (!value) { fprintf(stderr, "%s: condition failed\n", name); failures++; }
}

static void test_full_cleanup_with_panel_and_buffer(void)
{
	struct platform_device *pdev = (struct platform_device *)pdev_storage; reset_trace();
	active_panel = 1; notifier_present = 1; buffer_active = 1;
	*(__int64 *)(context_storage + 1360) = (__int64)(uintptr_t)&notifier_present;
	*(_BYTE *)(context_storage + 744) = 1;
	syna_dev_remove(pdev);
	expect_int("work cancellation", calls[0], 1);
	expect_int("panel unregister", calls[3], 1);
	expect_int("managed frees", calls[8], 2);
	expect_int("frame free", calls[9], 1);
	expect_int("TCM removal", calls[10], 1);
	expect_true("managed buffer cleared", *(__int64 *)(context_storage + 688) == 0);
	expect_true("buffer state cleared", *(_BYTE *)(context_storage + 744) == 0);
}

static void test_cleanup_without_panel_or_buffer(void)
{
	struct platform_device *pdev = (struct platform_device *)pdev_storage; reset_trace();
	syna_dev_remove(pdev);
	expect_int("no panel unregister", calls[3], 0);
	expect_int("no buffer log", calls[8], 2);
	expect_int("frame free", calls[9], 1);
	expect_int("TCM removal", calls[10], 1);
}

static void test_managed_device_unavailable(void)
{
	struct platform_device *pdev = (struct platform_device *)pdev_storage; reset_trace(); managed_available = 0;
	syna_dev_remove(pdev);
	expect_int("no managed free", calls[8], 0);
	expect_int("frame free", calls[9], 1);
	expect_int("TCM removal", calls[10], 1);
	expect_true("buffer state cleared", *(_BYTE *)(context_storage + 744) == 0);
}

static void test_optional_managed_buffers_absent(void)
{
	struct platform_device *pdev = (struct platform_device *)pdev_storage; reset_trace();
	*(__int64 *)(context_storage + 1448) = 0;
	*(__int64 *)(context_storage + 680) = 0;
	syna_dev_remove(pdev);
	expect_int("optional buffers free", calls[8], 0);
	expect_int("frame free", calls[9], 1);
	expect_int("TCM removal", calls[10], 1);
}

int main(void)
{
	test_full_cleanup_with_panel_and_buffer();
	test_cleanup_without_panel_or_buffer();
	test_managed_device_unavailable();
	test_optional_managed_buffers_absent();
	if (failures) return 1;
	puts("PASS syna_dev_remove host tests (4 scenarios)");
	return 0;
}
