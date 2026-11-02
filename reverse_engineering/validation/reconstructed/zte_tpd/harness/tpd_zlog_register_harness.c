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

struct file_operations { int unused; };
struct file { int unused; };
struct work_struct { void (*fn)(struct work_struct *work); };
struct delayed_work {
	struct work_struct work;
	u8 reserved[0x68 - sizeof(struct work_struct)];
};

unsigned long tpd_cdev;

#include "zte_tpd_zlog.h"

static struct ztp_device device;
static struct ztp_device global_device;
static struct zlog_client *registered_client;
static void *vmalloc_result;
static unsigned int vmalloc_calls;
static size_t vmalloc_size;
static unsigned int memset_calls;
static void *memset_destination;
static size_t memset_size;
static unsigned int printk_calls;
static const char *logged_formats[2];
static const char *logged_name;
static unsigned int notify_calls;
static zlog_error_no notified_error;

struct zlog_client *zlog_register_client(struct zlog_mod_info *module)
{
	(void)module;
	return registered_client;
}

static void *vmalloc(size_t size)
{
	vmalloc_calls++;
	vmalloc_size = size;
	return vmalloc_result;
}

static void *harness_memset(void *destination, int value, size_t size)
{
	memset_calls++;
	memset_destination = destination;
	memset_size = size;
	if (!destination)
		return NULL;
	return __builtin_memset(destination, value, size);
}

static int printk(const char *format, ...)
{
	va_list args;

	if (printk_calls < 2)
		logged_formats[printk_calls] = format;
	printk_calls++;
	if (strcmp(format,
		   "\0015tpd_zlog: %s zlog register client zlog_tp_dev fail\n") == 0) {
		va_start(args, format);
		logged_name = va_arg(args, const char *);
		va_end(args);
	}
	return 0;
}

void tpd_zlog_record_notify(zlog_error_no error_no)
{
	notify_calls++;
	notified_error = error_no;
}

#define memset harness_memset
#include "tpd_zlog_register.c"
#undef memset

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void seed_devices(void)
{
	__builtin_memset(&device, 0, sizeof(device));
	__builtin_memset(&global_device, 0, sizeof(global_device));
	registered_client = NULL;
	vmalloc_result = NULL;
	vmalloc_calls = 0;
	vmalloc_size = 0;
	memset_calls = 0;
	memset_destination = NULL;
	memset_size = 0;
	printk_calls = 0;
	logged_formats[0] = NULL;
	logged_formats[1] = NULL;
	logged_name = NULL;
	notify_calls = 0;
	notified_error = (zlog_error_no)0;
	tpd_cdev = (unsigned long)&global_device;
}

static bool test_layout_contract(void)
{
	REQUIRE(offsetof(struct ztp_device, zlog_client) == 0xa48);
	REQUIRE(offsetof(struct ztp_device, ztp_zlog_buffer) == 0xbe8);
	REQUIRE(offsetof(struct ztp_device, zlog_registered) == 0xbf0);
	REQUIRE(offsetof(struct ztp_device, probe_fail_chip_id) == 0xc00);
	return true;
}

static bool test_existing_client_logs_without_state_change(void)
{
	static const char expected[] =
		"\0015tpd_zlog: ztp zlog already registered, no need register again!";

	seed_devices();
	device.zlog_client = (struct zlog_client *)(uintptr_t)0x1111;
	tpd_zlog_register(&device);
	REQUIRE(device.zlog_client == (struct zlog_client *)(uintptr_t)0x1111);
	REQUIRE(!device.zlog_registered);
	REQUIRE(vmalloc_calls == 0);
	REQUIRE(printk_calls == 1);
	REQUIRE(strcmp(logged_formats[0], expected) == 0);
	return true;
}

