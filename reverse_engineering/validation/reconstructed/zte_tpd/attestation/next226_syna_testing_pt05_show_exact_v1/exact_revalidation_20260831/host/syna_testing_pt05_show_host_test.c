#include <stdbool.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;

struct lock_class_key {
	unsigned long token;
};

struct device {
	unsigned long token;
};

struct kobject {
	struct kobject *parent;
};

struct kobj_attribute {
	u8 unused;
};

struct device_kobject {
	u8 reserved_0000[0x98];
	struct syna_tcm *driver_data;
};

struct tcm_dev {
	u8 reserved_0000[0x1c];
	u32 num_of_image_rows;
	u32 num_of_image_cols;
};

struct syna_tcm {
	struct tcm_dev *tcm_dev;
	u8 reserved_0008[0x57a];
	u8 connection_flags;
};

struct testing_limit {
	const void *data;
	u32 size;
	u32 data_length;
};

struct tcm_buffer {
	u8 *data;
	u32 buf_size;
	u32 data_length;
	u8 mutex[0x30];
	u8 lock_depth;
	u8 reserved_0041[0x07];
};

struct testing_item;
typedef int (*testing_run_fn)(struct tcm_dev *, struct testing_item *, bool);

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
	u8 reserved_00e8[0x90];
};

_Static_assert(offsetof(struct device_kobject, driver_data) == 0x98,
	       "driver data offset");
_Static_assert(offsetof(struct syna_tcm, connection_flags) == 0x582,
	       "connection flag offset");
_Static_assert(offsetof(struct tcm_dev, num_of_image_rows) == 0x1c,
	       "image row offset");
_Static_assert(offsetof(struct tcm_dev, num_of_image_cols) == 0x20,
	       "image column offset");
_Static_assert(sizeof(struct testing_limit) == 0x10, "testing limit size");
_Static_assert(sizeof(struct tcm_buffer) == 0x48, "result buffer size");
_Static_assert(offsetof(struct tcm_buffer, lock_depth) == 0x40,
	       "lock depth offset");
_Static_assert(sizeof(struct testing_item) == 0x178, "testing item size");
_Static_assert(offsetof(struct testing_item, image_rows) == 0x20,
	       "item row offset");
_Static_assert(offsetof(struct testing_item, image_cols) == 0x24,
	       "item column offset");
_Static_assert(offsetof(struct testing_item, limit_primary) == 0x38,
	       "primary limit offset");
_Static_assert(offsetof(struct testing_item, limit_secondary) == 0x40,
	       "secondary limit offset");
_Static_assert(offsetof(struct testing_item, result_data) == 0xd8,
	       "result buffer offset");

const unsigned char pt05_hi_limits[3200] = { 0x5a };
const unsigned char pt05_lo_limits[3200] = { 0xa5 };
static struct testing_item test_item;
static struct testing_item *selected_item;
static struct device managed_device;
static struct device *selected_managed_device;
static u8 *last_result_buffer;
static unsigned int mutex_init_calls;
static unsigned int printk_calls;
static unsigned int request_managed_calls;
static unsigned int devm_kfree_calls;
static unsigned int run_calls;
static bool contract_failed;
static int run_return;
static bool run_result;
static u32 result_rows;
static u32 result_cols;
static u32 result_data_length;
static u8 result_lock_depth;
static bool result_allocated;
static char last_log[256];

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

void _mutex_init(void *mutex, const char *name, struct lock_class_key *key)
{
	mutex_init_calls++;
	if (!mutex || strcmp(name, "(struct mutex *)ptr") != 0 || !key)
		contract_failed = true;
}

struct testing_item *syna_tcm_get_testing_0500(void)
{
	return selected_item;
}

int scnprintf(char *buffer, size_t size, const char *format, ...)
{
	va_list arguments;
	int written;

	if (!size)
		return 0;
	va_start(arguments, format);
	written = vsnprintf(buffer, size, format, arguments);
	va_end(arguments);
	if (written < 0)
		return written;
	return (size_t)written >= size ? (int)size - 1 : written;
}

int printk(const char *format, ...)
{
	va_list arguments;

	printk_calls++;
	va_start(arguments, format);
	vsnprintf(last_log, sizeof(last_log), format, arguments);
	va_end(arguments);
	return (int)strlen(last_log);
}

struct device *syna_request_managed_device(void)
{
	request_managed_calls++;
	return selected_managed_device;
}

