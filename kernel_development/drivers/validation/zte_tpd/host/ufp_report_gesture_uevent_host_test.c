#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
struct kobject { unsigned int marker; };
struct device { struct kobject kobj; };
struct platform_device { struct device dev; };
struct wakeup_source { unsigned int marker; };
struct workqueue_struct { unsigned int marker; };
struct delayed_work { unsigned char opaque[0x70]; };
struct syna_delayed_work_layout {
	unsigned char opaque_0000[0x68];
	struct workqueue_struct *wq;
};
struct ufp_tp_ops_struct {
	struct platform_device *pdev;
	int single_tap_pending;
	int field_c;
	struct syna_delayed_work_layout single_tap_work;
};
_Static_assert(__builtin_offsetof(struct ufp_tp_ops_struct, pdev) == 0x00, "pdev offset");
_Static_assert(__builtin_offsetof(struct ufp_tp_ops_struct, single_tap_pending) == 0x08, "pending offset");
_Static_assert(__builtin_offsetof(struct ufp_tp_ops_struct, single_tap_work.wq) == 0x78, "wq offset");

static struct ufp_tp_ops_struct ufp_tp_ops;
static struct wakeup_source tp_wakeup;
static struct platform_device platform;
static struct workqueue_struct workqueue;

enum event_kind { EVENT_UEVENT = 1, EVENT_WAKEUP, EVENT_MOD_WORK, EVENT_PRINT };
struct event_record {
	enum event_kind kind;
	unsigned long value;
	unsigned long value2;
	const char *text;
};
static struct event_record events[16];
static unsigned int event_count;
static unsigned int failures;
static const char *last_env;
static const char *last_print_event;

static void record(enum event_kind kind, unsigned long value,
		   unsigned long value2, const char *text)
{
	if (event_count >= 16) {
		failures++;
		return;
	}
	events[event_count++] = (struct event_record){kind, value, value2, text};
}

static int kobject_uevent_env(struct kobject *kobj, int action, char **envp)
{
	if (kobj != &platform.dev.kobj || action != 2 || !envp || envp[1])
		failures++;
	last_env = envp ? envp[0] : NULL;
	record(EVENT_UEVENT, (unsigned long)kobj, (unsigned long)action, last_env);
	return 0;
}

static void pm_wakeup_ws_event(struct wakeup_source *ws, unsigned int duration,
				       bool hard)
{
	if (ws != &tp_wakeup || duration != 2000 || hard)
		failures++;
	record(EVENT_WAKEUP, duration, hard, NULL);
}

static int mod_delayed_work_on(int cpu, struct workqueue_struct *wq,
				       struct delayed_work *work,
				       unsigned long delay)
{
	if (cpu != 32 || wq != &workqueue ||
	    (unsigned char *)work != (unsigned char *)&ufp_tp_ops.single_tap_work)
		failures++;
	record(EVENT_MOD_WORK, (unsigned long)cpu, delay, NULL);
	return 1;
}

static int printk(const char *format, ...)
{
	va_list args;
	va_start(args, format);
	last_print_event = va_arg(args, const char *);
	va_end(args);
	record(EVENT_PRINT, 0, 0, last_print_event);
	return 0;
}

#define KOBJ_CHANGE 2
#define KERN_INFO ""
#define ZTE_TPD_HOST_TEST 1
#include "../../../reconstructed/zte_tpd/ufp_report_gesture_uevent.c"

static void reset_fixture(void)
{
	memset(&ufp_tp_ops, 0, sizeof(ufp_tp_ops));
	memset(events, 0, sizeof(events));
	event_count = 0;
	last_env = NULL;
	last_print_event = NULL;
	ufp_tp_ops.pdev = &platform;
	ufp_tp_ops.single_tap_work.wq = &workqueue;
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

static void test_single_tap(void)
{
	char event[] = "single_tap=true";
	reset_fixture();
	ufp_report_gesture_uevent(event);
	expect_int("single pending", ufp_tp_ops.single_tap_pending, 1);
	expect_int("single event count", event_count, 4);
	expect_text("single env", last_env, event);
	expect_text("single printk", last_print_event, event);
	expect_int("single delay", events[2].value2, 150);
}

static void test_double_tap(void)
{
	char event[] = "double_tap=true";
	reset_fixture();
	ufp_report_gesture_uevent(event);
	expect_int("double pending", ufp_tp_ops.single_tap_pending, 0);
	expect_int("double event count", event_count, 4);
	expect_int("double delay", events[2].value2, 0);
	expect_text("double printk", last_print_event, event);
}

static void test_unknown_event(void)
{
	char event[] = "long_press=true";
	reset_fixture();
	ufp_report_gesture_uevent(event);
	expect_int("unknown pending", ufp_tp_ops.single_tap_pending, 0);
	expect_int("unknown event count", event_count, 3);
	expect_text("unknown printk", last_print_event, event);
}

int main(void)
{
	test_single_tap();
	test_double_tap();
	test_unknown_event();
	if (failures != 0)
		return 1;
	puts("PASS ufp_report_gesture_uevent host tests (3 cases)");
	return 0;
}
