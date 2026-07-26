#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef int64_t __int64;

struct ztp_device;
struct work_struct {
	unsigned long marker;
};

enum event {
	EVENT_CHECK = 1,
	EVENT_MAY_BE_GHOST,
	EVENT_LIMIT_REACHED,
	EVENT_CALLBACK,
	EVENT_RESET_COUNT,
	EVENT_GHOST_RESET,
};

static const char stock_may_be_ghost[] = "\0015tpd: may be ghost point";
static const char stock_limit[] =
	"\0015tpd: ghost_rst_num has already exceeded 3 times, skip";
static const char stock_reset_count[] =
	"\0015tpd: ghost check reset, ghost_rst_num = %d";
static uint8_t device_storage[0x1000] __attribute__((aligned(8)));
static __int64 tpd_cdev;
static bool ghost_detected;
static int callback_writes_count;
static int printed_reset_count;
static unsigned int callback_calls;
static unsigned int ghost_reset_calls;
static unsigned int event_log[12];
static unsigned int event_count;
static int failures;

static void record_event(enum event event)
{
	if (event_count >= sizeof(event_log) / sizeof(event_log[0])) {
		failures++;
		return;
	}
	event_log[event_count++] = event;
}

static int printk(const char *format, ...)
{
	va_list args;

	if (strcmp(format, stock_may_be_ghost) == 0) {
		record_event(EVENT_MAY_BE_GHOST);
		return 0;
	}
	if (strcmp(format, stock_limit) == 0) {
		record_event(EVENT_LIMIT_REACHED);
		return 0;
	}
	if (strcmp(format, stock_reset_count) != 0) {
		failures++;
		return -1;
	}
	va_start(args, format);
	printed_reset_count = va_arg(args, int);
	va_end(args);
	record_event(EVENT_RESET_COUNT);
	return 0;
}

static bool tp_ghost_check(void)
{
	record_event(EVENT_CHECK);
	return ghost_detected;
}

static void ghost_check_reset(void)
{
	ghost_reset_calls++;
	record_event(EVENT_GHOST_RESET);
}

static int reset_callback(struct ztp_device *cdev)
{
	uint8_t *storage = (uint8_t *)cdev;

	callback_calls++;
	record_event(EVENT_CALLBACK);
	if (callback_writes_count >= 0)
		*(int *)(storage + 0x4a8) = callback_writes_count;
	return 0;
}

#include "../../../reconstructed/zte_tpd/tp_ghost_check_work.c"

static void expect_unsigned(const char *name, unsigned int actual,
				    unsigned int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %u expected %u\n", name, actual, expected);
		failures++;
	}
}

static void expect_int(const char *name, int actual, int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %d expected %d\n", name, actual, expected);
		failures++;
	}
}

static void expect_events(const unsigned int *expected, unsigned int count)
{
	unsigned int index;

	expect_unsigned("event count", event_count, count);
	for (index = 0; index < count && index < event_count; index++)
		expect_unsigned("event order", event_log[index], expected[index]);
}

static void reset_fixture(bool detected, int count,
			  tpd_ghost_reset_callback_t callback, int callback_count)
{
	memset(device_storage, 0, sizeof(device_storage));
	tpd_cdev = (__int64)(uintptr_t)device_storage;
	ghost_detected = detected;
	callback_writes_count = callback_count;
	printed_reset_count = -1;
	callback_calls = 0;
	ghost_reset_calls = 0;
	event_count = 0;
	memset(event_log, 0, sizeof(event_log));
	*(int *)(device_storage + 0x4a8) = count;
	*(tpd_ghost_reset_callback_t *)(device_storage + 0xff0) = callback;
	device_storage[0x488] = 1;
}

static void test_no_ghost(void)
{
	static const unsigned int expected[] = {
		EVENT_CHECK, EVENT_GHOST_RESET,
	};

	reset_fixture(false, 2, reset_callback, -1);
	tp_ghost_check_work(NULL);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	expect_int("no ghost count", *(int *)(device_storage + 0x4a8), 2);
	expect_unsigned("no ghost callback", callback_calls, 0);
	expect_unsigned("no ghost reset", ghost_reset_calls, 1);
	expect_unsigned("no ghost active", device_storage[0x488], 0);
}

static void test_limit_reached(void)
{
	static const unsigned int expected[] = {
		EVENT_CHECK, EVENT_MAY_BE_GHOST, EVENT_LIMIT_REACHED,
		EVENT_GHOST_RESET,
	};

	reset_fixture(true, 3, reset_callback, -1);
	tp_ghost_check_work(NULL);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	expect_int("limit count", *(int *)(device_storage + 0x4a8), 3);
	expect_unsigned("limit callback", callback_calls, 0);
	expect_unsigned("limit reset", ghost_reset_calls, 1);
	expect_unsigned("limit active", device_storage[0x488], 0);
}

static void test_no_callback(void)
{
	static const unsigned int expected[] = {
		EVENT_CHECK, EVENT_MAY_BE_GHOST, EVENT_GHOST_RESET,
	};

	reset_fixture(true, 2, NULL, -1);
	tp_ghost_check_work(NULL);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	expect_int("no callback count", *(int *)(device_storage + 0x4a8), 3);
	expect_unsigned("no callback calls", callback_calls, 0);
	expect_unsigned("no callback reset", ghost_reset_calls, 1);
	expect_unsigned("no callback active", device_storage[0x488], 0);
}

static void test_callback_reloads_count(void)
{
	static const unsigned int expected[] = {
		EVENT_CHECK, EVENT_MAY_BE_GHOST, EVENT_CALLBACK,
		EVENT_RESET_COUNT, EVENT_GHOST_RESET,
	};

	reset_fixture(true, 1, reset_callback, 10);
	tp_ghost_check_work(NULL);
	expect_events(expected, sizeof(expected) / sizeof(expected[0]));
	expect_unsigned("callback calls", callback_calls, 1);
	expect_int("callback printed count", printed_reset_count, 11);
	expect_int("callback reloaded count", *(int *)(device_storage + 0x4a8), 11);
	expect_unsigned("callback reset", ghost_reset_calls, 1);
	expect_unsigned("callback active", device_storage[0x488], 0);
}

int main(void)
{
	test_no_ghost();
	test_limit_reached();
	test_no_callback();
	test_callback_reloads_count();
	if (failures != 0)
		return 1;
	puts("PASS tp_ghost_check_work host tests (4 cases)");
	return 0;
}
