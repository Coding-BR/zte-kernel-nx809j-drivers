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
typedef unsigned short _WORD;
typedef unsigned char _BYTE;
typedef unsigned int u32;
typedef unsigned char u8;

struct platform_device { unsigned char bytes[0x120]; };
struct device { unsigned char bytes[0x20]; };
struct tcm_dev { unsigned char bytes[0x20]; };
struct syna_tcm { unsigned char bytes[0x800]; };
struct tcm_timings { unsigned char bytes[0x28]; };
struct file_operations { unsigned char bytes[8]; };
struct workqueue_struct { unsigned char bytes[8]; };

static unsigned char stack_guard[2048];
static unsigned char managed_device[64];
static unsigned char tcm_storage[64];
static unsigned char tpd_storage[0x1000];
static struct file_operations zte_fops;
static __int64 tpd_cdev;

static int managed_available;
static int allocation_available = 1;
static int allocate_device_result;
static int timings_result;
static int misc_result;
static int connect_result;
static int cdev_result;
static int sysfs_result;
static int completion_state;
static int failures;
static unsigned int calls[32];

static const char *unk_365DA = "probe";
static const char *unk_36FB5 = "missing";
static const char *unk_3BE43 = "managed";
static const char *unk_3BE0E = "alloc";
static const char *unk_35F48 = "device";
static const char *unk_318DC = "timings";
static const char *unk_38836 = "misc";
static const char *unk_38208 = "connect";
static const char *unk_31E7C = "cdev";
static const char *unk_31EAB = "sysfs";
static const char *unk_34845 = "release";
static const char *unk_393AC = "panel";
static const char *unk_364AC = "helper";
static const char *unk_36FE8 = "boot";
static const char *unk_31906 = "ready";
static int init_completion___key_1;
static int syna_pal_mutex_alloc___key;
static int syna_dev_probe___key;
static int syna_dev_probe___key_53;

#define SP_EL0 0

static void * _ReadStatusReg(int selector)
{
	if (selector != SP_EL0)
		failures++;
	return stack_guard;
}

static int printk(const char *format, ...)
{
	va_list args;
	(void)format;
	va_start(args, format);
	(void)va_arg(args, const char *);
	va_end(args);
	return 0;
}

static __int64 syna_request_managed_device(void)
{
	calls[0]++;
	return managed_available ? (__int64)(uintptr_t)managed_device : 0;
}

static void *devm_kmalloc(__int64 device, size_t size, unsigned int flags)
{
	(void)device; (void)flags; calls[1]++;
	return allocation_available ? calloc(1, size) : NULL;
}

static void _init_swait_queue_head(void *queue, const char *name, void *key)
{
	(void)queue; (void)name; (void)key; calls[2]++;
}

static unsigned int syna_tcm_allocate_device(__int64 *out, __int64 parent, __int64 context)
{
	(void)parent; (void)context; calls[3]++;
	if (allocate_device_result < 0) { *out = 0; return (unsigned int)allocate_device_result; }
	*out = (__int64)(uintptr_t)tcm_storage;
	return 0;
}

static unsigned int syna_tcm_config_timings(struct tcm_dev *tcm,
						struct tcm_timings *timings,
						u32 default_value, u32 fields)
{
	(void)tcm; (void)timings; (void)default_value; (void)fields; calls[4]++;
	return (unsigned int)timings_result;
}

static void _mutex_init(void *lock, const char *name, void *key)
{
	(void)lock; (void)name; (void)key; calls[5]++;
}

static void *_kmalloc_large_noprof(size_t size, unsigned int flags)
{
	(void)flags; calls[6]++; return calloc(1, size);
}

static void _init_waitqueue_head(void *queue, const char *name, void *key)
{
	(void)queue; (void)name; (void)key; calls[7]++;
}

static int misc_register(void *misc)
{
	(void)misc; calls[8]++; return misc_result;
}

static void device_set_wakeup_capable(void *device, int capable)
{
	(void)device; (void)capable; calls[9]++;
}

static void device_wakeup_enable(void *device)
{
	(void)device; calls[10]++;
}

static int syna_dev_connect(struct syna_tcm *tcm)
{
	(void)tcm; calls[11]++; return connect_result;
}

static void syna_dev_disconnect(struct syna_tcm *tcm)
{
	(void)tcm; calls[12]++;
}

static int syna_dev_set_up_app_fw(struct syna_tcm *tcm)
{
	(void)tcm; calls[13]++; return 0;
}

static int syna_dev_resume(struct syna_tcm *tcm)
{
	(void)tcm; calls[14]++; return 0;
}

static int syna_dev_suspend(struct syna_tcm *tcm)
{
	(void)tcm; calls[15]++; return 0;
}

static int syna_cdev_create(__int64 context, __int64 pdev)
{
	(void)context; (void)pdev; calls[16]++; return cdev_result;
}

static int syna_sysfs_create_dir(__int64 context, __int64 pdev)
{
	(void)context; (void)pdev; calls[17]++; return sysfs_result;
}

static void syna_cdev_remove(struct syna_tcm *tcm)
{
	(void)tcm; calls[18]++;
}

static void syna_ts_register_for_panel_events(struct syna_tcm *tcm)
{
	(void)tcm; calls[19]++;
}

