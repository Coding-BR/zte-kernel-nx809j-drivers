#define _GNU_SOURCE

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
#include "tpd_zlog_init.c"

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static struct ztp_device device;

static void seed_device(unsigned long timer_value)
{
	unsigned int index;

	memset(&device, 0, sizeof(device));
	device.zlog_client = (struct zlog_client *)(uintptr_t)0x1111;
	device.ztp_zlog_buffer = (char *)(uintptr_t)0x2222;
	device.zlog_registered = true;
	device.tp_reset_timer = timer_value;
	device.probe_fail_chip_id = 0x42;
	device.firmware_version = 0x55aa1234;
	for (index = 0; index < TP_ZLOG_ERROR_MAX; index++) {
		device.zlog_item.count[index] = 0x1000 + index;
		device.zlog_item.timer[index] = timer_value + index;
	}
	tpd_cdev = (unsigned long)&device;
}

static bool test_layout_contract(void)
{
	REQUIRE(offsetof(struct ztp_device, zlog_item.timer) == 0xb50);
	REQUIRE(offsetof(struct ztp_device, ztp_zlog_buffer) == 0xbe8);
	REQUIRE(offsetof(struct ztp_device, zlog_registered) == 0xbf0);
	REQUIRE(offsetof(struct ztp_device, tp_reset_timer) == 0xbf8);
	REQUIRE(TP_ZLOG_ERROR_MAX == 19);
	return true;
}

static bool test_initialize_state(void)
{
	unsigned int index;

	seed_device(0x1234);
	jiffies = 0xabcde;
	tpd_zlog_init();
	REQUIRE(device.ztp_zlog_buffer == NULL);
	REQUIRE(!device.zlog_registered);
	REQUIRE(device.tp_reset_timer == jiffies);
	for (index = 0; index < TP_ZLOG_ERROR_MAX; index++) {
		REQUIRE(device.zlog_item.timer[index] == jiffies);
		REQUIRE(device.zlog_item.count[index] == 0x1000 + index);
	}
	return true;
}

static bool test_reinitialize_and_preserve_adjacent_fields(void)
{
	unsigned int index;
	struct zlog_client *client;
	s8 probe_fail_chip_id;
	u32 firmware_version;

	seed_device(0x5678);
	client = device.zlog_client;
	probe_fail_chip_id = device.probe_fail_chip_id;
	firmware_version = device.firmware_version;
	jiffies = 0x11111;
	tpd_zlog_init();

	device.ztp_zlog_buffer = (char *)(uintptr_t)0x3333;
	device.zlog_registered = true;
	device.tp_reset_timer = 0;
	for (index = 0; index < TP_ZLOG_ERROR_MAX; index++)
		device.zlog_item.timer[index] = 0;
	jiffies = 0x22222;
	tpd_zlog_init();

	REQUIRE(device.ztp_zlog_buffer == NULL);
	REQUIRE(!device.zlog_registered);
	REQUIRE(device.tp_reset_timer == jiffies);
	REQUIRE(device.zlog_client == client);
	REQUIRE(device.probe_fail_chip_id == probe_fail_chip_id);
	REQUIRE(device.firmware_version == firmware_version);
	for (index = 0; index < TP_ZLOG_ERROR_MAX; index++) {
		REQUIRE(device.zlog_item.timer[index] == jiffies);
		REQUIRE(device.zlog_item.count[index] == 0x1000 + index);
	}
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
	RUN(test_initialize_state);
	RUN(test_reinitialize_and_preserve_adjacent_fields);
#undef RUN

	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
