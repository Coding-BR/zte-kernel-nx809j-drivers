#include <stdint.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>

#define ENOMEM 12
typedef unsigned long long _QWORD;
typedef long long __int64;

struct work_struct {
	unsigned long marker;
};

enum event {
	EVENT_PRINT_ENTER = 1,
	EVENT_ALLOC,
	EVENT_REPORT,
	EVENT_PRINT_PROBE,
	EVENT_TIMER_PROBE,
	EVENT_RESUME,
	EVENT_PRINT_ZLOG,
	EVENT_TIMER_ZLOG,
	EVENT_TIMER_GHOST,
	EVENT_PRINT_FAILURE,
	EVENT_DESTROY,
};

static const char stock_enter[] = "\0015tpd: enter";
static const char stock_init[] = "\0015tpd: %s enter";
static const char stock_failure[] =
	"\0015tpd: %s: create tpd workqueue failed\n";
static _QWORD device_storage[384];
static __int64 tpd_cdev;
static int alloc_result;
static int report_result;
static int clear_workqueue_during_report;
static unsigned int destroy_calls;
static __int64 destroyed_workqueue;
static unsigned int timer_calls;
static void *timer_addresses[3];
static void (*timer_callbacks[3])(void);
static unsigned int timer_flags[3];
static void *timer_keys[3];
static const char *timer_names[3];
static unsigned int events[16];
static unsigned int event_count;
static int harness_failures;

static void add_event(enum event event)
{
	if (event_count < sizeof(events) / sizeof(events[0]))
		events[event_count++] = event;
}

static int printk(const char *format, ...)
{
	va_list args;
	const char *name;

	if (strcmp(format, stock_enter) == 0) {
		add_event(EVENT_PRINT_ENTER);
		return 0;
	}

	va_start(args, format);
	name = va_arg(args, const char *);
	va_end(args);
	if (strcmp(format, stock_init) == 0) {
		if (strcmp(name, "tpd_probe_work_init") == 0)
			add_event(EVENT_PRINT_PROBE);
		else if (strcmp(name, "zlog_register_work_init") == 0)
			add_event(EVENT_PRINT_ZLOG);
		else
			harness_failures++;
		return 0;
	}
	if (strcmp(format, stock_failure) == 0) {
		if (strcmp(name, "tpd_workqueue_init") != 0)
			harness_failures++;
		add_event(EVENT_PRINT_FAILURE);
		return 0;
	}

	harness_failures++;
	return -1;
}

static __int64 alloc_workqueue(const char *format, unsigned int flags,
				   int max_active, const char *name)
{
	if (strcmp(format, "%s") != 0 || flags != 0x6000a ||
	    max_active != 1 || strcmp(name, "tpd_wq") != 0)
		harness_failures++;
	add_event(EVENT_ALLOC);
	return alloc_result;
}

static int tpd_report_work_init(void)
{
	add_event(EVENT_REPORT);
	if (clear_workqueue_during_report)
		device_storage[150] = 0;
	return report_result;
}

static void destroy_workqueue(__int64 workqueue)
{
	destroy_calls++;
	destroyed_workqueue = workqueue;
	add_event(EVENT_DESTROY);
}

static void delayed_work_timer_fn(void)
{
}

static void ztp_probe_work(struct work_struct *work)
{
	(void)work;
}

static void zlog_register_work(struct work_struct *work)
{
	(void)work;
}

static void tp_ghost_check_work(struct work_struct *work)
{
	(void)work;
}

static void init_timer_key(void *timer, void (*callback)(void),
			   unsigned int flags, void *key, const char *name)
{
	unsigned int index = timer_calls++;

	if (index >= 3) {
		harness_failures++;
		return;
	}
	timer_addresses[index] = timer;
	timer_callbacks[index] = callback;
	timer_flags[index] = flags;
	timer_keys[index] = key;
	timer_names[index] = name;
	if (timer == (void *)(device_storage + 286))
		add_event(EVENT_TIMER_PROBE);
	else if (timer == (void *)(device_storage + 334))
		add_event(EVENT_TIMER_ZLOG);
	else if (timer == (void *)(device_storage + 299))
		add_event(EVENT_TIMER_GHOST);
	else
		harness_failures++;
}

static void tpd_resume_work_init(void)
{
	add_event(EVENT_RESUME);
}

#include "../../../reconstructed/zte_tpd/tpd_workqueue_init.c"

static void expect_unsigned(const char *name, unsigned int actual,
			    unsigned int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %u expected %u\n", name, actual, expected);
		harness_failures++;
	}
}

static void expect_u64(const char *name, _QWORD actual, _QWORD expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got 0x%llx expected 0x%llx\n", name,
			(unsigned long long)actual, (unsigned long long)expected);
		harness_failures++;
	}
}

static void expect_pointer(const char *name, const void *actual,
			   const void *expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %p expected %p\n", name, actual, expected);
		harness_failures++;
	}
}

static void expect_events(const unsigned int *expected, unsigned int count)
{
	unsigned int index;

	expect_unsigned("event count", event_count, count);
	for (index = 0; index < count && index < event_count; index++)
		expect_unsigned("event order", events[index], expected[index]);
}

static void reset_fixture(int allocation, int report, int clear_workqueue)
{
	memset(device_storage, 0, sizeof(device_storage));
	alloc_result = allocation;
	report_result = report;
	clear_workqueue_during_report = clear_workqueue;
	destroy_calls = 0;
	destroyed_workqueue = -1;
	timer_calls = 0;
	event_count = 0;
	memset(timer_addresses, 0, sizeof(timer_addresses));
	memset(timer_callbacks, 0, sizeof(timer_callbacks));
	memset(timer_flags, 0, sizeof(timer_flags));
	memset(timer_keys, 0, sizeof(timer_keys));
	memset(timer_names, 0, sizeof(timer_names));
	memset(events, 0, sizeof(events));
	tpd_cdev = (__int64)(uintptr_t)device_storage;
}

