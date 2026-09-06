#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define __int64 long long
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define __fastcall

struct file { int unused; };
struct platform_device { int unused; };
struct kobject { int unused; };
struct bin_attribute { int unused; };

static unsigned char device_storage[0x1000] __attribute__((aligned(8)));
long long tpd_cdev;
unsigned char zte_touch_deinit_ztp_release;
static char unk_322AA[] = "\0015tpd: %s enter";
static char unk_323A0[] = "\0015tpd: zte_touch_deinit already released\n";
static struct bin_attribute fwimage_attr;

enum event {
	EVENT_UFP_EXIT = 1,
	EVENT_LOG,
	EVENT_PROC_DEINIT,
	EVENT_REPORT_DEINIT,
	EVENT_RESUME_DEINIT,
	EVENT_CANCEL,
	EVENT_VFREE,
	EVENT_DESTROY_WQ,
	EVENT_SYSFS_REMOVE,
	EVENT_KOBJECT_PUT,
	EVENT_GPIO_FREE,
	EVENT_PLATFORM_UNREGISTER,
	EVENT_BREAK,
};

static unsigned int events[32];
static unsigned int event_count;
static unsigned int cancel_offsets[8];
static unsigned int cancel_count;
static long long vfree_values[4];
static unsigned int vfree_count;
static unsigned int printk_calls;
static char log_names[8][64];
static unsigned int log_count;
static unsigned int destroy_calls;
static unsigned int sysfs_remove_calls;
static unsigned int kobject_put_calls;
static unsigned int gpio_free_calls;
static unsigned int platform_unregister_calls;
static unsigned int break_calls;
static int failures;
static unsigned int total_failures;
static void (*unused_function)(long long);
void *off_338;

static void record_event(enum event event)
{
	if (event_count < sizeof(events) / sizeof(events[0]))
		events[event_count++] = event;
	else
		failures++;
}

int printk(const char *format, ...)
{
	va_list args;
	const char *name = "";

	++printk_calls;
	va_start(args, format);
	if (format == unk_322AA)
		name = va_arg(args, const char *);
	va_end(args);
	if (log_count < sizeof(log_names) / sizeof(log_names[0])) {
		(void)snprintf(log_names[log_count], sizeof(log_names[log_count]),
				"%s", name);
		++log_count;
	}
	record_event(EVENT_LOG);
	return 0;
}

void ufp_mac_exit(void) { record_event(EVENT_UFP_EXIT); }
void tpd_proc_deinit(void) { record_event(EVENT_PROC_DEINIT); }
void tpd_report_work_deinit(void) { record_event(EVENT_REPORT_DEINIT); }
void tpd_resume_work_deinit(void) { record_event(EVENT_RESUME_DEINIT); }

int cancel_delayed_work_sync(long long work)
{
	uintptr_t base = (uintptr_t)device_storage;
	uintptr_t address = (uintptr_t)work;

	if (cancel_count >= sizeof(cancel_offsets) / sizeof(cancel_offsets[0]) ||
		address < base || address - base > UINT32_MAX) {
		++failures;
		return -1;
	}
	cancel_offsets[cancel_count++] = (unsigned int)(address - base);
	record_event(EVENT_CANCEL);
	return 0;
}

void vfree(unsigned long long pointer)
{
	if (vfree_count < sizeof(vfree_values) / sizeof(vfree_values[0]))
		vfree_values[vfree_count++] = (long long)pointer;
	else
		++failures;
	record_event(EVENT_VFREE);
}

void destroy_workqueue(void *workqueue)
{
	if (workqueue != NULL)
		++failures;
	++destroy_calls;
	record_event(EVENT_DESTROY_WQ);
}

int sysfs_remove_bin_file(long long kobject, struct bin_attribute *attribute)
{
	if (kobject != (long long)(uintptr_t)(device_storage + 0xc50) ||
		attribute != &fwimage_attr)
		++failures;
	++sysfs_remove_calls;
	record_event(EVENT_SYSFS_REMOVE);
	return 0;
}

void kobject_put(long long kobject)
{
	if (kobject != (long long)(uintptr_t)(device_storage + 0xc50))
		++failures;
	++kobject_put_calls;
	record_event(EVENT_KOBJECT_PUT);
}

static void gpio_free_stub(long long gpio)
{
	if (gpio != 16)
		++failures;
	++gpio_free_calls;
	record_event(EVENT_GPIO_FREE);
}

void platform_device_unregister(struct platform_device *pdev)
{
	if (pdev != NULL)
		++failures;
	++platform_unregister_calls;
	record_event(EVENT_PLATFORM_UNREGISTER);
}

#define __break(value) do { (void)(value); ++break_calls; record_event(EVENT_BREAK); } while (0)

#include "../../../reconstructed/zte_tpd/zte_touch_deinit.c"

/* The ordinary path does not enter the stock null-device branch. */
static void reset_fixture(void)
{
	total_failures += (unsigned int)failures;
	memset(device_storage, 0, sizeof(device_storage));
	tpd_cdev = (long long)(uintptr_t)device_storage;
	memset(events, 0, sizeof(events));
	event_count = 0;
	memset(cancel_offsets, 0, sizeof(cancel_offsets));
	cancel_count = 0;
	memset(vfree_values, 0, sizeof(vfree_values));
	vfree_count = 0;
	printk_calls = 0;
	memset(log_names, 0, sizeof(log_names));
	log_count = 0;
	destroy_calls = 0;
	sysfs_remove_calls = 0;
	kobject_put_calls = 0;
	gpio_free_calls = 0;
	platform_unregister_calls = 0;
	break_calls = 0;
	failures = 0;
	zte_touch_deinit_ztp_release = 0;
	off_338 = (void *)gpio_free_stub;
	*(__int64 *)(device_storage + 0xbe8) =
		(__int64)UINT64_C(0x1020304050607080);
	*(__int64 *)(device_storage + 0xc50) =
		(__int64)(uintptr_t)(device_storage + 0xc50);
	*(__int64 *)(device_storage + 0xdd0) =
		(__int64)(uintptr_t)(device_storage + 0xdd0);
}

