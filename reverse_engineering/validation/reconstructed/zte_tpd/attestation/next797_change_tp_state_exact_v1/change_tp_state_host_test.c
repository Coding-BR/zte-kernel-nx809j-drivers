#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef unsigned int u32;
typedef long long __int64;
struct mutex { unsigned int marker; };
struct workqueue_struct { unsigned int marker; };
struct work_struct { unsigned int marker; };
struct completion { unsigned int done; };

struct ufp_tp_ops_struct {
	unsigned char reserved_0000[0x08];
	int field_8;
	unsigned char opaque_000c[0x9c];
};
static __int64 tpd_cdev;
static struct ufp_tp_ops_struct ufp_tp_ops;
static int current_lcd_state;
static struct completion dword_314A0;
static unsigned char tpd_storage[0x1000];
static struct workqueue_struct workqueue;

enum lcdchange {
	LCDCHANGE_EXIT_LP = 0,
	LCDCHANGE_ENTER_LP = 1,
	LCDCHANGE_ON = 2,
	LCDCHANGE_OFF = 3,
};

enum event_kind { EVENT_LOCK = 1, EVENT_UNLOCK, EVENT_QUEUE, EVENT_INFO, EVENT_ERR, EVENT_WARN };
struct event_record {
	enum event_kind kind;
	unsigned long value;
	unsigned long value2;
};
static struct event_record events[16];
static unsigned int event_count;
static unsigned int failures;

static void record(enum event_kind kind, unsigned long value, unsigned long value2)
{
	if (event_count >= 16) {
		failures++;
		return;
	}
	events[event_count++] = (struct event_record){kind, value, value2};
}

static void mutex_lock(struct mutex *lock)
{
	record(EVENT_LOCK, (unsigned long)((unsigned char *)lock - tpd_storage), 0);
}

static void mutex_unlock(struct mutex *lock)
{
	record(EVENT_UNLOCK, (unsigned long)((unsigned char *)lock - tpd_storage), 0);
}

static int queue_work_on(int cpu, struct workqueue_struct *wq,
			 struct work_struct *work)
{
	record(EVENT_QUEUE, (unsigned long)cpu,
	       (unsigned long)((unsigned char *)work - tpd_storage));
	if (wq != &workqueue)
		failures++;
	return 1;
}

#define WORK_CPU_UNBOUND 0x20
#define pr_info(format, ...) record(EVENT_INFO, 0, 0)
#define pr_err(format, ...) record(EVENT_ERR, 0, 0)
#define pr_warn(format, ...) record(EVENT_WARN, 0, 0)
#define __break(value) record(EVENT_WARN, (value), 0)

#include "../../../reconstructed/zte_tpd/change_tp_state.c"

static void reset_fixture(int state)
{
	memset(tpd_storage, 0, sizeof(tpd_storage));
	memset(&ufp_tp_ops, 0, sizeof(ufp_tp_ops));
	memset(events, 0, sizeof(events));
	event_count = 0;
	current_lcd_state = state;
	dword_314A0.done = 7;
	tpd_cdev = (__int64)(uintptr_t)tpd_storage;
	*(struct workqueue_struct **)(tpd_storage + 0x4b0) = &workqueue;
}

static void expect_int(const char *name, unsigned long actual, unsigned long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lu expected %lu\n", name, actual, expected);
		failures++;
	}
}

static void expect_event(const char *name, unsigned int index,
			 enum event_kind kind, unsigned long value,
			 unsigned long value2)
{
	if (index >= event_count || events[index].kind != kind ||
	    events[index].value != value || events[index].value2 != value2) {
		fprintf(stderr, "%s: unexpected event at %u\n", name, index);
		failures++;
	}
}

static void test_screen_on_to_off(void)
{
	reset_fixture(0);
	change_tp_state(LCDCHANGE_OFF);
	expect_int("screen on -> off state", current_lcd_state, 1);
	expect_int("screen on -> off field", *(int *)((unsigned char *)&ufp_tp_ops + 8), 0);
	expect_event("screen on -> off lock", 0, EVENT_LOCK, 0xcc0, 0);
	expect_event("screen on -> off queue", 2, EVENT_QUEUE, WORK_CPU_UNBOUND, 0x9a0);
	expect_event("screen on -> off unlock", 3, EVENT_UNLOCK, 0xcc0, 0);
}

static void test_off_to_low_power(void)
{
	reset_fixture(1);
	change_tp_state(LCDCHANGE_ENTER_LP);
	expect_int("off -> low power state", current_lcd_state, 2);
	expect_event("off -> low power queue", 2, EVENT_QUEUE, WORK_CPU_UNBOUND, 0x9a0);
	expect_event("off -> low power unlock", 3, EVENT_UNLOCK, 0xcc0, 0);
}

static void test_low_power_to_on(void)
{
	reset_fixture(2);
	change_tp_state(LCDCHANGE_ON);
	expect_int("low power -> on state", current_lcd_state, 0);
	expect_event("low power -> on queue", 2, EVENT_QUEUE, WORK_CPU_UNBOUND, 0x9c0);
	expect_event("low power -> on unlock", 3, EVENT_UNLOCK, 0xcc0, 0);
}

static void test_ignored_transition(void)
{
	reset_fixture(0);
	change_tp_state(LCDCHANGE_EXIT_LP);
	expect_int("ignored state", current_lcd_state, 0);
	expect_int("ignored event count", event_count, 4);
	expect_event("ignored error", 2, EVENT_ERR, 0, 0);
	expect_event("ignored unlock", 3, EVENT_UNLOCK, 0xcc0, 0);
}

static void test_invalid_input_unlocks(void)
{
	reset_fixture(0);
	change_tp_state((enum lcdchange)4);
	expect_int("invalid state unchanged", current_lcd_state, 0);
	expect_event("invalid warning", 1, EVENT_WARN, 0x5512, 0);
	expect_event("invalid unlock", 2, EVENT_UNLOCK, 0xcc0, 0);
}

int main(void)
{
	test_screen_on_to_off();
	test_off_to_low_power();
	test_low_power_to_on();
	test_ignored_transition();
	test_invalid_input_unlocks();
	if (failures != 0)
		return 1;
	puts("PASS change_tp_state host tests (5 cases)");
	return 0;
}
