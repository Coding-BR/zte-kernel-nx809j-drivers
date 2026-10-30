#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define min(a, b) ((a) < (b) ? (a) : (b))

struct file { int unused; };
typedef enum zlog_error_no {
	TP_I2C_R_ERROR_NO = 1,
	TP_I2C_W_ERROR_NO,
	TP_I2C_R_WARN_NO,
	TP_I2C_W_WARN_NO,
	TP_SPI_R_ERROR_NO,
	TP_SPI_W_ERROR_NO,
	TP_SPI_R_WARN_NO,
	TP_SPI_W_WARN_NO,
	TP_CRC_ERROR_NO,
	TP_FW_UPGRADE_ERROR_NO,
	TP_ESD_CHECK_ERROR_NO,
	TP_ESD_CHECK_WARN_NO,
	TP_PROBE_ERROR_NO,
	TP_SUSPEND_GESTURE_OPEN_NO,
	TP_REQUEST_FIRMWARE_ERROR_NO,
	TP_GHOST_ERROR_NO,
	TP_HAL_SERVICE_CRASH_NO,
	TP_SAVE_BUFFER_FULL_NO,
	TP_ZLOG_ERROR_MAX,
} zlog_error_no;

static int copy_should_fail;
static unsigned int notify_calls;
static zlog_error_no notified_value;

unsigned long zte_inline_copy_from_user(void *to, const void __user *from,
					       unsigned long size)
{
	if (copy_should_fail)
		return 1;
	memcpy(to, from, size);
	return 0;
}

static int kstrtouint(const char *buffer, unsigned int base,
			      unsigned int *value)
{
	char *end;
	unsigned long parsed;

	errno = 0;
	parsed = strtoul(buffer, &end, base);
	if (errno || end == buffer || (*end != '\0' && *end != '\n') ||
			parsed > UINT32_MAX)
		return -EINVAL;
	*value = (unsigned int)parsed;
	return 0;
}

static void tpd_zlog_record_notify(zlog_error_no value)
{
	notify_calls++;
	notified_value = value;
}

#include "../../../reconstructed/zte_tpd/tp_zlog_debug_write.c"

static int check(int condition, const char *message)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", message);
		return 1;
	}
	return 0;
}

static void reset(void)
{
	copy_should_fail = 0;
	notify_calls = 0;
	notified_value = 0;
}

int main(void)
{
	loff_t offset = 0;
	ssize_t result;

	reset();
	result = tp_zlog_debug_write(NULL, "1", 1, &offset);
	if (check(result == 1 && notify_calls == 1 &&
			  notified_value == TP_I2C_R_ERROR_NO,
			  "recognized error is notified"))
		return 1;

	reset();
	result = tp_zlog_debug_write(NULL, "3", 1, &offset);
	if (check(result == 1 && notify_calls == 0,
			  "unlisted error is ignored"))
		return 1;

	reset();
	result = tp_zlog_debug_write(NULL, "bad", 3, &offset);
	if (check(result == -EINVAL && notify_calls == 0,
			  "invalid number returns EINVAL"))
		return 1;

	reset();
	copy_should_fail = 1;
	result = tp_zlog_debug_write(NULL, "1", 1, &offset);
	if (check(result == -EINVAL && notify_calls == 0,
			  "copy failure returns EINVAL"))
		return 1;

	puts("PASS tp_zlog_debug_write: 4 cases");
	return 0;
}
