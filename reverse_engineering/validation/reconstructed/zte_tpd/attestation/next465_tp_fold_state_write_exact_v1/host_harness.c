#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __int64 long long
#define __int16 short
#define _BOOL8 int
#define _BOOL4 unsigned int
#define _QWORD long long
#define _DWORD int
#define _BYTE unsigned char
#define __fastcall
#define SP_EL0 0
#define unk_374F7 "\0015tpd: %s val = %d\n"

struct file { int unused; };
static unsigned char stack_guard[16];
static int parse_failure;
static unsigned int callback_calls;
static long long callback_device;
static int callback_value;
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

static int kstrtouint_from_user(__int64 buffer, __int64 count,
							 int base, unsigned int *value)
{
	char local[32];
	char *end;
	unsigned long parsed;

	size_t length = (size_t)count;

	if (parse_failure || length >= sizeof(local))
		return 1;
	memcpy(local, (const void *)(uintptr_t)buffer, length);
	local[length] = '\0';
	parsed = strtoul(local, &end, base);
	if (end == local || *end != '\0' || parsed > UINT32_MAX)
		return 1;
	*value = (unsigned int)parsed;
	return 0;
}

static void fold_callback(long long device, int value)
{
	callback_calls++;
	callback_device = device;
	callback_value = value;
}

#include "../../../reconstructed/zte_tpd/tp_fold_state_write.c"

static int check(int condition, const char *message)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", message);
		return 1;
	}
	return 0;
}

static void reset(unsigned char *device, int callback_enabled)
{
	memset(device, 0, 0x1000);
	callback_calls = 0;
	callback_device = 0;
	callback_value = -1;
	parse_failure = 0;
	if (callback_enabled)
		*(void (**)(long long, int))(device + 3592) = fold_callback;
	else
		*(void (**)(long long, int))(device + 3592) = NULL;
	tpd_cdev = (long long)(uintptr_t)device;
}

int main(void)
{
	unsigned char device[0x1000];
	loff_t offset = 0;
	ssize_t result;

	reset(device, 1);
	result = tp_fold_state_write(NULL, "1", 1, &offset);
	if (check(result == 1 && callback_calls == 1 && callback_device == tpd_cdev &&
			  callback_value == 1, "valid one callback"))
		return 1;

	reset(device, 0);
	result = tp_fold_state_write(NULL, "0", 1, &offset);
	if (check(result == 1 && callback_calls == 0, "valid zero without callback"))
		return 1;

	reset(device, 1);
	parse_failure = 1;
	result = tp_fold_state_write(NULL, "1", 1, &offset);
	if (check(result == -22 && callback_calls == 0, "parse failure"))
		return 1;

	reset(device, 1);
	result = tp_fold_state_write(NULL, "2", 1, &offset);
	if (check(result == 1 && callback_calls == 1 && callback_value == 1,
			  "nonzero input normalized"))
		return 1;

	puts("PASS tp_fold_state_write: 4 cases");
	return 0;
}
