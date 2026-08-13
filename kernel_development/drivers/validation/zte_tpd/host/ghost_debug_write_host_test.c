#include <errno.h>
#include <limits.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __int64 long long
#define __int16 short
#define _QWORD unsigned long long
#define _WORD unsigned short
#define _BYTE unsigned char
#define _DWORD unsigned int
#define _DEFS_H

struct file { int unused; };

long long tpd_cdev;
static int g_copy_fail;
static unsigned int g_copy_calls;
static unsigned int g_printk_calls;
static const char *unk_31DF8 = "ghost_debug_write copy failed\n";

#define WORD1(value) (((unsigned short *)&(value))[1])
#define WORD2(value) (((unsigned short *)&(value))[2])
#define HIWORD(value) (((unsigned short *)&(value))[3])
#define BYTE2(value) (((unsigned char *)&(value))[2])
#define BYTE4(value) (((unsigned char *)&(value))[4])
#define BYTE6(value) (((unsigned char *)&(value))[6])

static unsigned long read_sp_el0(void)
{
	return 0;
}

#define SP_EL0 0
#define _ReadStatusReg(reg) read_sp_el0()

static int printk_stub(const char *format, ...)
{
	(void)format;
	++g_printk_calls;
	return 0;
}

#define printk(...) printk_stub(__VA_ARGS__)

static unsigned long zte_inline_copy_from_user(void *destination,
		const void *source, unsigned long count)
{
	++g_copy_calls;
	if (g_copy_fail)
		return 1;
	if (count != 0)
		memcpy(destination, source, (size_t)count);
	return 0;
}

static int kstrtouint(const char *text, unsigned int base, void *value)
{
	char *end;
	unsigned long parsed;

	if (!text || !*text || base != 10)
		return -EINVAL;
	parsed = strtoul(text, &end, base);
	if (*end != '\0' || parsed > UINT_MAX)
		return -EINVAL;
	*(unsigned int *)value = (unsigned int)parsed;
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

static void put_u32(unsigned char *device, size_t offset, unsigned int value)
{
	memcpy(device + offset, &value, sizeof(value));
}

static unsigned int get_u32(const unsigned char *device, size_t offset)
{
	unsigned int value;

	memcpy(&value, device + offset, sizeof(value));
	return value;
}

static void fixture_reset(unsigned char *device)
{
	memset(device, 0, 1240);
	device[1169] = 0xa1;
	device[1170] = 0xa2;
	device[1171] = 0xa3;
	device[1172] = 0xa4;
	device[1173] = 0xa5;
	put_u32(device, 1176, 0xa6a6a6a6U);
	put_u32(device, 1180, 0xa7a7a7a7U);
	put_u32(device, 1184, 0xa8a8a8a8U);
	put_u32(device, 1188, 0xa9a9a9a9U);
	tpd_cdev = (long long)(uintptr_t)device;
	g_copy_fail = 0;
	g_copy_calls = 0;
	g_printk_calls = 0;
}

static void expect_state(const unsigned char *device, unsigned int first,
		const char *case_name)
{
	expect(device[1169] == (unsigned char)first, case_name,
		"first byte does not match parsed word 0");
	expect(device[1170] == (unsigned char)(first + 1), case_name,
		"second byte does not match parsed word 2");
	expect(device[1171] == (unsigned char)(first + 2), case_name,
		"third byte does not match parsed word 4");
	expect(device[1172] == (unsigned char)(first + 3), case_name,
		"fourth byte does not match parsed word 6");
	expect(device[1173] == (unsigned char)(first + 4), case_name,
		"fifth byte does not match parsed word 8");
	expect(get_u32(device, 1176) == first + 5, case_name,
		"first dword does not match parsed word 9");
	expect(get_u32(device, 1180) == first + 6
		&& get_u32(device, 1184) == first + 7
		&& get_u32(device, 1188) == first + 8, case_name,
		"remaining parsed dwords do not match");
}

static void test_full_vector(void)
{
	const char *name = "full_vector";
	const char input[] = "1,2,3,4,5,6,7,8,9,10";
	unsigned char device[1240];
	struct file file = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_reset(device);
	result = ghost_debug_write(&file, input, strlen(input), &position);
	expect(result == (ssize_t)strlen(input), name, "return count differs");
	expect(g_copy_calls == 1 && g_printk_calls == 0, name,
		"copy or printk path differs");
	expect_state(device, 1, name);
}

static void test_invalid_token_and_no_delimiter(void)
{
	const char *name = "invalid_token_and_no_delimiter";
	const char input[] = "bad,11";
	const char no_delimiter[] = "17";
	unsigned char device[1240];
	struct file file = {0};
	loff_t position = 0;

	fixture_reset(device);
	expect(ghost_debug_write(&file, input, strlen(input), &position) ==
		(ssize_t)strlen(input), name, "invalid-token return count differs");
	expect(device[1169] == 11 && device[1170] == 0, name,
		"valid token after invalid token was not stored at index zero");

	fixture_reset(device);
	position = 0;
	expect(ghost_debug_write(&file, no_delimiter, strlen(no_delimiter),
			&position) == (ssize_t)strlen(no_delimiter), name,
		"single-token return count differs");
	expect(device[1169] == 17 && device[1170] == 0, name,
		"single token was not parsed");
}

static void test_ten_token_limit_and_count_cap(void)
{
	const char *name = "ten_token_limit_and_count_cap";
	char input[160];
	unsigned char device[1240];
	struct file file = {0};
	loff_t position = 0;
	int length;

	length = snprintf(input, sizeof(input),
		"1,2,3,4,5,6,7,8,9,10,");
	while (length < 150)
		input[length++] = 'x';
	input[length] = '\0';
	expect(length > 100, name, "limit fixture is too short");
	fixture_reset(device);
	expect(ghost_debug_write(&file, input, (size_t)length, &position) == 100,
		name, "count was not capped at 100 bytes");
	expect_state(device, 1, name);
}

static void test_null_buffer_and_copy_failure(void)
{
	const char *name = "null_buffer_and_copy_failure";
	const char input[] = "1,2,3";
	unsigned char device[1240];
	struct file file = {0};
	loff_t position = 0;

	fixture_reset(device);
	expect(ghost_debug_write(&file, NULL, 101, &position) == 100, name,
		"null-buffer count cap differs");
	expect(g_copy_calls == 0 && device[1169] == 0 && device[1173] == 0,
		name, "null-buffer path did not parse zeroed input");

	fixture_reset(device);
	g_copy_fail = 1;
	expect(ghost_debug_write(&file, input, strlen(input), &position) == -EINVAL,
		name, "copy failure errno differs");
	expect(g_copy_calls == 1 && g_printk_calls == 1, name,
		"copy failure diagnostics differ");
	expect(device[1169] == 0xa1 && get_u32(device, 1176) == 0xa6a6a6a6U,
		name, "copy failure modified cdev state");
}

int main(void)
{
	test_full_vector();
	test_invalid_token_and_no_delimiter();
	test_ten_token_limit_and_count_cap();
	test_null_buffer_and_copy_failure();
	puts("PASS ghost_debug_write host tests (4 cases)");
	return 0;
}
