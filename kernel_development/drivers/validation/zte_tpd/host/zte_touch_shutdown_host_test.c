#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef int64_t __int64;
typedef uint64_t _QWORD;

struct ztp_device;
struct platform_device;

enum event {
	EVENT_LOG = 1,
	EVENT_CALLBACK,
	EVENT_REPORT_DEINIT,
	EVENT_RESUME_DEINIT,
	EVENT_CANCEL_PROBE,
	EVENT_CANCEL_ZLOG,
	EVENT_VFREE,
	EVENT_CANCEL_WORKQUEUE,
};

static const char stock_end[] = "\0015tpd: end zte_touch_shutdown, 2912\n";
static const char stock_workqueue[] = "\0015tpd: tpd_workqueue_deinit enter";
static const char stock_probe[] = "\0015tpd: tpd_probe_work_deinit enter";
static const char stock_zlog[] = "\0015tpd: zlog_register_work_deinit enter";
static uint8_t device_storage[0x1000] __attribute__((aligned(8)));
static __int64 tpd_cdev;
static char logs[4][96];
static unsigned int log_count;
static unsigned int events[12];
static unsigned int event_count;
static unsigned int cancel_offsets[3];
static unsigned int cancel_count;
static __int64 freed_pointer;
static unsigned int callback_calls;
static int failures;

static void record_event(enum event event)
{
	if (event_count >= sizeof(events) / sizeof(events[0])) {
		failures++;
		return;
	}
	events[event_count++] = event;
}

int printk(const char *format, ...)
{
	va_list args;
	int length;

	if (log_count >= sizeof(logs) / sizeof(logs[0])) {
		failures++;
		return -1;
	}
	va_start(args, format);
	length = vsnprintf(logs[log_count], sizeof(logs[log_count]), format, args);
	va_end(args);
	if (length < 0 || (size_t)length >= sizeof(logs[log_count])) {
		failures++;
		return -1;
	}
	log_count++;
	record_event(EVENT_LOG);
	return 0;
}

void tpd_report_work_deinit(void)
{
	record_event(EVENT_REPORT_DEINIT);
}

void tpd_resume_work_deinit(void)
{
	record_event(EVENT_RESUME_DEINIT);
}

int cancel_delayed_work_sync(__int64 work)
{
	uintptr_t base = (uintptr_t)device_storage;
	uintptr_t address = (uintptr_t)work;

	if (cancel_count >= sizeof(cancel_offsets) / sizeof(cancel_offsets[0]) ||
	    address < base || address - base > UINT32_MAX) {
		failures++;
		return -1;
	}
	cancel_offsets[cancel_count++] = (unsigned int)(address - base);
	switch (cancel_count) {
	case 1:
		record_event(EVENT_CANCEL_PROBE);
		break;
	case 2:
		record_event(EVENT_CANCEL_ZLOG);
		break;
	case 3:
		record_event(EVENT_CANCEL_WORKQUEUE);
		break;
	default:
		failures++;
		break;
	}
	return 0;
}

void vfree(__int64 pointer)
{
	freed_pointer = pointer;
	record_event(EVENT_VFREE);
}

static int shutdown_callback(struct ztp_device *cdev)
{
	callback_calls++;
	if ((uint8_t *)cdev != device_storage)
		failures++;
	record_event(EVENT_CALLBACK);
	return 0;
}

#include "../../../reconstructed/zte_tpd/zte_touch_shutdown.c"

static void expect_unsigned(const char *name, unsigned int actual,
				    unsigned int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %u expected %u\n", name, actual, expected);
		failures++;
	}
}

static void expect_pointer(const char *name, __int64 actual, __int64 expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %p expected %p\n", name,
			(void *)(uintptr_t)actual, (void *)(uintptr_t)expected);
		failures++;
	}
}

static void expect_string(const char *name, const char *actual,
				  const char *expected)
{
	if (strcmp(actual, expected) != 0) {
		fprintf(stderr, "%s: got %s expected %s\n", name, actual, expected);
		failures++;
	}
}

static void expect_events(const unsigned int *expected, unsigned int count)
{
	unsigned int index;

	expect_unsigned("event count", event_count, count);
	for (index = 0; index < count && index < event_count; index++)
		expect_unsigned("event order", events[index], expected[index]);
}

static void reset_fixture(zte_touch_shutdown_callback_t callback)
{
	memset(device_storage, 0, sizeof(device_storage));
	tpd_cdev = (__int64)(uintptr_t)device_storage;
	memset(logs, 0, sizeof(logs));
	log_count = 0;
	memset(events, 0, sizeof(events));
	event_count = 0;
	memset(cancel_offsets, 0, sizeof(cancel_offsets));
	cancel_count = 0;
	freed_pointer = 0;
	callback_calls = 0;
	*(zte_touch_shutdown_callback_t *)(device_storage + 0xf90) = callback;
	*(__int64 *)(device_storage + 0xbe8) =
		(__int64)UINT64_C(0x1020304050607080);
}

static void test_callback_present(void)
{
	static const unsigned int expected[] = {
		EVENT_LOG, EVENT_CALLBACK, EVENT_LOG, EVENT_REPORT_DEINIT,
		EVENT_RESUME_DEINIT, EVENT_LOG, EVENT_CANCEL_PROBE, EVENT_LOG,
		EVENT_CANCEL_ZLOG, EVENT_VFREE, EVENT_CANCEL_WORKQUEUE,
	};

	reset_fixture(shutdown_callback);
	zte_touch_shutdown(NULL);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	expect_unsigned("callback calls", callback_calls, 1);
	expect_unsigned("log count", log_count, 4);
	expect_string("end log", logs[0], stock_end);
	expect_string("workqueue log", logs[1], stock_workqueue);
	expect_string("probe log", logs[2], stock_probe);
	expect_string("zlog log", logs[3], stock_zlog);
	expect_unsigned("cancel count", cancel_count, 3);
	expect_unsigned("probe cancel", cancel_offsets[0], 2256);
	expect_unsigned("zlog cancel", cancel_offsets[1], 2640);
	expect_unsigned("workqueue cancel", cancel_offsets[2], 2360);
	expect_pointer("freed pointer", freed_pointer,
		(__int64)UINT64_C(0x1020304050607080));
	expect_pointer("buffer cleared", *(__int64 *)(device_storage + 0xbe8), 0);
}

static void test_callback_absent(void)
{
	static const unsigned int expected[] = {
		EVENT_LOG, EVENT_LOG, EVENT_REPORT_DEINIT, EVENT_RESUME_DEINIT,
		EVENT_LOG, EVENT_CANCEL_PROBE, EVENT_LOG, EVENT_CANCEL_ZLOG,
		EVENT_VFREE, EVENT_CANCEL_WORKQUEUE,
	};

	reset_fixture(NULL);
	zte_touch_shutdown(NULL);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	expect_unsigned("absent callback calls", callback_calls, 0);
	expect_unsigned("absent cancel count", cancel_count, 3);
	expect_pointer("absent buffer cleared",
		*(__int64 *)(device_storage + 0xbe8), 0);
}

int main(void)
{
	test_callback_present();
	test_callback_absent();
	if (failures != 0)
		return 1;
	puts("PASS zte_touch_shutdown host tests (2 cases)");
	return 0;
}