void devm_kfree(struct device *device, void *data)
{
	devm_kfree_calls++;
	if (device != &managed_device || data != last_result_buffer)
		contract_failed = true;
	free(data);
	last_result_buffer = NULL;
}

static int testing_run(struct tcm_dev *tcm, struct testing_item *item,
		       bool dual_firmware)
{
	static const u16 samples[8] = {
		65535, 22, 32768, 444, 40000, 66, 77, 888,
	};

	run_calls++;
	if (!tcm || !item || dual_firmware || item->image_rows != 2 ||
	    item->image_cols != 4 || !item->result_data ||
	    !item->limit_primary || !item->limit_secondary ||
	    item->limit_primary->data != pt05_hi_limits ||
	    item->limit_primary->size != 3200 ||
	    item->limit_primary->data_length != 0 ||
	    item->limit_secondary->data != pt05_lo_limits ||
	    item->limit_secondary->size != 3200 ||
	    item->limit_secondary->data_length != 0)
		contract_failed = true;

	item->result = run_result;
	item->image_rows = result_rows;
	item->image_cols = result_cols;
	item->result_data->data_length = result_data_length;
	item->result_data->lock_depth = result_lock_depth;
	if (result_allocated) {
		last_result_buffer = malloc(sizeof(samples));
		if (!last_result_buffer)
			exit(2);
		memcpy(last_result_buffer, samples, sizeof(samples));
		item->result_data->data = last_result_buffer;
		item->result_data->buf_size = sizeof(samples);
	}
	return run_return;
}

#include "../../../reconstructed/zte_tpd/syna_testing_pt05_show.c"

struct fixture {
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
	struct kobject testing_kobj;
	struct kobject sysfs_kobj;
	struct device_kobject device_kobj;
};

static void reset_fixture(struct fixture *fixture)
{
	free(last_result_buffer);
	last_result_buffer = NULL;
	memset(fixture, 0, sizeof(*fixture));
	memset(&test_item, 0, sizeof(test_item));
	fixture->tcm.tcm_dev = &fixture->tcm_dev;
	fixture->tcm_dev.num_of_image_rows = 2;
	fixture->tcm_dev.num_of_image_cols = 4;
	fixture->testing_kobj.parent = &fixture->sysfs_kobj;
	fixture->sysfs_kobj.parent = (struct kobject *)&fixture->device_kobj;
	fixture->device_kobj.driver_data = &fixture->tcm;
	test_item.version = 5;
	test_item.id = 0x0500;
	test_item.name = "PT05 Test";
	test_item.run = testing_run;
	selected_item = &test_item;
	selected_managed_device = &managed_device;
	mutex_init_calls = 0;
	printk_calls = 0;
	request_managed_calls = 0;
	devm_kfree_calls = 0;
	run_calls = 0;
	contract_failed = false;
	run_return = 0;
	run_result = true;
	result_rows = 2;
	result_cols = 4;
	result_data_length = 0;
	result_lock_depth = 0;
	result_allocated = false;
	last_log[0] = '\0';
}

static void test_disconnected(void)
{
	const char *name = "disconnected";
	struct fixture fixture;
	char output[4096] = {};
	int result;

	reset_fixture(&fixture);
	result = syna_testing_pt05_show(&fixture.testing_kobj, NULL, output);
	expect(result == (int)strlen("Device is NOT connected\n"), name,
	       "return mismatch");
	expect(strcmp(output, "Device is NOT connected\n") == 0, name,
	       "output mismatch");
	expect(run_calls == 0 && mutex_init_calls == 0 && !contract_failed, name,
	       "unexpected connected-path action");
}

static void test_missing_item(void)
{
	const char *name = "missing_item";
	struct fixture fixture;
	char output[4096] = {};
	int result;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	selected_item = NULL;
	result = syna_testing_pt05_show(&fixture.testing_kobj, NULL, output);
	expect(result == (int)strlen("Invalid testing item id:1280\n"), name,
	       "return mismatch");
	expect(strcmp(output, "Invalid testing item id:1280\n") == 0, name,
	       "output mismatch");
	expect(mutex_init_calls == 0 && run_calls == 0 && !contract_failed, name,
	       "unexpected item-path action");
}

