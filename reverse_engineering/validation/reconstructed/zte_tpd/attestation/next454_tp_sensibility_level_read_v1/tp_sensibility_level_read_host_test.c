#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __int64 long long
#define __int8 char
#define __int16 short
#define _QWORD long long
#define _BYTE unsigned char
#define __fastcall
#define SP_EL0 0

static unsigned char stack_guard_area[2048];

static uintptr_t _ReadStatusReg(int register_id)
{
	(void)register_id;
	return (uintptr_t)stack_guard_area;
}

static int printk_stub(const char *format, ...)
{
	(void)format;
	return 0;
}

#define printk(...) printk_stub(__VA_ARGS__)

struct file { int unused; };

long long tpd_cdev;
static unsigned int callback_calls;

static ssize_t simple_read_from_buffer(long long destination_address,
					       long long count, long long *position,
					       const void *source, long long available)
{
	char *destination = (char *)(uintptr_t)destination_address;
	const char *source_bytes = source;
	long long copied;

	if (*position < 0 || *position >= available || count <= 0)
		return 0;
	copied = available - *position;
	if (copied > count)
		copied = count;
	memcpy(destination, source_bytes + *position, (size_t)copied);
	*position += copied;
	return (ssize_t)copied;
}

static void callback_spy(long long ignored)
{
	callback_calls++;
	(void)ignored;
}

#include "../../../reconstructed/zte_tpd/tp_sensibility_level_read.c"

static void put_callback(unsigned char *device, void (*callback)(long long))
{
	memcpy(device + 3496U, &callback, sizeof(callback));
}

static int expect(int condition, const char *message)
{
	if (condition)
		return 0;
	fprintf(stderr, "%s\n", message);
	return 1;
}

static void reset_device(unsigned char *device, unsigned char level)
{
	memset(device, 0, 3600U);
	device[64] = level;
	callback_calls = 0U;
	tpd_cdev = (long long)(uintptr_t)device;
}

static int test_full_read_and_callback(void)
{
	unsigned char device[3600];
	char output[8] = { 0 };
	struct file file = { 0 };
	loff_t position = 0;

	reset_device(device, 7U);
	put_callback(device, callback_spy);
	if (expect(tp_sensibility_level_read(&file, output, sizeof(output),
			&position) == 2 && position == 2 && strcmp(output, "7\n") == 0 &&
			callback_calls == 1U, "full read and callback")) return 1;
	return 0;
}

static int test_nonzero_cursor_is_eof(void)
{
	unsigned char device[3600];
	char output[8] = { 0 };
	struct file file = { 0 };
	loff_t position = 1;

	reset_device(device, 7U);
	put_callback(device, callback_spy);
	if (expect(tp_sensibility_level_read(&file, output, sizeof(output),
			&position) == 0 && callback_calls == 0U,
			"nonzero cursor EOF")) return 1;
	return 0;
}

static int test_truncated_read(void)
{
	unsigned char device[3600];
	char output[2] = { 0 };
	struct file file = { 0 };
	loff_t position = 0;

	reset_device(device, 255U);
	if (expect(tp_sensibility_level_read(&file, output, 2, &position) == 2 &&
			position == 2 && output[0] == '2' && output[1] == '5',
			"truncated read")) return 1;
	return 0;
}

static int test_callback_absent_and_zero_count(void)
{
	unsigned char device[3600];
	char output[8] = { 0 };
	struct file file = { 0 };
	loff_t position = 0;

	reset_device(device, 0U);
	if (expect(tp_sensibility_level_read(&file, output, 0, &position) == 0 &&
			callback_calls == 0U && position == 0,
			"callback absent and zero count")) return 1;
	return 0;
}

int main(void)
{
	if (test_full_read_and_callback() || test_nonzero_cursor_is_eof() ||
	    test_truncated_read() || test_callback_absent_and_zero_count())
		return 1;
	puts("PASS tp_sensibility_level_read: 4 cases");
	return 0;
}
