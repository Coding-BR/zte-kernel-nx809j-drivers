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
#define static_assert _Static_assert

struct device {
	int marker;
};

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static struct device managed_device;
static bool managed_available;
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

struct device *syna_request_managed_device(void)
{
	return managed_available ? &managed_device : NULL;
}

void *devm_kmalloc(struct device *device, size_t size, unsigned int flags)
{
	(void)device;
	(void)flags;
	++allocation_calls;
	if (allocation_failure || size == 0)
		return NULL;
	return malloc(size);
}

void devm_kfree(struct device *device, const void *pointer)
{
	(void)device;
	++free_calls;
	free((void *)pointer);
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
		destination[i] = (u8)(0x50 + i);
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_read_flash_mtp_config.c"

static void reset_fixture(struct tcm_dev *tcm,
				  struct syna_tcm_flash_access_context *access,
				  struct tcm_boot_info *boot_info)
{
	memset(tcm, 0, sizeof(*tcm));
	memset(access, 0, sizeof(*access));
	memset(boot_info, 0, sizeof(*boot_info));
	managed_available = true;
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
	access->erase_page_size_bytes = 8;
	access->v3_page_size_bytes = 0x100;
	boot_info->version = 3;
}

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static void test_validation(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct tcm_boot_info boot_info;
	struct tcm_buffer buffer = {};

	reset_fixture(&tcm, &access, &boot_info);
	expect_true(syna_tcm_read_flash_mtp_config(NULL, &access, &buffer,
								4, 0, 0) == -241,
			    "null tcm returns -241");
	expect_true(syna_tcm_read_flash_mtp_config(&tcm, NULL, &buffer,
								4, 0, 0) == -241,
			    "null access returns -241");
	expect_true(syna_tcm_read_flash_mtp_config(&tcm, &access, NULL,
								4, 0, 0) == -241,
			    "null output returns -241");

	reset_fixture(&tcm, &access, &boot_info);
	tcm.firmware_mode = 1;
	expect_true(syna_tcm_read_flash_mtp_config(&tcm, &access, &buffer,
								4, 0, 0) == -241,
			    "application mode returns -241");

	reset_fixture(&tcm, &access, &boot_info);
	access.boot_info = NULL;
	expect_true(syna_tcm_read_flash_mtp_config(&tcm, &access, &buffer,
								4, 0, 0) == -241,
			    "missing boot info returns -241");

	reset_fixture(&tcm, &access, &boot_info);
	boot_info.version = 1;
	expect_true(syna_tcm_read_flash_mtp_config(&tcm, &access, &buffer,
								4, 0, 0) == -241,
			    "non-v3 boot info returns -241");

	reset_fixture(&tcm, &access, &boot_info);
	access.erase_page_size_bytes = 0;
	expect_true(syna_tcm_read_flash_mtp_config(&tcm, &access, &buffer,
								0, 0, 0) == -241,
			    "zero derived length returns -241");
}

static void test_derived_length_and_existing_buffer(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct tcm_boot_info boot_info;
	struct tcm_buffer buffer = {};
	u8 storage[16];
	u32 i;

	reset_fixture(&tcm, &access, &boot_info);
	memset(storage, 0xaa, sizeof(storage));
	buffer.data = storage;
	buffer.buf_size = sizeof(storage);
	expect_true(syna_tcm_read_flash_mtp_config(&tcm, &access, &buffer,
								0, 5, 17) == 0,
			    "derived length read succeeds");
	expect_true(read_calls == 1 && last_address == 0x105 &&
				last_length == 8 && last_delay == 17 &&
				buffer.data_length == 8,
			    "derived length and v3 page offset are correct");
	for (i = 0; i < 8; ++i)
		expect_true(storage[i] == (u8)(0x50 + i),
			    "flash bytes copy into existing buffer");
	for (i = 8; i < sizeof(storage); ++i)
		expect_true(storage[i] == 0, "existing capacity is zeroed");
}

static void test_resize_and_errors(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct tcm_boot_info boot_info;
	struct tcm_buffer buffer = {};
	u8 *old_data;

	reset_fixture(&tcm, &access, &boot_info);
	expect_true(syna_tcm_read_flash_mtp_config(&tcm, &access, &buffer,
								4, 3, 0) == 0,
			    "null output buffer is allocated");
	expect_true(allocation_calls == 1 && read_calls == 1 &&
				last_address == 0x103 && last_length == 4 &&
				buffer.buf_size == 4 && buffer.data_length == 4 &&
				buffer.data[0] == 0x50,
			    "allocated output has the direct-read contract");
	free(buffer.data);
	buffer.data = NULL;
	buffer.buf_size = 0;

	reset_fixture(&tcm, &access, &boot_info);
	old_data = malloc(2);
	buffer.data = old_data;
	buffer.buf_size = 2;
	expect_true(syna_tcm_read_flash_mtp_config(&tcm, &access, &buffer,
								5, 0, 0) == 0,
			    "short output buffer is resized");
	expect_true(free_calls == 1 && allocation_calls == 1 &&
				buffer.buf_size == 5 && buffer.data_length == 5,
			    "resize releases old managed storage");
	free(buffer.data);
	buffer.data = NULL;
	buffer.buf_size = 0;

	reset_fixture(&tcm, &access, &boot_info);
	read_return = -19;
	expect_true(syna_tcm_read_flash_mtp_config(&tcm, &access, &buffer,
								4, 0, 0) == -19,
			    "flash error is propagated");
	free(buffer.data);
	buffer.data = NULL;
	buffer.buf_size = 0;

	reset_fixture(&tcm, &access, &boot_info);
	allocation_failure = true;
	expect_true(syna_tcm_read_flash_mtp_config(&tcm, &access, &buffer,
								4, 0, 0) == -243 &&
				buffer.data == NULL && buffer.buf_size == 0,
			    "allocation failure returns -243");
}

int main(void)
{
	test_validation();
	test_derived_length_and_existing_buffer();
	test_resize_and_errors();
	puts("PASS: syna_tcm_read_flash_mtp_config host contract");
	return 0;
}
