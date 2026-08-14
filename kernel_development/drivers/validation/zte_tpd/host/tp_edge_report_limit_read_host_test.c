#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __int64 long long
#define _QWORD long long __attribute__((aligned(1)))
#define _DWORD unsigned int
#define _BYTE unsigned char
#define __int8 char
#define __int16 short

struct file { int unused; };

long long tpd_cdev;
static int g_alloc_fail;
static unsigned int g_alloc_calls;
static unsigned int g_free_calls;
static const char *unk_33404 = "edge report allocation failed %lld %lld\n";

#define printk(...) fprintf(stderr, __VA_ARGS__)

static void *kmalloc_cache_stub(void *key, unsigned long size,
					unsigned long flags)
{
	(void)key;
	(void)flags;
	++g_alloc_calls;
	return g_alloc_fail ? NULL : malloc((size_t)size);
}

static void kfree_stub(void *ptr)
{
	++g_free_calls;
	free(ptr);
}

static ssize_t simple_read_from_buffer(long long to, long long count,
					      long long *position,
					      const void *from,
					      unsigned long available)
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

#define _kmalloc_cache_noprof(key, size, flags) kmalloc_cache_stub(&(key), (size), (flags))
#define kfree(value) kfree_stub((value))
static int init_timer_key;

#include "../../../reconstructed/zte_tpd/tp_edge_report_limit_read.c"

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

static void store_u8(uint8_t *base, size_t offset, uint8_t value)
{
	base[offset] = value;
}

static void store_u16(uint8_t *base, size_t offset, uint16_t value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static void fixture_init(uint8_t *device)
{
	memset(device, 0, 128);
	store_u8(device, 27, 1);
	store_u8(device, 36, 10);
	store_u8(device, 37, 1);
	store_u8(device, 38, 10);
	store_u8(device, 39, 11);
	store_u8(device, 40, 12);
	store_u8(device, 41, 13);
	store_u8(device, 42, 14);
	store_u8(device, 52, 21);
	store_u8(device, 53, 22);
	store_u8(device, 54, 23);
	store_u8(device, 55, 24);
	store_u16(device, 60, 500);
	store_u16(device, 62, 100);
}

static void test_full_read(void)
{
	const char *name = "full_read";
	const char *needles[] = {
		"algo_open:    1\n", "jitter_pixel:   10\n",
		"jitter_timer:  100\n", "click_pixel:   10\n",
		"long_press_open:    1\n", "long_press_timer:  500\n",
		"pixel limit level:    0\n", "click_pixel width:   11   12   13   14",
		"long_press_pixel:   21   22   23   24",
	};
	uint8_t device[128];
	char output[4096];
	struct file file = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_init(device);
	tpd_cdev = (long long)(uintptr_t)device;
	g_alloc_fail = 0;
	g_alloc_calls = 0;
	g_free_calls = 0;
	memset(output, 0, sizeof(output));
	result = tp_edge_report_limit_read(&file, output, sizeof(output), &position);
	expect(result > 0, name, "full read returned no data");
	expect(position == result, name, "cursor was not advanced");
	expect(g_alloc_calls == 1 && g_free_calls == 1, name,
	       "allocation lifecycle differs");
	for (size_t i = 0; i < sizeof(needles) / sizeof(needles[0]); ++i) {
		if (!contains_bytes(output, (size_t)result, needles[i])) {
			fail(name, "formatted field is missing");
		}
	}
}

static void test_nonzero_cursor_is_eof(void)
{
	const char *name = "nonzero_cursor_is_eof";
	uint8_t device[128];
	char output[64];
	struct file file = {0};
	loff_t position = 1;

	fixture_init(device);
	tpd_cdev = (long long)(uintptr_t)device;
	g_alloc_calls = 0;
	expect(tp_edge_report_limit_read(&file, output, sizeof(output), &position) == 0,
	       name, "nonzero cursor did not return EOF");
	expect(g_alloc_calls == 0, name, "EOF path allocated memory");
}

static void test_allocation_failure(void)
{
	const char *name = "allocation_failure";
	uint8_t device[128];
	char output[64];
	struct file file = {0};
	loff_t position = 0;

	fixture_init(device);
	tpd_cdev = (long long)(uintptr_t)device;
	g_alloc_fail = 1;
	g_alloc_calls = 0;
	expect(tp_edge_report_limit_read(&file, output, sizeof(output), &position) == -12,
	       name, "allocation failure errno differs");
	expect(g_alloc_calls == 1, name, "allocation failure was not attempted");
	g_alloc_fail = 0;
}

int main(void)
{
	test_full_read();
	test_nonzero_cursor_is_eof();
	test_allocation_failure();
	puts("PASS tp_edge_report_limit_read host tests (3 cases)");
	return 0;
}
