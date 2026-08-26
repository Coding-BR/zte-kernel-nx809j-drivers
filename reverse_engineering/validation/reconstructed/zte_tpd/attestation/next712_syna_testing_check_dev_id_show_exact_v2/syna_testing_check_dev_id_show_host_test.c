#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef uint8_t u8;
typedef uint32_t u32;

struct kobject {
	uint8_t reserved_0000[0x18];
	struct kobject *parent;
};

struct kobj_attribute {
	int unused;
};

struct mutex {
	int unused;
};

struct device {
	int unused;
};

struct tcm_dev {
	uint32_t token;
};

struct tcm_buffer {
	void *data;
	uint32_t buf_size;
	uint32_t data_length;
	uint8_t mutex[0x30];
	uint8_t lock_depth;
	uint8_t reserved_0041[0x07];
};

struct testing_limit {
	const void *data;
	uint32_t size;
	uint32_t data_length;
};

struct testing_item;
typedef int (*testing_run_fn)(struct tcm_dev *tcm, struct testing_item *item,
				      bool dual_firmware);

struct testing_item {
	uint32_t version;
	uint32_t id;
	const char *name;
	bool result;
	uint8_t reserved_0011[0x07];
	testing_run_fn run;
	uint32_t image_rows;
	uint32_t image_cols;
	uint8_t reserved_0028[0x10];
	struct testing_limit *limit_primary;
	struct testing_limit *limit_secondary;
	uint8_t reserved_0048[0x90];
	struct tcm_buffer *result_data;
	void *result_aux;
};

struct syna_tcm {
	struct tcm_dev *tcm_dev;
	uint8_t reserved_0008[0x57a];
	uint8_t testing_connected;
};

struct fake_device {
	uint8_t reserved_0000[0x98];
	struct syna_tcm *driver_data;
};

struct lock_class_key {
	int unused;
};

_Static_assert(offsetof(struct kobject, parent) == 0x18,
	       "kobject.parent offset");
_Static_assert(offsetof(struct fake_device, driver_data) == 0x98,
	       "driver_data offset");
_Static_assert(offsetof(struct syna_tcm, testing_connected) == 0x582,
	       "testing-connected offset");
_Static_assert(sizeof(struct tcm_buffer) == 0x48, "tcm-buffer size");
_Static_assert(offsetof(struct tcm_buffer, data_length) == 0x0c,
	       "tcm-buffer data-length offset");
_Static_assert(offsetof(struct tcm_buffer, mutex) == 0x10,
	       "tcm-buffer mutex offset");
_Static_assert(offsetof(struct tcm_buffer, lock_depth) == 0x40,
	       "tcm-buffer lock-depth offset");
_Static_assert(offsetof(struct testing_item, run) == 0x18,
	       "testing-item run offset");
_Static_assert(offsetof(struct testing_item, limit_primary) == 0x38,
	       "testing-item primary-limit offset");
_Static_assert(offsetof(struct testing_item, limit_secondary) == 0x40,
	       "testing-item secondary-limit offset");
_Static_assert(offsetof(struct testing_item, result_data) == 0xd8,
	       "testing-item result-data offset");
_Static_assert(offsetof(struct testing_item, result_aux) == 0xe0,
	       "testing-item result-aux offset");

static struct testing_item test_item;
static struct testing_item *selected_item;
static struct device managed_device;
static struct device *selected_managed_device;
static int mutex_init_calls;
static int printk_calls;
static int free_calls;
static int managed_request_calls;
static int run_calls;
static int run_return;
static bool run_result;
static bool populate_buffers;
static uint8_t build_lock_depth;
static uint8_t device_lock_depth;
static struct tcm_dev *observed_tcm;
static struct tcm_buffer *observed_build_buffer;
static struct tcm_buffer *observed_device_buffer;
static bool observed_primary_limit_is_null;
static bool observed_secondary_limit_present;
static uint32_t observed_secondary_limit_size;
static char observed_expected_device_id[5];
static uint32_t observed_build_buf_size_after_cleanup;
static uint32_t observed_build_data_length_after_cleanup;

