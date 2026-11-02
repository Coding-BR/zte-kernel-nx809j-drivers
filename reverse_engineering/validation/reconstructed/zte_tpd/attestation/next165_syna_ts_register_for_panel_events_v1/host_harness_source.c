#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
#define __fastcall
typedef void (*panel_callback_t)(void);

static void *active_panel;
static __int64 register_result;
static int register_calls;
static int last_type;
static int last_mode;
static void *last_panel;
static panel_callback_t last_callback;
static __int64 last_client;
static int printk_result;
static int printk_calls;
static unsigned int failures;
static const char *unk_3A3A7 = "register failed";
static const char *unk_3A96E = "register succeeded";

static void syna_ts_panel_notifier_callback(void)
{
}

static __int64 panel_event_notifier_register(int type, int mode, void *panel,
						panel_callback_t callback,
						__int64 client)
{
	register_calls++;
	last_type = type;
	last_mode = mode;
	last_panel = panel;
	last_callback = callback;
	last_client = client;
	return register_result;
}

static int printk(const char *format, ...)
{
	va_list args;
	(void)format;
	va_start(args, format);
	va_end(args);
	printk_calls++;
	return printk_result;
}

#include "../../../reconstructed/zte_tpd/syna_ts_register_for_panel_events.c"

static void reset_trace(void)
{
	register_result = 0;
	register_calls = 0;
	last_type = -1;
	last_mode = -1;
	last_panel = NULL;
	last_callback = NULL;
	last_client = 0;
	printk_result = 17;
	printk_calls = 0;
	failures = 0;
}

static void expect_int(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual, expected);
		failures++;
	}
}

static void expect_ptr(const char *name, const void *actual, const void *expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: pointer mismatch\n", name);
		failures++;
	}
}

static void test_registration_failure(void)
{
	union {
		max_align_t alignment;
		unsigned char bytes[0x600];
	} wrapper;
	const __int64 sentinel = 0x1122334455667788LL;

	reset_trace();
	active_panel = (void *)(uintptr_t)0x1000;
	register_result = 0;
	*(__int64 *)(wrapper.bytes + 0x550) = sentinel;
	(void)syna_ts_register_for_panel_events((__int64)(uintptr_t)wrapper.bytes);
	expect_int("failure register call count", register_calls, 1);
	expect_int("failure printk count", printk_calls, 1);
	expect_int("failure stored handle", *(__int64 *)(wrapper.bytes + 0x550), sentinel);
}

static void test_registration_success(void)
{
	union {
		max_align_t alignment;
		unsigned char bytes[0x600];
	} wrapper;
	const __int64 handle = 0x12345678;

	reset_trace();
	active_panel = (void *)(uintptr_t)0x2000;
	register_result = handle;
	printk_result = 23;
	(void)syna_ts_register_for_panel_events((__int64)(uintptr_t)wrapper.bytes);
	expect_int("success register call count", register_calls, 1);
	expect_int("success printk count", printk_calls, 1);
	expect_int("success stored handle", *(__int64 *)(wrapper.bytes + 0x550), handle);
	expect_int("success type", last_type, 1);
	expect_int("success mode", last_mode, 0);
	expect_ptr("success panel", last_panel, active_panel);
	expect_ptr("success callback", (const void *)last_callback,
			(const void *)syna_ts_panel_notifier_callback);
	expect_int("success client", last_client, (__int64)(uintptr_t)wrapper.bytes);
}

static void test_nonzero_handle_and_null_panel(void)
{
	union {
		max_align_t alignment;
		unsigned char bytes[0x600];
	} wrapper;
	const __int64 handle = -1;

	reset_trace();
	active_panel = NULL;
	register_result = handle;
	(void)syna_ts_register_for_panel_events((__int64)(uintptr_t)wrapper.bytes);
	expect_int("negative handle stored", *(__int64 *)(wrapper.bytes + 0x550), handle);
	expect_ptr("null panel", last_panel, NULL);
}

static void test_registration_failure_does_not_write_adjacent_fields(void)
{
	union {
		max_align_t alignment;
		unsigned char bytes[0x600];
	} wrapper;

	reset_trace();
	active_panel = (void *)(uintptr_t)0x3000;
	register_result = 0;
	memset(wrapper.bytes, 0xa5, sizeof(wrapper.bytes));
	(void)syna_ts_register_for_panel_events((__int64)(uintptr_t)wrapper.bytes);
	for (size_t i = 0; i < sizeof(wrapper.bytes); ++i) {
		if (i >= 0x550 && i < 0x558)
			continue;
		if (wrapper.bytes[i] != 0xa5) {
			fprintf(stderr, "failure adjacent write at %zu\n", i);
			failures++;
			break;
		}
	}
}

int main(void)
{
	test_registration_failure();
	test_registration_success();
	test_nonzero_handle_and_null_panel();
	test_registration_failure_does_not_write_adjacent_fields();
	if (failures) {
		fprintf(stderr, "FAIL syna_ts_register_for_panel_events host tests (%u failures)\n",
			failures);
		return 1;
	}
	puts("PASS syna_ts_register_for_panel_events host tests (4 cases)");
	return 0;
}