static bool test_client_failure_marks_registered(void)
{
	static const char expected[] =
		"\0015tpd_zlog: %s zlog register client zlog_tp_dev fail\n";

	seed_devices();
	device.ztp_zlog_buffer = (char *)(uintptr_t)0x2222;
	tpd_zlog_register(&device);
	REQUIRE(device.zlog_client == NULL);
	REQUIRE(device.ztp_zlog_buffer == (char *)(uintptr_t)0x2222);
	REQUIRE(device.zlog_registered);
	REQUIRE(vmalloc_calls == 0);
	REQUIRE(printk_calls == 1);
	REQUIRE(strcmp(logged_formats[0], expected) == 0);
	REQUIRE(strcmp(logged_name, "tpd_zlog_register") == 0);
	return true;
}

static bool test_success_uses_global_buffer_and_notifies(void)
{
	static unsigned char client_storage;
	static char allocation_buffer[ZTE_TPD_ZLOG_BUFFER_SIZE];
	static char global_buffer[ZTE_TPD_ZLOG_BUFFER_SIZE];
	struct zlog_client *client = (struct zlog_client *)&client_storage;

	seed_devices();
	registered_client = client;
	vmalloc_result = allocation_buffer;
	global_device.ztp_zlog_buffer = global_buffer;
	device.probe_fail_chip_id = 0x42;
	tpd_zlog_register(&device);
	REQUIRE(device.zlog_client == client);
	REQUIRE(device.ztp_zlog_buffer == allocation_buffer);
	REQUIRE(device.zlog_registered);
	REQUIRE(vmalloc_calls == 1);
	REQUIRE(vmalloc_size == ZTE_TPD_ZLOG_BUFFER_SIZE);
	REQUIRE(memset_calls == 0);
	REQUIRE(printk_calls == 0);
	REQUIRE(notify_calls == 1);
	REQUIRE(notified_error == TP_PROBE_ERROR_NO);
	REQUIRE(strcmp(global_buffer, "tp probe fail, chip id:66") == 0);
	return true;
}

static bool test_allocation_failure_keeps_stock_memset_path(void)
{
	static unsigned char client_storage;
	static const char expected[] = "\0015tpd_zlog: ztp_zlog_buffer";
	struct zlog_client *client = (struct zlog_client *)&client_storage;

	seed_devices();
	registered_client = client;
	device.probe_fail_chip_id = 1;
	tpd_zlog_register(&device);
	REQUIRE(device.zlog_client == client);
	REQUIRE(device.ztp_zlog_buffer == NULL);
	REQUIRE(device.zlog_registered);
	REQUIRE(vmalloc_calls == 1);
	REQUIRE(memset_calls == 1);
	REQUIRE(memset_destination == NULL);
	REQUIRE(memset_size == ZTE_TPD_ZLOG_BUFFER_SIZE);
	REQUIRE(printk_calls == 1);
	REQUIRE(strcmp(logged_formats[0], expected) == 0);
	REQUIRE(notify_calls == 1);
	REQUIRE(notified_error == TP_PROBE_ERROR_NO);
	return true;
}

static bool test_ff_probe_id_skips_notify(void)
{
	static unsigned char client_storage;
	static char allocation_buffer[ZTE_TPD_ZLOG_BUFFER_SIZE];
	struct zlog_client *client = (struct zlog_client *)&client_storage;

	seed_devices();
	registered_client = client;
	vmalloc_result = allocation_buffer;
	device.probe_fail_chip_id = 0xff;
	tpd_zlog_register(&device);
	REQUIRE(device.zlog_registered);
	REQUIRE(vmalloc_calls == 1);
	REQUIRE(memset_calls == 0);
	REQUIRE(notify_calls == 0);
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
	RUN(test_existing_client_logs_without_state_change);
	RUN(test_client_failure_marks_registered);
	RUN(test_success_uses_global_buffer_and_notifies);
	RUN(test_allocation_failure_keeps_stock_memset_path);
	RUN(test_ff_probe_id_skips_notify);
#undef RUN

	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
