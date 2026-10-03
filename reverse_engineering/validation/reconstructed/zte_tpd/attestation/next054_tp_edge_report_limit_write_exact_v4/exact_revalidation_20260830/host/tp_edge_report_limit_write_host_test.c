#include <errno.h>
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
#define __int16 short
#define _QWORD long long
#define _BYTE unsigned char
#define _WORD unsigned short
#define _BOOL8 int

static unsigned char stack_guard_area[2048];
#define SP_EL0 0
static uintptr_t _ReadStatusReg(int reg)
{
	(void)reg;
	return (uintptr_t)stack_guard_area;
}

#define HIDWORD(value) (*((unsigned int *)&(value) + 1))
#define BYTE4(value) (*((unsigned char *)&(value) + 4))
#define WORD2(value) (*((unsigned short *)&(value) + 2))

struct file { int unused; };

long long tpd_cdev;
static int g_copy_fail;

static const char *unk_33B59;
static const char *unk_31887;
static const char *unk_37521;
static const char *unk_39CF4;
static const char *unk_33421;
static const char *unk_38CA5;
static const char *unk_380F6;
static const char *unk_3CA2F;
static const char *unk_3B681;
static const char *unk_328F9;

static int printk_stub(const char *format, ...)
{
	va_list arguments;

	va_start(arguments, format);
	va_end(arguments);
	return 0;
}

#define printk(...) printk_stub(__VA_ARGS__)

static int get_tp_algo_item_id(char *name)
{
	static const char *const keywords[] = {
		"algo_open", "jitter_pixel", "jitter_timer", "click_pixel",
		"long_press_open", "long_press_timer", "long_press_pixel",
	};

	for (int id = 0; id < 7; ++id)
		if (strstr(name, keywords[id]) != NULL)
			return id;
	return -EIO;
}

static unsigned long zte_inline_copy_from_user(void *to,
		const void *from, unsigned long count)
{
	if (g_copy_fail) {
		memset(to, 0, (size_t)count);
		return count;
	}
	memcpy(to, from, (size_t)count);
	return 0;
}

static int parse_uint(const char *text, unsigned int *value)
{
	char *end;
	unsigned long parsed;

	errno = 0;
	parsed = strtoul(text, &end, 10);
	if (end == text || errno == ERANGE || parsed > UINT32_MAX)
		return -EINVAL;
	while (*end == '\n' || *end == '\r' || *end == ' ' || *end == '\t')
		++end;
	if (*end != '\0')
		return -EINVAL;
	*value = (unsigned int)parsed;
	return 0;
}

static int kstrtouint(const char *text, unsigned int base, void *value)
{
	unsigned int parsed;

	if (base != 10)
		return -EINVAL;
	if (parse_uint(text, &parsed))
		return -EINVAL;
	memcpy(value, &parsed, sizeof(parsed));
	return 0;
}

static int kstrtouint_from_user(uintptr_t from, size_t count,
		unsigned int base, void *value)
{
	char *copy;
	unsigned int parsed;
	int result;

	if (!from || count > 4096)
		return -EFAULT;
	copy = calloc(1, count + 1);
	if (!copy)
		return -ENOMEM;
	memcpy(copy, (const void *)from, count);
	result = kstrtouint(copy, base, &parsed);
	free(copy);
	if (result)
		return result;
	memcpy(value, &parsed, sizeof(parsed));
	return 0;
}

#include "../../../reconstructed/zte_tpd/tp_edge_report_limit_write.c"

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

static void put_u16(unsigned char *device, size_t offset, uint16_t value)
{
	memcpy(device + offset, &value, sizeof(value));
}

static uint16_t get_u16(const unsigned char *device, size_t offset)
{
	uint16_t value;

	memcpy(&value, device + offset, sizeof(value));
	return value;
}

static void fixture_reset(unsigned char *device)
{
	memset(device, 0, 1200);
	put_u16(device, 1090, 1000);
	tpd_cdev = (long long)(uintptr_t)device;
	g_copy_fail = 0;
}

static ssize_t write_value(unsigned char *device, const char *value,
		struct file *file)
{
	loff_t offset = 0;

	tpd_cdev = (long long)(uintptr_t)device;
	return tp_edge_report_limit_write(file, value, strlen(value), &offset);
}

