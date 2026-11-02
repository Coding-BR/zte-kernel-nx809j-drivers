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

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

struct syna_tcm_fw_partition;

static struct device managed_device = { .marker = 1 };
static bool managed_device_available = true;
static bool allocation_failure;
static int allocation_calls;
static int free_calls;
static int mutex_lock_calls;
static int mutex_unlock_calls;
static int check_return = 1;
static int write_flash_return;
static int write_flash_calls;
static int write_message_return;
static int write_message_calls;
static u8 last_command;
static u8 last_payload[64];
static u32 last_payload_length;
static u32 last_delay;
static int erase_message_calls;
static int optimized_message_calls;
static u8 optimized_payloads[8][64];
static u32 optimized_lengths[8];
static u32 optimized_delays[8];

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

struct device *syna_request_managed_device(void)
{
	return managed_device_available ? &managed_device : NULL;
}

void mutex_lock(void *lock)
{
	(void)lock;
	++mutex_lock_calls;
}

void mutex_unlock(void *lock)
{
	(void)lock;
	++mutex_unlock_calls;
}

void *devm_kmalloc(struct device *device, size_t size, unsigned int flags)
{
	(void)device;
	(void)flags;
	++allocation_calls;
	if (allocation_failure || !size)
		return NULL;
	return malloc(size);
}

void devm_kfree(struct device *device, void *memory)
{
	(void)device;
	++free_calls;
	free(memory);
}

int syna_tcm_check_flash_block(struct tcm_dev *tcm,
				       struct syna_tcm_flash_access_context *access,
				       struct syna_tcm_fw_partition *partition)
{
	(void)tcm;
	(void)access;
	(void)partition;
	return check_return;
}

const char *syna_tcm_get_partition_id_string(u8 partition_id)
{
	(void)partition_id;
	return "primary";
}

int syna_tcm_write_flash(struct tcm_dev *tcm,
				 struct syna_tcm_flash_access_context *access,
				 int data_size, u8 *data, u32 data_length, u32 delay_ms)
{
	(void)tcm;
	(void)access;
	(void)data_size;
	(void)data;
	(void)data_length;
	(void)delay_ms;
	++write_flash_calls;
	return write_flash_return;
}

