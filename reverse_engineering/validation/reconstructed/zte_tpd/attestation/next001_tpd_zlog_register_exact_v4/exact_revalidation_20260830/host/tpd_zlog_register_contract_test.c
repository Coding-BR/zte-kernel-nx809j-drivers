#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint32_t u32;

struct file_operations;
struct zlog_client {
	unsigned int marker;
};

struct zlog_mod_info {
	u32 module_no;
	u32 reserved_04;
	const char *name;
	const char *module_name;
	const char *ic_name;
	const char *device_name;
	const struct file_operations *fops;
};

struct ztp_device {
	u8 reserved_0000[0xa48];
	struct zlog_client *zlog_client;
	u8 reserved_a50[0x198];
	char *ztp_zlog_buffer;
	bool zlog_registered;
	u8 reserved_bf1[0x0f];
	u8 probe_fail_chip_id;
};

static struct ztp_device *tpd_cdev;
static struct zlog_client expected_client;
static char zlog_buffer[0x800];
static unsigned int register_calls;
static unsigned int vmalloc_calls;
static unsigned int memset_calls;
static unsigned int null_memset_calls;
static unsigned int notify_calls;
static unsigned int printk_calls;
static const struct zlog_mod_info *last_module;
static int register_should_fail;
static int vmalloc_should_fail;
static unsigned int last_notify_code;
static unsigned int failures;

static struct zlog_client *test_zlog_register_client(struct zlog_mod_info *module)
{
	register_calls++;
	last_module = module;
	return register_should_fail ? NULL : &expected_client;
}

static void *test_vmalloc(size_t size)
{
	vmalloc_calls++;
	if (size != 0x800 || vmalloc_should_fail)
		return NULL;
	return zlog_buffer;
}

static void *test_memset(void *destination, int value, size_t size)
{
	memset_calls++;
	if (destination == NULL) {
		null_memset_calls++;
		return destination;
	}
	return memset(destination, value, size);
}

static int test_snprintf(char *destination, size_t size, const char *format, ...)
{
	va_list args;
	int result;

	va_start(args, format);
	result = vsnprintf(destination, size, format, args);
	va_end(args);
	return result;
}

static int test_printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

static void test_tpd_zlog_record_notify(unsigned int error_no)
{
	notify_calls++;
	last_notify_code = error_no;
}

static struct ztp_device *tpd_zlog_device(void)
{
	return tpd_cdev;
}

#define zlog_register_client test_zlog_register_client
#define vmalloc test_vmalloc
#define printk test_printk
#define memset test_memset
#define snprintf test_snprintf
#define tpd_zlog_record_notify test_tpd_zlog_record_notify
#define ZTE_TPD_ZLOG_BUFFER_SIZE 0x800
#define TP_PROBE_ERROR_NO 13
#include "../../../reconstructed/zte_tpd/tpd_zlog_register.c"
#undef zlog_register_client
#undef vmalloc
#undef printk
#undef memset
#undef snprintf
#undef tpd_zlog_record_notify

static void reset_trace(void)
{
	struct ztp_device *device = tpd_cdev;

	register_calls = 0;
	vmalloc_calls = 0;
	memset_calls = 0;
	null_memset_calls = 0;
	notify_calls = 0;
	printk_calls = 0;
	last_module = NULL;
	register_should_fail = 0;
	vmalloc_should_fail = 0;
	last_notify_code = 0;
	memset(zlog_buffer, 0, sizeof(zlog_buffer));
	memset(device, 0, sizeof(*device));
}

static void expect_int(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual, expected);
		failures++;
	}
}

static void expect_true(const char *name, bool value)
{
	if (!value) {
		fprintf(stderr, "%s: condition failed\n", name);
		failures++;
	}
}

static void test_already_registered(void)
{
	reset_trace();
	tpd_cdev->zlog_client = &expected_client;
	tpd_zlog_register(tpd_cdev);
	expect_int("already register calls", register_calls, 0);
	expect_int("already vmalloc calls", vmalloc_calls, 0);
	expect_int("already printk calls", printk_calls, 1);
	expect_true("already flag unchanged", !tpd_cdev->zlog_registered);
}

static void test_client_registration_failure(void)
{
	reset_trace();
	register_should_fail = 1;
	tpd_zlog_register(tpd_cdev);
	expect_int("register failure calls", register_calls, 1);
	expect_true("register failure module", last_module == &zlog_tp_dev);
	expect_int("register failure vmalloc", vmalloc_calls, 0);
	expect_int("register failure printk", printk_calls, 1);
	expect_true("register failure flag", tpd_cdev->zlog_registered);
}

static void test_registration_without_probe_error(void)
{
	reset_trace();
	tpd_cdev->probe_fail_chip_id = 0xff;
	tpd_zlog_register(tpd_cdev);
	expect_int("normal register calls", register_calls, 1);
	expect_int("normal vmalloc calls", vmalloc_calls, 1);
	expect_int("normal memset calls", memset_calls, 0);
	expect_int("normal notify calls", notify_calls, 0);
	expect_true("normal client", tpd_cdev->zlog_client == &expected_client);
	expect_true("normal buffer", tpd_cdev->ztp_zlog_buffer == zlog_buffer);
	expect_true("normal flag", tpd_cdev->zlog_registered);
}

static void test_probe_error_notification(void)
{
	reset_trace();
	tpd_cdev->probe_fail_chip_id = 7;
	tpd_zlog_register(tpd_cdev);
	expect_int("probe error register calls", register_calls, 1);
	expect_int("probe error notify calls", notify_calls, 1);
	expect_int("probe error code", last_notify_code, TP_PROBE_ERROR_NO);
	expect_true("probe error text", strcmp(tpd_cdev->ztp_zlog_buffer,
					"tp probe fail, chip id:7") == 0);
	expect_true("probe error flag", tpd_cdev->zlog_registered);
}

static void test_vmalloc_failure_is_observed_without_dereference(void)
{
	reset_trace();
	vmalloc_should_fail = 1;
	tpd_cdev->probe_fail_chip_id = 0xff;
	tpd_zlog_register(tpd_cdev);
	expect_int("vmalloc failure calls", vmalloc_calls, 1);
	expect_int("vmalloc failure null memset", null_memset_calls, 1);
	expect_true("vmalloc failure flag", tpd_cdev->zlog_registered);
}

int main(void)
{
	tpd_cdev = calloc(1, sizeof(*tpd_cdev));
	if (tpd_cdev == NULL)
		return 1;
	test_already_registered();
	test_client_registration_failure();
	test_registration_without_probe_error();
	test_probe_error_notification();
	test_vmalloc_failure_is_observed_without_dereference();
	free(tpd_cdev);
	if (failures != 0)
		return 1;
	puts("PASS tpd_zlog_register host tests (9 cases)");
	return 0;
}
