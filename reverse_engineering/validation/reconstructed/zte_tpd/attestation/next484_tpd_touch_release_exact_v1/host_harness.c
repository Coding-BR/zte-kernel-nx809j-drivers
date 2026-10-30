#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define __int64 long long
#define __int16 short
#define __int8 char
#define __fastcall
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define LODWORD(value) (*((unsigned int *)&(value)))
#define __PAIR64__(high, low) ((high) || (low))

static unsigned char point_report_info[10 * 136] __attribute__((aligned(8)));
static unsigned char device_storage[0x1000] __attribute__((aligned(8)));
long long tpd_cdev;
unsigned long long jiffies;
int is_fake_sleep_mode;
int is_screen_off_awake_mode;
unsigned char byte_30EFB;
unsigned char byte_30F83;
unsigned char byte_3100B;
unsigned char byte_31093;
unsigned char byte_3111B;
unsigned char byte_311A3;
unsigned char byte_3122B;
unsigned char byte_312B3;
unsigned char byte_3133B;
unsigned char byte_313C3;

static const char unk_3A160[] = "tpd";
static const char unk_3BD1F[] = "release";
static const char unk_3D033[] = "ghost_work";
static const char unk_3A7B9[] = "ghost_count";
static const char unk_38119[] = "edge";
static const char unk_3CAE7[] = "edge_disabled";
static const char unk_3B713[] = "edge_busy";
static const char unk_35994[] = "edge_report";
static const char unk_340BD[] = "edge_slot";

static unsigned int printk_calls;
static unsigned int input_event_calls;
static unsigned int mt_state_calls;
static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static unsigned int queue_calls;
static unsigned int gesture_calls;
static unsigned int ghost_calls;
static unsigned int break_calls;
static unsigned int failures;
static const char *last_gesture;
static unsigned long long last_queue_work;
static unsigned long long last_queue_context;
static unsigned int last_queue_delay;
static unsigned int last_input_code;

int printk(const char *format, ...)
{
	(void)format;
	++printk_calls;
	return 0;
}

unsigned int jiffies_to_msecs(unsigned long long value)
{
	return (unsigned int)value;
}

void mutex_lock(long long lock)
{
	(void)lock;
	++mutex_lock_calls;
}

int mutex_unlock(long long lock)
{
	(void)lock;
	++mutex_unlock_calls;
	return 0;
}

void input_event(long long input, unsigned int type, unsigned int code,
		unsigned int value)
{
	(void)input;
	(void)type;
	(void)value;
	++input_event_calls;
	last_input_code = code;
}

void input_mt_report_slot_state(long long input, unsigned int tool,
		unsigned int active)
{
	(void)input;
	(void)tool;
	(void)active;
	++mt_state_calls;
}

void ufp_report_gesture_uevent(const char *gesture)
{
	++gesture_calls;
	last_gesture = gesture;
}

int ghost_check_area(void *point)
{
	(void)point;
	++ghost_calls;
	return 1;
}

long long queue_delayed_work_on(unsigned int cpu, unsigned long long workqueue,
		unsigned long long work, unsigned int delay)
{
	(void)cpu;
	++queue_calls;
	last_queue_context = workqueue;
	last_queue_work = work;
	last_queue_delay = delay;
	return 1;
}

#define __break(value) do { (void)(value); ++break_calls; } while (0)

#include "../../../reconstructed/zte_tpd/tpd_touch_release.c"

static unsigned char *point(unsigned int slot)
{
	return point_report_info + slot * 136U;
}

