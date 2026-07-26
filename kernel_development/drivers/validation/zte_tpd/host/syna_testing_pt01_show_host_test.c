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
	u8 reserved_0000[0x18];
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
	u32 token;
};

struct tcm_buffer {
	u8 *data;
	u32 buf_size;
	u32 data_length;
	u8 mutex[0x30];
	u8 lock_depth;
	u8 reserved_0041[0x07];
};

struct testing_limit {
	const void *data;
	u32 size;
	u32 data_length;
};

struct testing_item;
typedef int (*testing_run_fn)(struct tcm_dev *tcm, struct testing_item *item,
				      bool dual_firmware);

struct testing_item {
	u32 version;
	u32 id;
	const char *name;
	bool result;
	u8 reserved_0011[0x07];
	testing_run_fn run;
	u32 image_rows;
	u32 image_cols;
	u8 reserved_0028[0x10];
	struct testing_limit *limit_primary;
	struct testing_limit *limit_secondary;
	u8 reserved_0048[0x90];
	struct tcm_buffer *result_data;
	void *result_aux;
};

struct syna_tcm {
	struct tcm_dev *tcm_dev;
	u8 reserved_0008[0x57a];
	u8 testing_connected;
};

struct fake_device {
	u8 reserved_0000[0x98];
	struct syna_tcm *driver_data;
};

struct lock_class_key {
	int unused;
};

_Static_assert(offsetof(struct kobject, parent) == 0x18, "kobject parent");
_Static_assert(offsetof(struct fake_device, driver_data) == 0x98,
	       "driver data");
_Static_assert(offsetof(struct syna_tcm, testing_connected) == 0x582,
	       "testing connected");
_Static_assert(sizeof(struct tcm_buffer) == 0x48, "tcm buffer size");
_Static_assert(offsetof(struct tcm_buffer, data_length) == 0x0c,
	       "tcm buffer length");
_Static_assert(offsetof(struct tcm_buffer, lock_depth) == 0x40,
	       "tcm buffer lock depth");
_Static_assert(offsetof(struct testing_item, run) == 0x18, "testing run");
_Static_assert(offsetof(struct testing_item, limit_primary) == 0x38,
	       "testing primary limit");
_Static_assert(offsetof(struct testing_item, result_data) == 0xd8,
	       "testing result data");

static const u8 pt01_limits[16] = {
	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
	0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
};
static struct testing_item test_item;
static struct testing_item *selected_item;
static struct device managed_device;
static struct device *selected_managed_device;
static struct lock_class_key pt01_lock_key;
static int mutex_init_calls;
static int printk_calls;
static int free_calls;
static int managed_request_calls;
static int run_calls;
static int run_return;
static bool run_result;
static bool populate_result;
static u8 result_lock_depth;
static struct tcm_dev *observed_tcm;
static struct tcm_buffer *observed_result;
static bool observed_primary_limit_present;
static bool observed_secondary_limit_is_null;
static const void *observed_limit_data;
static u32 observed_limit_size;
static u32 observed_limit_length;
static void *unreleased_allocation;

static void test_mutex_init(void *lock, const char *name,
			    struct lock_class_key *key)
{
	(void)lock;
	(void)name;
	(void)key;
	mutex_init_calls++;
}

#define _mutex_init(lock, name, key) test_mutex_init((void *)(lock), (name), (key))
#define syna_pal_mutex_alloc___key_3 pt01_lock_key

static int scnprintf(char *buf, size_t size, const char *format, ...)
{
	va_list args;
	int written;

	va_start(args, format);
	written = vsnprintf(buf, size, format, args);
	va_end(args);
	if (written < 0)
		return written;
	return (size_t)written >= size ? (int)size - 1 : written;
}

static int printk(const char *format, ...)
{
	va_list args;

	va_start(args, format);
	va_end(args);
	printk_calls++;
	return 0;
}

static struct testing_item *syna_tcm_get_testing_0100(void)
{
	return selected_item;
}

static struct device *syna_request_managed_device(void)
{
	managed_request_calls++;
	return selected_managed_device;
}

static void devm_kfree(struct device *device, const void *ptr)
{
	(void)device;
	free_calls++;
	if (ptr == unreleased_allocation)
		unreleased_allocation = NULL;
	free((void *)ptr);
}

static int testing_run(struct tcm_dev *tcm, struct testing_item *item,
			       bool dual_firmware)
{
	static const u8 result_bytes[] = { 0x00, 0x7f, 0x80, 0xff };
	u8 *reported_result;

	run_calls++;
	observed_tcm = tcm;
	observed_result = item->result_data;
	observed_primary_limit_present = item->limit_primary != NULL;
	observed_secondary_limit_is_null = item->limit_secondary == NULL;
	if (item->limit_primary) {
		observed_limit_data = item->limit_primary->data;
		observed_limit_size = item->limit_primary->size;
		observed_limit_length = item->limit_primary->data_length;
	}
	if (dual_firmware)
		return -99;
	if (populate_result) {
		reported_result = malloc(sizeof(result_bytes));
		if (!reported_result)
			return -12;
		memcpy(reported_result, result_bytes, sizeof(result_bytes));
		unreleased_allocation = reported_result;
		item->result_data->data = reported_result;
		item->result_data->buf_size = sizeof(result_bytes);
		item->result_data->data_length = sizeof(result_bytes);
		item->result_data->lock_depth = result_lock_depth;
	}
	item->result = run_result;
	return run_return;
}

