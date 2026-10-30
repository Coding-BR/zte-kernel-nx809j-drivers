#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

typedef long long __int64;
typedef unsigned int _DWORD;
typedef bool _BOOL8;
#define _BYTE unsigned char
#define __int8 char
#define __int16 short
#define __fastcall
static unsigned char device_storage[2048];
static __int64 tpd_cdev;
static unsigned char byte_30EFB, byte_30F83, byte_3100B, byte_31093;
static unsigned char byte_3111B, byte_311A3, byte_3122B, byte_312B3;
static unsigned char byte_3133B, byte_313C3;
static const char unk_353E5[] = "limit";
static unsigned int printk_calls;
static unsigned int harness_failures;

static int printk(const char *format, ...)
{
	if (format != unk_353E5)
		harness_failures++;
	printk_calls++;
	return 0;
}

#include "../../../reconstructed/zte_tpd/point_is_in_limit_area.c"

static void set16(unsigned int offset, unsigned short value)
{
	*(unsigned short *)(device_storage + offset) = value;
}

static void set32(unsigned int offset, unsigned int value)
{
	*(unsigned int *)(device_storage + offset) = value;
}

static void reset_fixture(unsigned int mode)
{
	memset(device_storage, 0, sizeof(device_storage));
	tpd_cdev = (__int64)(uintptr_t)device_storage;
	set32(16, mode);
	device_storage[39] = 10;
	device_storage[40] = 10;
	device_storage[41] = 10;
	device_storage[42] = 10;
	set16(44, 100);
	set16(46, 200);
	set16(1090, 1000);
	set16(1092, 2000);
	device_storage[56] = 1;
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
	printk_calls = 0;
}

static void expect_result(const char *name, unsigned short x,
				 unsigned short y, int expected)
{
	int actual = point_is_in_limit_area(x, y);
	if (actual != expected) {
		fprintf(stderr, "%s: got %d expected %d\n", name, actual, expected);
		harness_failures++;
	}
}

static void test_mode_three(void)
{
	reset_fixture(3);
	expect_result("mode3 inside", 500, 500, 0);
	expect_result("mode3 left edge", 9, 500, 1);
	expect_result("mode3 right edge", 991, 500, 1);
	expect_result("mode3 top edge", 500, 9, 1);
	expect_result("mode3 bottom edge", 500, 1991, 1);
}

static void test_normal_limits_and_ghost(void)
{
	reset_fixture(2);
	expect_result("normal left edge", 9, 500, 1);
	expect_result("normal right edge", 991, 500, 1);
	expect_result("normal y below threshold", 500, 200, 0);
	expect_result("normal central x", 500, 500, 0);
	expect_result("normal outside central x", 50, 500, 1);

	reset_fixture(0);
	device_storage[52] = 40;
	byte_30EFB = 1;
	expect_result("ghost flag", 50, 500, 1);
	if (printk_calls != 1) {
		fprintf(stderr, "ghost printk calls: got %u expected 1\n", printk_calls);
		harness_failures++;
	}
}

int main(void)
{
	test_mode_three();
	test_normal_limits_and_ghost();
	if (harness_failures != 0)
		return 1;
	puts("PASS point_is_in_limit_area host tests (2 cases)");
	return 0;
}
