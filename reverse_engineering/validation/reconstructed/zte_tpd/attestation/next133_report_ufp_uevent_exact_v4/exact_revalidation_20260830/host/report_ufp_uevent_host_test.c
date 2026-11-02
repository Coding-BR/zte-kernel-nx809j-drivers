#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;

struct kobject { unsigned int marker; };
struct device { struct kobject kobj; };
struct platform_device { struct device dev; };
struct completion {
	unsigned int done;
	unsigned char opaque[0x1c];
};
struct syna_delayed_work_layout { unsigned char opaque[0x70]; };
struct ufp_tp_ops_struct {
	union {
		struct {
			struct platform_device *pdev;
			int single_tap_pending;
			int field_c;
			struct syna_delayed_work_layout single_tap_work;
		};
		struct {
			unsigned char reserved_0000[0x80];
			struct completion gesture_complete;
			unsigned char field_a0;
			unsigned char field_a1;
			unsigned char field_a2;
		};
		unsigned char opaque[0xa8];
	};
};

_Static_assert(__builtin_offsetof(struct ufp_tp_ops_struct, pdev) == 0x00,
		       "pdev offset");
_Static_assert(__builtin_offsetof(struct ufp_tp_ops_struct, field_a0) == 0xa0,
		       "field_a0 offset");
_Static_assert(__builtin_offsetof(struct ufp_tp_ops_struct, field_a1) == 0xa1,
		       "field_a1 offset");
_Static_assert(__builtin_offsetof(struct ufp_tp_ops_struct, field_a2) == 0xa2,
		       "field_a2 offset");
_Static_assert(__builtin_offsetof(struct ufp_tp_ops_struct, gesture_complete) == 0x80,
		       "completion offset");
_Static_assert(sizeof(struct ufp_tp_ops_struct) == 0xa8, "ufp ops size");

static struct ufp_tp_ops_struct ufp_tp_ops;
static struct platform_device platform;
static struct completion unused_completion;
static unsigned char cdev_storage[0x500];
static __int64 tpd_cdev = (__int64)(uintptr_t)cdev_storage;
static int current_lcd_state;

enum event_kind { EVENT_UEVENT = 1, EVENT_PRINT, EVENT_COMPLETE, EVENT_GESTURE };
struct event_record {
	enum event_kind kind;
	const char *event;
	const char *lcd_state;
};
static struct event_record events[16];
static unsigned int event_count;
static unsigned int failures;
static unsigned int gesture_calls;
static const char *last_gesture;

static void record(enum event_kind kind, const char *event, const char *lcd_state)
{
	if (event_count >= 16) {
		failures++;
		return;
	}
	events[event_count++] = (struct event_record){kind, event, lcd_state};
}

static int kobject_uevent_env(struct kobject *kobj, int action, char **envp)
{
	if (kobj != &platform.dev.kobj || action != 2 || !envp || !envp[0] ||
	    !envp[1] || envp[2])
		failures++;
	record(EVENT_UEVENT, envp ? envp[0] : NULL, envp ? envp[1] : NULL);
	return 0;
}

static int printk(const char *format, ...)
{
	va_list args;
	const char *event = NULL;
	const char *lcd_state = NULL;

	va_start(args, format);
	if (strstr(format, "%s,lcd state=%s")) {
		event = va_arg(args, const char *);
		lcd_state = va_arg(args, const char *);
	} else if (strstr(format, "%s")) {
		event = va_arg(args, const char *);
	}
	va_end(args);
	record(EVENT_PRINT, event, lcd_state);
	return 0;
}

static void complete(struct completion *completion)
{
	if (completion != &ufp_tp_ops.gesture_complete)
		failures++;
	completion->done++;
	record(EVENT_COMPLETE, NULL, NULL);
}

static void ufp_report_gesture_uevent(char *event)
{
	gesture_calls++;
	last_gesture = event;
	record(EVENT_GESTURE, event, NULL);
}

#define KOBJ_CHANGE 2
#define KERN_ERR ""
#define KERN_INFO ""
#define ZTE_TPD_HOST_TEST 1
#ifndef __always_inline
#define __always_inline inline __attribute__((always_inline))
#endif
#include "../../../reconstructed/zte_tpd/report_ufp_uevent.c"

static void clear_trace(void)
{
	memset(events, 0, sizeof(events));
	event_count = 0;
	gesture_calls = 0;
	last_gesture = NULL;
}

static void expect_int(const char *name, unsigned long actual,
			       unsigned long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lu expected %lu\n", name, actual, expected);
		failures++;
	}
}

static void expect_text(const char *name, const char *actual, const char *expected)
{
	if (!actual || strcmp(actual, expected) != 0) {
		fprintf(stderr, "%s: unexpected text\n", name);
		failures++;
	}
}

static void prepare_device(void)
{
	memset(&ufp_tp_ops, 0, sizeof(ufp_tp_ops));
	memset(cdev_storage, 0, sizeof(cdev_storage));
	ufp_tp_ops.pdev = &platform;
	current_lcd_state = 0;
}

static void test_down_up_and_repeated_down(void)
{
	prepare_device();
	*(int *)(cdev_storage + 0x458) = 1;
	clear_trace();
	report_ufp_uevent(1);
	expect_int("down trace", event_count, 2);
	expect_text("down event", events[0].event, "areameet_down=true");
	expect_text("down lcd", events[0].lcd_state, "TP_POWER_STATUS=2");
	expect_int("down field_a1", ufp_tp_ops.field_a1, 1);

	clear_trace();
	report_ufp_uevent(1);
	expect_int("repeated down trace", event_count, 0);

	clear_trace();
	report_ufp_uevent(0);
	expect_int("up trace", event_count, 3);
	expect_text("up event", events[0].event, "areameet_up=true");
	expect_int("up completion", ufp_tp_ops.gesture_complete.done, 0);
	expect_int("up field_a1", ufp_tp_ops.field_a1, 0);
}

static void test_aod_down_and_completion(void)
{
	clear_trace();
	current_lcd_state = 1;
	*(int *)(cdev_storage + 0x458) = 0;
	report_ufp_uevent(1);
	expect_int("aod trace", event_count, 3);
	expect_int("aod gesture calls", gesture_calls, 1);
	expect_text("aod gesture", last_gesture, "single_tap=true");
	expect_text("aod event", events[1].event, "aod_areameet_down=true");
	expect_text("aod lcd", events[1].lcd_state, "TP_POWER_STATUS=1");
	expect_int("aod field_a0", ufp_tp_ops.field_a0, 1);

	clear_trace();
	report_ufp_uevent(0);
	expect_int("aod up trace", event_count, 3);
	expect_int("aod completion", ufp_tp_ops.gesture_complete.done, 1);
	expect_int("aod field_a0 clear", ufp_tp_ops.field_a0, 0);
}

static void test_null_platform_device(void)
{
	clear_trace();
	ufp_tp_ops.pdev = NULL;
	current_lcd_state = 0;
	report_ufp_uevent(1);
	expect_int("null down trace", event_count, 1);
	expect_int("null down field_a1", ufp_tp_ops.field_a1, 1);

	clear_trace();
	report_ufp_uevent(0);
	expect_int("null up trace", event_count, 1);
}

int main(void)
{
	test_down_up_and_repeated_down();
	test_aod_down_and_completion();
	test_null_platform_device();
	(void)unused_completion;
	if (failures != 0)
		return 1;
	puts("PASS report_ufp_uevent host tests (7 cases)");
	return 0;
}
