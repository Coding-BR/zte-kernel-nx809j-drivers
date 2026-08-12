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

struct device {
	int marker;
};

enum flash_area {
	FLASH_AREA_UNKNOWN = 0,
};

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static int setup_return;
static int read_return;
static int check_return;
static int write_return;
static int setup_calls;
static int read_calls;
static int check_calls;
static int write_calls;
static int switch_calls;
static int mutex_calls;
static int managed_device_calls;
static int devm_kfree_calls;
static u32 setup_timeout;
static u32 setup_mode_delay;
static u32 boot_length;
static int write_data_size;
static u8 *write_data;
static u32 write_data_length;
static u32 write_delay;
static u32 expected_partition_id;
static u8 boot_status;
static struct device managed_device;
static bool provide_managed_device;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_update_lockdown_config.c"

static void put_le32(u8 *bytes, u32 value)
{
	bytes[0] = (u8)value;
	bytes[1] = (u8)(value >> 8);
	bytes[2] = (u8)(value >> 16);
	bytes[3] = (u8)(value >> 24);
}

static void put_ptr(u8 *bytes, u32 offset, const void *value)
{
	memcpy(bytes + offset, &value, sizeof(value));
}

static u32 get_le32(const u8 *bytes)
{
	return (u32)bytes[0] | ((u32)bytes[1] << 8) |
		((u32)bytes[2] << 16) | ((u32)bytes[3] << 24);
}

int syna_tcm_set_up_flash_access(struct tcm_dev *tcm,
					struct syna_tcm_flash_access_context *access,
					u32 timeout_ms, u32 mode_delay_ms)
{
	(void)tcm;
	++setup_calls;
	setup_timeout = timeout_ms;
	setup_mode_delay = mode_delay_ms;
	/* Target 305 uses the stock scratch word at access +0x38. */
	put_le32((u8 *)access + 0x38, 32);
	access->managed_allocation = malloc(4);
	access->release_required = 0;
	return setup_return;
}

int syna_tcm_read_flash_boot_config(struct tcm_dev *tcm,
					struct syna_tcm_flash_access_context *access,
					struct tcm_buffer *buffer, int delay_ms)
{
	(void)tcm;
	(void)access;
	(void)delay_ms;
	++read_calls;
	if (read_return < 0)
		return read_return;
	buffer->data = malloc(16);
	buffer->data_length = boot_length;
	memset(buffer->data, 0, 16);
	if (boot_length >= 7)
		buffer->data[boot_length - 7] = boot_status;
	return 0;
}

int syna_tcm_check_flash_block(struct tcm_dev *tcm,
				       struct syna_tcm_flash_access_context *access,
				       void *partition)
{
	(void)tcm;
	(void)access;
	++check_calls;
	expected_partition_id = ((u8 *)partition)[0x18];
	return check_return;
}

int syna_tcm_write_flash(struct tcm_dev *tcm,
				 struct syna_tcm_flash_access_context *access,
				 int data_size, u8 *data, u32 data_length,
				 u32 delay_ms)
{
	(void)tcm;
	(void)access;
	++write_calls;
	write_data_size = data_size;
	write_data = data;
	write_data_length = data_length;
	write_delay = delay_ms;
	return write_return;
}

int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode, u32 delay_ms)
{
	(void)tcm;
	++switch_calls;
	if (mode != 1 || delay_ms != 66)
		exit(1);
	return 0;
}

char *syna_tcm_get_partition_id_string(enum flash_area partition_id)
{
	expected_partition_id = partition_id;
	return (char *)"lockdown";
}

struct device *syna_request_managed_device(void)
{
	++managed_device_calls;
	return provide_managed_device ? &managed_device : NULL;
}

void mutex_init(void *lock)
{
	++mutex_calls;
	memset(lock, 0, 0x30);
}

void devm_kfree(struct device *device, void *memory)
{
	if (device != &managed_device || !memory)
		exit(1);
	++devm_kfree_calls;
	free(memory);
}

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static void reset_fixture(struct tcm_dev *tcm, u8 *config,
				  u8 *lockdown_data, size_t config_size)
{
	memset(tcm, 0, sizeof(*tcm));
	memset(config, 0, config_size);
	memset(lockdown_data, 0, 32);
	setup_return = 0;
	read_return = 0;
	check_return = 1;
	write_return = 0;
	setup_calls = 0;
	read_calls = 0;
	check_calls = 0;
	write_calls = 0;
	switch_calls = 0;
	mutex_calls = 0;
	managed_device_calls = 0;
	devm_kfree_calls = 0;
	setup_timeout = 0;
	setup_mode_delay = 0;
	boot_length = 16;
	write_data_size = 0;
	write_data = NULL;
	write_data_length = 0;
	write_delay = 0;
	expected_partition_id = 0;
	boot_status = 0;
	provide_managed_device = true;
	tcm->command_delay_ms = 55;
	tcm->timing_01e8 = 66;
	config[0] = 1;
	config[0x270] = 1;
	put_ptr(config, 0x278, lockdown_data);
	put_le32(config + 0x280, 16);
	config[0x288] = 7;
	for (u32 i = 0; i < 16; ++i)
		lockdown_data[i] = (u8)(0xa0 + i);
}

