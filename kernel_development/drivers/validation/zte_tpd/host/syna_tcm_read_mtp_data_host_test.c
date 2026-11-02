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

struct device { int marker; };

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static int setup_return;
static int read_return;
static int setup_calls;
static int read_calls;
static int switch_calls;
static int request_calls;
static int free_calls;
static int mutex_calls;
static bool device_available;
static bool return_null_data;
static u32 fixture_block_size;
static u32 fixture_buffer_length;
static u8 fixture_boot_version;
static u32 fixture_read_length;
static u32 read_offset;
static u32 read_delay_mode;
static u8 *allocated_mtp;
static void *allocated_access;
static struct device managed_device;
static struct tcm_boot_info fixture_boot_info;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

static void release_unowned(void)
{
	free(allocated_mtp);
	free(allocated_access);
	allocated_mtp = NULL;
	allocated_access = NULL;
}

int syna_tcm_set_up_flash_access(struct tcm_dev *tcm,
					 struct syna_tcm_flash_access_context *access,
					 u32 timeout_ms, u32 mode_delay_ms)
{
	(void)tcm;
	(void)timeout_ms;
	(void)mode_delay_ms;
	++setup_calls;
	fixture_boot_info.version = fixture_boot_version;
	access->boot_info = &fixture_boot_info;
	access->write_block_size_bytes = fixture_block_size;
	allocated_access = malloc(16);
	access->managed_allocation = allocated_access;
	return setup_return;
}

int syna_tcm_read_flash_mtp_config(
	struct tcm_dev *tcm, struct syna_tcm_flash_access_context *access,
	struct tcm_buffer *buffer, u32 requested_length, u32 offset,
	u32 delay_mode)
{
	(void)tcm;
	(void)access;
	++read_calls;
	fixture_read_length = requested_length;
	read_offset = offset;
	read_delay_mode = delay_mode;
	if (read_return < 0)
		return read_return;
	if (return_null_data)
		return read_return;
	allocated_mtp = malloc(fixture_buffer_length);
	if (!allocated_mtp)
		exit(2);
	for (u32 i = 0; i < fixture_buffer_length; ++i)
		allocated_mtp[i] = (u8)(0xb0U + (i & 0x1fU));
	buffer->data = allocated_mtp;
	buffer->data_length = fixture_buffer_length;
	return read_return;
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
	if (device != &managed_device ||
		(memory != allocated_mtp && memory != allocated_access))
		exit(3);
	++free_calls;
	if (memory == allocated_mtp)
		allocated_mtp = NULL;
	if (memory == allocated_access)
		allocated_access = NULL;
	free(memory);
}

#include "../../../reconstructed/zte_tpd/syna_tcm_read_mtp_data.c"

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static void reset_fixture(struct tcm_dev *tcm)
{
	release_unowned();
	memset(tcm, 0, sizeof(*tcm));
	memset(&fixture_boot_info, 0, sizeof(fixture_boot_info));
	setup_return = 0;
	read_return = 0;
	setup_calls = 0;
	read_calls = 0;
	switch_calls = 0;
	request_calls = 0;
	free_calls = 0;
	mutex_calls = 0;
	device_available = true;
	return_null_data = false;
	fixture_block_size = 8;
	fixture_buffer_length = 16;
	fixture_boot_version = 3;
	fixture_read_length = 0;
	read_offset = 0;
	read_delay_mode = 0;
	tcm->firmware_mode = 0x0b;
	tcm->command_delay_ms = 55;
	tcm->timing_01e8 = 12;
}

static void test_invalid_inputs(void)
{
	struct tcm_dev tcm;
	char destination[8] = { 0 };

	reset_fixture(&tcm);
	expect_true(syna_tcm_read_mtp_data(NULL, destination, 1, 0, 0) == -241,
			"null tcm rejected");
	expect_true(syna_tcm_read_mtp_data(&tcm, NULL, 1, 0, 0) == -241,
			"null destination rejected");
	expect_true(syna_tcm_read_mtp_data(&tcm, destination, 0, 0, 0) == -241,
			"zero length rejected");
	expect_true(setup_calls == 0, "invalid inputs do not set up flash");
	release_unowned();
}

