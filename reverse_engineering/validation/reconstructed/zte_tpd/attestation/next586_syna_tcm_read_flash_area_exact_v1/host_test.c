#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef long long __int64;
#define __fastcall

struct device {
	int tag;
};

enum flash_area {
	FLASH_AREA_UNKNOWN = 0,
};

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static struct device managed_device;
static bool managed_available;
static bool allocation_failure;
static int setup_return;
static int setup_calls;
static int setup_write_block_size;
static int read_flash_return;
static int read_flash_calls;
static u32 last_flash_address;
static u32 last_flash_length;
static int boot_config_return;
static int boot_config_calls;
static u32 boot_config_size;
static u8 boot_config_data[256];
static int boot_cs_return;
static int boot_cs_calls;
static int mtp_return;
static int mtp_calls;
static int switch_mode_calls;
static u8 last_switch_mode;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

struct device *syna_request_managed_device(void)
{
	return managed_available ? &managed_device : NULL;
}

void *devm_kmalloc(struct device *dev, size_t size, unsigned int flags)
{
	(void)dev;
	(void)flags;
	return allocation_failure ? NULL : malloc(size);
}

void devm_kfree(struct device *dev, const void *ptr)
{
	(void)dev;
	free((void *)ptr);
}

int syna_tcm_set_up_flash_access(struct tcm_dev *tcm,
					 struct syna_tcm_flash_access_context *access,
					 unsigned int delay_ms,
					 unsigned int timeout_ms)
{
	(void)delay_ms;
	(void)timeout_ms;
	++setup_calls;
	if (setup_return < 0)
		return setup_return;
	tcm->firmware_mode = 0x0b;
	access->write_block_size_bytes = setup_write_block_size;
	return 0;
}

int syna_tcm_read_flash(struct tcm_dev *tcm, unsigned int address,
				u8 *destination, unsigned int length, int delay_ms)
{
	unsigned int i;

	(void)tcm;
	(void)delay_ms;
	++read_flash_calls;
	last_flash_address = address;
	last_flash_length = length;
	if (read_flash_return < 0)
		return read_flash_return;
	for (i = 0; i < length; ++i)
		destination[i] = (u8)(0x50 + i);
	return 0;
}

int syna_tcm_read_flash_boot_config(
		struct tcm_dev *tcm,
		struct syna_tcm_flash_access_context *access,
		struct tcm_buffer *buffer, int delay_ms)
{
	(void)tcm;
	(void)access;
	(void)delay_ms;
	++boot_config_calls;
	if (boot_config_return < 0)
		return boot_config_return;
	buffer->data = malloc(boot_config_size);
	if (!buffer->data)
		return -12;
	buffer->buf_size = boot_config_size;
	buffer->data_length = boot_config_size;
	memcpy(buffer->data, boot_config_data, boot_config_size);
	return 0;
}

int syna_tcm_read_flash_boot_cs_config(
		struct tcm_dev *tcm,
		struct syna_tcm_flash_access_context *access,
		struct tcm_buffer *buffer, unsigned int offset,
		int length, int delay_ms)
{
	(void)tcm;
	(void)access;
	(void)buffer;
	(void)offset;
	(void)length;
	(void)delay_ms;
	++boot_cs_calls;
	return boot_cs_return;
}

int syna_tcm_read_flash_mtp_config(
		struct tcm_dev *tcm,
		struct syna_tcm_flash_access_context *access,
		struct tcm_buffer *buffer, unsigned int offset,
		int length, int delay_ms)
{
	(void)tcm;
	(void)access;
	(void)buffer;
	(void)offset;
	(void)length;
	(void)delay_ms;
	++mtp_calls;
	return mtp_return;
}

int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode,
					unsigned int delay_ms)
{
	(void)delay_ms;
	++switch_mode_calls;
	last_switch_mode = mode;
	tcm->firmware_mode = mode;
	return 0;
}

char *syna_tcm_get_partition_id_string(enum flash_area partition_id)
{
	(void)partition_id;
	return "partition";
}

#include "../../../reconstructed/zte_tpd/syna_tcm_read_flash_area.c"

static void reset_fixture(struct tcm_dev *tcm)
{
	memset(tcm, 0, sizeof(*tcm));
	managed_available = true;
	allocation_failure = false;
	setup_return = 0;
	setup_calls = 0;
	setup_write_block_size = 2;
	read_flash_return = 0;
	read_flash_calls = 0;
	last_flash_address = 0;
	last_flash_length = 0;
	boot_config_return = 0;
	boot_config_calls = 0;
	boot_config_size = 160;
	memset(boot_config_data, 0, sizeof(boot_config_data));
	boot_cs_return = 0;
	boot_cs_calls = 0;
	mtp_return = 0;
	mtp_calls = 0;
	switch_mode_calls = 0;
	last_switch_mode = 0;
	tcm->firmware_mode = 0x0b;
	tcm->timing_01e8 = 77;
	tcm->application_info.app_config_start_write_block[0] = 3;
	tcm->application_info.app_config_size[0] = 4;
}

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static void test_validation_and_setup(void)
{
	struct tcm_dev tcm;
	struct tcm_buffer buffer = {};

	reset_fixture(&tcm);
	expect_true(syna_tcm_read_flash_area(0, 3,
						(__int64)(uintptr_t)&buffer, 0) == -241,
				"null tcm returns -241");
	expect_true(syna_tcm_read_flash_area((__int64)(uintptr_t)&tcm, 3, 0,
						0) == -241,
				"null output buffer returns -241");

	reset_fixture(&tcm);
	tcm.firmware_mode = 1;
	setup_return = -33;
	expect_true(syna_tcm_read_flash_area((__int64)(uintptr_t)&tcm, 6,
						(__int64)(uintptr_t)&buffer, 10) == -33,
				"setup error is propagated");
	expect_true(setup_calls == 1 && switch_mode_calls == 0,
				"setup failure returns before outer cleanup");
}

