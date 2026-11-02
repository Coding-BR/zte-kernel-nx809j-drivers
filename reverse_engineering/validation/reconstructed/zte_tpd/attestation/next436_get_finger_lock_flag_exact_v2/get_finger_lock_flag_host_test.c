#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __int64 long long
#define _DWORD uint32_t
#define ZTE_TPD_HOST_TEST 1

struct file {
	int unused;
};

static long long tpd_cdev;
static unsigned int printk_calls;

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

#include "../../../reconstructed/zte_tpd/get_finger_lock_flag.c"

struct fixture {
	uint8_t device[0x474 + sizeof(uint32_t)];
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

static void store_u32(uint8_t *base, size_t offset, uint32_t value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static void fixture_init(struct fixture *fixture, uint32_t value)
{
	memset(fixture, 0, sizeof(*fixture));
	store_u32(fixture->device, 0x474, value);
	tpd_cdev = (long long)(uintptr_t)fixture->device;
	printk_calls = 0;
}

static void test_zero_value(void)
{
	const char *case_name = "zero_value";
	struct fixture fixture;
	char output[8] = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 0);
	result = get_finger_lock_flag(NULL, output, sizeof(output), &position);
	expect(result == 2, case_name, "unexpected read length");
	expect(memcmp(output, "0\n", 2) == 0, case_name,
	       "unexpected formatted value");
	expect(position == 2, case_name, "position not advanced");
	expect(printk_calls == 1, case_name, "log contract differs");
}

static void test_nonzero_value(void)
{
	const char *case_name = "nonzero_value";
	struct fixture fixture;
	char output[16] = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 1234);
	result = get_finger_lock_flag(NULL, output, sizeof(output), &position);
	expect(result == 5, case_name, "unexpected read length");
	expect(memcmp(output, "1234\n", 5) == 0, case_name,
	       "unexpected formatted value");
}

static void test_nonzero_position_is_eof(void)
{
	const char *case_name = "nonzero_position_is_eof";
	struct fixture fixture;
	char output[8];
	loff_t position = 1;
	ssize_t result;

	fixture_init(&fixture, 1);
	memset(output, 0xa5, sizeof(output));
	result = get_finger_lock_flag(NULL, output, sizeof(output), &position);
	expect(result == 0 && position == 1, case_name,
	       "nonzero position was not treated as EOF");
	expect((unsigned char)output[0] == 0xa5, case_name,
	       "EOF path modified output");
	expect(printk_calls == 0, case_name, "EOF path logged");
}

static void test_short_and_zero_count(void)
{
	const char *case_name = "short_and_zero_count";
	struct fixture fixture;
	char output[8] = {0};
	loff_t position = 0;
	ssize_t result;

	fixture_init(&fixture, 1);
	result = get_finger_lock_flag(NULL, output, 1, &position);
	expect(result == 1 && output[0] == '1', case_name,
	       "short read contract differs");
	position = 0;
	result = get_finger_lock_flag(NULL, output, 0, &position);
	expect(result == 0 && position == 0, case_name,
	       "zero-count contract differs");
}

int main(void)
{
	test_zero_value();
	test_nonzero_value();
	test_nonzero_position_is_eof();
	test_short_and_zero_count();
	puts("PASS get_finger_lock_flag: 4 cases");
	return 0;
}
