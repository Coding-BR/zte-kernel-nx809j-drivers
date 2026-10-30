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
static int write_return;
static int setup_calls;
static int write_calls;
static int switch_calls;
static int request_calls;
static int free_calls;
static int malloc_calls;
static int mutex_calls;
static bool device_available;
static bool malloc_available;
static u32 fixture_block_size;
static u32 fixture_v3_page_size;
static u8 fixture_boot_version;
static u32 setup_timeout;
static u32 setup_mode_delay;
static u32 write_offset;
static u32 write_length;
static u32 write_delay;
static u8 write_snapshot[32];
static void *allocated_access;
static void *allocated_payload;
static struct device managed_device;
static struct tcm_boot_info fixture_boot_info;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

static void release_unowned(void)
{
	free(allocated_access);
	free(allocated_payload);
	allocated_access = NULL;
	allocated_payload = NULL;
}

int syna_tcm_set_up_flash_access(struct tcm_dev *tcm,
					 struct syna_tcm_flash_access_context *access,
					 u32 timeout_ms, u32 mode_delay_ms)
{
	(void)tcm;
	++setup_calls;
	setup_timeout = timeout_ms;
	setup_mode_delay = mode_delay_ms;
	fixture_boot_info.version = fixture_boot_version;
	access->boot_info = &fixture_boot_info;
	access->write_block_size_bytes = fixture_block_size;
	access->v3_page_size_bytes = fixture_v3_page_size;
	allocated_access = malloc(16);
	access->managed_allocation = allocated_access;
	return setup_return;
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
	memset(write_snapshot, 0, sizeof(write_snapshot));
	if (data && data_length <= sizeof(write_snapshot))
		memcpy(write_snapshot, data, data_length);
	++write_calls;
	return write_return;
}

struct device *syna_request_managed_device(void)
{
	++request_calls;
	return device_available ? &managed_device : NULL;
}

void *devm_kmalloc(struct device *device, size_t size, unsigned int flags)
{
	(void)device;
	(void)flags;
	++malloc_calls;
	if (!malloc_available)
		return NULL;
	allocated_payload = malloc(size);
	return allocated_payload;
}

void devm_kfree(struct device *device, void *memory)
{
	if (device != &managed_device || memory != allocated_access)
		exit(3);
	++free_calls;
	allocated_access = NULL;
	free(memory);
}

void mutex_init(void *lock)
{
	(void)lock;
	++mutex_calls;
}

int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode, u32 delay_ms)
{
	(void)tcm;
	(void)mode;
	(void)delay_ms;
	++switch_calls;
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_update_mtp_data.c"

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
	release_unowned();
	memset(tcm, 0, sizeof(*tcm));
	memset(&fixture_boot_info, 0, sizeof(fixture_boot_info));
	setup_return = 0;
	write_return = 0;
	setup_calls = 0;
	write_calls = 0;
	switch_calls = 0;
	request_calls = 0;
	free_calls = 0;
	malloc_calls = 0;
	mutex_calls = 0;
	device_available = true;
	malloc_available = true;
	fixture_block_size = 8;
	fixture_v3_page_size = 0x100;
	fixture_boot_version = 3;
	setup_timeout = 0;
	setup_mode_delay = 0;
	write_offset = 0;
	write_length = 0;
	write_delay = 0;
	memset(write_snapshot, 0, sizeof(write_snapshot));
	tcm->firmware_mode = 0x0b;
	tcm->command_delay_ms = 55;
	tcm->timing_01e8 = 12;
}

static void test_invalid_inputs(void)
{
	struct tcm_dev tcm;
	char source[8] = { 0 };

	reset_fixture(&tcm);
	expect_true(syna_tcm_update_mtp_data(NULL, source, 1, 0, 0) == -241,
			"null tcm rejected");
	expect_true(syna_tcm_update_mtp_data(&tcm, NULL, 1, 0, 0) == -241,
			"null data rejected");
	expect_true(syna_tcm_update_mtp_data(&tcm, source, 0, 0, 0) == -241,
			"zero length rejected");
	expect_true(setup_calls == 0, "invalid inputs do not set up flash");
	release_unowned();
}

