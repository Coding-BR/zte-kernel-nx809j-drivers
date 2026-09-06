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
static int mutex_calls;
static bool device_available;
static u32 fixture_erase_page_size;
static u32 fixture_page_size;
static u8 fixture_boot_version;
static u8 fixture_boot_unit_count;
static u32 setup_timeout;
static u32 setup_mode_delay;
static u8 write_command;
static u32 write_length;
static u32 write_delay;
static u8 write_snapshot[4];
static void *allocated_access;
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
	fixture_boot_info.version = fixture_boot_version;
	fixture_boot_info.v3_page_size_words = fixture_boot_unit_count;
	access->boot_info = &fixture_boot_info;
	access->erase_page_size_bytes = fixture_erase_page_size;
	access->v3_page_size_bytes = fixture_page_size;
	allocated_access = malloc(16);
	access->managed_allocation = allocated_access;
	return setup_return;
}

int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode, u32 delay_ms)
{
	(void)tcm;
	(void)mode;
	(void)delay_ms;
	++switch_calls;
	return 0;
}

static int write_message(struct tcm_dev *tcm, u8 command, u8 *payload,
				 u32 length, u8 *response_code, u32 delay_ms)
{
	(void)tcm;
	(void)response_code;
	write_command = command;
	write_length = length;
	write_delay = delay_ms;
	memset(write_snapshot, 0, sizeof(write_snapshot));
	if (payload && length <= sizeof(write_snapshot))
		memcpy(write_snapshot, payload, length);
	++write_calls;
	return write_return;
}

struct device *syna_request_managed_device(void)
{
	++request_calls;
	return device_available ? &managed_device : NULL;
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

#include "../../../reconstructed/zte_tpd/syna_tcm_erase_mtp_data.c"

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
	memset(&fixture_boot_info, 0, sizeof(fixture_boot_info));
	setup_return = 0;
	write_return = 0;
	setup_calls = 0;
	write_calls = 0;
	switch_calls = 0;
	request_calls = 0;
	free_calls = 0;
	mutex_calls = 0;
	device_available = true;
	fixture_erase_page_size = 4;
	fixture_page_size = 16;
	fixture_boot_version = 3;
	fixture_boot_unit_count = 3;
	setup_timeout = 0;
	setup_mode_delay = 0;
	write_command = 0;
	write_length = 0;
	write_delay = 0;
	memset(write_snapshot, 0, sizeof(write_snapshot));
	tcm->firmware_mode = 0x0b;
	tcm->command_delay_ms = 55;
	tcm->timing_01e8 = 12;
	tcm->write_message = write_message;
}

static void test_invalid_and_setup_failures(void)
{
	struct tcm_dev tcm;

	reset_fixture(&tcm);
	expect_true(syna_tcm_erase_mtp_data(NULL, 1) == -241,
			"null tcm rejected");
	expect_true(setup_calls == 0, "invalid input does not set up flash");

	reset_fixture(&tcm);
	setup_return = -5;
	expect_true(syna_tcm_erase_mtp_data(&tcm, 1) == -5,
			"setup error propagates");
	expect_true(setup_timeout == 55 && setup_mode_delay == 12 &&
				write_calls == 0 && switch_calls == 1 &&
				request_calls == 1 && free_calls == 1,
				"setup failure cleanup is complete");
}

static void test_version_and_small_command(void)
{
	struct tcm_dev tcm;

	reset_fixture(&tcm);
	fixture_boot_version = 2;
	expect_true(syna_tcm_erase_mtp_data(&tcm, 0) == 0,
			"old boot version preserves stock result");
	expect_true(write_calls == 0 && switch_calls == 1 &&
				request_calls == 1 && free_calls == 1,
				"old boot version skips erase command");

	reset_fixture(&tcm);
	expect_true(syna_tcm_erase_mtp_data(&tcm, 1) == 0,
			"small erase command succeeds");
	expect_true(write_command == 0x11 && write_length == 2 &&
				write_snapshot[0] == 4 && write_snapshot[1] == 3 &&
				write_delay == 165 && switch_calls == 1 &&
				request_calls == 1 && free_calls == 1,
				"small command geometry and cleanup match stock");
}

static void test_large_command_and_transport_delay(void)
{
	struct tcm_dev tcm;
	struct tcm_transport_overlay transport = { 0 };

	reset_fixture(&tcm);
	fixture_erase_page_size = 1;
	fixture_page_size = 1024;
	fixture_boot_unit_count = 255;
	tcm.transport = &transport;
	expect_true(syna_tcm_erase_mtp_data(&tcm, 1) == 0,
			"large erase command succeeds");
	expect_true(write_length == 4 && write_snapshot[0] == 0 &&
				write_snapshot[1] == 4 && write_snapshot[2] == 255 &&
				write_snapshot[3] == 0 && write_delay == 14025,
				"large command uses four-byte counts");

	reset_fixture(&tcm);
	fixture_page_size = 0;
	transport.flags = 1;
	tcm.transport = &transport;
	expect_true(syna_tcm_erase_mtp_data(&tcm, 0) == 0,
			"transport fast path succeeds");
	expect_true(write_delay == 0, "transport flag suppresses fallback delay");
}

static void test_write_and_device_failures(void)
{
	struct tcm_dev tcm;

	reset_fixture(&tcm);
	write_return = -19;
	expect_true(syna_tcm_erase_mtp_data(&tcm, 1) == -19,
			"write error propagates");
	expect_true(request_calls == 1 && free_calls == 1,
			"write error cleanup is complete");

	reset_fixture(&tcm);
	tcm.write_message = NULL;
	expect_true(syna_tcm_erase_mtp_data(&tcm, 1) == -241,
			"missing write callback is rejected");
	expect_true(write_calls == 0 && request_calls == 1 && free_calls == 1,
			"missing callback cleanup is complete");

	reset_fixture(&tcm);
	device_available = false;
	expect_true(syna_tcm_erase_mtp_data(&tcm, 1) == 0,
			"managed device absence preserves operation result");
	expect_true(request_calls == 1 && free_calls == 0,
			"managed device absence does not crash cleanup");
}

int main(void)
{
	test_invalid_and_setup_failures();
	test_version_and_small_command();
	test_large_command_and_transport_delay();
	test_write_and_device_failures();
	puts("PASS: syna_tcm_erase_mtp_data host contract");
	return 0;
}
