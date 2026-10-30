#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
#define __int8 char
#define __int16 int16_t
#define __int64 long long
#define _QWORD uint64_t
#define _DWORD uint32_t
#define SP_EL0 0
#define ZTE_TPD_HOST_TEST 1

struct file {
	int unused;
};

static long long tpd_cdev;
static unsigned int callback_calls;
static unsigned int printk_calls;

static void host_callback(uint64_t device)
{
	(void)device;
	callback_calls++;
}

int printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

ssize_t simple_read_from_buffer(__int64 destination_address,
					__int64 count, __int64 *position,
					const void *source, __int64 available)
{
	char *destination = (char *)(uintptr_t)destination_address;
	const char *source_bytes = source;
	__int64 copied;

	if (*position < 0 || count < 0 || available < 0)
		return -1;
	if (*position >= available)
		return 0;
	copied = available - *position;
	if (copied > count)
		copied = count;
	memcpy(destination, source_bytes + *position, (size_t)copied);
	*position += copied;
	return (ssize_t)copied;
}

#include "../../../reconstructed/zte_tpd/tp_pen_only_read.c"

struct fixture {
	uint8_t device[0xf80 + sizeof(void *)];
	char output[16];
};

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

static void store_ptr(uint8_t *base, size_t offset, void *value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static void store_u8(uint8_t *base, size_t offset, uint8_t value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static void fixture_init(struct fixture *fixture, uint8_t value,
				 void *callback)
{
	memset(fixture, 0, sizeof(*fixture));
	store_u8(fixture->device, 0x441, value);
	store_ptr(fixture->device, 0xf80, callback);
	tpd_cdev = (long long)(uintptr_t)fixture->device;
	callback_calls = 0;
	printk_calls = 0;
}

static void test_read_without_callback(void)
{
	const char *case_name = "read_without_callback";
	struct fixture fixture;
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 1, NULL);
	result = tp_pen_only_read(NULL, fixture.output, sizeof(fixture.output),
					&position);
	expect(result == 2, case_name, "unexpected read length");
	expect(memcmp(fixture.output, "1\n", 2) == 0, case_name,
		       "unexpected formatted value");
	expect(position == 2, case_name, "position not advanced");
	expect(callback_calls == 0, case_name, "unexpected callback");
	expect(printk_calls == 1, case_name, "log contract differs");
}

static void test_read_with_callback_at_stock_offset(void)
{
	const char *case_name = "read_with_callback_at_stock_offset";
	struct fixture fixture;
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 0, (void *)host_callback);
	result = tp_pen_only_read(NULL, fixture.output, sizeof(fixture.output),
					&position);
	expect(result == 2, case_name, "unexpected read length");
	expect(memcmp(fixture.output, "0\n", 2) == 0, case_name,
		       "unexpected formatted value");
	expect(callback_calls == 1, case_name, "stock callback was not called");
}

static void test_nonzero_position_is_eof(void)
{
	const char *case_name = "nonzero_position_is_eof";
	struct fixture fixture;
	loff_t position = 1;
	ssize_t result;

	fixture_init(&fixture, 1, NULL);
	memset(fixture.output, 0xa5, sizeof(fixture.output));
	result = tp_pen_only_read(NULL, fixture.output, sizeof(fixture.output),
					&position);
	expect(result == 0, case_name, "nonzero position did not return EOF");
	expect(position == 1, case_name, "position changed on EOF");
	expect((unsigned char)fixture.output[0] == 0xa5, case_name,
		       "EOF path modified output");
}

static void test_short_and_zero_count(void)
{
	const char *case_name = "short_and_zero_count";
	struct fixture fixture;
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 1, NULL);
	result = tp_pen_only_read(NULL, fixture.output, 1, &position);
	expect(result == 1 && fixture.output[0] == '1', case_name,
	       "short read contract differs");
	expect(position == 1, case_name, "short read position differs");

	position = 0;
	result = tp_pen_only_read(NULL, fixture.output, 0, &position);
	expect(result == 0 && position == 0, case_name,
	       "zero-count contract differs");
}

int main(void)
{
	test_read_without_callback();
	test_read_with_callback_at_stock_offset();
	test_nonzero_position_is_eof();
	test_short_and_zero_count();
	puts("PASS tp_pen_only_read: 4 cases");
	return 0;
}
