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
static int setup_return;
static int setup_calls;
static u32 last_timeout;
static u32 last_mode_delay;
static int update_return_primary;
static int update_return_secondary;
static int update_calls;
static unsigned long update_optimize[2];
static void *update_partition[2];
static u32 last_data_offset;
static u32 last_data_length;
static u32 last_flash_flags;
static u32 last_byte_offset;
static int reset_return;
static int reset_calls;
static int allocation_calls;
static int free_calls;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

struct device *syna_request_managed_device(void)
{
	return managed_available ? &managed_device : NULL;
}

void devm_kfree(struct device *device, const void *pointer)
{
	(void)device;
	++free_calls;
	free((void *)pointer);
}

int syna_tcm_set_up_flash_access(struct tcm_dev *tcm,
					 struct syna_tcm_flash_access_context *access,
					 unsigned int timeout_ms,
					 unsigned int mode_delay_ms)
{
	(void)tcm;
	++setup_calls;
	last_timeout = timeout_ms;
	last_mode_delay = mode_delay_ms;
	access->setup_release_required = 1;
	access->managed_allocation = malloc(4);
	++allocation_calls;
	return setup_return;
}

int syna_tcm_update_flash_block(struct tcm_dev *tcm,
					struct syna_tcm_flash_access_context *access,
					void *partition, int data_offset,
					int data_length, unsigned long optimize)
{
	(void)tcm;
	if (update_calls < 2) {
		update_partition[update_calls] = partition;
		update_optimize[update_calls] = optimize;
	}
	last_flash_flags = *(u32 *)(void *)access->reserved_0000;
	last_byte_offset = *(u32 *)(void *)((u8 *)access + 0x8c);
	++update_calls;
	last_data_offset = (u32)data_offset;
	last_data_length = (u32)data_length;
	return update_calls == 1 ? update_return_primary : update_return_secondary;
}

int syna_tcm_reset(struct tcm_dev *tcm, unsigned int delay_ms)
{
	(void)tcm;
	(void)delay_ms;
	++reset_calls;
	return reset_return;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_do_fw_update_ex.c"

static void reset_fixture(struct tcm_dev *tcm,
				  struct syna_tcm_fw_image *image)
{
	memset(tcm, 0, sizeof(*tcm));
	memset(image, 0, sizeof(*image));
	managed_available = true;
	setup_return = 0;
	setup_calls = 0;
	last_timeout = 0;
	last_mode_delay = 0;
	update_return_primary = 0;
	update_return_secondary = 0;
	update_calls = 0;
	update_optimize[0] = 0;
	update_optimize[1] = 0;
	update_partition[0] = NULL;
	update_partition[1] = NULL;
	last_data_offset = 0;
	last_data_length = 0;
	last_flash_flags = 0;
	last_byte_offset = 0;
	reset_return = 0;
	reset_calls = 0;
	allocation_calls = 0;
	free_calls = 0;
	tcm->firmware_mode = 0x0b;
	tcm->command_delay_ms = 77;
	image->flags = 1;
	image->primary.data_length = 10;
	image->secondary.data_length = 20;
}

static u32 update_marker(const struct tcm_dev *tcm)
{
	return *(const u32 *)(const void *)(tcm->reserved_0380 + 8);
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
	struct syna_tcm_fw_image image;

	reset_fixture(&tcm, &image);
	expect_true(syna_tcm_do_fw_update_ex(NULL, &image, 1, 0, 0, 0, 1) == -241,
			    "null tcm returns -241");
	expect_true(syna_tcm_do_fw_update_ex(&tcm, NULL, 1, 0, 0, 0, 1) == -241,
			    "null image returns -241");

	reset_fixture(&tcm, &image);
	image.flags = 0;
	expect_true(syna_tcm_do_fw_update_ex(&tcm, &image, 1, 0, 0, 0, 1) == -241,
			    "empty image returns -241");
}

static void test_bootloader_update_and_cleanup(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_fw_image image;

	reset_fixture(&tcm, &image);
	expect_true(syna_tcm_do_fw_update_ex(&tcm, &image, 1, 4, 5, 12, 1) == 0,
			    "bootloader update succeeds");
	expect_true(setup_calls == 1 && last_timeout == 77 && last_mode_delay == 12 &&
				update_calls == 2 && reset_calls == 1 && free_calls == 1 &&
				last_data_offset == 4 && last_data_length == 5 &&
				last_flash_flags == 9 && last_byte_offset == 30 &&
				update_partition[0] == &image.primary &&
				update_partition[1] == &image.secondary &&
				update_optimize[0] == 1 && update_optimize[1] == 0 &&
				update_marker(&tcm) == 0,
			    "bootloader flags, update order, reset, and cleanup are correct");

	reset_fixture(&tcm, &image);
	setup_return = -17;
	expect_true(syna_tcm_do_fw_update_ex(&tcm, &image, 1, 0, 0, 12, 1) == -17 &&
				update_calls == 0 && reset_calls == 0 && update_marker(&tcm) == 0,
			    "setup failure skips updates and reset");

	reset_fixture(&tcm, &image);
	update_return_primary = -19;
	expect_true(syna_tcm_do_fw_update_ex(&tcm, &image, 1, 0, 0, 0, 1) == -19 &&
				update_calls == 1 && reset_calls == 0 && update_marker(&tcm) == 0,
			    "primary update failure skips secondary and reset");
}

static void test_modes_and_reset_error(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_fw_image image;

	reset_fixture(&tcm, &image);
	tcm.firmware_mode = 0x0c;
	expect_true(syna_tcm_do_fw_update_ex(&tcm, &image, 0, 0, 0, 3, 0) == 0 &&
				update_calls == 0 && reset_calls == 1,
			    "non-boot mode skips block updates and resets");

	reset_fixture(&tcm, &image);
	tcm.firmware_mode = 1;
	tcm.application_info.status[0] = 1;
	reset_return = -23;
	expect_true(syna_tcm_do_fw_update_ex(&tcm, &image, 0, 0, 0, 3, 0) == -23 &&
				update_calls == 0 && reset_calls == 1 && update_marker(&tcm) == 0,
			    "application-mode reset error is propagated");
}

int main(void)
{
	test_validation();
	test_bootloader_update_and_cleanup();
	test_modes_and_reset_error();
	puts("PASS: syna_tcm_do_fw_update_ex host contract");
	return 0;
}
