#include <errno.h>
#include <stdbool.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;

#define likely(value) __builtin_expect(!!(value), 1)
#define barrier() __asm__ __volatile__("" : : : "memory")
#define barrier_data(value) __asm__ __volatile__("" : "+r"(value))

struct lock_class_key {
	unsigned long token;
};

struct device {
	unsigned long token;
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
	void *data;
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

_Static_assert(offsetof(struct syna_tcm, connection_flags) == 0x582,
	       "connection flag offset");
_Static_assert(offsetof(struct tcm_dev, num_of_image_rows) == 0x1c,
	       "image row offset");
_Static_assert(offsetof(struct tcm_dev, num_of_image_cols) == 0x20,
	       "image column offset");
_Static_assert(sizeof(struct testing_limit) == 0x10, "testing limit size");
_Static_assert(sizeof(struct tcm_buffer) == 0x48, "buffer size");
_Static_assert(offsetof(struct tcm_buffer, lock_depth) == 0x40,
	       "lock depth offset");
_Static_assert(sizeof(struct testing_item) == 0x178, "testing item size");
_Static_assert(offsetof(struct testing_item, image_rows) == 0x20,
	       "testing row offset");
_Static_assert(offsetof(struct testing_item, image_cols) == 0x24,
	       "testing column offset");
_Static_assert(offsetof(struct testing_item, limit_primary) == 0x38,
	       "primary limit offset");
_Static_assert(offsetof(struct testing_item, limit_secondary) == 0x40,
	       "secondary limit offset");
_Static_assert(offsetof(struct testing_item, result_data) == 0xd8,
	       "result buffer offset");

const unsigned char pt05_hi_limits[3200] = { 0x5a };
const unsigned char pt05_lo_limits[3200] = { 0xa5 };
void *init_timer_key;

static struct testing_item test_item;
static struct testing_item *selected_item;
static struct device managed_device;
static struct device *selected_managed_device;
static void *last_data_buffer;
static void *last_result_buffer;
static unsigned int allocation_calls;
static unsigned int data_kfree_calls;
static unsigned int devm_kfree_calls;
static unsigned int mutex_init_calls;
static unsigned int copy_calls;
static unsigned int printk_calls;
static unsigned int run_calls;
static int allocation_fails;
static int run_return;
static bool run_result;
static u32 run_rows;
static u32 run_cols;
static u32 run_data_length;
static u8 run_lock_depth;
static bool run_allocates_data;
static bool contract_failed;
static char copied_text[4096];
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

void *_kmalloc_cache_noprof(void *key, unsigned int flags, size_t size)
{
	allocation_calls++;
	if (key != init_timer_key || flags != 3520 || size != 4096)
		contract_failed = true;
	if (allocation_fails)
		return NULL;
	last_data_buffer = calloc(1, size);
	return last_data_buffer;
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

void tpd_copy_to_tp_firmware_data(const char *data)
{
	copy_calls++;
	snprintf(copied_text, sizeof(copied_text), "%s", data);
}

struct device *syna_request_managed_device(void)
{
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

void kfree(const void *data)
{
	data_kfree_calls++;
	if (data != last_data_buffer)
		contract_failed = true;
	free((void *)data);
	last_data_buffer = NULL;
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

static int testing_run(struct tcm_dev *tcm, struct testing_item *item,
		       bool dual_firmware)
{
	static const u16 samples[8] = {
		65535, 22, 32768, 444, 40000, 66, 77, 888
	};

	run_calls++;
	if (!tcm || !item || dual_firmware ||
	    item->limit_primary == NULL || item->limit_secondary == NULL ||
	    item->limit_primary->data != pt05_hi_limits ||
	    item->limit_primary->size != 3200 ||
	    item->limit_primary->data_length != 0 ||
	    item->limit_secondary->data != pt05_lo_limits ||
	    item->limit_secondary->size != 3200 ||
	    item->limit_secondary->data_length != 0 || !item->result_data)
		contract_failed = true;

	item->result = run_result;
	item->image_rows = run_rows;
	item->image_cols = run_cols;
	item->result_data->data_length = run_data_length;
	item->result_data->lock_depth = run_lock_depth;
	if (run_allocates_data) {
		last_result_buffer = malloc(sizeof(samples));
		if (!last_result_buffer)
			exit(2);
		memcpy(last_result_buffer, samples, sizeof(samples));
		item->result_data->data = last_result_buffer;
		item->result_data->buf_size = sizeof(samples);
	}
	return run_return;
}

#include "../../../reconstructed/zte_tpd/syna_testing_pt05_zte.c"

struct fixture {
	struct syna_tcm tcm;
	struct tcm_dev tcm_dev;
};

static void reset_fixture(struct fixture *fixture)
{
	if (last_data_buffer) {
		free(last_data_buffer);
		last_data_buffer = NULL;
	}
	if (last_result_buffer) {
		free(last_result_buffer);
		last_result_buffer = NULL;
	}
	memset(fixture, 0, sizeof(*fixture));
	memset(&test_item, 0, sizeof(test_item));
	fixture->tcm.tcm_dev = &fixture->tcm_dev;
	fixture->tcm_dev.num_of_image_rows = 2;
	fixture->tcm_dev.num_of_image_cols = 4;
	test_item.version = 7;
	test_item.id = 0x0500;
	test_item.name = "PT05";
	test_item.run = testing_run;
	selected_item = &test_item;
	selected_managed_device = &managed_device;
	allocation_calls = 0;
	data_kfree_calls = 0;
	devm_kfree_calls = 0;
	mutex_init_calls = 0;
	copy_calls = 0;
	printk_calls = 0;
	run_calls = 0;
	allocation_fails = 0;
	run_return = 0;
	run_result = true;
	run_rows = 2;
	run_cols = 4;
	run_data_length = 0;
	run_lock_depth = 0;
	run_allocates_data = false;
	contract_failed = false;
	copied_text[0] = '\0';
	last_log[0] = '\0';
}

static void cleanup_preserved_leak(void)
{
	free(last_data_buffer);
	last_data_buffer = NULL;
}

static void test_allocation_failure(void)
{
	const char *name = "allocation_failure";
	struct fixture fixture;

	reset_fixture(&fixture);
	allocation_fails = 1;
	expect(syna_testing_pt05_zte(&fixture.tcm) == -ENOMEM, name,
	       "return mismatch");
	expect(allocation_calls == 1 && run_calls == 0 && data_kfree_calls == 0,
	       name, "unexpected side effect");
	expect(strcmp(last_log,
	       "\0013[error] syna_testing_pt05_zte: alloc data_buf failed") == 0,
	       name, "log mismatch");
}

static void test_disconnected_preserves_stock_leak(void)
{
	const char *name = "disconnected";
	struct fixture fixture;
	int result;

	reset_fixture(&fixture);
	result = syna_testing_pt05_zte(&fixture.tcm);
	expect(result == (int)strlen("Device is NOT connected\n"), name,
	       "return mismatch");
	expect(run_calls == 0 && data_kfree_calls == 0 && last_data_buffer != NULL,
	       name, "stock allocation lifetime changed");
	cleanup_preserved_leak();
}

static void test_missing_item_preserves_stock_leak(void)
{
	const char *name = "missing_item";
	struct fixture fixture;
	int result;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	selected_item = NULL;
	result = syna_testing_pt05_zte(&fixture.tcm);
	expect(result == (int)strlen("Invalid testing item id:1280\n"), name,
	       "return mismatch");
	expect(data_kfree_calls == 0 && last_data_buffer != NULL, name,
	       "stock allocation lifetime changed");
	cleanup_preserved_leak();
}

static void test_run_failure(void)
{
	const char *name = "run_failure";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	run_return = -5;
	expect(syna_testing_pt05_zte(&fixture.tcm) > 0, name, "return mismatch");
	expect(strstr(copied_text, "PT05 (version.7): Fail") != NULL, name,
	       "failure status missing");
	expect(strcmp(last_log,
	       "\0013[error] syna_testing_pt05_zte: Fail to run test, PT05\n") == 0,
	       name, "log mismatch");
	expect(run_calls == 1 && copy_calls == 1 && data_kfree_calls == 1,
	       name, "lifecycle mismatch");
}

static void test_result_pass(void)
{
	const char *name = "result_pass";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	expect(syna_testing_pt05_zte(&fixture.tcm) > 0, name, "return mismatch");
	expect(strcmp(copied_text, "\nPT05 (version.7): Pass\n\n") == 0, name,
	       "header mismatch");
	expect(!contract_failed && mutex_init_calls == 1, name,
	       "typed contract mismatch");
}

static void test_result_fail(void)
{
	const char *name = "result_fail";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	run_result = false;
	expect(syna_testing_pt05_zte(&fixture.tcm) > 0, name, "return mismatch");
	expect(strstr(copied_text, "PT05 (version.7): Fail") != NULL, name,
	       "failure header mismatch");
}

static void test_unsigned_matrix_and_tcm_stride(void)
{
	const char *name = "unsigned_matrix_stride";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	run_rows = 2;
	run_cols = 3;
	run_data_length = 16;
	run_allocates_data = true;
	expect(syna_testing_pt05_zte(&fixture.tcm) > 0, name, "return mismatch");
	expect(strcmp(copied_text,
	       "\nPT05 (version.7): Pass\n\n65535 22 32768 \n"
	       "40000 66 77 \n") == 0,
	       name, "matrix or stride mismatch");
	expect(devm_kfree_calls == 1 && last_result_buffer == NULL, name,
	       "result buffer not released");
}

static void test_zero_data_length_skips_matrix(void)
{
	const char *name = "zero_data_length";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	run_allocates_data = true;
	expect(syna_testing_pt05_zte(&fixture.tcm) > 0, name, "return mismatch");
	expect(strcmp(copied_text, "\nPT05 (version.7): Pass\n\n") == 0, name,
	       "matrix was emitted");
}

static void test_zero_rows_skips_matrix(void)
{
	const char *name = "zero_rows";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	run_rows = 0;
	run_data_length = 16;
	run_allocates_data = true;
	expect(syna_testing_pt05_zte(&fixture.tcm) > 0, name, "return mismatch");
	expect(strcmp(copied_text, "\nPT05 (version.7): Pass\n\n") == 0, name,
	       "matrix was emitted");
}

static void test_zero_columns_emits_row_newlines(void)
{
	const char *name = "zero_columns";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	run_rows = 2;
	run_cols = 0;
	run_data_length = 16;
	run_allocates_data = true;
	expect(syna_testing_pt05_zte(&fixture.tcm) > 0, name, "return mismatch");
	expect(strcmp(copied_text, "\nPT05 (version.7): Pass\n\n\n\n") == 0,
	       name, "row newline behavior mismatch");
}

static void test_lock_depth_diagnostic(void)
{
	const char *name = "lock_depth";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	run_lock_depth = 3;
	expect(syna_testing_pt05_zte(&fixture.tcm) > 0, name, "return mismatch");
	expect(strcmp(last_log,
	       "\0013[error] syna_tcm_buf_release: Buffer still in used, "
	       "3 references\n") == 0, name, "diagnostic mismatch");
}

static void test_missing_managed_device(void)
{
	const char *name = "missing_managed_device";
	struct fixture fixture;

	reset_fixture(&fixture);
	fixture.tcm.connection_flags = 1;
	run_data_length = 16;
	run_allocates_data = true;
	selected_managed_device = NULL;
	expect(syna_testing_pt05_zte(&fixture.tcm) > 0, name, "return mismatch");
	expect(devm_kfree_calls == 0 && last_result_buffer != NULL, name,
	       "result unexpectedly released");
	expect(strcmp(last_log,
	       "\0013[error] syna_pal_mem_free: Invalid managed device\n") == 0,
	       name, "diagnostic mismatch");
	free(last_result_buffer);
	last_result_buffer = NULL;
}

int main(void)
{
	test_allocation_failure();
	test_disconnected_preserves_stock_leak();
	test_missing_item_preserves_stock_leak();
	test_run_failure();
	test_result_pass();
	test_result_fail();
	test_unsigned_matrix_and_tcm_stride();
	test_zero_data_length_skips_matrix();
	test_zero_rows_skips_matrix();
	test_zero_columns_emits_row_newlines();
	test_lock_depth_diagnostic();
	test_missing_managed_device();
	puts("PASS syna_testing_pt05_zte host tests (12 cases)");
	return 0;
}