static void test_app_config(void)
{
	struct tcm_dev tcm;
	struct tcm_buffer buffer = {};
	u8 storage[8] = {};

	reset_fixture(&tcm);
	tcm.firmware_mode = 0x0c;
	buffer.data = storage;
	buffer.buf_size = sizeof(storage);
	expect_true(syna_tcm_read_flash_area((__int64)(uintptr_t)&tcm, 3,
						(__int64)(uintptr_t)&buffer, 0) == 0,
				"application config succeeds");
	expect_true(read_flash_calls == 1 && last_flash_address == 6 &&
				last_flash_length == 4 && buffer.data_length == 4 &&
				storage[0] == 0x50,
				"application config address and copy are correct");

	reset_fixture(&tcm);
	tcm.firmware_mode = 0x0c;
	buffer.data = storage;
	buffer.buf_size = sizeof(storage);
	read_flash_return = -19;
	expect_true(syna_tcm_read_flash_area((__int64)(uintptr_t)&tcm, 3,
						(__int64)(uintptr_t)&buffer, 0) == -19,
				"application flash error is propagated");

	reset_fixture(&tcm);
	tcm.firmware_mode = 0x0c;
	buffer.data = NULL;
	buffer.buf_size = 0;
	allocation_failure = true;
	expect_true(syna_tcm_read_flash_area((__int64)(uintptr_t)&tcm, 3,
						(__int64)(uintptr_t)&buffer, 0) == -243,
				"application allocation failure returns -243");
}

static void test_other_partitions(void)
{
	struct tcm_dev tcm;
	struct tcm_buffer buffer = {};

	reset_fixture(&tcm);
	boot_config_return = -7;
	expect_true(syna_tcm_read_flash_area((__int64)(uintptr_t)&tcm, 6,
						(__int64)(uintptr_t)&buffer, 0) == -7,
				"boot config error is propagated");

	reset_fixture(&tcm);
	expect_true(syna_tcm_read_flash_area((__int64)(uintptr_t)&tcm, 0x15,
						(__int64)(uintptr_t)&buffer, 0) == 0 &&
				boot_cs_calls == 1,
				"boot customer config route succeeds");

	reset_fixture(&tcm);
	expect_true(syna_tcm_read_flash_area((__int64)(uintptr_t)&tcm, 0x17,
						(__int64)(uintptr_t)&buffer, 0) == 0 &&
				mtp_calls == 1,
				"mtp config route succeeds");

	reset_fixture(&tcm);
	expect_true(syna_tcm_read_flash_area((__int64)(uintptr_t)&tcm, 0x14,
						(__int64)(uintptr_t)&buffer, 0) == -241,
				"unsupported partition returns -241");
}

static void test_lockdown(void)
{
	struct tcm_dev tcm;
	struct tcm_buffer buffer = {};
	u8 expected[8] = { 'L', 0x80, 'C', 'K', 'T', 'E', 'S', 'T' };

	reset_fixture(&tcm);
	memcpy(&boot_config_data[152], expected, sizeof(expected));
	boot_config_data[153] = 0x80;
	expect_true(syna_tcm_read_flash_area((__int64)(uintptr_t)&tcm, 0x16,
						(__int64)(uintptr_t)&buffer, 0) == 0,
				"lockdown extraction succeeds");
	expect_true(buffer.data_length == 8 && !memcmp(buffer.data, expected, 8) &&
				tcm.reserved_0034[0] == 1 && boot_config_calls == 1,
				"lockdown bytes and flag are copied");
		free(buffer.data);

	reset_fixture(&tcm);
	boot_config_return = -9;
	expect_true(syna_tcm_read_flash_area((__int64)(uintptr_t)&tcm, 0x16,
						(__int64)(uintptr_t)&buffer, 0) == -9,
				"lockdown boot read error is propagated");

	reset_fixture(&tcm);
	boot_config_size = 16;
	expect_true(syna_tcm_read_flash_area((__int64)(uintptr_t)&tcm, 0x16,
						(__int64)(uintptr_t)&buffer, 0) == -22,
				"short lockdown buffer is rejected safely");

	reset_fixture(&tcm);
	tcm.firmware_mode = 1;
	expect_true(syna_tcm_read_flash_area((__int64)(uintptr_t)&tcm, 0x16,
						(__int64)(uintptr_t)&buffer, 0) == -241 &&
				switch_mode_calls == 1 && last_switch_mode == 1,
				"application-mode lockdown is rejected and restored");
}

int main(void)
{
	test_validation_and_setup();
	test_app_config();
	test_other_partitions();
	test_lockdown();
	puts("PASS: syna_tcm_read_flash_area host contract");
	return 0;
}