static void test_mutex_init(void *lock, const char *name,
			    struct lock_class_key *key)
{
	(void)lock;
	(void)name;
	(void)key;
	mutex_init_calls++;
}

#define _mutex_init(lock, name, key) \
	test_mutex_init((void *)(lock), (name), (key))

static int scnprintf(char *buf, size_t size, const char *format, ...)
{
	va_list args;
	int written;

	va_start(args, format);
	written = vsnprintf(buf, size, format, args);
	va_end(args);
	if (written < 0)
		return written;
	if ((size_t)written >= size)
		return (int)size - 1;
	return written;
}

static int printk(const char *format, ...)
{
	va_list args;

	va_start(args, format);
	va_end(args);
	printk_calls++;
	return 0;
}

static struct testing_item *syna_tcm_get_testing_0001(void)
{
	return selected_item;
}

static struct device *syna_request_managed_device(void)
{
	managed_request_calls++;
	if (managed_request_calls == 2 && observed_build_buffer) {
		observed_build_buf_size_after_cleanup = observed_build_buffer->buf_size;
		observed_build_data_length_after_cleanup =
			observed_build_buffer->data_length;
	}
	return selected_managed_device;
}

static void devm_kfree(struct device *device, const void *ptr)
{
	(void)device;
	free_calls++;
	free((void *)ptr);
}

static int testing_run(struct tcm_dev *tcm, struct testing_item *item,
		       bool dual_firmware)
{
	static const char device_id[] = "3908";
	uint32_t *build_id;
	char *reported_device_id;
	struct tcm_buffer *device_buffer;

	run_calls++;
	observed_tcm = tcm;
	observed_build_buffer = item->result_data;
	observed_device_buffer = item->result_aux;
	observed_primary_limit_is_null = item->limit_primary == NULL;
	observed_secondary_limit_present = item->limit_secondary != NULL;
	if (item->limit_secondary) {
		observed_secondary_limit_size = item->limit_secondary->size;
		memcpy(observed_expected_device_id, item->limit_secondary->data,
		       sizeof(observed_expected_device_id) - 1);
		observed_expected_device_id[sizeof(observed_expected_device_id) - 1] = '\0';
	}
	if (dual_firmware)
		return -99;
	if (!populate_buffers) {
		item->result = run_result;
		return run_return;
	}

	build_id = malloc(sizeof(*build_id));
	reported_device_id = malloc(sizeof(device_id));
	if (!build_id || !reported_device_id) {
		free(build_id);
		free(reported_device_id);
		return -12;
	}
	*build_id = 1234;
	memcpy(reported_device_id, device_id, sizeof(device_id));
	item->result_data->data = build_id;
	item->result_data->buf_size = sizeof(*build_id);
	item->result_data->data_length = sizeof(*build_id);
	device_buffer = item->result_aux;
	device_buffer->data = reported_device_id;
	device_buffer->data_length = sizeof(device_id);
	item->result_data->lock_depth = build_lock_depth;
	device_buffer->lock_depth = device_lock_depth;
	item->result = run_result;
	return run_return;
}

#include "../../../reconstructed/zte_tpd/syna_testing_check_dev_id_show.c"

static void fail(const char *case_name, const char *message)
{
	fprintf(stderr, "FAIL %s: %s\n", case_name, message);
	exit(1);
}

static void expect(bool condition, const char *case_name, const char *message)
{
	if (!condition)
		fail(case_name, message);
}

