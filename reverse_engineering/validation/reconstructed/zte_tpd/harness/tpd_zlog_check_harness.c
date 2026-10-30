#define _GNU_SOURCE

#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef int8_t s8;
typedef uint8_t u8;
typedef uint32_t u32;

#define __user
#define static_assert(condition, ...) _Static_assert((condition), #condition)
#define EIO 5
#define jiffies_to_msecs(value) ((unsigned int)(value))

struct file_operations { int unused; };
struct file { int unused; };
struct work_struct { void (*fn)(struct work_struct *work); };
struct delayed_work {
	struct work_struct work;
	u8 reserved[0x68 - sizeof(struct work_struct)];
};

unsigned long tpd_cdev;
volatile unsigned long jiffies;

#include "zte_tpd_zlog.h"

static unsigned int printk_calls;
static const char *logged_format;
static unsigned int logged_elapsed;
static int logged_error;

static int printk(const char *format, ...)
{
	va_list args;

	va_start(args, format);
	printk_calls++;
	logged_format = format;
	logged_elapsed = va_arg(args, unsigned int);
	logged_error = va_arg(args, int);
	va_end(args);
	return 0;
}

#include "tpd_zlog_check.c"

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static struct ztp_device device;

static void seed_device(void)
{
	memset(&device, 0, sizeof(device));
	tpd_cdev = (unsigned long)&device;
	jiffies = 0;
	printk_calls = 0;
	logged_format = NULL;
	logged_elapsed = 0;
	logged_error = 0;
}

static bool test_layout_contract(void)
{
	REQUIRE(offsetof(struct ztp_device, zlog_item.count) == 0xab8);
	REQUIRE(offsetof(struct ztp_device, zlog_item.timer) == 0xb50);
	REQUIRE(TP_ZLOG_ERROR_MAX == 19);
	return true;
}

static bool test_first_event_increments_without_log(void)
{
	zlog_error_no error_no = TP_I2C_R_ERROR_NO;

	seed_device();
	device.zlog_item.timer[error_no] = 500;
	jiffies = 900;
	REQUIRE(tpd_zlog_check(error_no) == 0);
	REQUIRE(device.zlog_item.count[error_no] == 1);
	REQUIRE(device.zlog_item.timer[error_no] == 500);
	REQUIRE(printk_calls == 0);
	return true;
}

static bool test_threshold_is_not_repeated_event(void)
{
	zlog_error_no error_no = TP_SPI_W_ERROR_NO;

	seed_device();
	device.zlog_item.count[error_no] = 7;
	device.zlog_item.timer[error_no] = 100;
	jiffies = 60100;
	REQUIRE(tpd_zlog_check(error_no) == 0);
	REQUIRE(device.zlog_item.count[error_no] == 8);
	REQUIRE(printk_calls == 0);
	return true;
}

static bool test_repeated_event_logs_and_fails(void)
{
	zlog_error_no error_no = TP_CRC_ERROR_NO;
	static const char expected_format[] =
		"\0015tpd_zlog: zlog error repeated notify, timer:%d, no:%d";

	seed_device();
	device.zlog_item.count[error_no] = 3;
	device.zlog_item.timer[error_no] = 1000;
	jiffies = 60999;
	REQUIRE(tpd_zlog_check(error_no) == -EIO);
	REQUIRE(device.zlog_item.count[error_no] == 4);
	REQUIRE(printk_calls == 1);
	REQUIRE(strcmp(logged_format, expected_format) == 0);
	REQUIRE(logged_elapsed == 59999);
	REQUIRE(logged_error == (int)error_no);
	return true;
}

static bool test_zero_index_is_valid_array_entry(void)
{
	zlog_error_no error_no = (zlog_error_no)0;

	seed_device();
	device.zlog_item.timer[error_no] = 44;
	jiffies = 45;
	REQUIRE(tpd_zlog_check(error_no) == 0);
	REQUIRE(device.zlog_item.count[error_no] == 1);
	REQUIRE(printk_calls == 0);
	return true;
}

static int run_test(const char *name, bool (*test)(void))
{
	if (!test()) {
		printf("FAIL %s\n", name);
		return 1;
	}
	printf("PASS %s\n", name);
	return 0;
}

int main(void)
{
	int failures = 0;
	int total = 0;

#define RUN(test) do { total++; failures += run_test(#test, test); } while (0)
	RUN(test_layout_contract);
	RUN(test_first_event_increments_without_log);
	RUN(test_threshold_is_not_repeated_event);
	RUN(test_repeated_event_logs_and_fails);
	RUN(test_zero_index_is_valid_array_entry);
#undef RUN

	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
