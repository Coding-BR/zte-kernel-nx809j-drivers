#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define static_assert(condition) _Static_assert(condition, #condition)

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef long long __int64;
#define __fastcall

struct device {
	int marker;
};

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static int setup_return;
static int read_return;
static int write_return;
static bool device_available;
static int setup_calls;
static int read_calls;
static int write_calls;
static int switch_calls;
static int request_calls;
static int free_calls;
static int mutex_calls;
static u32 setup_timeout;
static u32 setup_mode_delay;
static int read_delay;
static u32 write_offset;
static u32 write_length;
static u32 write_delay;
static u8 *write_data;
static u8 write_snapshot[32];
static u8 *allocated_boot;
static void *allocated_access;
static u32 fixture_boot_length;
static u32 fixture_block_size;
static u32 fixture_flash_base;
static bool fixture_signed_marker;
static bool fixture_first_block_used;
static struct device managed_device;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

static void write_u32(void *base, u32 offset, u32 value)
{
	u8 *bytes = (u8 *)base + offset;

	bytes[0] = (u8)value;
	bytes[1] = (u8)(value >> 8);
	bytes[2] = (u8)(value >> 16);
	bytes[3] = (u8)(value >> 24);
}

static void cleanup_unowned_allocations(void)
{
	free(allocated_boot);
	free(allocated_access);
	allocated_boot = NULL;
	allocated_access = NULL;
}

int syna_tcm_set_up_flash_access(struct tcm_dev *tcm,
					 struct syna_tcm_flash_access_context *access,
					 u32 timeout_ms, u32 mode_delay_ms)
{
	(void)tcm;
	++setup_calls;
	setup_timeout = timeout_ms;
	setup_mode_delay = mode_delay_ms;
	access->write_block_size_bytes = fixture_block_size;
	write_u32(access, 0x38, fixture_flash_base);
	allocated_access = malloc(16);
	access->managed_allocation = allocated_access;
	return setup_return;
}

int syna_tcm_read_flash_boot_config(struct tcm_dev *tcm,
					    struct syna_tcm_flash_access_context *access,
					    struct tcm_buffer *buffer, int delay_ms)
{
	(void)tcm;
	(void)access;
	++read_calls;
	read_delay = delay_ms;
	if (read_return < 0)
		return read_return;
	allocated_boot = calloc(1, fixture_boot_length);
	if (!allocated_boot)
		exit(2);
	buffer->data = allocated_boot;
	buffer->data_length = fixture_boot_length;
	if (fixture_signed_marker && fixture_boot_length >= 0x8f) {
		allocated_boot[fixture_boot_length - 7] = 0x80;
		allocated_boot[fixture_boot_length - 15] = 0x01;
	}
	if (fixture_first_block_used && fixture_boot_length >= 8)
		memset(allocated_boot, 0xa5, 8);
	return read_return;
}

int syna_tcm_write_flash(struct tcm_dev *tcm,
					 struct syna_tcm_flash_access_context *access,
					 int data_size, u8 *data, u32 data_length,
					 u32 delay_ms)
{
	(void)tcm;
	(void)access;
	write_offset = (u32)data_size;
	write_length = data_length;
	write_delay = delay_ms;
	write_data = data;
	memset(write_snapshot, 0, sizeof(write_snapshot));
	if (data && data_length <= sizeof(write_snapshot))
		memcpy(write_snapshot, data, data_length);
	++write_calls;
	return write_return;
}

int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode, u32 delay_ms)
{
	(void)tcm;
	(void)mode;
	(void)delay_ms;
	++switch_calls;
	return 0;
}

struct device *syna_request_managed_device(void)
{
	++request_calls;
	return device_available ? &managed_device : NULL;
}

void mutex_init(void *lock)
{
	(void)lock;
	++mutex_calls;
}

void devm_kfree(struct device *device, void *memory)
{
	if (device != &managed_device || !memory)
		exit(3);
	++free_calls;
	if (memory == allocated_boot)
		allocated_boot = NULL;
	if (memory == allocated_access)
		allocated_access = NULL;
	free(memory);
}

#include "../../../reconstructed/zte_tpd/syna_tcm_update_cs_config.c"

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static u32 tcm_update_flag(const struct tcm_dev *tcm)
{
	return *(const u32 *)((const u8 *)tcm + 0x388);
}

static void reset_fixture(struct tcm_dev *tcm)
{
	cleanup_unowned_allocations();
	memset(tcm, 0, sizeof(*tcm));
	setup_return = 0;
	read_return = 0;
	write_return = 0;
	device_available = true;
	setup_calls = 0;
	read_calls = 0;
	write_calls = 0;
	switch_calls = 0;
	request_calls = 0;
	free_calls = 0;
	mutex_calls = 0;
	setup_timeout = 0;
	setup_mode_delay = 0;
	read_delay = 0;
	write_offset = 0;
	write_length = 0;
	write_delay = 0;
	write_data = NULL;
	memset(write_snapshot, 0, sizeof(write_snapshot));
	fixture_boot_length = 0x200;
	fixture_block_size = 8;
	fixture_flash_base = 0x100;
	fixture_signed_marker = false;
	fixture_first_block_used = false;
	tcm->firmware_mode = 0x0b;
	tcm->command_delay_ms = 55;
	tcm->timing_01e8 = 12;
}