static void test_recognized_fields(void)
{
	const char *name = "recognized_fields";
	unsigned char device[1200];
	struct file file = {0};

	fixture_reset(device);
	expect(write_value(device, "algo_open:1", &file) == strlen("algo_open:1"), name,
		"algo_open return length differs");
	expect(device[27] == 1, name, "algo_open field differs");
	expect(write_value(device, "jitter_pixel:7", &file) == strlen("jitter_pixel:7"), name,
		"jitter_pixel return length differs");
	expect(device[36] == 7, name, "jitter_pixel field differs");
	expect(write_value(device, "jitter_timer:1234", &file) == strlen("jitter_timer:1234"), name,
		"jitter_timer return length differs");
	expect(get_u16(device, 62) == 1234, name, "jitter_timer field differs");
	expect(write_value(device, "click_pixel:9", &file) == strlen("click_pixel:9"), name,
		"click_pixel return length differs");
	for (size_t offset = 38; offset <= 42; ++offset)
		expect(device[offset] == 9, name, "click_pixel replication differs");
	expect(write_value(device, "long_press_open:2", &file) == strlen("long_press_open:2"), name,
		"long_press_open return length differs");
	expect(device[37] == 1, name, "long_press_open boolean differs");
	expect(write_value(device, "long_press_timer:4321", &file) == strlen("long_press_timer:4321"), name,
		"long_press_timer return length differs");
	expect(get_u16(device, 60) == 4321, name,
		"long_press_timer field differs");
}

static void test_long_press_vector(void)
{
	const char *name = "long_press_vector";
	unsigned char device[1200];
	struct file file = {0};

	fixture_reset(device);
	expect(write_value(device, "long_press_pixel:1,2,3,4", &file) == strlen("long_press_pixel:1,2,3,4"),
		name, "vector return length differs");
	for (size_t i = 0; i < 4; ++i) {
		expect(device[52 + i] == i + 1, name,
			   "long_press_pixel element differs");
	}
}

static void test_pixel_limit(void)
{
	const char *name = "pixel_limit";
	unsigned char device[1200];
	struct file file = {0};

	fixture_reset(device);
	expect(write_value(device, "10", &file) == 2, name,
		"pixel limit return length differs");
	expect(device[56] == 10, name, "pixel limit level differs");
	expect(get_u16(device, 44) == 55, name, "pixel limit derived value differs");
	expect(get_u16(device, 46) == 0, name, "pixel limit secondary value differs");
	expect(write_value(device, "11", &file) == -EINVAL, name,
		"out of range pixel limit was accepted");
}

static void test_failures_and_limits(void)
{
	const char *name = "failures_and_limits";
	unsigned char device[1200];
	struct file file = {0};
	char capped[100] = {0};

	fixture_reset(device);
	expect(write_value(device, "jitter_pixel:bad", &file) == strlen("jitter_pixel:bad"), name,
		"invalid recognized value return differs");
	expect(device[36] == 0, name, "invalid recognized value mutated state");
	expect(write_value(device, "mystery:1", &file) == -EINVAL, name,
		"unknown command was accepted");
	memcpy(capped, "10", 2);
	loff_t offset = 0;
	expect(tp_edge_report_limit_write(&file, capped, sizeof(capped), &offset) == 100,
		name, "count was not capped at 100");
	expect(device[56] == 10, name, "capped pixel limit was not applied");
	g_copy_fail = 1;
	expect(write_value(device, "algo_open:1", &file) == -EINVAL, name,
		"copy failure errno differs");
	g_copy_fail = 0;
}

static void test_full_length_named_input_is_terminated(void)
{
	const char *name = "full_length_named_input_is_terminated";
	unsigned char device[1200];
	struct file file = {0};
	char input[100];
	loff_t offset = 0;

	fixture_reset(device);
	memset(input, ' ', sizeof(input));
	memcpy(input, "algo_open:1", strlen("algo_open:1"));
	expect(tp_edge_report_limit_write(&file, input, sizeof(input), &offset) == 100,
	       name, "full-length named input return differs");
	expect(device[27] == 1, name,
	       "full-length named input was not parsed after bounded zeroing");
}

int main(void)
{
	test_recognized_fields();
	test_long_press_vector();
	test_pixel_limit();
	test_failures_and_limits();
	test_full_length_named_input_is_terminated();
	puts("PASS tp_edge_report_limit_write host tests (5 cases)");
	return 0;
}
