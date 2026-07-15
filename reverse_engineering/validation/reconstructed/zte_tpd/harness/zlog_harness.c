#define _GNU_SOURCE

#include <errno.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef uint8_t u8;
typedef int8_t s8;
typedef uint32_t u32;

#define __user
#ifndef __always_inline
#define __always_inline inline __attribute__((always_inline))
#endif
#define static_assert(condition, ...) _Static_assert(condition, #condition)

struct file_operations { int unused; };
struct file { int unused; };
struct work_struct { void (*fn)(struct work_struct *work); };
struct delayed_work {
	struct work_struct work;
	u8 reserved[0x68 - sizeof(struct work_struct)];
};

unsigned long tpd_cdev;
unsigned long jiffies;

#include "zte_tpd_zlog.h"

struct zlog_client { int token; };

static struct ztp_device device;
static struct zlog_client client = { .token = 1 };
static bool fail_registration;
static bool fail_vmalloc;
static bool fail_copy_from_user;
static unsigned int register_calls;
static unsigned int record_calls;
static unsigned int notify_calls;
static unsigned int cancel_calls;
static unsigned int vfree_calls;
static u32 last_notify_code;
static char last_record[4096];

#define pr_debug(...) ((void)0)
#define pr_err(...) ((void)0)
#define min(a, b) ((a) < (b) ? (a) : (b))
#define jiffies_to_msecs(value) (value)
#define INIT_DELAYED_WORK(dwork, callback) ((dwork)->work.fn = (callback))

static void *vmalloc(size_t size)
{
	if (fail_vmalloc)
		return NULL;
	return calloc(1, size);
}

static void vfree(const void *buffer)
{
	if (buffer) {
		vfree_calls++;
		free((void *)buffer);
	}
}

static bool cancel_delayed_work_sync(struct delayed_work *work)
{
	(void)work;
	cancel_calls++;
	return true;
}

static size_t copy_from_user(void *to, const void *from, size_t count)
{
	if (fail_copy_from_user)
		return count;
	memcpy(to, from, count);
	return 0;
}

static int kstrtouint(const char *text, unsigned int base, unsigned int *value)
{
	char *end;
	unsigned long parsed;

	errno = 0;
	parsed = strtoul(text, &end, base);
	if (errno || end == text || (*end && *end != '\n'))
		return -EINVAL;
	*value = (unsigned int)parsed;
	return 0;
}

static ssize_t simple_read_from_buffer(void *to, size_t count, loff_t *offset,
				       const void *from, size_t available)
{
	size_t remaining;
	size_t copied;

	if (*offset < 0 || (size_t)*offset >= available)
		return 0;
	remaining = available - (size_t)*offset;
	copied = count < remaining ? count : remaining;
	memcpy(to, (const u8 *)from + *offset, copied);
	*offset += (loff_t)copied;
	return (ssize_t)copied;
}

struct zlog_client *zlog_register_client(struct zlog_mod_info *module)
{
	(void)module;
	register_calls++;
	return fail_registration ? NULL : &client;
}

void zlog_client_record(struct zlog_client *registered_client,
			const char *format, ...)
{
	va_list args;

	if (registered_client != &client)
		abort();
	record_calls++;
	va_start(args, format);
	vsnprintf(last_record, sizeof(last_record), format, args);
	va_end(args);
}

void zlog_client_notify(struct zlog_client *registered_client, u32 event)
{
	if (registered_client != &client)
		abort();
	notify_calls++;
	last_notify_code = event;
}

#include "tpd_zlog_register.c"
#include "tpd_zlog_check.c"
#include "tpd_zlog_record_notify.c"
#include "zlog_register_work_init.c"
#include "zlog_register_work.c"
#include "zlog_register_work_deinit.c"
#include "tpd_zlog_init.c"
#include "tp_zlog_debug_read.c"
#include "tp_zlog_debug_write.c"

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void reset_device(void)
{
	if (device.ztp_zlog_buffer)
		free(device.ztp_zlog_buffer);
	memset(&device, 0, sizeof(device));
	device.probe_fail_chip_id = -1;
	tpd_cdev = (unsigned long)&device;
	jiffies = 100000;
	fail_registration = false;
	fail_vmalloc = false;
	fail_copy_from_user = false;
	register_calls = 0;
	record_calls = 0;
	notify_calls = 0;
	cancel_calls = 0;
	vfree_calls = 0;
	last_notify_code = 0;
	memset(last_record, 0, sizeof(last_record));
}

static void setup_registered_device(void)
{
	unsigned int index;

	reset_device();
	device.zlog_client = &client;
	device.ztp_zlog_buffer = calloc(1, ZTE_TPD_ZLOG_BUFFER_SIZE);
	device.zlog_registered = true;
	device.tp_reset_timer = jiffies - 1000;
	device.firmware_version = 0x1234;
	for (index = 0; index < TP_ZLOG_ERROR_MAX; index++)
		device.zlog_item.timer[index] = jiffies - 60000;
}