static void expect_unsigned(const char *name, unsigned int actual,
		unsigned int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %u expected %u\n", name, actual, expected);
		++failures;
	}
}

static void expect_pointer(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %p expected %p\n", name,
			(void *)(uintptr_t)actual, (void *)(uintptr_t)expected);
		++failures;
	}
}

static void expect_name(unsigned int index, const char *expected)
{
	if (index >= log_count || strcmp(log_names[index], expected) != 0) {
		fprintf(stderr, "log %u differs\n", index);
		++failures;
	}
}

static void test_full_teardown(void)
{
	static const unsigned int expected_events[] = {
		EVENT_UFP_EXIT, EVENT_LOG, EVENT_CANCEL, EVENT_VFREE,
		EVENT_PROC_DEINIT, EVENT_LOG, EVENT_REPORT_DEINIT,
		EVENT_RESUME_DEINIT, EVENT_LOG, EVENT_CANCEL, EVENT_LOG,
		EVENT_CANCEL, EVENT_VFREE, EVENT_CANCEL, EVENT_DESTROY_WQ,
		EVENT_SYSFS_REMOVE,
		EVENT_KOBJECT_PUT,
	};

	reset_fixture();
	zte_touch_deinit();
	expect_unsigned("event count", event_count,
		(unsigned int)(sizeof(expected_events) / sizeof(expected_events[0])));
	for (unsigned int index = 0; index < event_count &&
			index < sizeof(expected_events) / sizeof(expected_events[0]); ++index)
		if (events[index] != expected_events[index]) {
			fprintf(stderr, "event[%u]: got %u expected %u\n", index,
				events[index], expected_events[index]);
			++failures;
		}
	expect_unsigned("printk count", printk_calls, 4);
	expect_name(0, "zlog_register_work_deinit");
	expect_name(1, "tpd_workqueue_deinit");
	expect_name(2, "tpd_probe_work_deinit");
	expect_name(3, "zlog_register_work_deinit");
	expect_unsigned("cancel count", cancel_count, 4);
	expect_unsigned("first cancel", cancel_offsets[0], 2640);
	expect_unsigned("probe cancel", cancel_offsets[1], 2256);
	expect_unsigned("second zlog cancel", cancel_offsets[2], 2640);
	expect_unsigned("workqueue cancel", cancel_offsets[3], 2360);
	expect_unsigned("vfree count", vfree_count, 2);
	expect_pointer("first vfree", vfree_values[0],
		(__int64)UINT64_C(0x1020304050607080));
	expect_pointer("second vfree", vfree_values[1], 0);
	expect_pointer("buffer cleared", *(__int64 *)(device_storage + 0xbe8), 0);
	expect_unsigned("destroy workqueue", destroy_calls, 1);
	expect_unsigned("sysfs remove", sysfs_remove_calls, 1);
	expect_unsigned("kobject put", kobject_put_calls, 1);
	expect_unsigned("release flag", zte_touch_deinit_ztp_release, 1);
	expect_unsigned("unexpected final branch", platform_unregister_calls, 0);
	if (failures != 0)
		expect_unsigned("full teardown internal failures", failures, 0);
}

static void test_workqueue_and_sysfs_absent(void)
{
	reset_fixture();
	*(__int64 *)(device_storage + 0x4b0) =
		(__int64)(uintptr_t)(device_storage + 0x4b0);
	*(__int64 *)(device_storage + 0xc50) = 0;
	*(__int64 *)(device_storage + 0xdd0) =
		(__int64)(uintptr_t)(device_storage + 0xdd0);
	zte_touch_deinit();
	expect_unsigned("existing workqueue destroy", destroy_calls, 0);
	expect_unsigned("absent sysfs remove", sysfs_remove_calls, 0);
	expect_unsigned("absent sysfs put", kobject_put_calls, 0);
	expect_unsigned("existing pdev unregister", platform_unregister_calls, 0);
	expect_unsigned("second teardown release", zte_touch_deinit_ztp_release, 1);
}

static void test_early_returns(void)
{
	reset_fixture();
	tpd_cdev = 0;
	zte_touch_deinit();
	expect_unsigned("null cdev printk", printk_calls, 1);
	expect_unsigned("null cdev cancel", cancel_count, 0);
	expect_unsigned("null cdev release", zte_touch_deinit_ztp_release, 0);

	reset_fixture();
	zte_touch_deinit_ztp_release = 1;
	zte_touch_deinit();
	expect_unsigned("released printk", printk_calls, 1);
	expect_unsigned("released cancel", cancel_count, 0);
	expect_unsigned("released release", zte_touch_deinit_ztp_release, 1);
}

int main(void)
{
	test_full_teardown();
	test_workqueue_and_sysfs_absent();
	test_early_returns();
	total_failures += (unsigned int)failures;
	if (total_failures != 0)
		return 1;
	puts("PASS zte_touch_deinit host tests (3 cases)");
	return 0;
}
