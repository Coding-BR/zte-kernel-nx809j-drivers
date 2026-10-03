#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define static_assert _Static_assert

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef long long __int64;
#define __fastcall

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static bool allocation_failure;
static int allocation_calls;
static int free_calls;
static int read_return;
static int read_calls;
static u32 last_address;
static u32 last_length;
static int last_delay;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

void *syna_pal_mem_alloc(int size)
{
	++allocation_calls;
	if (allocation_failure || size <= 0)
		return NULL;
	return malloc((size_t)size);
}

void syna_pal_mem_free(void *memory)
{
	++free_calls;
	free(memory);
}

int syna_tcm_read_flash(struct tcm_dev *tcm, unsigned int address,
			u8 *destination, unsigned int length, int delay_ms)
{
	unsigned int i;

	(void)tcm;
	++read_calls;
	last_address = address;
	last_length = length;
	last_delay = delay_ms;
	if (read_return < 0)
		return read_return;
	for (i = 0; i < length; ++i)
		destination[i] = (u8)(0x80 + i);
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_read_flash_boot_config.c"

static void reset_fixture(struct tcm_dev *tcm,
			  struct syna_tcm_flash_access_context *access,
			  struct tcm_boot_info *boot_info)
{
	memset(tcm, 0, sizeof(*tcm));
	memset(access, 0, sizeof(*access));
	memset(boot_info, 0, sizeof(*boot_info));
	allocation_failure = false;
	allocation_calls = 0;
	free_calls = 0;
	read_return = 0;
	read_calls = 0;
	last_address = 0;
	last_length = 0;
	last_delay = 0;
	tcm->firmware_mode = 0x0b;
	access->boot_info = boot_info;
	access->write_block_size_bytes = 2;
}

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static void set_geometry(struct tcm_boot_info *boot_info, u8 version,
			 u32 address_blocks, u32 block_count)
{
	u8 *bytes = (u8 *)boot_info;
	u32 address_offset = version == 1 ? 0x0c : 0x10;
	u32 length_offset = version == 1 ? 0x0e : 0x12;

	boot_info->version = version;
	bytes[address_offset] = (u8)address_blocks;
	bytes[address_offset + 1] = (u8)(address_blocks >> 8);
	bytes[length_offset] = (u8)block_count;
	bytes[length_offset + 1] = (u8)(block_count >> 8);
}

static void test_validation(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct tcm_boot_info boot_info;
	struct tcm_buffer buffer = {};

	reset_fixture(&tcm, &access, &boot_info);
	expect_true(syna_tcm_read_flash_boot_config(NULL, &access, &buffer, 0) ==
			    -241,
		    "null tcm returns -241");
	expect_true(syna_tcm_read_flash_boot_config(&tcm, NULL, &buffer, 0) ==
			    -241,
		    "null access returns -241");
	expect_true(syna_tcm_read_flash_boot_config(&tcm, &access, NULL, 0) ==
			    -241,
		    "null output returns -241");

	reset_fixture(&tcm, &access, &boot_info);
	tcm.firmware_mode = 1;
	expect_true(syna_tcm_read_flash_boot_config(&tcm, &access, &buffer, 0) ==
			    -241,
		    "application mode returns -241");

	reset_fixture(&tcm, &access, &boot_info);
	access.boot_info = NULL;
	expect_true(syna_tcm_read_flash_boot_config(&tcm, &access, &buffer, 0) ==
			    -241,
		    "missing boot info returns -241");
}

static void test_version_one_and_existing_buffer(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct tcm_boot_info boot_info;
	struct tcm_buffer buffer = {};
	u8 storage[16];
	u32 i;

	reset_fixture(&tcm, &access, &boot_info);
	set_geometry(&boot_info, 1, 3, 4);
	memset(storage, 0xaa, sizeof(storage));
	buffer.data = storage;
	buffer.buf_size = sizeof(storage);
	expect_true(syna_tcm_read_flash_boot_config(&tcm, &access, &buffer, 17) ==
			    0,
		    "version one read succeeds");
	expect_true(read_calls == 1 && last_address == 6 &&
			    last_length == 8 && last_delay == 17 &&
			    buffer.data_length == 8,
		    "version one geometry and delay are correct");
	for (i = 0; i < 8; ++i)
		expect_true(storage[i] == (u8)(0x80 + i),
			    "flash data copied into existing buffer");
	for (i = 8; i < sizeof(storage); ++i)
		expect_true(storage[i] == 0, "entire existing capacity is cleared");
	expect_true(*(u32 *)(void *)access.reserved_0034 == 4 &&
			    *(u32 *)(void *)(access.reserved_0034 + 4) == 6,
		    "block count and address offsets are recorded");
}

static void test_version_three_resize_and_errors(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct tcm_boot_info boot_info;
	struct tcm_buffer buffer = {};
	u8 *allocated;

	reset_fixture(&tcm, &access, &boot_info);
	set_geometry(&boot_info, 3, 2, 3);
	expect_true(syna_tcm_read_flash_boot_config(&tcm, &access, &buffer, 0) ==
			    0,
		    "version three allocates and reads");
	expect_true(allocation_calls == 1 && read_calls == 1 &&
			    buffer.buf_size == 6 && buffer.data_length == 6 &&
			    last_address == 4 && last_length == 6,
		    "version three geometry and resize are correct");
	allocated = buffer.data;
	syna_pal_mem_free(allocated);
	buffer.data = NULL;

	reset_fixture(&tcm, &access, &boot_info);
	buffer = (struct tcm_buffer){};
	set_geometry(&boot_info, 1, 1, 2);
	read_return = -19;
	expect_true(syna_tcm_read_flash_boot_config(&tcm, &access, &buffer, 0) ==
			    -19,
		    "flash read error is propagated");
	syna_pal_mem_free(buffer.data);
	buffer.data = NULL;

	reset_fixture(&tcm, &access, &boot_info);
	buffer = (struct tcm_buffer){};
	set_geometry(&boot_info, 1, 1, 2);
	allocation_failure = true;
	expect_true(syna_tcm_read_flash_boot_config(&tcm, &access, &buffer, 0) ==
			    -243 && buffer.buf_size == 0,
		    "allocation failure returns -243");
}

static void test_invalid_geometry(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct tcm_boot_info boot_info;
	struct tcm_buffer buffer = {};

	reset_fixture(&tcm, &access, &boot_info);
	set_geometry(&boot_info, 2, 1, 2);
	expect_true(syna_tcm_read_flash_boot_config(&tcm, &access, &buffer, 0) ==
			    -241,
		    "unsupported version returns -241");

	reset_fixture(&tcm, &access, &boot_info);
	set_geometry(&boot_info, 1, 0, 2);
	expect_true(syna_tcm_read_flash_boot_config(&tcm, &access, &buffer, 0) ==
			    -241,
		    "zero address geometry returns -241");
}

int main(void)
{
	test_validation();
	test_version_one_and_existing_buffer();
	test_version_three_resize_and_errors();
	test_invalid_geometry();
	puts("PASS: syna_tcm_read_flash_boot_config host contract");
	return 0;
}