static void finish_fixture(void)
{
	cleanup_unowned_allocations();
}

static void test_invalid_inputs(void)
{
	struct tcm_dev tcm;
	char source[8] = { 0 };

	reset_fixture(&tcm);
	expect_true(syna_tcm_update_cs_config(NULL, source, 1, 0, 0) == -241,
			"null tcm rejected");
	expect_true(syna_tcm_update_cs_config(&tcm, NULL, 1, 0, 0) == -241,
			"null data rejected");
	expect_true(syna_tcm_update_cs_config(&tcm, source, 0, 0, 0) == -241,
			"zero length rejected");
	expect_true(setup_calls == 0, "invalid inputs do not set up flash");
	finish_fixture();
}

static void test_setup_and_read_failures(void)
{
	struct tcm_dev tcm;
	char source[8] = { 1, 2, 3 };

	reset_fixture(&tcm);
	setup_return = -5;
	expect_true(syna_tcm_update_cs_config(&tcm, source, 3, 0, 1) == -5,
			"setup error propagates");
	expect_true(setup_calls == 1 && read_calls == 0 && switch_calls == 1 &&
			 tcm_update_flag(&tcm) == 0 && request_calls == 2 && free_calls == 1,
			"setup failure cleanup is complete");
	finish_fixture();

	reset_fixture(&tcm);
	read_return = -7;
	expect_true(syna_tcm_update_cs_config(&tcm, source, 3, 0, 1) == -7,
			"read error propagates");
	expect_true(setup_calls == 1 && read_calls == 1 && switch_calls == 1 &&
			 tcm_update_flag(&tcm) == 0 && request_calls == 2 && free_calls == 1,
			"read failure cleanup is complete");
	finish_fixture();
}

static void test_geometry_guards(void)
{
	struct tcm_dev tcm;
	char source[8] = { 1, 2, 3 };

	reset_fixture(&tcm);
	fixture_boot_length = 0x8e;
	expect_true(syna_tcm_update_cs_config(&tcm, source, 3, 0, 0) == -22,
			"short boot config is rejected safely");
	expect_true(write_calls == 0 && free_calls == 2, "short config does not write");
	finish_fixture();

	reset_fixture(&tcm);
	fixture_block_size = 0;
	expect_true(syna_tcm_update_cs_config(&tcm, source, 3, 0, 0) == 0,
			"zero block size preserves stock error result");
	expect_true(write_calls == 0, "zero block size does not write");
	finish_fixture();

	reset_fixture(&tcm);
	expect_true(syna_tcm_update_cs_config(&tcm, source, 3, 0x1f0, 0) == 0,
			"offset beyond available area preserves stock error result");
	expect_true(write_calls == 0, "out of range offset does not write");
	finish_fixture();
}

static void test_scan_rounding_and_delay(void)
{
	struct tcm_dev tcm;
	char source[6] = { 0x41, 0x42, 0x43, 0x44, 0x45, 0x46 };

	reset_fixture(&tcm);
	fixture_signed_marker = true;
	expect_true(syna_tcm_update_cs_config(&tcm, source, sizeof(source), 9, 1) == 8,
			"free block update succeeds");
	expect_true(setup_timeout == 55 && setup_mode_delay == 12 && read_delay == 55 &&
			 write_offset == 0x110 && write_length == 8 && write_delay == 1 &&
			 write_calls == 1 && memcmp(write_snapshot, source, 6) == 0 &&
			 switch_calls == 1 && tcm_update_flag(&tcm) == 0 && free_calls == 2,
			"scan, rounding, forwarding and cleanup match stock");
	finish_fixture();
}

static void test_skip_used_block_and_write_failure(void)
{
	struct tcm_dev tcm;
	char source[8] = { 9, 8, 7, 6, 5, 4, 3, 2 };

	reset_fixture(&tcm);
	fixture_signed_marker = true;
	fixture_first_block_used = true;
	/* The first block is occupied; the second block is the free target. */
	/* The read stub owns the buffer, so mark it after the call via write offset. */
	setup_return = 0;
	write_return = -19;
	expect_true(syna_tcm_update_cs_config(&tcm, source, sizeof(source), 0, 0) == -19,
			"write error propagates");
	expect_true(write_calls == 1 && write_offset == 0x108 && write_length == 8 &&
			 switch_calls == 1 && free_calls == 2,
			"write failure still cleans up");
	finish_fixture();
}

static void test_managed_device_unavailable(void)
{
	struct tcm_dev tcm;
	char source[4] = { 1, 2, 3, 4 };

	reset_fixture(&tcm);
	device_available = false;
	expect_true(syna_tcm_update_cs_config(&tcm, source, sizeof(source), 0, 0) == 8,
			"operation result survives managed-device absence");
	expect_true(write_calls == 1 && request_calls == 2 && free_calls == 0 &&
			 tcm_update_flag(&tcm) == 0,
			"managed-device absence does not alter operation");
	finish_fixture();
}

int main(void)
{
	test_invalid_inputs();
	test_setup_and_read_failures();
	test_geometry_guards();
	test_scan_rounding_and_delay();
	test_skip_used_block_and_write_failure();
	test_managed_device_unavailable();
	puts("PASS: syna_tcm_update_cs_config host contract");
	return 0;
}