static void test_setup_and_version_failures(void)
{
	struct tcm_dev tcm;
	char destination[8] = { 0 };

	reset_fixture(&tcm);
	setup_return = -5;
	expect_true(syna_tcm_read_mtp_data(&tcm, destination, 4, 3, 1) == -5,
			"setup error propagates");
	expect_true(read_calls == 0 && switch_calls == 1 && request_calls == 2 &&
			 free_calls == 1, "setup failure cleanup is complete");
	release_unowned();

	reset_fixture(&tcm);
	fixture_boot_version = 2;
	expect_true(syna_tcm_read_mtp_data(&tcm, destination, 4, 0, 0) == 0,
			"old boot version preserves stock result");
	expect_true(read_calls == 0 && request_calls == 2 && free_calls == 1,
			"old version does not reach the MTP helper");
	release_unowned();
}

static void test_success_and_forwarding(void)
{
	struct tcm_dev tcm;
	char destination[8] = { 0 };
	const u8 expected[8] = { 0xb0, 0xb1, 0xb2, 0xb3,
		0xb4, 0xb5, 0xb6, 0xb7 };

	reset_fixture(&tcm);
	expect_true(syna_tcm_read_mtp_data(&tcm, destination, sizeof(destination),
						 0x24, 1) == 0, "read succeeds");
	expect_true(fixture_read_length == 8 && read_offset == 0x24 &&
			 read_delay_mode == 1 && memcmp(destination, expected, 8) == 0 &&
			 switch_calls == 1 && request_calls == 2 && free_calls == 2,
			 "rounding, forwarding, copy and cleanup match stock");
	release_unowned();
}

static void test_read_and_buffer_failures(void)
{
	struct tcm_dev tcm;
	char destination[8] = { 0x55 };

	reset_fixture(&tcm);
	read_return = -7;
	expect_true(syna_tcm_read_mtp_data(&tcm, destination, 4, 0, 0) == -7,
			"read error propagates");
	expect_true(request_calls == 2 && free_calls == 1,
			"read error cleans access allocation");
	release_unowned();

	reset_fixture(&tcm);
	fixture_buffer_length = 2;
	expect_true(syna_tcm_read_mtp_data(&tcm, destination, 8, 0, 0) == -22,
			"short buffer returns -22");
	expect_true(destination[0] == 0x55 && request_calls == 2 && free_calls == 2,
			"short buffer does not copy and cleans both allocations");
	release_unowned();

	reset_fixture(&tcm);
	return_null_data = true;
	expect_true(syna_tcm_read_mtp_data(&tcm, destination, 4, 0, 0) == -22,
			"null buffer returns -22");
	expect_true(request_calls == 2 && free_calls == 1,
			"null buffer cleans access allocation");
	release_unowned();
}

static void test_zero_block_and_managed_device(void)
{
	struct tcm_dev tcm;
	char destination[4] = { 0 };

	reset_fixture(&tcm);
	fixture_block_size = 0;
	expect_true(syna_tcm_read_mtp_data(&tcm, destination, 4, 7, 0) == 0,
			"zero block preserves stock read path");
	expect_true(fixture_read_length == 0 && read_offset == 7 &&
			 memcmp(destination, "\xb0\xb1\xb2\xb3", 4) == 0,
			"zero block forwards zero rounded length");
	release_unowned();

	reset_fixture(&tcm);
	device_available = false;
	expect_true(syna_tcm_read_mtp_data(&tcm, destination, 4, 0, 0) == 0,
			"managed-device absence preserves operation result");
	expect_true(request_calls == 2 && free_calls == 0,
			"managed-device absence does not crash cleanup");
	release_unowned();
}

int main(void)
{
	test_invalid_inputs();
	test_setup_and_version_failures();
	test_success_and_forwarding();
	test_read_and_buffer_failures();
	test_zero_block_and_managed_device();
	puts("PASS: syna_tcm_read_mtp_data host contract");
	return 0;
}