static void test_input_validation(void)
{
	struct tcm_dev tcm;
	u8 config[0x300];
	u8 lockdown_data[32];

	reset_fixture(&tcm, config, lockdown_data, sizeof(config));
	expect_true(syna_tcm_update_lockdown_config(NULL, config, 1) == -241,
			"null tcm returns -241");
	expect_true(syna_tcm_update_lockdown_config(&tcm, NULL, 1) == -241,
			"null config returns -241");
	put_le32(config, 0);
	expect_true(syna_tcm_update_lockdown_config(&tcm, config, 1) == -241,
			"zero config returns -241");
	put_le32(config, 1);
	config[0x270] = 0;
	expect_true(syna_tcm_update_lockdown_config(&tcm, config, 1) == -241,
			"disabled partition returns -241");
	expect_true(expected_partition_id == 7 && setup_calls == 0,
			"invalid partition identifies and does not set up flash");

		config[0x270] = 1;
	put_ptr(config, 0x278, NULL);
	expect_true(syna_tcm_update_lockdown_config(&tcm, config, 1) == -241,
			"null partition data returns -241");
		put_ptr(config, 0x278, lockdown_data);
		put_le32(config + 0x280, 7);
		expect_true(syna_tcm_update_lockdown_config(&tcm, config, 1) == -241,
				"short partition returns -241");
}

static void test_setup_and_read_failures(void)
{
	struct tcm_dev tcm;
	u8 config[0x300];
	u8 lockdown_data[32];

	reset_fixture(&tcm, config, lockdown_data, sizeof(config));
	setup_return = -19;
	expect_true(syna_tcm_update_lockdown_config(&tcm, config, 77) == -19,
			"setup error propagates");
	expect_true(setup_calls == 1 && read_calls == 0 &&
			*(u32 *)((u8 *)&tcm + 0x388) == 0 && devm_kfree_calls == 1,
			"setup error clears state and releases access allocation");

		reset_fixture(&tcm, config, lockdown_data, sizeof(config));
		read_return = -5;
		expect_true(syna_tcm_update_lockdown_config(&tcm, config, 77) == -5,
				"read error propagates");
		expect_true(setup_calls == 1 && read_calls == 1 && check_calls == 0 &&
				*(u32 *)((u8 *)&tcm + 0x388) == 0 && devm_kfree_calls == 1,
				"read error cleans up access allocation");
}

static void test_boot_status_and_short_buffer(void)
{
	struct tcm_dev tcm;
	u8 config[0x300];
	u8 lockdown_data[32];

	reset_fixture(&tcm, config, lockdown_data, sizeof(config));
	boot_status = 0x80;
	expect_true(syna_tcm_update_lockdown_config(&tcm, config, 0) == 0,
			"negative boot status returns success");
	expect_true(check_calls == 0 && write_calls == 0 && devm_kfree_calls == 2,
			"negative boot status skips check and write");

		reset_fixture(&tcm, config, lockdown_data, sizeof(config));
		boot_length = 6;
		expect_true(syna_tcm_update_lockdown_config(&tcm, config, 0) == -22,
				"short boot buffer is rejected before status indexing");
		expect_true(check_calls == 0 && write_calls == 0 && devm_kfree_calls == 2,
				"short boot buffer skips check and write");
}

static void test_check_and_write_paths(void)
{
	struct tcm_dev tcm;
	u8 config[0x300];
	u8 lockdown_data[32];

	reset_fixture(&tcm, config, lockdown_data, sizeof(config));
	check_return = 0;
	expect_true(syna_tcm_update_lockdown_config(&tcm, config, 77) == 0,
			"check zero returns zero");
	expect_true(check_calls == 1 && write_calls == 0 && switch_calls == 0 &&
			setup_timeout == 55 && setup_mode_delay == 66 &&
			devm_kfree_calls == 2,
			"check zero preserves timing and cleanup");

		reset_fixture(&tcm, config, lockdown_data, sizeof(config));
		*(u8 *)((u8 *)&tcm + 9) = 0x0b;
		expect_true(syna_tcm_update_lockdown_config(&tcm, config, 77) == 8,
				"write success returns eight");
		expect_true(mutex_calls == 2 && setup_timeout == 55 &&
				setup_mode_delay == 66 && check_calls == 1 && write_calls == 1 &&
				write_data_size == 40 && write_data == lockdown_data + 8 &&
				write_data_length == 8 && write_delay == 77 && switch_calls == 1 &&
				devm_kfree_calls == 2 && *(u32 *)((u8 *)&tcm + 0x388) == 0,
				"write path forwards stock offsets and cleans up");
		expect_true(get_le32((u8 *)((u8 *)&tcm + 0x388)) == 0,
				"in-progress flag is cleared");

		reset_fixture(&tcm, config, lockdown_data, sizeof(config));
		write_return = -33;
		expect_true(syna_tcm_update_lockdown_config(&tcm, config, 77) == -33,
				"write error propagates");
		expect_true(devm_kfree_calls == 2 &&
				*(u32 *)((u8 *)&tcm + 0x388) == 0,
				"write error cleans up and clears state");
}

int main(void)
{
	test_input_validation();
	test_setup_and_read_failures();
	test_boot_status_and_short_buffer();
	test_check_and_write_paths();
	puts("PASS: syna_tcm_update_lockdown_config host contract");
	return 0;
}
