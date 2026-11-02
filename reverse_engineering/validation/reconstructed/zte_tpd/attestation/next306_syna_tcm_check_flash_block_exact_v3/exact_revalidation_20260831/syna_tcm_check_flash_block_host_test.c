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

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_check_flash_block.c"

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static void put_le16(u8 *bytes, u16 value)
{
	bytes[0] = (u8)value;
	bytes[1] = (u8)(value >> 8);
}

static void reset_fixture(struct tcm_dev *tcm,
				  struct syna_tcm_flash_access_context *access,
				  struct syna_tcm_fw_partition *partition,
				  u8 *boot_bytes)
{
	memset(tcm, 0, sizeof(*tcm));
	memset(access, 0, sizeof(*access));
	memset(partition, 0, sizeof(*partition));
	memset(boot_bytes, 0, 0x40);
	access->write_block_size_bytes = 4;
	access->boot_info = (struct tcm_boot_info *)(void *)boot_bytes;
	partition->partition_id = 1;
}

static void test_validation_and_simple_partitions(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct syna_tcm_fw_partition partition;
	u8 boot_bytes[0x40];

	reset_fixture(&tcm, &access, &partition, boot_bytes);
	expect_true(syna_tcm_check_flash_block(&tcm, NULL, &partition) == -241,
			"null access returns -241");
	expect_true(syna_tcm_check_flash_block(&tcm, &access, NULL) == -241,
			"null partition returns -241");

	partition.partition_id = 1;
	partition.data_size = 0;
	expect_true(syna_tcm_check_flash_block(NULL, &access, &partition) == -241,
			"empty primary partition returns -241 without tcm");
	partition.data_size = 24;
	expect_true(syna_tcm_check_flash_block(NULL, &access, &partition) == 24,
			"nonempty primary partition returns data size");

	partition.partition_id = 7;
	partition.data_length = 123;
	expect_true(syna_tcm_check_flash_block(NULL, &access, &partition) == 123,
			"direct partition returns data length");

	partition.partition_id = 2;
	expect_true(syna_tcm_check_flash_block(NULL, &access, &partition) == 0,
			"unhandled partition class returns zero");
}

static void test_app_config_geometry(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct syna_tcm_fw_partition partition;
	u8 boot_bytes[0x40];

	reset_fixture(&tcm, &access, &partition, boot_bytes);
	partition.partition_id = 3;
	partition.data_length = 10;
	put_le16(tcm.application_info.app_config_start_write_block, 3);
	put_le16(tcm.application_info.app_config_size, 10);
	partition.data_size = 12;
	expect_true(syna_tcm_check_flash_block(&tcm, &access, &partition) == 10,
			"matching app config geometry returns data length");

	partition.data_length = 9;
	expect_true(syna_tcm_check_flash_block(&tcm, &access, &partition) == 9,
			"app config length mismatch preserves data length");

	partition.data_length = 10;
	partition.data_size = 8;
	expect_true(syna_tcm_check_flash_block(&tcm, &access, &partition) == -241,
			"app config size mismatch returns -241");

	put_le16(tcm.application_info.app_config_start_write_block, 0);
	put_le16(tcm.application_info.app_config_size, 0);
	partition.data_size = 99;
	expect_true(syna_tcm_check_flash_block(&tcm, &access, &partition) == 10,
			"zero app geometry returns data length");

	partition.data_length = 0;
	expect_true(syna_tcm_check_flash_block(&tcm, &access, &partition) == 0,
			"empty app config returns zero");
}

static void test_tool_boot_config_geometry(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct syna_tcm_fw_partition partition;
	u8 boot_bytes[0x40];

	reset_fixture(&tcm, &access, &partition, boot_bytes);
	partition.partition_id = 19;
	partition.data_length = 8;
	boot_bytes[0] = 1;
	put_le16(boot_bytes + 0x0c, 5);
	partition.data_size = 20;
	expect_true(syna_tcm_check_flash_block(&tcm, &access, &partition) == 8,
			"version one tool boot geometry returns data length");

	boot_bytes[0] = 3;
	put_le16(boot_bytes + 0x10, 5);
	expect_true(syna_tcm_check_flash_block(&tcm, &access, &partition) == 8,
			"version three tool boot geometry returns data length");

	boot_bytes[0] = 2;
	expect_true(syna_tcm_check_flash_block(&tcm, &access, &partition) == -241,
			"unsupported boot version returns -241");

	boot_bytes[0] = 1;
	partition.data_size = 24;
	expect_true(syna_tcm_check_flash_block(&tcm, &access, &partition) == -241,
			"tool boot size mismatch returns -241");

	partition.data_size = 20;
	partition.data_length = 7;
	expect_true(syna_tcm_check_flash_block(&tcm, &access, &partition) == -241,
			"short tool boot partition returns -241");

	partition.data_length = 8;
	access.boot_info = NULL;
	expect_true(syna_tcm_check_flash_block(&tcm, &access, &partition) == -241,
			"missing boot info returns -241");
}

int main(void)
{
	test_validation_and_simple_partitions();
	test_app_config_geometry();
	test_tool_boot_config_geometry();
	puts("PASS: syna_tcm_check_flash_block host contract");
	return 0;
}
