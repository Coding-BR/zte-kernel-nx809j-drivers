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
#define __break(value) ((void)(value))

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static int identify_return;
static int switch_return;
static int boot_info_return;
static int identify_calls;
static int switch_calls;
static int boot_info_calls;
static unsigned int identify_timeout;
static unsigned int switch_delay;
static u8 identify_mode;
static struct tcm_boot_info fixture_boot_info;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

int syna_tcm_identify(struct tcm_dev *tcm,
			      struct tcm_identification_info *identify_info,
			      unsigned int timeout_ms)
{
	(void)tcm;
	++identify_calls;
	identify_timeout = timeout_ms;
	if (identify_return < 0)
		return identify_return;
	identify_info->mode = identify_mode;
	return 0;
}

int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode,
				    unsigned int delay_ms)
{
	++switch_calls;
	switch_delay = delay_ms;
	if (switch_return < 0)
		return switch_return;
	if (mode == 0x0b)
		tcm->firmware_mode = mode;
	return 0;
}

int syna_tcm_get_boot_info(struct tcm_dev *tcm,
				   struct tcm_boot_info *boot_info,
				   unsigned int timeout_ms)
{
	(void)tcm;
	(void)timeout_ms;
	++boot_info_calls;
	if (boot_info_return < 0)
		return boot_info_return;
	*boot_info = fixture_boot_info;
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_set_up_flash_access.c"

static void reset_mocks(void)
{
	identify_return = 0;
	switch_return = 0;
	boot_info_return = 0;
	identify_calls = 0;
	switch_calls = 0;
	boot_info_calls = 0;
	identify_timeout = 0;
	switch_delay = 0;
	identify_mode = 0;
	memset(&fixture_boot_info, 0, sizeof(fixture_boot_info));
}

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static void test_invalid_context(void)
{
	struct tcm_dev tcm = {};

	reset_mocks();
	expect_true(syna_tcm_set_up_flash_access(&tcm, NULL, 7, 9) == -241,
			"null context returns -241");
	expect_true(identify_calls == 0, "null context skips identify");
}

static void test_identify_failure(void)
{
	struct tcm_dev tcm = {};
	struct syna_tcm_flash_access_context access = {};

	reset_mocks();
	identify_return = -22;
	expect_true(syna_tcm_set_up_flash_access(&tcm, &access, 7, 9) == -22,
			"identify failure is propagated");
	expect_true(identify_calls == 1 && switch_calls == 0 &&
			    boot_info_calls == 0,
			    "identify failure stops the state machine");
}

static void test_application_setup(void)
{
	struct tcm_dev tcm = {};
	struct syna_tcm_flash_access_context access = {};

	reset_mocks();
	tcm.firmware_mode = 0x01;
	tcm.max_read_size = 16;
	tcm.identification_info.part_number[2] = ':';
	tcm.identification_info.part_number[5] = 0x20;
	identify_mode = 0x01;
	fixture_boot_info.version = 0x03;
	fixture_boot_info.write_block_size_words = 16;
	fixture_boot_info.erase_page_size_words[0] = 2;
	fixture_boot_info.max_write_payload_size[0] = 0x34;
	fixture_boot_info.max_write_payload_size[1] = 0x12;
	fixture_boot_info.v3_page_size_words = 3;
	expect_true(syna_tcm_set_up_flash_access(&tcm, &access, 43, 9) == 0,
			"application setup succeeds");
	expect_true(identify_calls == 1 && identify_timeout == 43 &&
			    switch_calls == 1 && switch_delay == 9 &&
			    boot_info_calls == 1,
			    "application setup calls identify, switch and boot info");
	expect_true(access.boot_info == &tcm.boot_info &&
			    access.write_block_size_bytes == 16 &&
			    access.erase_page_size_bytes == 4 &&
			    access.max_write_payload_size == 0x1234 &&
			    access.v3_page_size_bytes == 12 &&
			    access.setup_release_required == 1,
			    "boot geometry and setup flag are reconstructed");
}

static void test_bootloader_and_errors(void)
{
	struct tcm_dev tcm = {};
	struct syna_tcm_flash_access_context access = {};

	reset_mocks();
	tcm.firmware_mode = 0x0b;
	identify_mode = 0x02;
	fixture_boot_info.version = 0x02;
	fixture_boot_info.write_block_size_words = 8;
	fixture_boot_info.erase_page_size_words[0] = 1;
	expect_true(syna_tcm_set_up_flash_access(&tcm, &access, 4, 5) == 0,
			"bootloader setup succeeds without switch");
	expect_true(switch_calls == 0 && boot_info_calls == 1,
			"bootloader mode skips switch");

	reset_mocks();
	tcm.firmware_mode = 0x01;
	identify_mode = 0x01;
	fixture_boot_info.version = 1;
	switch_return = -19;
	expect_true(syna_tcm_set_up_flash_access(&tcm, &access, 4, 5) == -19,
			"switch failure is propagated");

	reset_mocks();
	tcm.firmware_mode = 0x0b;
	identify_mode = 2;
	fixture_boot_info.version = 2;
	fixture_boot_info.write_block_size_words = 8;
	fixture_boot_info.erase_page_size_words[0] = 1;
	boot_info_return = -5;
	expect_true(syna_tcm_set_up_flash_access(&tcm, &access, 4, 5) == -5,
			"boot info failure is propagated");

	reset_mocks();
	tcm.firmware_mode = 0x0b;
	identify_mode = 2;
	fixture_boot_info.version = 2;
	fixture_boot_info.erase_page_size_words[0] = 1;
	expect_true(syna_tcm_set_up_flash_access(&tcm, &access, 4, 5) == -241,
			"zero write block size is rejected");

	reset_mocks();
	tcm.firmware_mode = 0x0b;
	identify_mode = 2;
	fixture_boot_info.version = 2;
	fixture_boot_info.write_block_size_words = 8;
	expect_true(syna_tcm_set_up_flash_access(&tcm, &access, 4, 5) == -241,
			"zero erase page size is rejected");
}

int main(void)
{
	test_invalid_context();
	test_identify_failure();
	test_application_setup();
	test_bootloader_and_errors();
	puts("PASS: syna_tcm_set_up_flash_access host contract");
	return 0;
}
