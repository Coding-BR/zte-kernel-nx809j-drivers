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

static unsigned int printk_calls;
static unsigned int report_calls;
static unsigned int reset_calls;
static unsigned int release_calls;
static unsigned int event_calls;
static unsigned int sleep_calls;
static unsigned int last_report_slot;
static unsigned int last_report_x;
static unsigned int last_report_y;
static unsigned int last_report_a5;
static unsigned int last_report_a6;
static unsigned int failures;
static int limit_area_result;
static int release_result;

static const char unk_3A160[] = "tpd";
static const char unk_37C4E[] = "down";
static const char unk_3A78C[] = "move";
static const char unk_3C42D[] = "move_filtered";
static const char unk_36572[] = "edge";
static const char unk_3A806[] = "limit";

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

void point_report_reset(unsigned int slot)
{
	++reset_calls;
	last_report_slot = slot;
}

long long tpd_touch_release(long long input, unsigned int slot, int reason)
{
	(void)input;
	(void)reason;
	++release_calls;
	last_report_slot = slot;
	return release_result;
}

long long tpd_touch_report(long long input, unsigned int x, unsigned int y,
		unsigned int slot, unsigned int a5, unsigned int a6)
{
	(void)input;
	++report_calls;
	last_report_slot = slot;
	last_report_x = x;
	last_report_y = y;
	last_report_a5 = a5;
	last_report_a6 = a6;
	return 0;
}

void input_event(long long input, unsigned int type, unsigned int code,
		unsigned int value)
{
	(void)input;
	(void)type;
	(void)code;
	(void)value;
	++event_calls;
}

void usleep_range_state(unsigned int min, unsigned int max, unsigned int state)
{
	(void)min;
	(void)max;
	(void)state;
	++sleep_calls;
}

int point_is_in_limit_area(unsigned int x, unsigned int y)
{
	(void)x;
	(void)y;
	return limit_area_result;
}

#define __break(value) do { (void)(value); ++failures; } while (0)

#include "../../../reconstructed/zte_tpd/tpd_touch_press.c"

static unsigned char *point(unsigned int slot)
{
	return point_report_info + slot * 136U;
}

static void reset_fixture(void)
{
	memset(point_report_info, 0, sizeof(point_report_info));
	memset(device_storage, 0, sizeof(device_storage));
	tpd_cdev = (long long)(uintptr_t)device_storage;
	jiffies = 100;
	is_fake_sleep_mode = 0;
	is_screen_off_awake_mode = 0;
	printk_calls = 0;
	report_calls = 0;
	reset_calls = 0;
	release_calls = 0;
	event_calls = 0;
	sleep_calls = 0;
	last_report_slot = 0;
	last_report_x = 0;
	last_report_y = 0;
	last_report_a5 = 0;
	last_report_a6 = 0;
	limit_area_result = 0;
	release_result = 0;
	failures = 0;
}

static void expect_u32(const char *name, unsigned int actual,
		unsigned int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %u expected %u\n", name, actual, expected);
		++failures;
	}
}

static void test_invalid_input(void)
{
	reset_fixture();
	tpd_touch_press(0, 10, 20, 0, 1, 2);
	expect_u32("invalid printk", printk_calls, 1);
	expect_u32("invalid reports", report_calls, 0);
}

static void test_first_contact_and_move(void)
{
	unsigned char *p;

	reset_fixture();
	tpd_touch_press((long long)(uintptr_t)(device_storage + 0x100), 500, 700,
		2, 3, 4);
	p = point(2);
	expect_u32("first report", report_calls, 1);
	expect_u32("first slot", last_report_slot, 2);
	expect_u32("first x", last_report_x, 500);
	expect_u32("first y", last_report_y, 700);
	expect_u32("first reset", reset_calls, 1);
	expect_u32("first active", p[83] & 1U, 1);
	expect_u32("first count", *(unsigned int *)(device_storage + 1164), 1);

	jiffies += 10;
	tpd_touch_press((long long)(uintptr_t)(device_storage + 0x100), 505, 704,
		2, 5, 6);
	expect_u32("move report", report_calls, 2);
	expect_u32("move x", last_report_x, 505);
	expect_u32("move y", last_report_y, 704);
	expect_u32("move sleep", sleep_calls, 0);
	expect_u32("move active", p[83] & 1U, 1);
}

static void test_limit_area_path(void)
{
	unsigned char *p;

	reset_fixture();
	limit_area_result = 1;
	tpd_touch_press((long long)(uintptr_t)(device_storage + 0x200), 200, 300,
		1, 7, 8);
	p = point(1);
	expect_u32("limit report", report_calls, 0);
	expect_u32("limit active", p[81] & 1U, 1);
	expect_u32("limit edge flag", p[85] & 1U, 1);
}

static void test_release_debounce(void)
{
	unsigned char *p;

	reset_fixture();
	p = point(0);
	*(unsigned char *)(device_storage + 37) = 1;
	p[80] = 1;
	p[88] = 1;
	*(unsigned short *)(device_storage + 1090) = 1000;
	*(unsigned char *)(device_storage + 53) = 100;
	*(unsigned int *)(p + 24) = 900;
	*(unsigned int *)(p + 48) = 950;
	*(unsigned int *)(p + 52) = 200;
	*(unsigned long long *)(p + 104) = 0;
	jiffies = 1000;
	tpd_touch_press((long long)(uintptr_t)(device_storage + 0x300), 950, 200,
		0, 1, 2);
	expect_u32("debounce release", release_calls, 1);
	expect_u32("debounce flag clear", p[88], 0);
	expect_u32("debounce reports", report_calls, 0);
}

int main(void)
{
	test_invalid_input();
	test_first_contact_and_move();
	test_limit_area_path();
	test_release_debounce();
	if (failures != 0) {
		fprintf(stderr, "FAIL tpd_touch_press host tests (%u failures)\n", failures);
		return 1;
	}
	puts("PASS tpd_touch_press host tests (4 cases)");
	return 0;
}