static void test_setup_and_version_failures(void)
{
	struct tcm_dev tcm;
	char source[8] = { 1, 2, 3 };

	reset_fixture(&tcm);
	setup_return = -5;
	expect_true(syna_tcm_update_mtp_data(&tcm, source, 3, 0, 1) == -5,
			"setup error propagates");
	expect_true(switch_calls == 1 && request_calls == 1 && free_calls == 1 &&
			 tcm_update_flag(&tcm) == 0,
			"setup failure cleanup is complete");
	release_unowned();

	reset_fixture(&tcm);
	fixture_boot_version = 2;
	expect_true(syna_tcm_update_mtp_data(&tcm, source, 3, 0, 0) == 0,
			"old boot version preserves stock result");
	expect_true(write_calls == 0 && request_calls == 1 && free_calls == 1 &&
			 switch_calls == 1, "old version does not allocate or write");
	release_unowned();
}

static void test_block_geometry_and_success(void)
{
	struct tcm_dev tcm;
	char source[6] = { 0x41, 0x42, 0x43, 0x44, 0x45, 0x46 };

	reset_fixture(&tcm);
	fixture_block_size = 0;
	expect_true(syna_tcm_update_mtp_data(&tcm, source, sizeof(source), 7, 0) == 0,
			"zero block preserves stock result");
	expect_true(write_calls == 0 && request_calls == 1 && free_calls == 1,
			"zero block does not allocate or write");
	release_unowned();

	reset_fixture(&tcm);
	expect_true(syna_tcm_update_mtp_data(&tcm, source, sizeof(source), 9, 1) == 8,
			"aligned MTP update succeeds");
	expect_true(setup_timeout == 55 && setup_mode_delay == 12 &&
			 request_calls == 2 && malloc_calls == 1 && write_calls == 1 &&
			 write_offset == 0x110 && write_length == 8 && write_delay == 1 &&
			 memcmp(write_snapshot, source, sizeof(source)) == 0 &&
			 switch_calls == 1 && free_calls == 1 &&
			 tcm_update_flag(&tcm) == 0,
			"rounding, forwarding, payload and cleanup match stock");
	expect_true(allocated_payload != NULL,
			"payload remains devm-owned after the function");
	release_unowned();
}

static void test_write_and_allocation_failures(void)
{
	struct tcm_dev tcm;
	char source[8] = { 1, 2, 3, 4, 5, 6, 7, 8 };

	reset_fixture(&tcm);
	write_return = -19;
	expect_true(syna_tcm_update_mtp_data(&tcm, source, sizeof(source), 0, 0) == -19,
			"write error propagates");
	expect_true(write_calls == 1 && request_calls == 2 && free_calls == 1,
			"write failure cleans setup allocation");
	release_unowned();

	reset_fixture(&tcm);
	malloc_available = false;
	expect_true(syna_tcm_update_mtp_data(&tcm, source, sizeof(source), 0, 0) == -243,
			"payload allocation failure returns -243");
	expect_true(malloc_calls == 1 && write_calls == 0 && request_calls == 2 &&
			 free_calls == 1, "allocation failure cleanup is complete");
	release_unowned();

	reset_fixture(&tcm);
	device_available = false;
	expect_true(syna_tcm_update_mtp_data(&tcm, source, sizeof(source), 0, 0) == -243,
			"managed device absence returns -243");
	expect_true(request_calls == 2 && malloc_calls == 0 && free_calls == 0,
			"managed device absence does not allocate or crash");
	release_unowned();
}

static void test_overflow_guards(void)
{
	struct tcm_dev tcm;
	char source[8] = { 0 };

	reset_fixture(&tcm);
	expect_true(syna_tcm_update_mtp_data(&tcm, source, 8, 0xffffffffU, 0) == -22,
			"offset overflow rejected");
	expect_true(write_calls == 0 && request_calls == 1,
			"offset overflow stops before allocation");
	release_unowned();

	reset_fixture(&tcm);
	expect_true(syna_tcm_update_mtp_data(&tcm, source, 0xffffffffU, 0, 0) == -22,
			"length rounding overflow rejected");
	expect_true(write_calls == 0 && request_calls == 1,
			"length overflow stops before allocation");
	release_unowned();
}

int main(void)
{
	test_invalid_inputs();
	test_setup_and_version_failures();
	test_block_geometry_and_success();
	test_write_and_allocation_failures();
	test_overflow_guards();
	puts("PASS: syna_tcm_update_mtp_data host contract");
	return 0;
}