#include "../../../reconstructed/zte_tpd/syna_testing_pt01_show.c"

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

static void release_unmanaged_allocation(void)
{
	free(unreleased_allocation);
	unreleased_allocation = NULL;
}

static void reset_state(struct kobject *leaf, struct kobject *parent,
			struct fake_device *device, struct syna_tcm *tcm,
			struct tcm_dev *tcm_dev)
{
	release_unmanaged_allocation();
	memset(leaf, 0, sizeof(*leaf));
	memset(parent, 0, sizeof(*parent));
	memset(device, 0, sizeof(*device));
	memset(tcm, 0, sizeof(*tcm));
	memset(tcm_dev, 0, sizeof(*tcm_dev));
	memset(&test_item, 0, sizeof(test_item));
	test_item.version = 1;
	test_item.id = 0x100;
	test_item.name = "PT01 Test";
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
	populate_result = false;
	result_lock_depth = 0;
	observed_tcm = NULL;
	observed_result = NULL;
	observed_primary_limit_present = false;
	observed_secondary_limit_is_null = false;
	observed_limit_data = NULL;
	observed_limit_size = 0;
	observed_limit_length = 0;
}

static void test_disconnected(void)
{
	const char *name = "disconnected";
	struct kobject leaf, parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	expect(syna_testing_pt01_show(&leaf, NULL, output) == 24,
	       name, "return length");
	expect(strcmp(output, "Device is NOT connected\n") == 0, name, "output");
	expect(run_calls == 0 && mutex_init_calls == 0, name, "unexpected work");
}

static void test_missing_item(void)
{
	const char *name = "missing_item";
	struct kobject leaf, parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	selected_item = NULL;
	expect(syna_testing_pt01_show(&leaf, NULL, output) == 28,
	       name, "return length");
	expect(strcmp(output, "Invalid testing item id:256\n") == 0, name, "output");
	expect(run_calls == 0 && mutex_init_calls == 0, name, "unexpected work");
}

static void test_pass_with_result_bytes(void)
{
	const char *name = "pass_with_result_bytes";
	const char expected[] = "\nPT01 Test (version.1): Pass\n\n"
		"x00 x7F x80 xFF \n";
	struct kobject leaf, parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	populate_result = true;
	expect(syna_testing_pt01_show(&leaf, NULL, output) ==
	       (ssize_t)strlen(expected), name, "return length");
	expect(strcmp(output, expected) == 0, name, "output");
	expect(observed_tcm == &tcm_dev && observed_result != NULL, name,
	       "callback arguments");
	expect(observed_primary_limit_present && observed_secondary_limit_is_null,
	       name, "limit placement");
	expect(observed_limit_data == pt01_limits && observed_limit_size == 16 &&
	       observed_limit_length == 0, name, "pt01 limit contract");
	expect(mutex_init_calls == 1 && managed_request_calls == 1 && free_calls == 1,
	       name, "cleanup");
}

static void test_callback_failure_without_result(void)
{
	const char *name = "callback_failure_without_result";
	const char expected[] = "\nPT01 Test (version.1): Fail\n\n";
	struct kobject leaf, parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	run_return = -5;
	expect(syna_testing_pt01_show(&leaf, NULL, output) ==
	       (ssize_t)strlen(expected), name, "return length");
	expect(strcmp(output, expected) == 0, name, "output without byte newline");
	expect(printk_calls == 1 && managed_request_calls == 1 && free_calls == 0,
	       name, "failure cleanup");
}

static void test_callback_false_and_busy_buffer(void)
{
	const char *name = "callback_false_and_busy_buffer";
	const char expected[] = "\nPT01 Test (version.1): Fail\n\n"
		"x00 x7F x80 xFF \n";
	struct kobject leaf, parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	run_result = false;
	populate_result = true;
	result_lock_depth = 1;
	expect(syna_testing_pt01_show(&leaf, NULL, output) ==
	       (ssize_t)strlen(expected), name, "return length");
	expect(strcmp(output, expected) == 0, name, "output");
	expect(printk_calls == 1 && managed_request_calls == 1 && free_calls == 1,
	       name, "busy cleanup");
}

static void test_missing_managed_device(void)
{
	const char *name = "missing_managed_device";
	const char expected[] = "\nPT01 Test (version.1): Pass\n\n"
		"x00 x7F x80 xFF \n";
	struct kobject leaf, parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	populate_result = true;
	selected_managed_device = NULL;
	expect(syna_testing_pt01_show(&leaf, NULL, output) ==
	       (ssize_t)strlen(expected), name, "return length");
	expect(strcmp(output, expected) == 0, name, "output");
	expect(printk_calls == 1 && managed_request_calls == 1 && free_calls == 0,
	       name, "managed-device error");
	release_unmanaged_allocation();
}

int main(void)
{
	test_disconnected();
	test_missing_item();
	test_pass_with_result_bytes();
	test_callback_failure_without_result();
	test_callback_false_and_busy_buffer();
	test_missing_managed_device();
	puts("PASS syna_testing_pt01_show host tests (6 cases)");
	return 0;
}