static void set_u16(unsigned char *base, unsigned int offset, unsigned short value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static void set_u32(unsigned char *base, unsigned int offset, unsigned int value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static void set_u64(unsigned char *base, unsigned int offset,
		unsigned long long value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static unsigned int get_u32(const unsigned char *base, unsigned int offset)
{
	unsigned int value;

	memcpy(&value, base + offset, sizeof(value));
	return value;
}

static void reset_fixture(void)
{
	memset(point_report_info, 0, sizeof(point_report_info));
	memset(device_storage, 0, sizeof(device_storage));
	tpd_cdev = (long long)(uintptr_t)device_storage;
	jiffies = 1000;
	is_fake_sleep_mode = 0;
	is_screen_off_awake_mode = 0;
	printk_calls = 0;
	input_event_calls = 0;
	mt_state_calls = 0;
	mutex_lock_calls = 0;
	mutex_unlock_calls = 0;
	queue_calls = 0;
	gesture_calls = 0;
	ghost_calls = 0;
	break_calls = 0;
	failures = 0;
	last_gesture = NULL;
	last_queue_work = 0;
	last_queue_context = 0;
	last_queue_delay = 0;
	last_input_code = 0;
	byte_30EFB = 0;
	byte_30F83 = 0;
	byte_3100B = 0;
	byte_31093 = 0;
	byte_3111B = 0;
	byte_311A3 = 0;
	byte_3122B = 0;
	byte_312B3 = 0;
	byte_3133B = 0;
	byte_313C3 = 0;
	set_u64(device_storage, 1200, (uintptr_t)(device_storage + 0x100));
	set_u64(device_storage, 1208, (uintptr_t)(device_storage + 0x180));
	set_u16(device_storage, 60, 100);
	*(unsigned char *)(device_storage + 1173) = 100;
	set_u32(device_storage, 1169, 20);
}

static void expect_u32(const char *name, unsigned int actual,
		unsigned int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %u expected %u\n", name, actual, expected);
		++failures;
	}
}

static void expect_ptr(const char *name, const char *actual, const char *expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s gesture mismatch\n", name);
		++failures;
	}
}

static void test_inactive_cleanup(void)
{
	unsigned char *p;

	reset_fixture();
	p = point(0);
	set_u32(p, 24, 100);
	set_u32(p, 28, 200);
	set_u64(p, 96, 900);
	tpd_touch_release((long long)(uintptr_t)(device_storage + 0x200), 0, 0);
	expect_u32("inactive input events", input_event_calls, 0);
	expect_u32("inactive mutex locks", mutex_lock_calls, 0);
	expect_u32("inactive active flag", p[83], 0);
	expect_u32("inactive mode snapshot x", get_u32(p, 60), 0);
	expect_u32("inactive mode snapshot y", get_u32(p, 64), 0);
}

static void prepare_active(unsigned int slot)
{
	unsigned char *p = point(slot);

	p[83] = 1;
	set_u32(p, 24, 100);
	set_u32(p, 28, 200);
	set_u32(p, 36, 100);
	set_u32(p, 40, 200);
	set_u64(p, 96, 950);
	set_u64(p, 72, 900);
	set_u64(p, 112, 0);
	set_u32(device_storage, 1164, 1);
}

static void test_normal_release(void)
{
	unsigned char *p;

	reset_fixture();
	prepare_active(0);
	tpd_touch_release((long long)(uintptr_t)(device_storage + 0x200), 0, 0);
	p = point(0);
	expect_u32("normal input events", input_event_calls, 1);
	expect_u32("normal mt state", mt_state_calls, 1);
	expect_u32("normal mutex lock", mutex_lock_calls, 1);
	expect_u32("normal mutex unlock", mutex_unlock_calls, 1);
	expect_u32("normal active flag", p[83], 0);
	expect_u32("normal count", get_u32(device_storage, 1164), 0);
	expect_u32("normal duration", get_u32(p, 120), 50);
}

static void test_gestures_and_ghost_work(void)
{
	unsigned char *p;

	reset_fixture();
	prepare_active(1);
	is_fake_sleep_mode = 1;
	tpd_touch_release((long long)(uintptr_t)(device_storage + 0x200), 1, 0);
	expect_u32("gesture call", gesture_calls, 2);
	expect_ptr("double tap", last_gesture, "double_tap=true");
	p = point(1);
	expect_u32("ghost call", ghost_calls, 1);
	expect_u32("ghost queue", queue_calls, 1);
	expect_u32("ghost work flag", device_storage[1160] & 1U, 1);
	expect_u32("ghost counter", *(unsigned short *)(p + 94), 1);
	expect_u32("ghost run count", get_u32(device_storage, 1164), 0);
}

static void test_edge_repress_and_workqueue(void)
{
	unsigned char *p;

	reset_fixture();
	p = point(0);
	*(unsigned char *)(device_storage + 37) = 1;
	set_u64(p, 112, 950);
	set_u32(p, 0, 321);
	set_u16(p, 8, 3);
	set_u16(p, 9, 4);
	tpd_touch_release((long long)(uintptr_t)(device_storage + 0x200), 0, 0);
	expect_u32("edge input events", input_event_calls, 7);
	expect_u32("edge mt state", mt_state_calls, 1);
	expect_u32("edge queue", queue_calls, 1);
	expect_u32("edge queue delay", last_queue_delay, 13);
	expect_u32("edge flag", p[84], 1);
	expect_u32("edge work offset", (unsigned int)(last_queue_work - (uintptr_t)device_storage), 1216);
}

int main(void)
{
	test_inactive_cleanup();
	test_normal_release();
	test_gestures_and_ghost_work();
	test_edge_repress_and_workqueue();
	if (failures != 0) {
		fprintf(stderr, "FAIL tpd_touch_release host tests (%u failures)\n", failures);
		return 1;
	}
	puts("PASS tpd_touch_release host tests (4 cases)");
	return 0;
}
