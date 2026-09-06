#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
struct input_dev { unsigned int marker; };
struct mutex { unsigned int marker; };
struct point_info_struct {
	int x;
	int y;
	unsigned char reserved_0008[75];
	unsigned char field_83;
	unsigned char field_84;
	unsigned char reserved_0055[7];
	unsigned short ghost_count;
	unsigned short ghost_active;
	unsigned long reserved_0060[4];
	struct input_dev *input;
};

static struct point_info_struct point_report_info[10];
static unsigned char tpd_storage[4096];
static __int64 tpd_cdev;
static struct input_dev input_device;

enum event_kind { EVENT_INPUT = 1, EVENT_MT, EVENT_LOCK, EVENT_UNLOCK, EVENT_PRINT };
struct event_record {
	enum event_kind kind;
	int type;
	int code;
	int value;
};
static struct event_record events[16];
static unsigned int event_count;
static unsigned int harness_failures;
static unsigned int bug_calls;
static const char *last_print_format;
static int last_print_id;
static int last_print_x;
static int last_print_y;
static void *last_lock;
static void *last_unlock;

static void record(enum event_kind kind, int type, int code, int value)
{
	if (event_count >= 16) {
		harness_failures++;
		return;
	}
	events[event_count++] = (struct event_record){kind, type, code, value};
}

static void mutex_lock(void *lock)
{
	last_lock = lock;
	record(EVENT_LOCK, 0, 0, 0);
}

static void mutex_unlock(void *lock)
{
	last_unlock = lock;
	record(EVENT_UNLOCK, 0, 0, 0);
}

static void input_event(struct input_dev *input, int type, int code, int value)
{
	if (input != &input_device)
		harness_failures++;
	record(EVENT_INPUT, type, code, value);
}

static void input_mt_report_slot_state(struct input_dev *input, int tool_type,
					       int active)
{
	if (input != &input_device || tool_type != 0 || active != 0)
		harness_failures++;
	record(EVENT_MT, tool_type, 0, active);
}

static int printk(const char *format, ...)
{
	va_list args;
	va_start(args, format);
	last_print_format = format;
	(void)va_arg(args, const char *);
	last_print_id = va_arg(args, int);
	last_print_x = va_arg(args, int);
	last_print_y = va_arg(args, int);
	va_end(args);
	record(EVENT_PRINT, 0, 0, 0);
	return 0;
}

#define BUG() do { bug_calls++; } while (0)
#define BUG_ON(condition) do { if (condition) bug_calls++; } while (0)
#define EV_ABS 3
#define ABS_MT_SLOT 0x2f
#define MT_TOOL_FINGER 0
#define EV_KEY 1
#define BTN_TOUCH 0x14a
#define EV_SYN 0

#define ZTE_TPD_HOST_TEST 1
#include "../../../reconstructed/zte_tpd/edge_long_press_up.c"

static void reset_fixture(void)
{
	memset(point_report_info, 0, sizeof(point_report_info));
	memset(tpd_storage, 0, sizeof(tpd_storage));
	memset(events, 0, sizeof(events));
	event_count = 0;
	bug_calls = 0;
	last_print_format = NULL;
	last_print_id = -1;
	last_print_x = -1;
	last_print_y = -1;
	last_lock = NULL;
	last_unlock = NULL;
	tpd_cdev = (__int64)(uintptr_t)tpd_storage;
}

static void expect_unsigned(const char *name, unsigned int actual,
				    unsigned int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %u expected %u\n", name, actual, expected);
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

static void expect_event(const char *name, unsigned int index,
				 enum event_kind kind, int type, int code, int value)
{
	if (index >= event_count || events[index].kind != kind ||
	    events[index].type != type || events[index].code != code ||
	    events[index].value != value) {
		fprintf(stderr, "%s: unexpected event at %u\n", name, index);
		harness_failures++;
	}
}

static void test_inactive_is_noop(void)
{
	reset_fixture();
	point_report_info[2].field_84 = 0;
	expect_unsigned("inactive return", edge_long_press_up(&input_device, 2), 0);
	expect_unsigned("inactive events", event_count, 0);
	expect_unsigned("inactive bug", bug_calls, 0);
}

static void test_last_active_reports_touch_up(void)
{
	reset_fixture();
	point_report_info[2].field_84 = 1;
	point_report_info[2].x = 123;
	point_report_info[2].y = 456;
	expect_unsigned("last active return", edge_long_press_up(&input_device, 2), 0);
	expect_unsigned("last active events", event_count, 7);
	expect_event("lock", 0, EVENT_LOCK, 0, 0, 0);
	expect_event("slot", 1, EVENT_INPUT, EV_ABS, ABS_MT_SLOT, 2);
	expect_event("mt", 2, EVENT_MT, 0, 0, 0);
	expect_event("btn touch", 3, EVENT_INPUT, EV_KEY, BTN_TOUCH, 0);
	expect_event("syn", 4, EVENT_INPUT, EV_SYN, 0, 0);
	expect_event("unlock", 5, EVENT_UNLOCK, 0, 0, 0);
	expect_pointer("mutex address", last_lock, tpd_storage + 0xc90);
	expect_pointer("unlock address", last_unlock, tpd_storage + 0xc90);
	expect_unsigned("cleared edge flag", point_report_info[2].field_84, 0);
	expect_unsigned("print count", event_count >= 6 ? 1 : 0, 1);
	expect_unsigned("print id", (unsigned int)last_print_id, 2);
	expect_unsigned("print x", (unsigned int)last_print_x, 123);
	expect_unsigned("print y", (unsigned int)last_print_y, 456);
	expect_unsigned("bug", bug_calls, 0);
}

static void test_other_active_suppresses_btn_touch(void)
{
	reset_fixture();
	point_report_info[0].field_84 = 1;
	point_report_info[0].field_83 = 0;
	point_report_info[3].field_83 = 1;
	point_report_info[3].field_84 = 0;
	expect_unsigned("other active return", edge_long_press_up(&input_device, 0), 0);
	expect_unsigned("other active events", event_count, 6);
	expect_event("other active lock", 0, EVENT_LOCK, 0, 0, 0);
	expect_event("other active slot", 1, EVENT_INPUT, EV_ABS, ABS_MT_SLOT, 0);
	expect_event("other active mt", 2, EVENT_MT, 0, 0, 0);
	expect_event("other active syn", 3, EVENT_INPUT, EV_SYN, 0, 0);
	expect_event("other active unlock", 4, EVENT_UNLOCK, 0, 0, 0);
	expect_unsigned("other active clear", point_report_info[0].field_84, 0);
	expect_unsigned("other active bug", bug_calls, 0);
}

int main(void)
{
	test_inactive_is_noop();
	test_last_active_reports_touch_up();
	test_other_active_suppresses_btn_touch();
	if (harness_failures != 0)
		return 1;
	puts("PASS edge_long_press_up host tests (3 cases)");
	return 0;
}