static struct workqueue_struct *alloc_workqueue(const char *name,
						unsigned int flags, int max_active,
						const char *fmt)
{
	(void)name; (void)flags; (void)max_active; (void)fmt; calls[20]++;
	return (struct workqueue_struct *)calloc(1, sizeof(struct workqueue_struct));
}

static int zte_get_boot_mode(void)
{
	calls[21]++; return 7;
}

static int completion_done(void *completion)
{
	(void)completion; calls[22]++; return completion_state;
}

static void complete(void *completion)
{
	(void)completion; calls[23]++; completion_state = 1;
}

static void syna_tcm_remove_device(struct tcm_dev *tcm)
{
	(void)tcm; calls[24]++;
}

static void kfree(const void *ptr)
{
	free((void *)ptr); calls[25]++;
}

static void devm_kfree(__int64 device, void *ptr)
{
	(void)device; free(ptr); calls[26]++;
}

static void tpd_goodix_ts_resume(void) {}
static void tpd_goodix_ts_suspend(void) {}
static void syna_dev_helper_work(void) {}

#include "../../../reconstructed/zte_tpd/syna_dev_probe.c"

static void reset_trace(void)
{
	memset(calls, 0, sizeof(calls));
	memset(tpd_storage, 0, sizeof(tpd_storage));
	managed_available = 1; allocation_available = 1;
	allocate_device_result = timings_result = misc_result = 0;
	connect_result = cdev_result = sysfs_result = 0;
	completion_state = 0; tpd_cdev = (__int64)(uintptr_t)tpd_storage;
}

static struct platform_device make_pdev(bool with_context)
{
	struct platform_device pdev;
	memset(&pdev, 0, sizeof(pdev));
	if (with_context)
		*(__int64 *)(pdev.bytes + 160) = (__int64)(uintptr_t)(managed_device + 8);
	return pdev;
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

static void test_missing_context(void)
{
	struct platform_device pdev = make_pdev(false); reset_trace();
	expect_int("missing context", syna_dev_probe(&pdev), -22);
}

static void test_missing_managed_device(void)
{
	struct platform_device pdev = make_pdev(true); reset_trace(); managed_available = 0;
	expect_int("missing managed device", syna_dev_probe(&pdev), -12);
}

static void test_allocation_failure(void)
{
	struct platform_device pdev = make_pdev(true); reset_trace(); allocation_available = 0;
	expect_int("allocation failure", syna_dev_probe(&pdev), -12);
}

static void test_allocate_device_failure(void)
{
	struct platform_device pdev = make_pdev(true); reset_trace(); allocate_device_result = -5;
	expect_int("device allocation failure", syna_dev_probe(&pdev), -5);
}

static void test_timings_failure(void)
{
	struct platform_device pdev = make_pdev(true); reset_trace(); timings_result = -6;
	expect_int("timings failure", syna_dev_probe(&pdev), -6);
	expect_int("timings remove", calls[24], 1);
}

static void test_misc_failure(void)
{
	struct platform_device pdev = make_pdev(true); reset_trace(); misc_result = -7;
	expect_int("misc failure", syna_dev_probe(&pdev), -7);
	expect_int("misc failure remove", calls[24], 0);
}

static void test_connect_failure(void)
{
	struct platform_device pdev = make_pdev(true); reset_trace(); connect_result = -8;
	expect_int("connect failure", syna_dev_probe(&pdev), -8);
	expect_int("connect buffer cleanup", calls[25], 1);
	expect_int("connect tcm cleanup", calls[24], 1);
}

static void test_cdev_failure(void)
{
	struct platform_device pdev = make_pdev(true); reset_trace(); cdev_result = -9;
	expect_int("cdev failure", syna_dev_probe(&pdev), -9);
	expect_int("cdev disconnect", calls[12], 1);
}

static void test_sysfs_failure(void)
{
	struct platform_device pdev = make_pdev(true); reset_trace(); sysfs_result = -10;
	expect_int("sysfs failure", syna_dev_probe(&pdev), -20);
	expect_int("sysfs cdev cleanup", calls[18], 1);
	expect_int("sysfs disconnect", calls[12], 1);
}

static void test_success_completion_already_done(void)
{
	struct platform_device pdev = make_pdev(true); reset_trace(); completion_state = 1;
	expect_int("success done", syna_dev_probe(&pdev), 0);
	expect_true("context stored", *(__int64 *)(pdev.bytes + 168) != 0);
	expect_int("completion unchanged", calls[23], 0);
	expect_int("panel registration", calls[19], 1);
}

static void test_success_completion_pending(void)
{
	struct platform_device pdev = make_pdev(true); reset_trace();
	expect_int("success pending", syna_dev_probe(&pdev), 0);
	expect_int("completion signalled", calls[23], 1);
	expect_true("resume hook", *(__int64 *)(tpd_storage + 3152) != 0);
	expect_true("suspend hook", *(__int64 *)(tpd_storage + 3160) != 0);
}

int main(void)
{
	test_missing_context(); test_missing_managed_device(); test_allocation_failure();
	test_allocate_device_failure(); test_timings_failure(); test_misc_failure();
	test_connect_failure(); test_cdev_failure(); test_sysfs_failure();
	test_success_completion_already_done(); test_success_completion_pending();
	if (failures) return 1;
	puts("PASS syna_dev_probe host tests (11 scenarios)");
	return 0;
}