static void test_unsigned_matrix_with_device_stride(void)
{
	const char *name = "unsigned_matrix_with_device_stride";
	struct fixture fixture;
	char output[4096] = {};

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	result_cols = 3;
	result_data_length = 16;
	result_allocated = true;
	expect(syna_testing_pt05_show(&fixture.testing_kobj, NULL, output) > 0,
	       name, "return mismatch");
	expect(strcmp(output,
	       "\nPT05 Test (version.5): Pass\n\n65535 22 32768 \n"
	       "40000 66 77 \n") == 0, name, "matrix or stride mismatch");
	expect(mutex_init_calls == 1 && run_calls == 1 && request_managed_calls == 1 &&
	       devm_kfree_calls == 1 && last_result_buffer == NULL && !contract_failed,
	       name, "limit, result or cleanup contract mismatch");
}

static void test_callback_error(void)
{
	const char *name = "callback_error";
	struct fixture fixture;
	char output[4096] = {};

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	run_return = -5;
	expect(syna_testing_pt05_show(&fixture.testing_kobj, NULL, output) > 0,
	       name, "return mismatch");
	expect(strcmp(output, "\nPT05 Test (version.5): Fail\n\n") == 0, name,
	       "failure header mismatch");
	expect(strcmp(last_log,
	       "\0013[error] syna_testing_pt05_show: Fail to run test, PT05 Test\n") == 0,
	       name, "failure diagnostic mismatch");
	expect(printk_calls == 1 && request_managed_calls == 1 &&
	       devm_kfree_calls == 0 && !contract_failed, name,
	       "callback error lifecycle mismatch");
}

static void test_zero_data_length(void)
{
	const char *name = "zero_data_length";
	struct fixture fixture;
	char output[4096] = {};

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	expect(syna_testing_pt05_show(&fixture.testing_kobj, NULL, output) > 0,
	       name, "return mismatch");
	expect(strcmp(output, "\nPT05 Test (version.5): Pass\n\n") == 0, name,
	       "matrix emitted without result length");
	expect(!contract_failed, name, "typed contract mismatch");
}

static void test_zero_columns_emits_row_newlines(void)
{
	const char *name = "zero_columns";
	struct fixture fixture;
	char output[4096] = {};

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	result_cols = 0;
	result_data_length = 16;
	result_allocated = true;
	expect(syna_testing_pt05_show(&fixture.testing_kobj, NULL, output) > 0,
	       name, "return mismatch");
	expect(strcmp(output, "\nPT05 Test (version.5): Pass\n\n\n\n") == 0,
	       name, "row newline behavior mismatch");
	expect(devm_kfree_calls == 1 && !contract_failed, name,
	       "cleanup mismatch");
}

static void test_busy_buffer_logs_then_releases(void)
{
	const char *name = "busy_buffer";
	struct fixture fixture;
	char output[4096] = {};

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	run_result = false;
	result_data_length = 16;
	result_lock_depth = 3;
	result_allocated = true;
	expect(syna_testing_pt05_show(&fixture.testing_kobj, NULL, output) > 0,
	       name, "return mismatch");
	expect(strcmp(output, "\nPT05 Test (version.5): Fail\n\n") != 0, name,
	       "matrix was not emitted");
	expect(strcmp(last_log,
	       "\0013[error] syna_tcm_buf_release: Buffer still in used, 3 references\n") == 0,
	       name, "busy diagnostic mismatch");
	expect(printk_calls == 1 && devm_kfree_calls == 1 &&
	       last_result_buffer == NULL && !contract_failed, name,
	       "busy cleanup mismatch");
}

static void test_missing_managed_device(void)
{
	const char *name = "missing_managed_device";
	struct fixture fixture;
	char output[4096] = {};

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	result_data_length = 16;
	result_allocated = true;
	selected_managed_device = NULL;
	expect(syna_testing_pt05_show(&fixture.testing_kobj, NULL, output) > 0,
	       name, "return mismatch");
	expect(strcmp(last_log,
	       "\0013[error] syna_pal_mem_free: Invalid managed device\n") == 0,
	       name, "managed device diagnostic mismatch");
	expect(request_managed_calls == 1 && devm_kfree_calls == 0 &&
	       last_result_buffer != NULL && !contract_failed, name,
	       "managed device ownership mismatch");
	free(last_result_buffer);
	last_result_buffer = NULL;
}

int main(void)
{
	test_disconnected();
	test_missing_item();
	test_unsigned_matrix_with_device_stride();
	test_callback_error();
	test_zero_data_length();
	test_zero_columns_emits_row_newlines();
	test_busy_buffer_logs_then_releases();
	test_missing_managed_device();
	puts("PASS syna_testing_pt05_show host tests (8 cases)");
	return 0;
}
