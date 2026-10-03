#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>

#define ZTE_TPD_HOST_TEST 1
#define __user
#define __int64 long long
#define __int16 short
#define _QWORD long long
#define _DWORD int
#define _BYTE unsigned char
#define __fastcall

static int copy_failure;
static unsigned int callback_calls;
static long long callback_device;
static char callback_data[1024];

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

static void callback_spy(long long device, char *data)
{
	callback_calls++;
	callback_device = device;
	memcpy(callback_data, data, sizeof(callback_data));
}

static long long tpd_cdev;

struct file {
	int unused;
};

#include "../../../reconstructed/zte_tpd/tp_game_partition_write.c"

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
	memset(callback_data, 0, sizeof(callback_data));
}

static void install_callback(unsigned char *device)
{
	*(int *)(device + 3916) = 1693605810;
	*(void (**)(long long, char *))(device + 3920) = callback_spy;
}

int main(void)
{
	unsigned char device[0x1200] = {0};
	char input[1024] = {0};
	loff_t offset = 0;
	ssize_t result;

	tpd_cdev = (long long)(uintptr_t)device;
	install_callback(device);

	reset_observations();
	memcpy(input, "abc", 4);
	result = tp_game_partition_write(NULL, input, 3, &offset);
	if (check(result == 3 && callback_calls == 1 && callback_device == tpd_cdev,
		  "basic callback and return") ||
	    check(!strcmp(callback_data, "abc"), "callback receives input") ||
	    check(!strcmp((char *)(device + 65), "abc\n"), "partition is updated"))
		return 1;

	reset_observations();
	memset(input, 'x', sizeof(input));
	result = tp_game_partition_write(NULL, input, 1025, &offset);
	if (check(result == -22 && callback_calls == 0, "oversized input rejected") ||
	    check(!strcmp((char *)(device + 65), "abc\n"), "oversized input preserves state"))
		return 1;

	reset_observations();
	copy_failure = 1;
	result = tp_game_partition_write(NULL, input, 4, &offset);
	if (check(result == -22 && callback_calls == 0, "copy failure rejected") ||
	    check(!strcmp((char *)(device + 65), "abc\n"), "copy failure preserves state"))
		return 1;

	reset_observations();
	result = tp_game_partition_write(NULL, input, 0, &offset);
	if (check(result == 0 && callback_calls == 1, "zero count callback") ||
	    check(callback_data[0] == 0, "zero count supplies empty string") ||
	    check(!strcmp((char *)(device + 65), "\n"), "zero count writes newline"))
		return 1;

	reset_observations();
	memcpy(input, "z", 2);
	result = tp_game_partition_write(NULL, input, 1, &offset);
	if (check(result == 1 && callback_calls == 1 && !strcmp(callback_data, "z"),
		  "single-byte write"))
		return 1;

	puts("PASS tp_game_partition_write: 5 cases");
	return 0;
}
