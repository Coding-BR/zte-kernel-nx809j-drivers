#include <errno.h>
#include <stdarg.h>
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
#define _DWORD int
#define _BYTE unsigned char
#define __fastcall
#define SP_EL0 0

static unsigned char stack_guard_area[2048];
static int copy_failure;
static unsigned int callback_calls;
static long long callback_device;
static long long callback_value;

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

static unsigned long zte_inline_copy_from_user(void *to,
						const void __user *from,
						unsigned long count)
{
	if (copy_failure)
		return count;
	memcpy(to, from, count);
	return 0;
}

static void __check_object_size(const void *object, size_t count,
						int to_user)
{
	(void)object;
	(void)count;
	(void)to_user;
}

#define _check_object_size(object, count, to_user) \
	__check_object_size((object), (count), (to_user))
#define __break(reason) do { (void)(reason); } while (0)

static int kstrtouint(const char *input, unsigned int base,
					unsigned int *value)
{
	char *end;
	unsigned long parsed;

	errno = 0;
	parsed = strtoul(input, &end, base);
	if (errno || end == input || (*end != '\0' && *end != '\n'))
		return -EINVAL;
	if (parsed > UINT32_MAX)
		return -ERANGE;
	*value = (unsigned int)parsed;
	return 0;
}

static void callback_spy(long long device, long long value)
{
	callback_calls++;
	callback_device = device;
	callback_value = value;
}

static long long tpd_cdev;

struct file {
	int unused;
};

#include "../../../reconstructed/zte_tpd/tp_sensibility_level_write.c"

static int check(int condition, const char *message)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", message);
		return 1;
	}
	return 0;
}

static void reset_observations(void)
{
	copy_failure = 0;
	callback_calls = 0;
	callback_device = 0;
	callback_value = 0;
}

static void install_callback(unsigned char *device)
{
	*(void (**)(long long, long long))(device + 3504) = callback_spy;
}

int main(void)
{
	unsigned char device[0xe00] = {0};
	struct file file = {0};
	char input[32];
	loff_t offset = 0;
	ssize_t result;

	(void)file;
	tpd_cdev = (long long)(uintptr_t)device;
	install_callback(device);

	reset_observations();
	memcpy(input, "7\n", 3);
	result = tp_sensibility_level_write(NULL, input, 3, &offset);
	if (check(result == 3 && device[0x40] == 7, "basic write") ||
	    check(callback_calls == 1 && callback_device == tpd_cdev &&
		  callback_value == 7, "basic callback"))
		return 1;

	reset_observations();
	memset(input, '9', sizeof(input));
	input[8] = '\0';
	result = tp_sensibility_level_write(NULL, input, sizeof(input), &offset);
	if (check(result == 9 && device[0x40] == (99999999U & 0xff), "nine-byte limit") ||
	    check(callback_calls == 1 && callback_value == 99999999U,
		  "truncated callback"))
		return 1;

	reset_observations();
	memcpy(input, "invalid", 8);
	result = tp_sensibility_level_write(NULL, input, 7, &offset);
	if (check(result == -EINVAL, "invalid input return") ||
	    check(callback_calls == 0, "invalid input skips callback"))
		return 1;

	reset_observations();
	copy_failure = 1;
	memcpy(input, "8\n", 3);
	result = tp_sensibility_level_write(NULL, input, 3, &offset);
	if (check(result == -EINVAL, "copy failure return") ||
	    check(callback_calls == 0, "copy failure skips callback"))
		return 1;

	reset_observations();
	result = tp_sensibility_level_write(NULL, input, 0, &offset);
	if (check(result == -EINVAL, "zero count return") ||
	    check(callback_calls == 0, "zero count skips callback"))
		return 1;

	reset_observations();
	*(void (**)(long long, long long))(device + 3504) = NULL;
	memcpy(input, "5\n", 3);
	result = tp_sensibility_level_write(NULL, input, 3, &offset);
	if (check(result == 3 && device[0x40] == 5, "missing callback write") ||
	    check(callback_calls == 0, "missing callback is tolerated"))
		return 1;

	puts("PASS tp_sensibility_level_write: 6 cases");
	return 0;
}