static void reset_state(struct kobject *leaf, struct kobject *parent,
			struct fake_device *device, struct syna_tcm *tcm,
			struct tcm_dev *tcm_dev)
{
	memset(leaf, 0, sizeof(*leaf));
	memset(parent, 0, sizeof(*parent));
	memset(device, 0, sizeof(*device));
	memset(tcm, 0, sizeof(*tcm));
	memset(tcm_dev, 0, sizeof(*tcm_dev));
	memset(&test_item, 0, sizeof(test_item));
	test_item.version = 1;
	test_item.id = 1;
	test_item.name = "Firmware/Device ID Test";
	test_item.run = testing_run;
	leaf->parent = parent;
	parent->parent = (struct kobject *)device;
	device->driver_data = tcm;
	tcm->tcm_dev = tcm_dev;
	selected_item = &test_item;
	selected_managed_device = &managed_device;
	mutex_init_calls = 0;
	printk_calls = 0;
	free_calls = 0;
	managed_request_calls = 0;
	run_calls = 0;
	run_return = 0;
	run_result = true;
	populate_buffers = false;
	build_lock_depth = 0;
	device_lock_depth = 0;
	observed_tcm = NULL;
	observed_build_buffer = NULL;
	observed_device_buffer = NULL;
	observed_primary_limit_is_null = false;
	observed_secondary_limit_present = false;
	observed_secondary_limit_size = 0;
	observed_build_buf_size_after_cleanup = 0;
	observed_build_data_length_after_cleanup = 0;
	memset(observed_expected_device_id, 0, sizeof(observed_expected_device_id));
}

static void test_disconnected_device(void)
{
	const char *case_name = "disconnected_device";
	struct kobject leaf;
	struct kobject parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};
	ssize_t result;

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	result = syna_testing_check_dev_id_show(&leaf, NULL, output);
	expect(result == (ssize_t)strlen("Device is NOT connected\n"), case_name,
	       "unexpected length");
	expect(strcmp(output, "Device is NOT connected\n") == 0, case_name,
	       "unexpected output");
	expect(run_calls == 0, case_name, "run callback invoked");
	expect(mutex_init_calls == 0, case_name, "mutex initialized");
	expect(free_calls == 0, case_name, "unexpected free");
}

static void test_missing_testing_item(void)
{
	const char *case_name = "missing_testing_item";
	struct kobject leaf;
	struct kobject parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};
	ssize_t result;

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	selected_item = NULL;
	result = syna_testing_check_dev_id_show(&leaf, NULL, output);
	expect(result == (ssize_t)strlen("Invalid testing item id:1\n"), case_name,
	       "unexpected length");
	expect(strcmp(output, "Invalid testing item id:1\n") == 0, case_name,
	       "unexpected output");
	expect(run_calls == 0, case_name, "run callback invoked");
	expect(mutex_init_calls == 0, case_name, "mutex initialized");
}

static void test_passing_device_id_with_both_result_buffers(void)
{
	const char *case_name = "passing_device_id_with_both_result_buffers";
	const char expected[] = "\nFirmware/Device ID Test (version.1): Pass\n\n"
		"Build ID: 1234\nDevice ID: 3908\n";
	struct kobject leaf;
	struct kobject parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};
	ssize_t result;

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	populate_buffers = true;
	result = syna_testing_check_dev_id_show(&leaf, NULL, output);
	expect(result == (ssize_t)strlen(expected), case_name, "unexpected length");
	expect(strcmp(output, expected) == 0, case_name, "unexpected output");
	expect(run_calls == 1, case_name, "run callback count");
	expect(observed_tcm == &tcm_dev, case_name, "wrong tcm argument");
	expect(observed_build_buffer != NULL, case_name, "missing build buffer");
	expect(observed_device_buffer != NULL, case_name, "missing device buffer");
	expect(observed_primary_limit_is_null, case_name, "unexpected build limit");
	expect(observed_secondary_limit_present, case_name, "missing device limit");
	expect(observed_secondary_limit_size == 4, case_name, "expected ID length");
	expect(memcmp(observed_expected_device_id, "3908", 4) == 0, case_name,
	       "expected ID value");
	expect(mutex_init_calls == 2, case_name, "mutex initialization count");
	expect(free_calls == 2, case_name, "result-buffer cleanup count");
	expect(observed_build_buf_size_after_cleanup == 0, case_name,
	       "build buffer size was not cleared");
	expect(observed_build_data_length_after_cleanup == 0, case_name,
	       "build buffer length was not cleared");
}

