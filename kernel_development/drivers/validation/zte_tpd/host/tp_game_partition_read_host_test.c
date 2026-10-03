#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __int64 long long
#define __int16 short
#define _QWORD long long
#define _BYTE unsigned char
#define __fastcall
#define SP_EL0 0

static int printk_stub(const char *format, ...)
{
	(void)format;
	return 0;
}

#define printk(...) printk_stub(__VA_ARGS__)

struct file {
	int unused;
};

static long long tpd_cdev;

static ssize_t simple_read_from_buffer(long long destination_address,
						long long count, long long *position,
						const void *source, long long available)
{
	char *destination = (char *)(uintptr_t)destination_address;
	const char *source_bytes = source;
	long long copied;

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

#include "../../../reconstructed/zte_tpd/tp_game_partition_read.c"

static int check(int condition, const char *message)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", message);
		return 1;
	}
	return 0;
}

int main(void)
{
	unsigned char device[0x480] = {0};
	char output[32] = {0};
	loff_t offset;
	ssize_t result;

	tpd_cdev = (long long)(uintptr_t)device;
	memcpy(device + 65, "game", 5);

	offset = 0;
	result = tp_game_partition_read(NULL, (char __user *)output,
						 sizeof(output), &offset);
	if (check(result == 5 && offset == 5 && !memcmp(output, "game\n", 5),
		  "full read and cursor") ||
	    check(output[5] == 0, "full read terminator"))
		return 1;

	offset = 1;
	memset(output, 0, sizeof(output));
	result = tp_game_partition_read(NULL, output, sizeof(output), &offset);
	if (check(result == 0 && offset == 1, "nonzero cursor returns EOF") ||
	    check(output[0] == 0, "nonzero cursor does not write"))
		return 1;

	offset = 0;
	memset(output, 0, sizeof(output));
	result = tp_game_partition_read(NULL, output, 3, &offset);
	if (check(result == 3 && offset == 3 && !memcmp(output, "gam", 3),
		  "short destination truncation"))
		return 1;

	memset(device + 65, 0, 5);
	offset = 0;
	memset(output, 0xff, sizeof(output));
	result = tp_game_partition_read(NULL, output, sizeof(output), &offset);
	if (check(result == 1 && offset == 1 && output[0] == '\n',
		  "empty partition string"))
		return 1;

	offset = 0;
	result = tp_game_partition_read(NULL, output, 0, &offset);
	if (check(result == 0 && offset == 0, "zero count"))
		return 1;

	puts("PASS tp_game_partition_read: 5 cases");
	return 0;
}