static void test_allocation_failure(void)
{
	static const unsigned int expected[] = {
		EVENT_PRINT_ENTER, EVENT_ALLOC, EVENT_PRINT_FAILURE,
	};

	reset_fixture(0, 0, 0);
	expect_unsigned("allocation failure return", tpd_workqueue_init(), -ENOMEM);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	expect_u64("allocation failure workqueue", device_storage[150], 0);
	expect_unsigned("allocation failure destroy", destroy_calls, 0);
	expect_unsigned("allocation failure timers", timer_calls, 0);
}

static void test_report_failure_with_workqueue_kept(void)
{
	static const unsigned int expected[] = {
		EVENT_PRINT_ENTER, EVENT_ALLOC, EVENT_REPORT, EVENT_PRINT_FAILURE,
	};

	reset_fixture(0x12345678, -5, 0);
	expect_unsigned("report failure return", tpd_workqueue_init(), -ENOMEM);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	expect_u64("report failure workqueue", device_storage[150], 0x12345678);
	expect_unsigned("report failure destroy", destroy_calls, 0);
	expect_unsigned("report failure timers", timer_calls, 0);
}

static void test_report_failure_with_workqueue_cleared(void)
{
	static const unsigned int expected[] = {
		EVENT_PRINT_ENTER, EVENT_ALLOC, EVENT_REPORT, EVENT_DESTROY,
		EVENT_PRINT_FAILURE,
	};

	reset_fixture(0x12345678, -5, 1);
	expect_unsigned("cleared report failure return", tpd_workqueue_init(), -ENOMEM);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	expect_unsigned("cleared report failure destroy", destroy_calls, 1);
	expect_u64("cleared report failure destroy arg", destroyed_workqueue, 0);
	expect_unsigned("cleared report failure timers", timer_calls, 0);
}

static void test_success_layout_and_order(void)
{
	static const unsigned int expected[] = {
		EVENT_PRINT_ENTER, EVENT_ALLOC, EVENT_REPORT, EVENT_PRINT_PROBE,
		EVENT_TIMER_PROBE, EVENT_RESUME, EVENT_PRINT_ZLOG, EVENT_TIMER_ZLOG,
		EVENT_TIMER_GHOST,
	};

	reset_fixture(0x12345678, 0, 0);
	expect_unsigned("success return", tpd_workqueue_init(), 0);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	expect_unsigned("success destroy", destroy_calls, 0);
	expect_unsigned("success timers", timer_calls, 3);
	expect_u64("probe work data", device_storage[282], 0xfffffffe00000ULL);
	expect_u64("probe work entry", device_storage[283],
		   (_QWORD)(uintptr_t)(device_storage + 283));
	expect_u64("probe work prev", device_storage[284],
		   (_QWORD)(uintptr_t)(device_storage + 283));
	expect_u64("probe work callback", device_storage[285],
		   (_QWORD)(uintptr_t)ztp_probe_work);
	expect_u64("zlog work data", device_storage[330], 0xfffffffe00000ULL);
	expect_u64("zlog work entry", device_storage[331],
		   (_QWORD)(uintptr_t)(device_storage + 331));
	expect_u64("zlog work prev", device_storage[332],
		   (_QWORD)(uintptr_t)(device_storage + 331));
	expect_u64("zlog work callback", device_storage[333],
		   (_QWORD)(uintptr_t)zlog_register_work);
	expect_u64("ghost work data", device_storage[295], 0xfffffffe00000ULL);
	expect_u64("ghost work entry", device_storage[296],
		   (_QWORD)(uintptr_t)(device_storage + 296));
	expect_u64("ghost work prev", device_storage[297],
		   (_QWORD)(uintptr_t)(device_storage + 296));
	expect_u64("ghost work callback", device_storage[298],
		   (_QWORD)(uintptr_t)tp_ghost_check_work);
	expect_pointer("probe timer address", timer_addresses[0], device_storage + 286);
	expect_pointer("zlog timer address", timer_addresses[1], device_storage + 334);
	expect_pointer("ghost timer address", timer_addresses[2], device_storage + 299);
	expect_pointer("probe timer callback", timer_callbacks[0], delayed_work_timer_fn);
	expect_pointer("zlog timer callback", timer_callbacks[1], delayed_work_timer_fn);
	expect_pointer("ghost timer callback", timer_callbacks[2], delayed_work_timer_fn);
	expect_unsigned("probe timer flags", timer_flags[0], 0x200000);
	expect_unsigned("zlog timer flags", timer_flags[1], 0x200000);
	expect_unsigned("ghost timer flags", timer_flags[2], 0x200000);
	expect_pointer("probe timer key", timer_keys[0], NULL);
	expect_pointer("zlog timer key", timer_keys[1], NULL);
	expect_pointer("ghost timer key", timer_keys[2], NULL);
	expect_pointer("probe timer name", timer_names[0], NULL);
	expect_pointer("zlog timer name", timer_names[1], NULL);
	expect_pointer("ghost timer name", timer_names[2], NULL);
}

int main(void)
{
	test_allocation_failure();
	test_report_failure_with_workqueue_kept();
	test_report_failure_with_workqueue_cleared();
	test_success_layout_and_order();
	if (harness_failures != 0)
		return 1;
	puts("PASS tpd_workqueue_init host tests (4 cases)");
	return 0;
}
