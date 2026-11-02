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
	void *data;
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

static struct testing_item test_item;
static struct testing_item *selected_item;
static struct device managed_device;
static struct device *selected_managed_device;
static struct lock_class_key config_lock_key;
static int mutex_init_calls;
static int printk_calls;
static int free_calls;
static int managed_request_calls;
static int run_calls;
static int run_return;
static bool run_result;
static bool populate_config;
static u8 config_lock_depth;
static struct tcm_dev *observed_tcm;
static struct tcm_buffer *observed_config;
static bool observed_primary_limit_present;
static bool observed_secondary_limit_is_null;
static u32 observed_default_size;
static char observed_default[8];

static void test_mutex_init(void *lock, const char *name,
			    struct lock_class_key *key)
{
	(void)lock;
	(void)name;
	(void)key;
	mutex_init_calls++;
}

#define _mutex_init(lock, name, key) test_mutex_init((void *)(lock), (name), (key))
#define syna_pal_mutex_alloc___key_3 config_lock_key

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

static struct testing_item *syna_tcm_get_testing_0002(void)
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
	free((void *)ptr);
}

static int testing_run(struct tcm_dev *tcm, struct testing_item *item,
			       bool dual_firmware)
{
	static const char config_id[] = "cfg-2026";
	char *reported_config;

	run_calls++;
	observed_tcm = tcm;
	observed_config = item->result_data;
	observed_primary_limit_present = item->limit_primary != NULL;
	observed_secondary_limit_is_null = item->limit_secondary == NULL;
	if (item->limit_primary) {
		observed_default_size = item->limit_primary->size;
		memcpy(observed_default, item->limit_primary->data,
		       sizeof(observed_default) - 1);
		observed_default[sizeof(observed_default) - 1] = '\0';
	}
	if (dual_firmware)
		return -99;
	if (populate_config) {
		reported_config = malloc(sizeof(config_id));
		if (!reported_config)
			return -12;
		memcpy(reported_config, config_id, sizeof(config_id));
		item->result_data->data = reported_config;
		item->result_data->buf_size = sizeof(config_id);
		item->result_data->data_length = sizeof(config_id);
		item->result_data->lock_depth = config_lock_depth;
	}
	item->result = run_result;
	return run_return;
}

#include "../../../reconstructed/zte_tpd/syna_testing_check_config_id_show.c"

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
	test_item.version = 2;
	test_item.id = 2;
	test_item.name = "Firmware Config ID Test";
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
	populate_config = false;
	config_lock_depth = 0;
	observed_tcm = NULL;
	observed_config = NULL;
	observed_primary_limit_present = false;
	observed_secondary_limit_is_null = false;
	observed_default_size = 0;
	memset(observed_default, 0, sizeof(observed_default));
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
	expect(syna_testing_check_config_id_show(&leaf, NULL, output) == 24,
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
	expect(syna_testing_check_config_id_show(&leaf, NULL, output) == 26,
	       name, "return length");
	expect(strcmp(output, "Invalid testing item id:2\n") == 0, name, "output");
	expect(run_calls == 0 && mutex_init_calls == 0, name, "unexpected work");
}

static void test_pass_with_config(void)
{
	const char *name = "pass_with_config";
	const char expected[] = "\nFirmware Config ID Test (version.2): Pass\n\n"
		"\nConfig ID: cfg-2026\n";
	struct kobject leaf, parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	populate_config = true;
	expect(syna_testing_check_config_id_show(&leaf, NULL, output) ==
	       (ssize_t)strlen(expected), name, "return length");
	expect(strcmp(output, expected) == 0, name, "output");
	expect(observed_tcm == &tcm_dev && observed_config != NULL, name,
	       "callback arguments");
	expect(observed_primary_limit_present && observed_secondary_limit_is_null,
	       name, "limit placement");
	expect(observed_default_size == 16 && strcmp(observed_default, "Default") == 0,
	       name, "default limit");
	expect(mutex_init_calls == 1 && managed_request_calls == 1 && free_calls == 1,
	       name, "cleanup");
}

static void test_callback_failure(void)
{
	const char *name = "callback_failure";
	const char expected[] = "\nFirmware Config ID Test (version.2): Fail\n\n";
	struct kobject leaf, parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	run_return = -5;
	expect(syna_testing_check_config_id_show(&leaf, NULL, output) ==
	       (ssize_t)strlen(expected), name, "return length");
	expect(strcmp(output, expected) == 0, name, "output");
	expect(printk_calls == 1 && managed_request_calls == 1 && free_calls == 0,
	       name, "failure cleanup");
}

static void test_callback_false_and_busy_buffer(void)
{
	const char *name = "callback_false_and_busy_buffer";
	const char expected[] = "\nFirmware Config ID Test (version.2): Fail\n\n"
		"\nConfig ID: cfg-2026\n";
	struct kobject leaf, parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	run_result = false;
	populate_config = true;
	config_lock_depth = 1;
	expect(syna_testing_check_config_id_show(&leaf, NULL, output) ==
	       (ssize_t)strlen(expected), name, "return length");
	expect(strcmp(output, expected) == 0, name, "output");
	expect(printk_calls == 1 && managed_request_calls == 1 && free_calls == 1,
	       name, "busy cleanup");
}

static void test_missing_managed_device(void)
{
	const char *name = "missing_managed_device";
	const char expected[] = "\nFirmware Config ID Test (version.2): Pass\n\n";
	struct kobject leaf, parent;
	struct fake_device device;
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	char output[4096] = {};

	reset_state(&leaf, &parent, &device, &tcm, &tcm_dev);
	tcm.testing_connected = 1;
	selected_managed_device = NULL;
	expect(syna_testing_check_config_id_show(&leaf, NULL, output) ==
	       (ssize_t)strlen(expected), name, "return length");
	expect(strcmp(output, expected) == 0, name, "output");
	expect(printk_calls == 1 && managed_request_calls == 1 && free_calls == 0,
	       name, "managed-device error");
}

int main(void)
{
	test_disconnected();
	test_missing_item();
	test_pass_with_config();
	test_callback_failure();
	test_callback_false_and_busy_buffer();
	test_missing_managed_device();
	puts("PASS syna_testing_check_config_id_show host tests (6 cases)");
	return 0;
}
