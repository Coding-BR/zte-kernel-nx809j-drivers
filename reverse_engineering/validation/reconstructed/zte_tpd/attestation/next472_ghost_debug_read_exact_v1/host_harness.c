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
#define _DEFS_H

struct file { int unused; };

long long tpd_cdev;
static int init_timer_key;
static int g_alloc_fail;
static unsigned int g_alloc_calls;
static unsigned int g_free_calls;

static const char *unk_333B9;
static const char *unk_35E38;
static const char *unk_333DE;
static const char *unk_33A77;
static const char *unk_396F5;
static const char *unk_38C31;
static const char *unk_364EF;
static const char *unk_31D70;
static const char *unk_33A9C;
static const char *unk_33404;

static int printk_stub(const char *format, ...)
{
	va_list arguments;

	va_start(arguments, format);
	va_end(arguments);
	return 0;
}

#define printk(...) printk_stub(__VA_ARGS__)

static void *kmalloc_cache_stub(void *key, unsigned long size,
		unsigned long flags)
{
	(void)key;
	(void)flags;
	++g_alloc_calls;
	return g_alloc_fail ? NULL : malloc((size_t)size);
}

static void kfree_stub(void *pointer)
{
	++g_free_calls;
	free(pointer);
}

#define _kmalloc_cache_noprof(key, size, flags) \
	((uintptr_t)kmalloc_cache_stub(&(key), (size), (flags)))
#define kfree(pointer) kfree_stub((pointer))

static ssize_t simple_read_from_buffer(long long to, long long count,
		long long *position, const void *from, unsigned long available)
{
	char *destination = (char *)(uintptr_t)to;
	const char *source = (const char *)from;
	size_t copied;

	if (*position < 0 || (unsigned long)*position >= available)
		return 0;
	copied = available - (size_t)*position;
	if (copied > (size_t)count)
		copied = (size_t)count;
	memcpy(destination, source + *position, copied);
	*position += (long long)copied;
	return (ssize_t)copied;
}

#include "../../../reconstructed/zte_tpd/ghost_debug_read.c"

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

static int contains_bytes(const char *haystack, size_t haystack_size,
		const char *needle)
{
	size_t needle_size = strlen(needle);

	if (needle_size == 0 || needle_size > haystack_size)
		return 0;
	for (size_t offset = 0; offset + needle_size <= haystack_size; ++offset)
		if (memcmp(haystack + offset, needle, needle_size) == 0)
			return 1;
	return 0;
}

static void store_u32(unsigned char *device, size_t offset, uint32_t value)
{
	memcpy(device + offset, &value, sizeof(value));
}

static void fixture_reset(unsigned char *device)
{
	memset(device, 0, 1240);
	device[1169] = 1;
	device[1170] = 2;
	device[1171] = 3;
	device[1172] = 4;
	device[1173] = 5;
	store_u32(device, 1176, 6);
	store_u32(device, 1180, 7);
	store_u32(device, 1184, 8);
	store_u32(device, 1188, 9);
	tpd_cdev = (long long)(uintptr_t)device;
	g_alloc_fail = 0;
	g_alloc_calls = 0;
	g_free_calls = 0;
}

static void test_full_report(void)
{
	const char *name = "full_report";
	unsigned char device[1240];
	char output[4096];
	struct file file = {0};
	loff_t position = 0;
	ssize_t result;
	const char *needles[] = {
		"ghost_check_single_time is 1\n",
		"ghost_check_multi_time is 2\n",
		"ghost_check_single_count is 3\n",
		"ghost_check_multi_count is 4\n",
		"ghost_check_start_time is 5\n",
		"ghost_check_ignore_id is 6\n",
		"ghost_check_ignore_edge_area is 7\n",
		"ghost_check_ignore_corner_x is 8\n",
		"ghost_check_ignore_corner_y is 9\n",
		"ingle_time,multi_time,single_count,multi_count,start_time,ignore_id,ignore_edge_area,ignore_corner_x,ignore_corner_y",
		"echo 25,20,5,8,35,9,3201,801,801 > ghost_debug \n",
	};

	fixture_reset(device);
	memset(output, 0, sizeof(output));
	result = ghost_debug_read(&file, output, sizeof(output), &position);
	expect(result > 0, name, "full report returned no data");
	expect(position == result, name, "full report cursor differs from result");
	expect(g_alloc_calls == 1 && g_free_calls == 1, name,
		"allocation lifecycle differs");
	for (size_t i = 0; i < sizeof(needles) / sizeof(needles[0]); ++i) {
		if (!contains_bytes(output, (size_t)result, needles[i]))
		expect(contains_bytes(output, (size_t)result, needles[i]), name,
			"report field or command text is missing");
	}
}

static void test_cursor_eof(void)
{
	const char *name = "cursor_eof";
	unsigned char device[1240];
	char output[64];
	struct file file = {0};
	loff_t position = 1;

	fixture_reset(device);
	expect(ghost_debug_read(&file, output, sizeof(output), &position) == 0,
		name, "nonzero cursor did not return EOF");
	expect(g_alloc_calls == 0 && g_free_calls == 0, name,
		"EOF path allocated memory");
}

static void test_partial_read(void)
{
	const char *name = "partial_read";
	unsigned char device[1240];
	char output[32];
	struct file file = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_reset(device);
	memset(output, 0, sizeof(output));
	result = ghost_debug_read(&file, output, sizeof(output), &position);
	expect(result > (ssize_t)sizeof(output), name,
		"fixture report was unexpectedly short");
	expect(position == (ssize_t)sizeof(output), name,
		"partial read did not advance by count");
	expect(memcmp(output, "#######################################\n\n", sizeof(output)) == 0,
		name, "partial report header differs");
}

static void test_allocation_failure(void)
{
	const char *name = "allocation_failure";
	unsigned char device[1240];
	char output[64];
	struct file file = {0};
	loff_t position = 0;

	fixture_reset(device);
	g_alloc_fail = 1;
	expect(ghost_debug_read(&file, output, sizeof(output), &position) == -12,
		name, "allocation failure errno differs");
	expect(g_alloc_calls == 1 && g_free_calls == 0, name,
		"allocation failure lifecycle differs");
}

int main(void)
{
	test_full_report();
	test_cursor_eof();
	test_partial_read();
	test_allocation_failure();
	puts("PASS ghost_debug_read host tests (4 cases)");
	return 0;
}
