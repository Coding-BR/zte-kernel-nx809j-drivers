#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __int64 long long
#define __int16 short
#define _QWORD long long
#define _DWORD unsigned int
#define __fastcall
#define SP_EL0 0
#define unk_3A127 "\0015tpd: %s val:%d.\n"

struct file { int unused; };
static unsigned char stack_guard[16];
static unsigned int callback_calls;
static long long callback_device;
static unsigned int callback_value;
static unsigned int cdev_value;
static long long tpd_cdev;

static long long host_read_status_reg(int selector)
{
	(void)selector;
	return (long long)(uintptr_t)stack_guard;
}
#define _ReadStatusReg(reg) host_read_status_reg((reg))

static int printk_stub(const char *format, ...)
{
	(void)format;
	return 0;
}
#define printk(...) printk_stub(__VA_ARGS__)

static void wake_callback(long long device)
{
	callback_calls++;
	callback_device = device;
	callback_value = cdev_value;
}

static ssize_t simple_read_from_buffer(long long destination, size_t count,
						__int64 *offset, const char *source,
						size_t available)
{
	size_t position = (size_t)*offset;
	size_t length;

	if (position >= available)
		return 0;
	length = available - position;
	if (length > count)
		length = count;
	memcpy((void *)(uintptr_t)destination, source + position, length);
	*offset += (loff_t)length;
	return (ssize_t)length;
}

#include "../../../reconstructed/zte_tpd/get_fake_sleep.c"

static int check(int condition, const char *message)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", message);
		return 1;
	}
	return 0;
}

static void reset(unsigned char *device, int callback_enabled,
			  unsigned int value, loff_t *offset)
{
	memset(device, 0, 0x1000);
	callback_calls = 0;
	callback_device = 0;
	callback_value = 0;
	cdev_value = value;
	*offset = 0;
	if (callback_enabled)
		*(void (**)(long long))(device + 0xfc8) = wake_callback;
	else
		*(void (**)(long long))(device + 0xfc8) = NULL;
	*(unsigned int *)(device + 1152) = value;
	tpd_cdev = (long long)(uintptr_t)device;
}

int main(void)
{
	unsigned char device[0x1000];
	char output[32] = {0};
	loff_t offset;
	ssize_t result;

	reset(device, 1, 7, &offset);
	result = get_fake_sleep(NULL, output, sizeof(output), &offset);
	if (check(result == 2 && strcmp(output, "7\n") == 0 && offset == 2 &&
			  callback_calls == 1 && callback_device == tpd_cdev,
			  "first read and wake callback"))
		return 1;

	result = get_fake_sleep(NULL, output, sizeof(output), &offset);
	if (check(result == 0 && callback_calls == 1, "second read at EOF"))
		return 1;

	reset(device, 0, 1234, &offset);
	result = get_fake_sleep(NULL, output, 2, &offset);
	if (check(result == 2 && strcmp(output, "12") == 0 && callback_calls == 0,
			  "short destination without callback"))
		return 1;

	reset(device, 0, 0, &offset);
	result = get_fake_sleep(NULL, output, sizeof(output), &offset);
	if (check(result == 2 && strcmp(output, "0\n") == 0, "zero value read"))
		return 1;

	puts("PASS get_fake_sleep: 4 cases");
	return 0;
}
