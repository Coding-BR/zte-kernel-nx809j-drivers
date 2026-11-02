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

static int write_calls;
static int write_fail_at;
static int write_fail_return;
static int mutex_lock_calls;
static int mutex_unlock_calls;
static int request_device_calls;
static int devm_free_calls;
static int devm_malloc_calls;
static bool device_available;
static bool malloc_available;
static u32 write_lengths[8];
static u32 write_delays[8];
static u8 write_payloads[8][32];
static struct device managed_device;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

void mutex_lock(void *lock);
void mutex_unlock(void *lock);
struct device *syna_request_managed_device(void);
void *devm_kmalloc(struct device *device, size_t size, unsigned int flags);
void devm_kfree(struct device *device, const void *memory);

#include "../../../reconstructed/zte_tpd/syna_tcm_write_flash.c"

static int test_write_message(struct tcm_dev *tcm, u8 command,
				      u8 *payload, u32 length,
				      u8 *response_code, u32 delay_ms)
{
	int index = write_calls;

	(void)tcm;
	(void)response_code;
	if (command != 0x12 || index >= 8 || length > sizeof(write_payloads[0]))
		exit(1);
	write_lengths[index] = length;
	write_delays[index] = delay_ms;
	memcpy(write_payloads[index], payload, length);
	++write_calls;
	if (write_fail_at && write_calls == write_fail_at)
		return write_fail_return;
	return 0;
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

struct device *syna_request_managed_device(void)
{
	++request_device_calls;
	return device_available ? &managed_device : NULL;
}

void *devm_kmalloc(struct device *device, size_t size, unsigned int flags)
{
	(void)device;
	(void)flags;
	++devm_malloc_calls;
	return malloc_available ? malloc(size) : NULL;
}

void devm_kfree(struct device *device, const void *memory)
{
	if (device != &managed_device || !memory)
		exit(1);
	++devm_free_calls;
	free((void *)memory);
}

struct access_storage {
	struct syna_tcm_flash_access_context context;
	u8 stock_tail[8];
};

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static u32 access_total_written(const struct access_storage *storage)
{
	const u8 *bytes = (const u8 *)&storage->context + 0x90;

	return (u32)bytes[0] | ((u32)bytes[1] << 8) |
		((u32)bytes[2] << 16) | ((u32)bytes[3] << 24);
}

static void set_access_total_written(struct access_storage *storage, u32 value)
{
	u8 *bytes = (u8 *)&storage->context + 0x90;

	bytes[0] = (u8)value;
	bytes[1] = (u8)(value >> 8);
	bytes[2] = (u8)(value >> 16);
	bytes[3] = (u8)(value >> 24);
}

static void reset_fixture(struct tcm_dev *tcm,
				  struct access_storage *storage,
				  u8 *transport_bytes,
				  u8 *source)
{
	struct tcm_transport_overlay *transport =
		(struct tcm_transport_overlay *)(void *)transport_bytes;

	memset(tcm, 0, sizeof(*tcm));
	memset(storage, 0, sizeof(*storage));
	memset(transport_bytes, 0, 0x20);
	memset(source, 0, 64);
	write_calls = 0;
	write_fail_at = 0;
	write_fail_return = -19;
	mutex_lock_calls = 0;
	mutex_unlock_calls = 0;
	request_device_calls = 0;
	devm_free_calls = 0;
	devm_malloc_calls = 0;
	device_available = true;
	malloc_available = true;
	memset(write_lengths, 0, sizeof(write_lengths));
	memset(write_delays, 0, sizeof(write_delays));
	memset(write_payloads, 0, sizeof(write_payloads));
	storage->context.write_block_size_bytes = 4;
	storage->context.max_write_payload_size = 8;
	storage->context.release_required = 0;
	set_access_total_written(storage, 0);
	transport->flags = 0;
	tcm->transport = transport;
	tcm->firmware_mode = 0x0b;
	tcm->command_delay_ms = 55;
	tcm->write_message = test_write_message;
}

static void free_access_buffer(struct access_storage *storage)
{
	if (storage->context.managed_allocation) {
		free(storage->context.managed_allocation);
		storage->context.managed_allocation = NULL;
	}
}

static void test_zero_and_single_chunk(void)
{
	struct tcm_dev tcm;
	struct access_storage storage;
	u8 transport[0x20];
	u8 source[64];

	reset_fixture(&tcm, &storage, transport, source);
	expect_true(syna_tcm_write_flash(&tcm, &storage.context, 0, source,
					0, 1000) == 0,
			"zero length succeeds");
	expect_true(write_calls == 0 && mutex_lock_calls == 1 &&
			mutex_unlock_calls == 1 && storage.context.release_required == 0,
			"zero length still locks and unlocks once");

		reset_fixture(&tcm, &storage, transport, source);
		for (u32 i = 0; i < 6; ++i)
			source[i] = (u8)(0x40 + i);
		expect_true(syna_tcm_write_flash(&tcm, &storage.context, 2, source,
					6, 500) == 0,
				"single chunk succeeds");
		expect_true(write_calls == 1 && write_lengths[0] == 8 &&
				write_delays[0] == 1 && write_payloads[0][0] == 0 &&
				write_payloads[0][1] == 0 &&
				memcmp(write_payloads[0] + 2, source, 6) == 0 &&
				access_total_written(&storage) == 6 &&
				storage.context.release_required == 0,
				"single chunk preserves header, delay and total");
		free_access_buffer(&storage);
}

static void test_multiple_chunks_and_transport_delay(void)
{
	struct tcm_dev tcm;
	struct access_storage storage;
	u8 transport[0x20];
	u8 source[64];

	reset_fixture(&tcm, &storage, transport, source);
	for (u32 i = 0; i < 20; ++i)
		source[i] = (u8)i;
	expect_true(syna_tcm_write_flash(&tcm, &storage.context, 0, source,
					20, 1000) == 0,
				"multiple chunks succeed");
	expect_true(write_calls == 3 && write_lengths[0] == 10 &&
			write_lengths[1] == 10 && write_lengths[2] == 6 &&
			write_delays[0] == 2 && write_delays[1] == 2 &&
			write_delays[2] == 1 && write_payloads[0][0] == 0 &&
			write_payloads[1][0] == 2 && write_payloads[2][0] == 4 &&
			access_total_written(&storage) == 20,
			"multiple chunks preserve block headers and total");
	free_access_buffer(&storage);

		reset_fixture(&tcm, &storage, transport, source);
		((struct tcm_transport_overlay *)(void *)transport)->flags = 1;
		expect_true(syna_tcm_write_flash(&tcm, &storage.context, 0, source,
					4, 0) == 0,
				"transport delay suppression succeeds");
		expect_true(write_calls == 1 && write_delays[0] == 0,
				"transport flag keeps zero effective delay");
		free_access_buffer(&storage);
}

static void test_failures_and_reallocation(void)
{
	struct tcm_dev tcm;
	struct access_storage storage;
	u8 transport[0x20];
	u8 source[64];

	reset_fixture(&tcm, &storage, transport, source);
	write_fail_at = 2;
	for (u32 i = 0; i < 20; ++i)
		source[i] = (u8)i;
	expect_true(syna_tcm_write_flash(&tcm, &storage.context, 0, source,
					20, 1000) == -19,
				"write failure propagates");
	expect_true(write_calls == 2 && access_total_written(&storage) == 8 &&
			storage.context.release_required == 0 && mutex_unlock_calls == 1,
			"write failure preserves completed total and unlocks");
	free_access_buffer(&storage);

		reset_fixture(&tcm, &storage, transport, source);
		device_available = false;
		expect_true(syna_tcm_write_flash(&tcm, &storage.context, 0, source,
					4, 1000) == -243,
				"managed allocation failure returns -243");
		expect_true(write_calls == 0 && storage.context.managed_allocation == NULL &&
				storage.context.release_required == 0,
				"allocation failure clears buffer and unlocks");

		reset_fixture(&tcm, &storage, transport, source);
		storage.context.managed_allocation = malloc(4);
		/* Capacity four is intentionally too small for the ten-byte chunk. */
		*(u32 *)((u8 *)&storage.context + 0x48) = 4;
		expect_true(syna_tcm_write_flash(&tcm, &storage.context, 0, source,
					6, 1000) == 0,
				"existing buffer is replaced and write succeeds");
		expect_true(devm_free_calls == 1 && devm_malloc_calls == 1 &&
				write_calls == 1,
				"reallocation frees old buffer exactly once");
		free_access_buffer(&storage);
}

static void test_input_guards_and_nested_lock(void)
{
	struct tcm_dev tcm;
	struct access_storage storage;
	u8 transport[0x20];
	u8 source[64];

	reset_fixture(&tcm, &storage, transport, source);
	expect_true(syna_tcm_write_flash(&tcm, &storage.context, 0, NULL,
					4, 1000) == -22,
			"null source returns -22");
	expect_true(write_calls == 0 && storage.context.release_required == 0,
			"null source does not send command");
	free_access_buffer(&storage);

		reset_fixture(&tcm, &storage, transport, source);
		storage.context.write_block_size_bytes = 0;
		expect_true(syna_tcm_write_flash(&tcm, &storage.context, 0, source,
					4, 1000) == -241,
				"zero block size returns -241");

		reset_fixture(&tcm, &storage, transport, source);
		storage.context.release_required = 1;
		expect_true(syna_tcm_write_flash(&tcm, &storage.context, 0, source,
					0, 0) == 0,
				"nested lock zero length succeeds");
		expect_true(storage.context.release_required == 1 &&
				mutex_unlock_calls == 1,
				"nested lock depth is restored");
}

int main(void)
{
	test_zero_and_single_chunk();
	test_multiple_chunks_and_transport_delay();
	test_failures_and_reallocation();
	test_input_guards_and_nested_lock();
	puts("PASS: syna_tcm_write_flash host contract");
	return 0;
}