static void test_run_failure_reports_fail_and_cleans_empty_buffers(void)
{
	const char *case_name = "run_failure_reports_fail_and_cleans_empty_buffers";
	const char expected[] = "\nFirmware/Device ID Test (version.1): Fail\n\n";
	struct kobject leaf;
	struct kobject parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};
	ssize_t result;

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	run_return = -5;
	result = syna_testing_check_dev_id_show(&leaf, NULL, output);
	expect(result == (ssize_t)strlen(expected), case_name, "unexpected length");
	expect(strcmp(output, expected) == 0, case_name, "unexpected output");
	expect(run_calls == 1, case_name, "run callback count");
	expect(mutex_init_calls == 2, case_name, "mutex initialization count");
	expect(free_calls == 0, case_name, "unexpected free");
	expect(printk_calls == 1, case_name, "failure log missing");
}

static void test_callback_false_reports_fail_without_run_error(void)
{
	const char *case_name = "callback_false_reports_fail_without_run_error";
	const char expected[] = "\nFirmware/Device ID Test (version.1): Fail\n\n";
	struct kobject leaf;
	struct kobject parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};
	ssize_t result;

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	run_result = false;
	result = syna_testing_check_dev_id_show(&leaf, NULL, output);
	expect(result == (ssize_t)strlen(expected), case_name, "unexpected length");
	expect(strcmp(output, expected) == 0, case_name, "unexpected output");
	expect(run_calls == 1, case_name, "run callback count");
	expect(printk_calls == 0, case_name, "unexpected run-error log");
	expect(managed_request_calls == 2, case_name, "managed device request count");
}

static void test_busy_result_buffers_log_and_share_cleanup(void)
{
	const char *case_name = "busy_result_buffers_log_and_share_cleanup";
	const char expected[] = "\nFirmware/Device ID Test (version.1): Pass\n\n"
		"Build ID: 1234\nDevice ID: 3908\n";
	struct kobject leaf;
	struct kobject parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};
	ssize_t result;

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	populate_buffers = true;
	build_lock_depth = 1;
	device_lock_depth = 1;
	result = syna_testing_check_dev_id_show(&leaf, NULL, output);
	expect(result == (ssize_t)strlen(expected), case_name, "unexpected length");
	expect(strcmp(output, expected) == 0, case_name, "unexpected output");
	expect(printk_calls == 2, case_name, "busy-buffer logs missing");
	expect(managed_request_calls == 2, case_name, "managed device request count");
	expect(free_calls == 2, case_name, "result-buffer cleanup count");
}

static void test_missing_managed_device_logs_without_free(void)
{
	const char *case_name = "missing_managed_device_logs_without_free";
	const char expected[] = "\nFirmware/Device ID Test (version.1): Pass\n\n";
	struct kobject leaf;
	struct kobject parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};
	ssize_t result;

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	selected_managed_device = NULL;
	result = syna_testing_check_dev_id_show(&leaf, NULL, output);
	expect(result == (ssize_t)strlen(expected), case_name, "unexpected length");
	expect(strcmp(output, expected) == 0, case_name, "unexpected output");
	expect(managed_request_calls == 2, case_name, "managed device request count");
	expect(free_calls == 0, case_name, "unexpected free");
	expect(printk_calls == 2, case_name, "invalid-device logs missing");
}

int main(void)
{
	test_disconnected_device();
	test_missing_testing_item();
	test_passing_device_id_with_both_result_buffers();
	test_run_failure_reports_fail_and_cleans_empty_buffers();
	test_callback_false_reports_fail_without_run_error();
	test_busy_result_buffers_log_and_share_cleanup();
	test_missing_managed_device_logs_without_free();
	puts("PASS syna_testing_check_dev_id_show host tests (7 cases)");
	return 0;
}