static int write_message(struct tcm_dev *tcm, u8 command, u8 *payload,
				 u32 length, u8 *response_code, u32 delay_ms)
{
	(void)tcm;
	(void)response_code;
	last_command = command;
	last_payload_length = length;
	last_delay = delay_ms;
	if (length <= sizeof(last_payload))
		memcpy(last_payload, payload, length);
	if (command == 0x11) {
		++erase_message_calls;
	} else if (command == 0xfe && optimized_message_calls < 8) {
		memcpy(optimized_payloads[optimized_message_calls], payload, length);
		optimized_lengths[optimized_message_calls] = length;
		optimized_delays[optimized_message_calls] = delay_ms;
		++optimized_message_calls;
	}
	++write_message_calls;
	return write_message_return;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_update_flash_block.c"

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static void reset_fixture(struct tcm_dev *tcm,
				  struct syna_tcm_flash_access_context *access,
				  struct tcm_transport_overlay *transport)
{
	memset(tcm, 0, sizeof(*tcm));
	memset(access, 0, sizeof(*access));
	memset(transport, 0, sizeof(*transport));
	managed_device_available = true;
	allocation_failure = false;
	allocation_calls = 0;
	free_calls = 0;
	mutex_lock_calls = 0;
	mutex_unlock_calls = 0;
	check_return = 1;
	write_flash_return = 0;
	write_flash_calls = 0;
	write_message_return = 0;
	write_message_calls = 0;
	last_command = 0;
	last_payload_length = 0;
	last_delay = 0;
	erase_message_calls = 0;
	optimized_message_calls = 0;
	memset(last_payload, 0, sizeof(last_payload));
	memset(optimized_payloads, 0, sizeof(optimized_payloads));
	memset(optimized_lengths, 0, sizeof(optimized_lengths));
	memset(optimized_delays, 0, sizeof(optimized_delays));
	tcm->firmware_mode = 0x0b;
	tcm->transport = transport;
	tcm->command_delay_ms = 77;
	tcm->write_message = write_message;
	access->erase_page_size_bytes = 8;
	access->write_block_size_bytes = 2;
	access->max_write_payload_size = 4;
	access->setup_release_required = 1;
}

static void cleanup_access(struct syna_tcm_flash_access_context *access)
{
	if (access->managed_allocation) {
		free(access->managed_allocation);
		access->managed_allocation = NULL;
	}
}

static struct syna_tcm_fw_partition make_partition(u8 *data,
						   u32 data_length, u32 data_size)
{
	struct syna_tcm_fw_partition partition = {};

	partition.data = data;
	partition.data_length = data_length;
	partition.data_size = data_size;
	partition.partition_id = 3;
	return partition;
}

static void test_validation_and_check_paths(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct tcm_transport_overlay transport;
	struct syna_tcm_fw_partition partition;

	reset_fixture(&tcm, &access, &transport);
	partition = make_partition(NULL, 0, 0);
	expect_true(syna_tcm_update_flash_block(NULL, &access, &partition,
						       3, 9, 0) == -241,
				    "null tcm returns -241");
	expect_true(syna_tcm_update_flash_block(&tcm, NULL, &partition,
						       3, 9, 0) == -241,
				    "null access returns -241");
	expect_true(syna_tcm_update_flash_block(&tcm, &access, NULL,
						       3, 9, 0) == -241,
				    "null partition returns -241");

	check_return = -19;
	expect_true(syna_tcm_update_flash_block(&tcm, &access, &partition,
						       3, 9, 0) == -241,
				    "negative check keeps stock error code");
	check_return = 0;
	expect_true(syna_tcm_update_flash_block(&tcm, &access, &partition,
						       3, 9, 0) == 0,
				    "zero check returns success without writes");
}

static void test_erase_and_normal_write(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct tcm_transport_overlay transport;
	u8 data[8] = { 1, 2, 3, 4, 5, 6, 7, 8 };
	struct syna_tcm_fw_partition partition;

	reset_fixture(&tcm, &access, &transport);
	partition = make_partition(data, sizeof(data), sizeof(data));
	expect_true(syna_tcm_update_flash_block(&tcm, &access, &partition,
						       3, 9, 0) == 0,
				    "erase and normal write succeed");
	expect_true(erase_message_calls == 1 && last_command == 0x11 &&
				    last_payload_length == 2 && last_payload[0] == 1 &&
				    last_payload[1] == 1 && last_delay == 3,
				    "erase command geometry and delay are correct");
	expect_true(write_flash_calls == 1 && write_message_calls == 1,
				    "normal write follows erase");

	reset_fixture(&tcm, &access, &transport);
	partition = make_partition(data, sizeof(data), 7);
	expect_true(syna_tcm_update_flash_block(&tcm, &access, &partition,
						       3, 9, 0) == -241,
				    "invalid erase geometry returns -241");
	expect_true(write_message_calls == 0 && write_flash_calls == 0,
				    "invalid erase geometry performs no IO");

	reset_fixture(&tcm, &access, &transport);
	partition = make_partition(data, 0, 0);
	expect_true(syna_tcm_update_flash_block(&tcm, &access, &partition,
						       3, 9, 0) == 0,
				    "empty partition returns success");
	expect_true(write_message_calls == 0 && write_flash_calls == 0,
				    "empty partition performs no IO");

	reset_fixture(&tcm, &access, &transport);
	partition = make_partition(data, sizeof(data), sizeof(data));
	write_flash_return = -23;
	expect_true(syna_tcm_update_flash_block(&tcm, &access, &partition,
						       3, 9, 0) == -23,
				    "normal write error is propagated");
}

static void test_optimized_write(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct tcm_transport_overlay transport;
	u8 data[10] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
	struct syna_tcm_fw_partition partition;

	reset_fixture(&tcm, &access, &transport);
	partition = make_partition(data, sizeof(data), 4);
	expect_true(syna_tcm_update_flash_block(&tcm, &access, &partition,
						       3, 1000, 1) == 0,
				    "optimized write succeeds");
	expect_true(mutex_lock_calls == 1 && mutex_unlock_calls == 1 &&
				    access.release_required == 0 &&
				    optimized_message_calls == 3,
				    "optimized lock lifecycle and chunk count are correct");
	expect_true(optimized_lengths[0] == 10 && optimized_lengths[1] == 10 &&
				    optimized_lengths[2] == 8 && optimized_delays[0] == 2 &&
				    optimized_delays[2] == 1,
				    "optimized lengths and delays are correct");
	expect_true(optimized_payloads[0][0] == 1 &&
				    optimized_payloads[0][2] == 2 &&
				    optimized_payloads[0][4] == 7 &&
				    optimized_payloads[1][0] == 0 &&
				    optimized_payloads[2][2] == 6,
				    "optimized headers carry first flag, index and total");
	expect_true(memcmp(optimized_payloads[0] + 6, data, 4) == 0 &&
				    memcmp(optimized_payloads[1] + 6, data + 4, 4) == 0 &&
				    memcmp(optimized_payloads[2] + 6, data + 8, 2) == 0,
				    "optimized payload bytes are copied exactly");
	cleanup_access(&access);
}

static void test_optimized_errors(void)
{
	struct tcm_dev tcm;
	struct syna_tcm_flash_access_context access;
	struct tcm_transport_overlay transport;
	u8 data[4] = { 1, 2, 3, 4 };
	struct syna_tcm_fw_partition partition;

	reset_fixture(&tcm, &access, &transport);
	access.setup_release_required = 0;
	partition = make_partition(data, sizeof(data), 4);
	expect_true(syna_tcm_update_flash_block(&tcm, &access, &partition,
						       3, 1000, 1) == -241,
				    "optimized setup requirement is enforced");

	reset_fixture(&tcm, &access, &transport);
	managed_device_available = false;
	partition = make_partition(data, sizeof(data), 4);
	expect_true(syna_tcm_update_flash_block(&tcm, &access, &partition,
						       3, 1000, 1) == -243,
				    "managed allocation device failure returns -243");
	expect_true(mutex_lock_calls == 1 && mutex_unlock_calls == 1 &&
				    access.release_required == 0,
				    "allocation failure rolls back lock state");

	reset_fixture(&tcm, &access, &transport);
	write_message_return = -33;
	partition = make_partition(data, sizeof(data), 4);
	expect_true(syna_tcm_update_flash_block(&tcm, &access, &partition,
						       3, 1000, 1) == -33,
				    "optimized command error is propagated");
	expect_true(mutex_lock_calls == 1 && mutex_unlock_calls == 1 &&
				    access.release_required == 0,
				    "command error rolls back lock state");
	cleanup_access(&access);

	reset_fixture(&tcm, &access, &transport);
	partition = make_partition(NULL, sizeof(data), 4);
	expect_true(syna_tcm_update_flash_block(&tcm, &access, &partition,
						       3, 1000, 1) == -22,
				    "null optimized source returns -22");
	expect_true(mutex_lock_calls == 0,
				    "null optimized source fails before locking");

	reset_fixture(&tcm, &access, &transport);
	access.max_write_payload_size = 0;
	partition = make_partition(data, sizeof(data), 4);
	expect_true(syna_tcm_update_flash_block(&tcm, &access, &partition,
						       3, 1000, 1) == -241,
				    "zero optimized payload geometry returns -241");

	reset_fixture(&tcm, &access, &transport);
	access.write_block_size_bytes = 0;
	partition = make_partition(data, sizeof(data), 4);
	expect_true(syna_tcm_update_flash_block(&tcm, &access, &partition,
						       3, 1000, 1) == -241,
				    "zero write block geometry returns -241");
}

int main(void)
{
	test_validation_and_check_paths();
	test_erase_and_normal_write();
	test_optimized_write();
	test_optimized_errors();
	puts("PASS: syna_tcm_update_flash_block host contract");
	return 0;
}
