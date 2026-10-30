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
static int boot_config_return;
static int boot_config_calls;
static u32 boot_config_size;
static u8 boot_config_data[512];
static int read_flash_return;
static int read_flash_calls;
static u32 last_flash_address;
static u32 last_flash_length;
static int last_flash_delay;

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

int syna_tcm_read_flash_boot_config(struct tcm_dev *tcm,
					    struct syna_tcm_flash_access_context *access,
					    struct tcm_buffer *buffer,
					    int delay_ms)
{
	(void)tcm;
	(void)access;
	(void)delay_ms;
	++boot_config_calls;
	if (boot_config_return < 0)
		return boot_config_return;
	buffer->data = malloc(boot_config_size);
	if (!buffer->data)
		return -243;
	buffer->buf_size = boot_config_size;
	buffer->data_length = boot_config_size;
	memcpy(buffer->data, boot_config_data, boot_config_size);
	return 0;
}

int syna_tcm_read_flash(struct tcm_dev *tcm, unsigned int address,
				u8 *destination, unsigned int length, int delay_ms)
{
	unsigned int i;

	(void)tcm;
	++read_flash_calls;
	last_flash_address = address;
	last_flash_length = length;
	last_flash_delay = delay_ms;
	if (read_flash_return < 0)
		return read_flash_return;
	for (i = 0; i < length; ++i)
		destination[i] = (u8)(0x40 + i);
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_read_flash_boot_cs_config.c"

static void reset_fixture(struct tcm_dev *tcm,
				  struct syna_tcm_flash_access_context *access,
				  struct tcm_boot_info *boot_info)
{
	memset(tcm, 0, sizeof(*tcm));
	memset(access, 0, sizeof(*access));
	memset(boot_info, 0, sizeof(*boot_info));
	memset(boot_config_data, 0, sizeof(boot_config_data));
	managed_available = true;
	allocation_failure = false;
	allocation_calls = 0;
	free_calls = 0;
	boot_config_return = 0;
	boot_config_calls = 0;
	boot_config_size = 0x100;
	read_flash_return = 0;
	read_flash_calls = 0;
	last_flash_address = 0;
	last_flash_length = 0;
	last_flash_delay = 0;
	tcm->firmware_mode = 0x0b;
	access->boot_info = boot_info;
	access->write_block_size_bytes = 2;
	boot_info->version = 1;
	boot_info->reserved_01[0] = 0;
	((u8 *)boot_info)[0x0c] = 3;
	((u8 *)boot_info)[0x0e] = 4;
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
	expect_true(syna_tcm_read_flash_boot_cs_config(NULL, &access, &buffer,
								0, 0, 0) == -241,
			    "null tcm returns -241");
	expect_true(syna_tcm_read_flash_boot_cs_config(&tcm, NULL, &buffer,
								0, 0, 0) == -241,
			    "null access returns -241");
	expect_true(syna_tcm_read_flash_boot_cs_config(&tcm, &access, NULL,
								0, 0, 0) == -241,
			    "null output returns -241");

		reset_fixture(&tcm, &access, &boot_info);
		tcm.firmware_mode = 1;
		expect_true(syna_tcm_read_flash_boot_cs_config(&tcm, &access, &buffer,
								0, 0, 0) == -241,
				    "application mode returns -241");

		reset_fixture(&tcm, &access, &boot_info);
		access.boot_info = NULL;
		expect_true(syna_tcm_read_flash_boot_cs_config(&tcm, &access, &buffer,
								0, 0, 0) == -241,
				    "missing boot info returns -241");

		reset_fixture(&tcm, &access, &boot_info);
		boot_info.version = 2;
		expect_true(syna_tcm_read_flash_boot_cs_config(&tcm, &access, &buffer,
								0, 0, 0) == -241,
				    "unsupported boot version returns -241");
}

static void test_boot_customer_config(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct tcm_boot_info boot_info;
	struct tcm_buffer buffer = {};
	u8 storage[0x100];
	u32 i;

	reset_fixture(&tcm, &access, &boot_info);
	for (i = 0; i < sizeof(boot_config_data); ++i)
		boot_config_data[i] = (u8)i;
	boot_config_data[0x100 - 7] = 0x80;
	boot_config_data[0x100 - 15] = 0x00;
	memset(storage, 0xaa, sizeof(storage));
	buffer.data = storage;
	buffer.buf_size = sizeof(storage);
	expect_true(syna_tcm_read_flash_boot_cs_config(&tcm, &access, &buffer,
								0, 0, 13) == 0,
			    "boot customer config succeeds");
	expect_true(boot_config_calls == 1 && read_flash_calls == 0 &&
				buffer.data_length == 0xf8,
			    "boot customer config selects the observed prefix");
	for (i = 0; i < buffer.data_length; ++i)
		expect_true(storage[i] == (i == 0xf1 ? 0 : (u8)i),
			    "boot customer config copies prefix");

	reset_fixture(&tcm, &access, &boot_info);
	boot_config_size = 0x80;
	expect_true(syna_tcm_read_flash_boot_cs_config(&tcm, &access, &buffer,
								0, 0, 0) == -22,
			    "short boot customer config is rejected");
	buffer.data = NULL;
	buffer.buf_size = 0;

	reset_fixture(&tcm, &access, &boot_info);
	boot_config_return = -19;
	expect_true(syna_tcm_read_flash_boot_cs_config(&tcm, &access, &buffer,
								0, 0, 0) == -19,
			    "boot config read error is propagated");
}

static void test_direct_read_and_resize(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct tcm_boot_info boot_info;
	struct tcm_buffer buffer = {};
	u8 storage[8];
	u32 i;

	reset_fixture(&tcm, &access, &boot_info);
	expect_true(syna_tcm_read_flash_boot_cs_config(&tcm, &access, &buffer,
								5, 4, 11) == 0,
			    "direct flash read succeeds");
	expect_true(boot_config_calls == 0 && read_flash_calls == 1 &&
				last_flash_address == 10 && last_flash_length == 5 &&
				last_flash_delay == 11 && buffer.data_length == 5,
			    "direct read address, length, and delay are correct");
		for (i = 0; i < 5; ++i)
			expect_true(buffer.data[i] == (u8)(0x40 + i),
				    "direct read copies flash bytes");
		free(buffer.data);
		buffer.data = NULL;

	reset_fixture(&tcm, &access, &boot_info);
	memset(storage, 0xaa, sizeof(storage));
	buffer.data = storage;
	buffer.buf_size = sizeof(storage);
	expect_true(syna_tcm_read_flash_boot_cs_config(&tcm, &access, &buffer,
								5, 4, 0) == 0 &&
				buffer.data_length == 5 && storage[0] == 0x40,
			    "direct read preserves an adequate output buffer");

	reset_fixture(&tcm, &access, &boot_info);
	read_flash_return = -23;
	buffer.data = NULL;
	buffer.buf_size = 0;
		expect_true(syna_tcm_read_flash_boot_cs_config(&tcm, &access, &buffer,
								5, 4, 0) == -23,
			    "direct flash error is propagated");
	free(buffer.data);
	buffer.data = NULL;

	reset_fixture(&tcm, &access, &boot_info);
	allocation_failure = true;
	expect_true(syna_tcm_read_flash_boot_cs_config(&tcm, &access, &buffer,
								5, 4, 0) == -243,
			    "direct temporary allocation failure returns -243");
}

int main(void)
{
	test_validation();
	test_boot_customer_config();
	test_direct_read_and_resize();
	puts("PASS: syna_tcm_read_flash_boot_cs_config host contract");
	return 0;
}