static bool test_layout_and_init(void)
{
	unsigned int index;

	reset_device();
	jiffies = 123456;
	device.zlog_registered = true;
	tpd_zlog_init();
	REQUIRE(device.ztp_zlog_buffer == NULL);
	REQUIRE(!device.zlog_registered);
	REQUIRE(device.tp_reset_timer == jiffies);
	for (index = 0; index < TP_ZLOG_ERROR_MAX; index++)
		REQUIRE(device.zlog_item.timer[index] == jiffies);
	return true;
}

static bool test_register_paths(void)
{
	unsigned int calls;

	reset_device();
	tpd_zlog_register(&device);
	REQUIRE(device.zlog_client == &client);
	REQUIRE(device.ztp_zlog_buffer != NULL);
	REQUIRE(device.zlog_registered);
	REQUIRE(device.ztp_zlog_buffer[0] == '\0');
	calls = register_calls;
	tpd_zlog_register(&device);
	REQUIRE(register_calls == calls);

	reset_device();
	fail_registration = true;
	tpd_zlog_register(&device);
	REQUIRE(device.zlog_client == NULL);
	REQUIRE(device.ztp_zlog_buffer == NULL);
	REQUIRE(device.zlog_registered);

	reset_device();
	fail_vmalloc = true;
	tpd_zlog_register(&device);
	REQUIRE(device.zlog_client == &client);
	REQUIRE(device.ztp_zlog_buffer == NULL);
	REQUIRE(device.zlog_registered);
	return true;
}

static bool test_throttle_check(void)
{
	reset_device();
	tpd_zlog_init();
	REQUIRE(tpd_zlog_check(TP_I2C_R_ERROR_NO) == 0);
	REQUIRE(device.zlog_item.count[TP_I2C_R_ERROR_NO] == 1);
	REQUIRE(tpd_zlog_check(TP_I2C_R_ERROR_NO) == -EIO);
	REQUIRE(device.zlog_item.count[TP_I2C_R_ERROR_NO] == 2);
	jiffies += 60000;
	REQUIRE(tpd_zlog_check(TP_I2C_R_ERROR_NO) == 0);
	REQUIRE(device.zlog_item.count[TP_I2C_R_ERROR_NO] == 3);
	REQUIRE(tpd_zlog_check(TP_ZLOG_ERROR_MAX) == -EINVAL);
	return true;
}

static bool notify_once(zlog_error_no error_no, unsigned long existing_count,
			u32 expected_code)
{
	setup_registered_device();
	device.zlog_item.count[error_no] = existing_count;
	strcpy(device.ztp_zlog_buffer, "payload");
	tpd_zlog_record_notify(error_no);
	REQUIRE(record_calls == 1);
	REQUIRE(notify_calls == 1);
	REQUIRE(last_notify_code == expected_code);
	REQUIRE(device.ztp_zlog_buffer[0] == '\0');
	REQUIRE(strstr(last_record, "IC name: Unknown,module name:Unknown") != NULL);
	REQUIRE(strstr(last_record, "Firmware version: 0x1234") != NULL);
	return true;
}

static bool test_all_notify_mappings(void)
{
	static const u32 expected[TP_ZLOG_ERROR_MAX] = {
		0,
		ZLOG_TP_I2C_R_WARN_NO,
		ZLOG_TP_I2C_W_WARN_NO,
		ZLOG_TP_I2C_R_WARN_NO,
		ZLOG_TP_I2C_W_WARN_NO,
		ZLOG_TP_SPI_R_WARN_NO,
		ZLOG_TP_SPI_W_WARN_NO,
		ZLOG_TP_SPI_R_WARN_NO,
		ZLOG_TP_SPI_W_WARN_NO,
		ZLOG_TP_CRC_ERROR_NO,
		ZLOG_TP_FW_UPGRADE_ERROR_NO,
		ZLOG_TP_ESD_CHECK_WARN_NO,
		ZLOG_TP_ESD_CHECK_WARN_NO,
		ZLOG_TP_ESD_CHECK_ERROR_NO,
		ZLOG_TP_SUSPEND_GESTURE_OPEN_NO,
		ZLOG_TP_FW_UPGRADE_ERROR_NO,
		ZLOG_TP_GHOST_ERROR_NO,
		ZLOG_TP_HAL_SERVICE_CRASH_NO,
		ZLOG_TP_SAVE_BUFFER_FULL_NO,
	};
	unsigned int event;

	for (event = 1; event < TP_ZLOG_ERROR_MAX; event++)
		REQUIRE(notify_once((zlog_error_no)event, 0, expected[event]));
	return true;
}

