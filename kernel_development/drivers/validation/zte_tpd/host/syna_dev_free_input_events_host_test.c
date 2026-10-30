#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef int64_t __int64;
typedef uint8_t u8;

#define EV_SYN 0
#define EV_KEY 1
#define EV_ABS 3
#define SYN_REPORT 0
#define ABS_MT_SLOT 0x2f
#define BTN_TOUCH 0x14a
#define BTN_TOOL_FINGER 0x145

struct input_dev {
	unsigned int marker;
};

struct mutex {
	unsigned int marker;
};

struct syna_tcm {
	_Alignas(void *) uint8_t bytes[0x3b8];
};

struct ufp_tp_ops_struct {
	uint8_t reserved_a0[0xa0];
	uint8_t field_a0;
	uint8_t field_a1;
	uint8_t field_a2;
};

enum event_id {
	EVENT_LOCK,
	EVENT_INPUT,
	EVENT_MT_SLOT,
	EVENT_RELEASE,
	EVENT_ONE_KEY,
	EVENT_PRINTK,
	EVENT_UFP_UEVENT,
	EVENT_UNLOCK,
};

struct event {
	enum event_id id;
	const void *pointer;
	int a;
	int b;
	int c;
};

static struct ufp_tp_ops_struct ufp_tp_ops;
static struct event events[64];
static size_t event_count;
static unsigned int failures;
static char printk_format[96];
static char printk_function[48];

_Static_assert(offsetof(struct syna_tcm, bytes) == 0,
	       "raw syna_tcm offset base");
_Static_assert(sizeof(struct syna_tcm) >= 0x3b8,
	       "input pointer offset must be addressable");
_Static_assert(offsetof(struct ufp_tp_ops_struct, field_a0) == 0xa0,
	       "recovered ufp flag offset");

static void record_event(enum event_id id, const void *pointer, int a, int b,
			 int c)
{
	if (event_count >= sizeof(events) / sizeof(events[0])) {
		failures++;
		return;
	}
	events[event_count++] = (struct event){ .id = id, .pointer = pointer,
		.a = a, .b = b, .c = c };
}

void mutex_lock(struct mutex *lock)
{
	record_event(EVENT_LOCK, lock, 0, 0, 0);
}

void mutex_unlock(struct mutex *lock)
{
	record_event(EVENT_UNLOCK, lock, 0, 0, 0);
}

void input_event(struct input_dev *input, unsigned int type, unsigned int code,
		 int value)
{
	record_event(EVENT_INPUT, input, (int)type, (int)code, value);
}

void input_mt_report_slot_state(struct input_dev *input, int tool_type, bool active)
{
	record_event(EVENT_MT_SLOT, input, tool_type, active, 0);
}

__int64 tpd_touch_release(__int64 input, unsigned short slot, int release_state)
{
	record_event(EVENT_RELEASE, (const void *)(uintptr_t)input, slot, release_state,
		     0);
	return 0;
}

void one_key_report(int first, int second, int third, unsigned int slot)
{
	record_event(EVENT_ONE_KEY, NULL, first, second, third);
	if (event_count != 0)
		events[event_count - 1].pointer = (const void *)(uintptr_t)slot;
}

int printk(const char *format, ...)
{
	va_list args;
	const char *function;

	va_start(args, format);
	function = va_arg(args, const char *);
	va_end(args);
	(void)snprintf(printk_format, sizeof(printk_format), "%s", format);
	(void)snprintf(printk_function, sizeof(printk_function), "%s", function);
	record_event(EVENT_PRINTK, NULL, 0, 0, 0);
	return 0;
}

void report_ufp_uevent(int value)
{
	record_event(EVENT_UFP_UEVENT, NULL, value, 0, 0);
}

#include "../../../reconstructed/zte_tpd/syna_dev_free_input_events.c"

static int expect(bool condition, const char *case_name, const char *message)
{
	if (condition)
		return 0;
	fprintf(stderr, "%s: %s\n", case_name, message);
	return 1;
}

static void reset_fixture(struct syna_tcm *tcm, struct input_dev *input,
			  bool install_input, uint8_t field_a0, uint8_t field_a1)
{
	memset(tcm, 0xa5, sizeof(*tcm));
	memset(&ufp_tp_ops, 0, sizeof(ufp_tp_ops));
	memset(events, 0, sizeof(events));
	event_count = 0;
	failures = 0;
	printk_format[0] = '\0';
	printk_function[0] = '\0';
	ufp_tp_ops.field_a0 = field_a0;
	ufp_tp_ops.field_a1 = field_a1;
	ufp_tp_ops.field_a2 = 0x5a;
	if (install_input)
		memcpy(tcm->bytes + 0x3b0, &input, sizeof(input));
	else
		memset(tcm->bytes + 0x3b0, 0, sizeof(input));
}

