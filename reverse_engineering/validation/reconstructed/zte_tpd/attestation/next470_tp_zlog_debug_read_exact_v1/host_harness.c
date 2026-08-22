#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>

#define __user

struct file { int unused; };

static ssize_t simple_read_from_buffer(char *destination, size_t count,
					       loff_t *offset, const char *source,
					       size_t available)
{
	size_t position = (size_t)*offset;
	size_t length;

	if (position >= available)
		return 0;
	length = available - position;
	if (length > count)
		length = count;
	memcpy(destination, source + position, length);
	*offset += (loff_t)length;
	return (ssize_t)length;
}

#include "../../../reconstructed/zte_tpd/tp_zlog_debug_read.c"

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
	char output[32] = {0};
	loff_t offset;
	ssize_t result;

	offset = 0;
	result = tp_zlog_debug_read(NULL, output, sizeof(output), &offset);
	if (check(result == 11 && memcmp(output, "this no use", 11) == 0 &&
			  offset == 11,
			  "full read returns the stock literal"))
		return 1;

	result = tp_zlog_debug_read(NULL, output, sizeof(output), &offset);
	if (check(result == 0 && offset == 11,
			  "second read is EOF"))
		return 1;

	offset = 1;
	result = tp_zlog_debug_read(NULL, output, sizeof(output), &offset);
	if (check(result == 0 && offset == 1,
			  "nonzero initial offset is rejected"))
		return 1;

	offset = 0;
	memset(output, 0, sizeof(output));
	result = tp_zlog_debug_read(NULL, output, 4, &offset);
	if (check(result == 4 && memcmp(output, "this", 4) == 0 && offset == 4,
			  "short destination preserves read semantics"))
		return 1;

	puts("PASS tp_zlog_debug_read: 4 cases");
	return 0;
}