static bool test_tenth_error_escalation(void)
{
	REQUIRE(notify_once(TP_I2C_R_ERROR_NO, 9,
			    ZLOG_TP_I2C_R_ERROR_NO));
	REQUIRE(notify_once(TP_I2C_W_ERROR_NO, 9,
			    ZLOG_TP_I2C_W_ERROR_NO));
	REQUIRE(notify_once(TP_SPI_R_ERROR_NO, 9,
			    ZLOG_TP_SPI_R_ERROR_NO));
	REQUIRE(notify_once(TP_SPI_W_ERROR_NO, 9,
			    ZLOG_TP_SPI_W_ERROR_NO));
	REQUIRE(notify_once(TP_ESD_CHECK_ERROR_NO, 9,
			    ZLOG_TP_ESD_CHECK_ERROR_NO));
	return true;
}

static bool test_notify_gates(void)
{
	setup_registered_device();
	device.zlog_item.count[TP_FW_UPGRADE_ERROR_NO] = 1;
	device.zlog_item.timer[TP_FW_UPGRADE_ERROR_NO] = jiffies - 1000;
	strcpy(device.ztp_zlog_buffer, "throttled");
	tpd_zlog_record_notify(TP_FW_UPGRADE_ERROR_NO);
	REQUIRE(notify_calls == 0);
	REQUIRE(device.zlog_item.count[TP_FW_UPGRADE_ERROR_NO] == 2);
	REQUIRE(device.ztp_zlog_buffer[0] == '\0');

	setup_registered_device();
	device.tp_reset_timer = jiffies - 100;
	strcpy(device.ztp_zlog_buffer, "reset gate");
	tpd_zlog_record_notify(TP_I2C_R_ERROR_NO);
	REQUIRE(notify_calls == 0);
	REQUIRE(device.zlog_item.count[TP_I2C_R_ERROR_NO] == 1);
	REQUIRE(device.ztp_zlog_buffer[0] == '\0');

	setup_registered_device();
	device.tp_reset_timer = jiffies - 100;
	strcpy(device.ztp_zlog_buffer, "no reset gate");
	tpd_zlog_record_notify(TP_FW_UPGRADE_ERROR_NO);
	REQUIRE(notify_calls == 1);
	return true;
}

static bool test_debug_read(void)
{
	struct file file = { 0 };
	char output[32] = { 0 };
	loff_t offset = 0;
	ssize_t result;

	result = tp_zlog_debug_read(&file, output, sizeof(output), &offset);
	REQUIRE(result == 11);
	REQUIRE(memcmp(output, "this no use", 11) == 0);
	REQUIRE(offset == 11);
	REQUIRE(tp_zlog_debug_read(&file, output, sizeof(output), &offset) == 0);
	return true;
}

static bool run_debug_write(const char *input, bool expected_notify)
{
	struct file file = { 0 };
	loff_t offset = 0;
	ssize_t result;

	setup_registered_device();
	result = tp_zlog_debug_write(&file, input, strlen(input), &offset);
	REQUIRE(result == (ssize_t)strlen(input));
	REQUIRE((notify_calls != 0) == expected_notify);
	return true;
}

static bool test_debug_write_mask_and_errors(void)
{
	static const unsigned int accepted[] = { 1, 2, 5, 6, 9, 10, 11, 13, 14, 15 };
	char input[8];
	unsigned int index;
	struct file file = { 0 };
	loff_t offset = 0;

	for (index = 0; index < sizeof(accepted) / sizeof(accepted[0]); index++) {
		snprintf(input, sizeof(input), "%u", accepted[index]);
		REQUIRE(run_debug_write(input, true));
	}
	REQUIRE(run_debug_write("3", false));
	REQUIRE(run_debug_write("12", false));

	setup_registered_device();
	REQUIRE(tp_zlog_debug_write(&file, "bad", 3, &offset) == -EINVAL);
	fail_copy_from_user = true;
	REQUIRE(tp_zlog_debug_write(&file, "1", 1, &offset) == -EINVAL);
	return true;
}

static bool test_work_lifecycle(void)
{
	reset_device();
	zlog_register_work_init();
	REQUIRE(device.zlog_register_work.work.fn == zlog_register_work);
	device.zlog_register_work.work.fn(&device.zlog_register_work.work);
	REQUIRE(device.zlog_registered);
	REQUIRE(device.ztp_zlog_buffer != NULL);
	zlog_register_work_deinit();
	REQUIRE(cancel_calls == 1);
	REQUIRE(vfree_calls == 1);
	REQUIRE(device.ztp_zlog_buffer == NULL);
	return true;
}

static bool test_unregistered_notify(void)
{
	reset_device();
	fail_registration = true;
	tpd_zlog_record_notify(TP_PROBE_ERROR_NO);
	REQUIRE(register_calls == 1);
	REQUIRE(record_calls == 0);
	REQUIRE(notify_calls == 0);
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
	RUN(test_layout_and_init);
	RUN(test_register_paths);
	RUN(test_throttle_check);
	RUN(test_all_notify_mappings);
	RUN(test_tenth_error_escalation);
	RUN(test_notify_gates);
	RUN(test_debug_read);
	RUN(test_debug_write_mask_and_errors);
	RUN(test_work_lifecycle);
	RUN(test_unregistered_notify);
#undef RUN

	reset_device();
	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
