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

static int setup_return, read_return, setup_calls, read_calls;
static int switch_calls, request_calls, free_calls, mutex_calls;
static bool device_available, return_null_data;
static u32 fixture_block_size, fixture_buffer_length, fixture_read_length;
static u32 fixture_flash_offset, fixture_delay_mode;
static u32 setup_timeout, setup_mode_delay, read_offset, read_delay_mode;
static u8 *allocated_boot;
static void *allocated_access;
static struct device managed_device;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

static void release_unowned(void)
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
	allocated_access = malloc(16);
	access->managed_allocation = allocated_access;
	return setup_return;
}

int syna_tcm_read_flash_boot_cs_config(
	struct tcm_dev *tcm, struct syna_tcm_flash_access_context *access,
	struct tcm_buffer *buffer, u32 read_length, u32 offset, u32 delay_mode)
{
	(void)tcm;
	(void)access;
	++read_calls;
	fixture_read_length = read_length;
	read_offset = offset;
	read_delay_mode = delay_mode;
	if (read_return < 0)
		return read_return;
	if (return_null_data)
		return read_return;
	allocated_boot = malloc(fixture_buffer_length);
	if (!allocated_boot)
		exit(2);
	for (u32 i = 0; i < fixture_buffer_length; ++i)
		allocated_boot[i] = (u8)(0xa0U + (i & 0x1fU));
	buffer->data = allocated_boot;
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
	if (device != &managed_device || !memory)
		exit(3);
	++free_calls;
	if (memory == allocated_boot)
		allocated_boot = NULL;
	if (memory == allocated_access)
		allocated_access = NULL;
	free(memory);
}

#include "../../../reconstructed/zte_tpd/syna_tcm_read_cs_data.c"

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
	fixture_read_length = 0;
	fixture_flash_offset = 0;
	fixture_delay_mode = 0;
	setup_timeout = 0;
	setup_mode_delay = 0;
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
	expect_true(syna_tcm_read_cs_data(NULL, destination, 1, 0, 0) == -241,
			"null tcm rejected");
	expect_true(syna_tcm_read_cs_data(&tcm, NULL, 1, 0, 0) == -241,
			"null destination rejected");
	expect_true(syna_tcm_read_cs_data(&tcm, destination, 0, 0, 0) == -241,
			"zero length rejected");
	expect_true(setup_calls == 0, "invalid inputs do not set up flash");
	release_unowned();
}

static void test_setup_and_read_failures(void)
{
	struct tcm_dev tcm;
	char destination[8] = { 0 };

	reset_fixture(&tcm);
	setup_return = -5;
	expect_true(syna_tcm_read_cs_data(&tcm, destination, 4, 3, 1) == -5,
			"setup error propagates");
	expect_true(read_calls == 0 && switch_calls == 1 && request_calls == 2 &&
			 free_calls == 1, "setup cleanup is complete");
	release_unowned();

	reset_fixture(&tcm);
	read_return = -7;
	expect_true(syna_tcm_read_cs_data(&tcm, destination, 4, 3, 1) == -7,
			"read error propagates");
	expect_true(read_calls == 1 && switch_calls == 1 && request_calls == 2 &&
			 free_calls == 1, "read cleanup is complete");
	release_unowned();
}

static void test_success_and_forwarding(void)
{
	struct tcm_dev tcm;
	char destination[8] = { 0 };
	const u8 expected[8] = { 0xa0, 0xa1, 0xa2, 0xa3,
		0xa4, 0xa5, 0xa6, 0xa7 };

	reset_fixture(&tcm);
	expect_true(syna_tcm_read_cs_data(&tcm, destination, sizeof(destination),
						 0x24, 1) == 0, "read succeeds");
	expect_true(setup_timeout == 55 && setup_mode_delay == 12 &&
			 fixture_read_length == 8 && read_offset == 0x24 &&
			 read_delay_mode == 1 && memcmp(destination, expected, 8) == 0 &&
			 switch_calls == 1 && request_calls == 2 && free_calls == 2,
			 "rounding, forwarding, copy and cleanup match stock");
	release_unowned();
}

static void test_short_and_null_buffers(void)
{
	struct tcm_dev tcm;
	char destination[8] = { 0x55 };

	reset_fixture(&tcm);
	fixture_buffer_length = 4;
	expect_true(syna_tcm_read_cs_data(&tcm, destination, 8, 0, 0) == -22,
			"short source buffer rejected");
	expect_true(destination[0] == 0x55 && free_calls == 2,
			"short source does not copy");
	release_unowned();

	reset_fixture(&tcm);
	return_null_data = true;
	expect_true(syna_tcm_read_cs_data(&tcm, destination, 4, 0, 0) == -22,
			"null source buffer rejected");
	expect_true(free_calls == 1, "null source still frees access allocation");
	release_unowned();
}

static void test_zero_block_and_device_unavailable(void)
{
	struct tcm_dev tcm;
	char destination[4] = { 0 };

	reset_fixture(&tcm);
	fixture_block_size = 0;
	expect_true(syna_tcm_read_cs_data(&tcm, destination, 4, 7, 0) == 0,
			"zero block preserves stock read call path");
	expect_true(fixture_read_length == 0 && read_offset == 7 &&
			 memcmp(destination, "\xa0\xa1\xa2\xa3", 4) == 0,
			"zero block forwards zero rounded length");
	release_unowned();

	reset_fixture(&tcm);
	device_available = false;
	expect_true(syna_tcm_read_cs_data(&tcm, destination, 4, 0, 0) == 0,
			"managed-device absence preserves operation result");
	expect_true(request_calls == 2 && free_calls == 0,
			"managed-device absence does not crash cleanup");
	release_unowned();
}

int main(void)
{
	test_invalid_inputs();
	test_setup_and_read_failures();
	test_success_and_forwarding();
	test_short_and_null_buffers();
	test_zero_block_and_device_unavailable();
	puts("PASS: syna_tcm_read_cs_data host contract");
	return 0;
}