static int expect_event(size_t index, enum event_id id, const void *pointer,
			int a, int b, int c, const char *case_name)
{
	if (index >= event_count)
		return expect(false, case_name, "missing event");
	return expect(events[index].id == id && events[index].pointer == pointer &&
		      events[index].a == a && events[index].b == b &&
		      events[index].c == c, case_name, "event contract mismatch");
}

static int expect_active_sequence(const char *case_name, struct syna_tcm *tcm,
				  struct input_dev *input, bool expect_printk)
{
	size_t index = 0;
	unsigned int slot;
	struct mutex *lock = (struct mutex *)(void *)(tcm->bytes + 0x278);

	if (expect_event(index++, EVENT_LOCK, lock, 0, 0, 0, case_name))
		return 1;
	for (slot = 0; slot != 10; slot++) {
		if (expect_event(index++, EVENT_INPUT, input, EV_ABS, ABS_MT_SLOT, slot,
				 case_name) ||
		    expect_event(index++, EVENT_MT_SLOT, input, 0, false, 0, case_name) ||
		    expect_event(index++, EVENT_RELEASE, input, slot, 0, 0, case_name) ||
		    expect_event(index++, EVENT_ONE_KEY, (const void *)(uintptr_t)slot,
				 0, -1, -1, case_name))
			return 1;
	}
	if (expect_event(index++, EVENT_INPUT, input, EV_KEY, BTN_TOUCH, 0,
			 case_name) ||
	    expect_event(index++, EVENT_INPUT, input, EV_KEY, BTN_TOOL_FINGER, 0,
			 case_name))
		return 1;
	if (expect_printk) {
		if (expect_event(index++, EVENT_PRINTK, NULL, 0, 0, 0, case_name))
			return 1;
		if (expect(strcmp(printk_format,
			  "\0016[info ] %s: areameet down,free point flag need true") == 0 &&
			   strcmp(printk_function, "syna_dev_free_input_events") == 0,
			   case_name, "printk contract mismatch"))
			return 1;
	}
	if (expect_event(index++, EVENT_UFP_UEVENT, NULL, 0, 0, 0, case_name) ||
	    expect_event(index++, EVENT_INPUT, input, EV_SYN, SYN_REPORT, 0,
			 case_name) ||
	    expect_event(index++, EVENT_UNLOCK, lock, 0, 0, 0, case_name))
		return 1;
	return expect(event_count == index && failures == 0, case_name,
		      "unexpected event or stub failure");
}

static int test_null_input(void)
{
	struct syna_tcm tcm;
	struct input_dev input = { 0 };

	reset_fixture(&tcm, &input, false, 1, 1);
	syna_dev_free_input_events(&tcm);
	return expect(event_count == 0 && ufp_tp_ops.field_a2 == 0x5a, "null-input",
		      "stock null-input early return mismatch");
}

static int test_clear_flag(void)
{
	struct syna_tcm tcm;
	struct input_dev input = { 0 };

	reset_fixture(&tcm, &input, true, 0, 0);
	syna_dev_free_input_events(&tcm);
	if (expect_active_sequence("clear-flag", &tcm, &input, false))
		return 1;
	return expect(ufp_tp_ops.field_a2 == 0x5a, "clear-flag",
		      "flag write occurred without stock predicate");
}

static int test_low_flag(void)
{
	struct syna_tcm tcm;
	struct input_dev input = { 0 };

	reset_fixture(&tcm, &input, true, 1, 0);
	syna_dev_free_input_events(&tcm);
	if (expect_active_sequence("low-flag", &tcm, &input, true))
		return 1;
	return expect(ufp_tp_ops.field_a2 == 1, "low-flag", "flag was not set");
}

static int test_high_flag(void)
{
	struct syna_tcm tcm;
	struct input_dev input = { 0 };

	reset_fixture(&tcm, &input, true, 0, 1);
	syna_dev_free_input_events(&tcm);
	if (expect_active_sequence("high-flag", &tcm, &input, true))
		return 1;
	return expect(ufp_tp_ops.field_a2 == 1, "high-flag", "flag was not set");
}

int main(void)
{
	if (test_null_input() || test_clear_flag() || test_low_flag() || test_high_flag())
		return 1;
	puts("PASS syna_dev_free_input_events host tests (4 cases)");
	return 0;
}
