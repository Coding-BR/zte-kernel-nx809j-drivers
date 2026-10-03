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
#define _DWORD unsigned int
#define _QWORD uint64_t
#define _BYTE unsigned char
#define SP_EL0 0
#define _DEFS_H

struct file { int unused; };

long long tpd_cdev;
static unsigned char status_page[2048];
static int g_callback_result;
static unsigned int g_printk_calls;
static unsigned int g_read_calls;
static const char *unk_3CAA2 = "BBAT callback returned %d";

static long long _ReadStatusReg(int selector)
{
	(void)selector;
	return (long long)(uintptr_t)status_page;
}

static long long bb_at_callback(void)
{
	return g_callback_result;
}

static int printk_stub(const char *format, ...)
{
	(void)format;
	++g_printk_calls;
	return 0;
}

#define printk(...) printk_stub(__VA_ARGS__)

static ssize_t simple_read_from_buffer(long long to, long long count,
		long long *position, const void *from, unsigned long available)
{
	char *destination = (char *)(uintptr_t)to;
	const char *source = from;
	size_t copied;

	++g_read_calls;
	if (*position < 0 || (unsigned long)*position >= available)
		return 0;
	copied = available - (size_t)*position;
	if (copied > (size_t)count)
		copied = (size_t)count;
	memcpy(destination, source + *position, copied);
	*position += (long long)copied;
	return (ssize_t)copied;
}

#include "../../../reconstructed/zte_tpd/tp_BBAT_test_read.c"

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

static void fixture_reset(unsigned char *device)
{
	long long (*callback)(void) = bb_at_callback;

	memset(device, 0, 4096);
	memset(status_page, 0, sizeof(status_page));
	memcpy(status_page + 1808, &(uint64_t){0x5a5a5a5a}, sizeof(uint64_t));
	memcpy(device + 3632, &callback, sizeof(callback));
	device[20] = 1;
	tpd_cdev = (long long)(uintptr_t)device;
	g_callback_result = 0;
	g_printk_calls = 0;
	g_read_calls = 0;
}

static void test_callback_zero(void)
{
	const char *name = "callback_zero";
	unsigned char device[4096];
	char output[16] = {0};
	struct file file = {0};
	loff_t position = 0;

	fixture_reset(device);
	expect(tp_BBAT_test_read(&file, output, sizeof(output), &position) == 2,
		name, "zero callback return differs");
	expect(strcmp(output, "0\n") == 0 && position == 2, name,
		"zero callback output differs");
	expect(g_read_calls == 1 && g_printk_calls == 0, name,
		"zero callback side effects differ");
}

static void test_callback_nonzero(void)
{
	const char *name = "callback_nonzero";
	unsigned char device[4096];
	char output[16] = {0};
	struct file file = {0};
	loff_t position = 0;

	fixture_reset(device);
	g_callback_result = 7;
	expect(tp_BBAT_test_read(&file, output, sizeof(output), &position) == 2,
		name, "nonzero callback return differs");
	expect(strcmp(output, "7\n") == 0 && position == 2, name,
		"nonzero callback output differs");
	expect(g_read_calls == 1 && g_printk_calls == 1, name,
		"nonzero callback side effects differ");
}

static void test_no_callback_fallback(void)
{
	const char *name = "no_callback_fallback";
	unsigned char device[4096];
	char output[16] = {0};
	struct file file = {0};
	loff_t position = 0;
	uint64_t null_callback = 0;

	fixture_reset(device);
	memcpy(device + 3632, &null_callback, sizeof(null_callback));
	device[20] = 0;
	expect(tp_BBAT_test_read(&file, output, sizeof(output), &position) == 2,
		name, "fallback return differs");
	expect(strcmp(output, "2\n") == 0 && position == 2, name,
		"fallback output differs");
}

static void test_nonzero_offset(void)
{
	const char *name = "nonzero_offset";
	unsigned char device[4096];
	char output[16] = {0};
	struct file file = {0};
	loff_t position = 1;

	fixture_reset(device);
	expect(tp_BBAT_test_read(&file, output, sizeof(output), &position) == 0,
		name, "nonzero offset did not return EOF");
	expect(g_read_calls == 0, name, "nonzero offset performed a read");
}

int main(void)
{
	test_callback_zero();
	test_callback_nonzero();
	test_no_callback_fallback();
	test_nonzero_offset();
	puts("PASS tp_BBAT_test_read host tests (4 cases)");
	return 0;
}
