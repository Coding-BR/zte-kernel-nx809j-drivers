#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __int64 long long
#define __int8 char
#define _DWORD unsigned int
#define _QWORD uint64_t
#define _BYTE unsigned char
#define SP_EL0 0
#define _DEFS_H

struct file { int unused; };

long long tpd_cdev;
static unsigned char status_page[2048];
static int g_copy_fail;
static unsigned int g_copy_calls;
static unsigned int g_printk_calls;
static const char *unk_31DF8 = "copy failed";

static long long _ReadStatusReg(int selector)
{
	(void)selector;
	return (long long)(uintptr_t)status_page;
}

static int printk_stub(const char *format, ...)
{
	(void)format;
	++g_printk_calls;
	return 0;
}

#define printk(...) printk_stub(__VA_ARGS__)

static unsigned long zte_inline_copy_from_user(void *destination,
		const void __user *source, unsigned long size)
{
	++g_copy_calls;
	if (g_copy_fail)
		return 1;
	memcpy(destination, source, (size_t)size);
	return 0;
}

static int kstrtouint(const char *text, unsigned int base,
		unsigned int *value)
{
	char *end;
	unsigned long parsed;

	if (!text || !*text || base != 10)
		return -22;
	parsed = strtoul(text, &end, base);
	if (*end != '\0' || parsed > UINT32_MAX)
		return -22;
	*value = (unsigned int)parsed;
	return 0;
}

#include "../../../reconstructed/zte_tpd/ghost_debug_write.c"

static void fail(const char *case_name, const char *message)
{
	fprintf(stderr, "FAIL %s: %s\n", case_name, message);
	exit(1);
}

static void expect(int condition, const char *case_name, const char *message)
{
	if (!condition)
		fail(case_name, message);
}

static void store_u32(unsigned char *device, size_t offset, uint32_t value)
{
	memcpy(device + offset, &value, sizeof(value));
}

static uint32_t load_u32(const unsigned char *device, size_t offset)
{
	uint32_t value;

	memcpy(&value, device + offset, sizeof(value));
	return value;
}

static void fixture_reset(unsigned char *device)
{
	memset(device, 0, 1240);
	memset(status_page, 0, sizeof(status_page));
	store_u32(status_page, 1808, 0x5a5a5a5a);
	tpd_cdev = (long long)(uintptr_t)device;
	g_copy_fail = 0;
	g_copy_calls = 0;
	g_printk_calls = 0;
}

static void expect_report(unsigned char *device)
{
	expect(device[1169] == 25 && device[1170] == 20 && device[1171] == 5,
		"full_csv", "first ghost fields differ");
	expect(device[1172] == 8 && device[1173] == 35,
		"full_csv", "timing fields differ");
	expect(load_u32(device, 1176) == 9 && load_u32(device, 1180) == 3201,
		"full_csv", "ignore fields differ");
	expect(load_u32(device, 1184) == 801 && load_u32(device, 1188) == 801,
		"full_csv", "corner fields differ");
}

static void test_full_csv(void)
{
	const char *name = "full_csv";
	const char input[] = "25,20,5,8,35,9,3201,801,801";
	unsigned char device[1240];
	struct file file = {0};
	loff_t position = 0;

	fixture_reset(device);
	expect(ghost_debug_write(&file, input, sizeof(input) - 1, &position) ==
		(ssize_t)(sizeof(input) - 1), name, "full CSV return differs");
	expect_report(device);
	expect(g_copy_calls == 1 && g_printk_calls == 0, name,
		"full CSV call counts differ");
}

static void test_count_is_capped(void)
{
	const char *name = "count_is_capped";
	char input[100] = {0};
	unsigned char device[1240];
	struct file file = {0};
	loff_t position = 0;

	fixture_reset(device);
	memcpy(input, "1,2,3,4,5,6,7,8,9,EXTRA-DATA", 29);
	expect(ghost_debug_write(&file, input, 1000, &position) == 100,
		name, "count was not capped at 100");
	expect(device[1169] == 1 && device[1170] == 2 && device[1173] == 5,
		name, "capped input fields differ");
	expect(load_u32(device, 1176) == 6 && load_u32(device, 1188) == 9,
		name, "capped input u32 fields differ");
}

static void test_null_user_buffer(void)
{
	const char *name = "null_user_buffer";
	unsigned char device[1240];
	struct file file = {0};
	loff_t position = 0;

	fixture_reset(device);
	expect(ghost_debug_write(&file, NULL, 16, &position) == 16,
		name, "null buffer return differs");
	expect(device[1169] == 0 && device[1173] == 0 && load_u32(device, 1176) == 0,
		name, "null buffer did not produce zero fields");
	expect(g_copy_calls == 0 && g_printk_calls == 0, name,
		"null buffer unexpectedly copied or logged");
}

static void test_copy_failure(void)
{
	const char *name = "copy_failure";
	const char input[] = "9,8,7,6,5,4,3,2,1";
	unsigned char device[1240];
	struct file file = {0};
	loff_t position = 0;

	fixture_reset(device);
	g_copy_fail = 1;
	expect(ghost_debug_write(&file, input, sizeof(input) - 1, &position) == -22,
		name, "copy failure errno differs");
	expect(device[1169] == 0 && load_u32(device, 1176) == 0, name,
		"copy failure modified device state");
	expect(g_copy_calls == 1 && g_printk_calls == 1, name,
		"copy failure call counts differ");
}

int main(void)
{
	test_full_csv();
	test_count_is_capped();
	test_null_user_buffer();
	test_copy_failure();
	puts("PASS ghost_debug_write host tests (4 cases)");
	return 0;
}
