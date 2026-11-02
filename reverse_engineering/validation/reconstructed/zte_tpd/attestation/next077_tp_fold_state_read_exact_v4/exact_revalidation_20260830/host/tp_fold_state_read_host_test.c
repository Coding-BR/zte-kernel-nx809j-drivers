#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __int64 long long
#define __int16 short
#define _QWORD long long
#define _DWORD int
#define _BYTE unsigned char
#define __fastcall
#define SP_EL0 0
#define unk_34061 "\0015tpd: %s val: %d.\n"

struct file { int unused; };
static unsigned char stack_guard[16];
static unsigned int callback_calls;
static long long callback_device;
static int callback_enabled;
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

static void fold_callback(long long device)
{
	callback_calls++;
	callback_device = device;
}

static int snprintf_stub(char *buffer, size_t size, const char *format,
				unsigned int value)
{
	return snprintf(buffer, size, format, value);
}

#define snprintf snprintf_stub

static ssize_t simple_read_from_buffer(long long destination_address,
					long long count, long long *position,
					const void *source, long long available)
{
	char *destination = (char *)(uintptr_t)destination_address;
	long long copied;

	if (*position < 0 || count < 0 || available < 0)
		return -1;
	if (*position >= available)
		return 0;
	copied = available - *position;
	if (copied > count)
		copied = count;
	memcpy(destination, (const char *)source + *position, (size_t)copied);
	*position += copied;
	return (ssize_t)copied;
}

#include "../../../reconstructed/zte_tpd/tp_fold_state_read.c"

static int check(int condition, const char *message)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", message);
		return 1;
	}
	return 0;
}

static void reset(unsigned char *device)
{
	memset(device, 0, 0x1000);
	callback_calls = 0;
	callback_device = 0;
	*(unsigned int *)(device + 1148) = 7;
	if (callback_enabled)
		*(void (**)(long long))(device + 0xfb8) = fold_callback;
	else
		*(void (**)(long long))(device + 0xfb8) = NULL;
	tpd_cdev = (long long)(uintptr_t)device;
}

int main(void)
{
	unsigned char device[0x1000];
	char output[16];
	loff_t offset;
	ssize_t result;

	callback_enabled = 0;
	reset(device);
	offset = 0;
	memset(output, 0, sizeof(output));
	result = tp_fold_state_read(NULL, output, sizeof(output), &offset);
	if (check(result == 2 && offset == 2 && !memcmp(output, "7\n", 2),
			  "value read without callback"))
		return 1;

	callback_enabled = 1;
	reset(device);
	offset = 0;
	memset(output, 0, sizeof(output));
	result = tp_fold_state_read(NULL, output, sizeof(output), &offset);
	if (check(result == 2 && callback_calls == 1 && callback_device == tpd_cdev,
			  "callback path") ||
	    check(!memcmp(output, "7\n", 2), "callback value read"))
		return 1;

	offset = 1;
	memset(output, 0, sizeof(output));
	result = tp_fold_state_read(NULL, output, sizeof(output), &offset);
	if (check(result == 0 && callback_calls == 1, "nonzero cursor returns EOF"))
		return 1;

	callback_enabled = 0;
	reset(device);
	offset = 0;
	memset(output, 0, sizeof(output));
	result = tp_fold_state_read(NULL, output, 1, &offset);
	if (check(result == 1 && offset == 1 && output[0] == '7',
			  "short destination truncation"))
		return 1;

	puts("PASS tp_fold_state_read: 4 cases");
	return 0;
}
