#include <errno.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define _DEFS_H
#define __fastcall
#define __int8 char
#define __user
#define SP_EL0 0
#define barrier() __asm__ __volatile__("" ::: "memory")

#define FW_POSITION_OFFSET 0x448
#define FW_DESCRIPTOR_OFFSET 0xc58
#define FW_MUTEX_OFFSET 0xc60
#define FW_UPGRADE_CALLBACK_OFFSET 0xe18
#define NOISE_CALLBACK_OFFSET 0xee8
#define SELF_READ_CALLBACK_OFFSET 0xf98
#define SELF_WRITE_CALLBACK_OFFSET 0xfa0

typedef int64_t __int64;
typedef int16_t __int16;
typedef uint64_t _QWORD;
typedef uint32_t _DWORD;
typedef uint16_t _WORD;
typedef uint8_t _BYTE;
typedef uint64_t _BOOL8;
typedef uint32_t _BOOL4;

struct file { int unused; };
struct ztp_device { int unused; };

static uint8_t status_registers[2048];
static uint8_t device[4096];
__int64 tpd_cdev;
void *init_timer_key;
void *remove_proc_entry;

#define DECLARE_LOG(name) static const char name[] = ""
DECLARE_LOG(unk_39D11);
DECLARE_LOG(unk_3CAA2);
DECLARE_LOG(unk_3CABE);
DECLARE_LOG(unk_37549);
DECLARE_LOG(unk_39294);
DECLARE_LOG(unk_3408C);
DECLARE_LOG(unk_34C95);
DECLARE_LOG(unk_35341);
DECLARE_LOG(unk_33404);
DECLARE_LOG(unk_3CFBE);
DECLARE_LOG(unk_3343E);
DECLARE_LOG(unk_3597A);
DECLARE_LOG(unk_3CFF8);
DECLARE_LOG(unk_3B699);
DECLARE_LOG(unk_39237);
DECLARE_LOG(unk_3924C);
DECLARE_LOG(unk_35311);
DECLARE_LOG(unk_318B2);

static unsigned int callback_calls;
static unsigned int callback_value;
static unsigned int callback_result;
static unsigned int copy_from_user_fail;
static unsigned int kmalloc_fail;
static unsigned int vmalloc_fail;
static unsigned int firmware_alloc_fail;
static unsigned int kfree_calls;
static unsigned int vfree_calls;
static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static unsigned int mutex_depth;
static unsigned int cfi_warning_calls;
static size_t kmalloc_size;
static size_t vmalloc_size;
static char game_partition_payload[1024];

static uintptr_t read_status_register(int reg)
{
	(void)reg;
	return (uintptr_t)status_registers;
}

#define _ReadStatusReg(reg) read_status_register(reg)
#define __break(code) do { (void)(code); cfi_warning_calls++; } while (0)

static int printk(const void *format, ...)
{
	(void)format;
	return 0;
}

static ssize_t simple_read_from_buffer(__int64 destination, size_t count,
				       __int64 *position, const void *source,
				       size_t available)
{
	size_t copied;

	if (*position < 0)
		return -EINVAL;
	if ((uint64_t)*position >= available)
		return 0;
	copied = available - (size_t)*position;
	if (copied > count)
		copied = count;
	memcpy((void *)(uintptr_t)destination,
	       (const uint8_t *)source + *position, copied);
	*position += (__int64)copied;
	return (ssize_t)copied;
}

static int parse_uint(const char *input, size_t count, unsigned int *value)
{
	char local[64];
	char *end;
	unsigned long parsed;

	if (!input || !count || count >= sizeof(local))
		return -EINVAL;
	memcpy(local, input, count);
	local[count] = '\0';
	errno = 0;
	parsed = strtoul(local, &end, 0);
	if (errno || end == local || parsed > UINT32_MAX)
		return -EINVAL;
	while (*end == '\n' || *end == '\r' || *end == ' ' || *end == '\t')
		end++;
	if (*end != '\0')
		return -EINVAL;
	*value = (unsigned int)parsed;
	return 0;
}

static int kstrtouint(const char *input, unsigned int base, unsigned int *value)
{
	(void)base;
	return parse_uint(input, strlen(input), value);
}

static int kstrtouint_from_user(__int64 input, __int64 count,
			       unsigned int base, unsigned int *value)
{
	(void)base;
	return parse_uint((const char *)(uintptr_t)input, (size_t)count, value);
}

static void _check_object_size(const void *object, size_t count, int to_user)
{
	(void)object;
	(void)count;
	(void)to_user;
}

static unsigned long zte_inline_copy_from_user(void *destination,
					       const void *source, size_t count)
{
	if (copy_from_user_fail)
		return count;
	memcpy(destination, source, count);
	return 0;
}

static void mutex_lock(__int64 mutex)
{
	(void)mutex;
	mutex_lock_calls++;
	mutex_depth++;
}

static void mutex_unlock(__int64 mutex)
{
	(void)mutex;
	if (!mutex_depth)
		abort();
	mutex_unlock_calls++;
	mutex_depth--;
}

static void kfree(__int64 pointer)
{
	if (pointer) {
		kfree_calls++;
		free((void *)(uintptr_t)pointer);
	}
}

static void vfree(__int64 pointer)
{
	if (pointer) {
		vfree_calls++;
		free((void *)(uintptr_t)pointer);
	}
}

static __int64 _kmalloc_cache_noprof(void *cache, unsigned int flags, size_t size)
{
	(void)cache;
	(void)flags;
	kmalloc_size = size;
	if (kmalloc_fail)
		return 0;
	return (__int64)(uintptr_t)calloc(1, size);
}

static void *vmalloc(size_t size)
{
	vmalloc_size = size;
	if (vmalloc_fail)
		return NULL;
	return calloc(1, size);
}

static void write_pointer(size_t offset, const void *pointer)
{
	memcpy(device + offset, &pointer, sizeof(pointer));
}

static void *read_pointer(size_t offset)
{
	void *pointer;

	memcpy(&pointer, device + offset, sizeof(pointer));
	return pointer;
}

static uint64_t *allocate_descriptor(uint64_t size, size_t data_size)
{
	uint64_t *descriptor = calloc(1, 24);

	if (!descriptor)
		abort();
	descriptor[0] = size;
	if (data_size) {
		descriptor[1] = (uint64_t)(uintptr_t)calloc(1, data_size);
		if (!descriptor[1])
			abort();
	}
	write_pointer(FW_DESCRIPTOR_OFFSET, descriptor);
	return descriptor;
}

static void discard_descriptor(void)
{
	uint64_t *descriptor = read_pointer(FW_DESCRIPTOR_OFFSET);

	if (!descriptor)
		return;
	free((void *)(uintptr_t)descriptor[1]);
	free(descriptor);
	write_pointer(FW_DESCRIPTOR_OFFSET, NULL);
}

static int tp_alloc_tp_firmware_data(int size)
{
	(void)size;
	if (firmware_alloc_fail)
		return 1;
	allocate_descriptor(0, 32);
	return 0;
}

static __int64 bbat_callback(void)
{
	callback_calls++;
	return (__int64)callback_result;
}

static int noise_callback(struct ztp_device *candidate_device)
{
	if ((uintptr_t)candidate_device != (uintptr_t)device)
		abort();
	callback_calls++;
	if (callback_result)
		allocate_descriptor(callback_result, 16);
	return 0;
}

static void getter_u8_callback(_QWORD candidate_device)
{
	if ((uintptr_t)candidate_device != (uintptr_t)device)
		abort();
	callback_calls++;
	device[callback_result] = (uint8_t)callback_value;
}

static void setter_int_callback(__int64 candidate_device, __int64 value)
{
	if ((uintptr_t)candidate_device != (uintptr_t)device)
		abort();
	callback_calls++;
	callback_value = (unsigned int)value;
}

static void setter_bool_callback(__int64 candidate_device, _BOOL8 value)
{
	setter_int_callback(candidate_device, (__int64)value);
}

static void game_partition_callback(__int64 candidate_device, char *payload)
{
	if ((uintptr_t)candidate_device != (uintptr_t)device)
		abort();
	callback_calls++;
	snprintf(game_partition_payload, sizeof(game_partition_payload), "%s", payload);
}

static int self_read_callback(struct ztp_device *candidate_device, char *output)
{
	static const char result[] = "SELF";

	if ((uintptr_t)candidate_device != (uintptr_t)device)
		abort();
	callback_calls++;
	memcpy(output, result, sizeof(result) - 1);
	return (int)(sizeof(result) - 1);
}

static int self_write_callback(struct ztp_device *candidate_device)
{
	uint32_t value = callback_value;

	if ((uintptr_t)candidate_device != (uintptr_t)device)
		abort();
	callback_calls++;
	memcpy(device + FW_POSITION_OFFSET, &value, sizeof(value));
	return 0;
}

static int firmware_upgrade_callback(struct ztp_device *candidate_device,
			     char *firmware, int force)
{
	if ((uintptr_t)candidate_device != (uintptr_t)device || firmware || force)
		abort();
	callback_calls++;
	return 0;
}

static void install_callback(size_t offset, const void *callback)
{
	write_pointer(offset, callback);
}

#include "tp_BBAT_test_read.c"
#include "tp_BBAT_test_write.c"
#include "tp_test_read.c"
#include "tp_test_write.c"
#include "get_tp_noise_show.c"
#include "get_tp_noise_store.c"
#include "tp_free_tp_firmware_data.c"
#include "tpd_reset_fw_data_pos_and_size.c"
#include "tpfwupgrade_store.c"
#include "tp_self_test_read.c"
#include "tp_self_test_write.c"
#include "tp_sensibility_level_read.c"
#include "tp_sensibility_level_write.c"
#include "tp_pen_only_read.c"
#include "tp_pen_only_write.c"
#include "tp_game_partition_read.c"
#include "tp_game_partition_write.c"

#define CHECK(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "%s:%d: CHECK failed: %s\n", __func__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void reset_fixture(void)
{
	discard_descriptor();
	memset(device, 0, sizeof(device));
	memset(status_registers, 0, sizeof(status_registers));
	tpd_cdev = (__int64)(uintptr_t)device;
	callback_calls = 0;
	callback_value = 0;
	callback_result = 0;
	copy_from_user_fail = 0;
	kmalloc_fail = 0;
	vmalloc_fail = 0;
	firmware_alloc_fail = 0;
	kfree_calls = 0;
	vfree_calls = 0;
	mutex_lock_calls = 0;
	mutex_unlock_calls = 0;
	mutex_depth = 0;
	cfi_warning_calls = 0;
	kmalloc_size = 0;
	vmalloc_size = 0;
	memset(game_partition_payload, 0, sizeof(game_partition_payload));
}

static int read_integer(ssize_t (*read_fn)(struct file *, char *, size_t, loff_t *),
			int *value)
{
	char output[32] = { 0 };
	loff_t offset = 0;
	ssize_t result = read_fn(NULL, output, sizeof(output), &offset);

	if (result <= 0)
		return -1;
	*value = atoi(output);
	return (int)result;
}

static bool test_passthrough_writes(void)
{
	static const char input[] = "ignored";
	loff_t offset = 0;

	reset_fixture();
	CHECK(tp_BBAT_test_write(NULL, input, sizeof(input) - 1, &offset) ==
	      (ssize_t)(sizeof(input) - 1));
	CHECK(tp_test_write(NULL, input, sizeof(input) - 1, &offset) ==
	      (ssize_t)(sizeof(input) - 1));
	return true;
}

static bool test_bbat_read_paths(void)
{
	int value;
	__int64 (*callback)(void) = bbat_callback;
	loff_t eof = 1;
	char output[8];

	reset_fixture();
	callback_result = 7;
	install_callback(3632, callback);
	CHECK(read_integer(tp_BBAT_test_read, &value) > 0);
	CHECK(value == 7 && callback_calls == 1);

	reset_fixture();
	device[20] = 0;
	CHECK(read_integer(tp_BBAT_test_read, &value) > 0 && value == 2);
	device[20] = 1;
	CHECK(read_integer(tp_BBAT_test_read, &value) > 0 && value == 0);
	CHECK(tp_BBAT_test_read(NULL, output, sizeof(output), &eof) == 0);
	return true;
}

static bool test_tp_test_read_paths(void)
{
	int value;

	reset_fixture();
	device[2632] = 3;
	CHECK(read_integer(tp_test_read, &value) > 0 && value == 1);
	device[2632] = 0xff;
	device[29] = 1;
	CHECK(read_integer(tp_test_read, &value) > 0 && value == 0);
	device[29] = 0;
	CHECK(read_integer(tp_test_read, &value) > 0 && value == 2);
	return true;
}

static bool test_noise_show_and_store(void)
{
	int (*callback)(struct ztp_device *) = noise_callback;
	char output[32] = { 0 };
	loff_t offset = 0;
	uint32_t pending = 9;

	reset_fixture();
	callback_result = 123;
	install_callback(NOISE_CALLBACK_OFFSET, callback);
	CHECK(get_tp_noise_show(NULL, output, sizeof(output), &offset) == 4);
	CHECK(strcmp(output, "123\n") == 0);
	CHECK(callback_calls == 1);
	CHECK(mutex_lock_calls == 1 && mutex_unlock_calls == 1 && mutex_depth == 0);

	memcpy(device + FW_POSITION_OFFSET, &pending, sizeof(pending));
	CHECK(get_tp_noise_store(NULL, "x", 1, &offset) == 1);
	CHECK(read_pointer(FW_DESCRIPTOR_OFFSET) == NULL);
	CHECK(vfree_calls == 1 && kfree_calls == 1);
	memcpy(&pending, device + FW_POSITION_OFFSET, sizeof(pending));
	CHECK(pending == 0);
	CHECK(mutex_lock_calls == 2 && mutex_unlock_calls == 2 && mutex_depth == 0);
	return true;
}

static bool test_sensibility_paths(void)
{
	void (*getter)(_QWORD) = getter_u8_callback;
	void (*setter)(__int64, __int64) = setter_int_callback;
	loff_t offset = 0;
	int value;

	reset_fixture();
	callback_result = 64;
	callback_value = 11;
	install_callback(3496, getter);
	CHECK(read_integer(tp_sensibility_level_read, &value) > 0);
	CHECK(value == 11 && callback_calls == 1);

	reset_fixture();
	install_callback(3504, setter);
	CHECK(tp_sensibility_level_write(NULL, "257\n", 4, &offset) == 4);
	CHECK(device[64] == 1);
	CHECK(callback_calls == 1 && callback_value == 257);
	copy_from_user_fail = 1;
	CHECK(tp_sensibility_level_write(NULL, "3\n", 2, &offset) == -EINVAL);
	CHECK(callback_calls == 1);
	return true;
}

static bool test_pen_only_paths(void)
{
	void (*getter)(_QWORD) = getter_u8_callback;
	void (*setter)(__int64, _BOOL8) = setter_bool_callback;
	loff_t offset = 0;
	int value;

	reset_fixture();
	callback_result = 1089;
	callback_value = 4;
	install_callback(3528, getter);
	CHECK(read_integer(tp_pen_only_read, &value) > 0);
	CHECK(value == 4 && callback_calls == 1);

	reset_fixture();
	install_callback(3536, setter);
	CHECK(tp_pen_only_write(NULL, "2\n", 2, &offset) == 2);
	CHECK(device[1089] == 2);
	CHECK(callback_calls == 1 && callback_value == 2);
	CHECK(tp_pen_only_write(NULL, "bad", 3, &offset) == -EINVAL);
	CHECK(callback_calls == 1);
	return true;
}

static bool test_game_partition_paths(void)
{
	void (*callback)(__int64, char *) = game_partition_callback;
	char output[64] = { 0 };
	char oversized[1025] = { 0 };
	loff_t offset = 0;

	reset_fixture();
	install_callback(3480, callback);
	CHECK(tp_game_partition_write(NULL, "alpha", 5, &offset) == 5);
	CHECK(callback_calls == 1 && strcmp(game_partition_payload, "alpha") == 0);
	CHECK(strcmp((char *)device + 65, "alpha\n") == 0);
	CHECK(tp_game_partition_read(NULL, output, sizeof(output), &offset) == 7);
	CHECK(strcmp(output, "alpha\n\n") == 0);

	reset_fixture();
	install_callback(3480, callback);
	CHECK(tp_game_partition_write(NULL, oversized, sizeof(oversized), &offset) == -EINVAL);
	CHECK(callback_calls == 0);
	copy_from_user_fail = 1;
	CHECK(tp_game_partition_write(NULL, "x", 1, &offset) == -EINVAL);
	CHECK(callback_calls == 0);
	return true;
}

static bool test_self_test_write_paths(void)
{
	int (*callback)(struct ztp_device *) = self_write_callback;
	loff_t offset = 0;
	uint64_t *descriptor;

	reset_fixture();
	callback_value = 77;
	install_callback(SELF_WRITE_CALLBACK_OFFSET, callback);
	CHECK(tp_self_test_write(NULL, "x", 1, &offset) == 1);
	descriptor = read_pointer(FW_DESCRIPTOR_OFFSET);
	CHECK(descriptor != NULL && descriptor[0] == 77);
	CHECK(callback_calls == 1);
	CHECK(*(uint32_t *)(device + FW_POSITION_OFFSET) == 0);

	reset_fixture();
	firmware_alloc_fail = 1;
	install_callback(SELF_WRITE_CALLBACK_OFFSET, callback);
	CHECK(tp_self_test_write(NULL, "x", 1, &offset) == -ENOMEM);
	CHECK(callback_calls == 0 && read_pointer(FW_DESCRIPTOR_OFFSET) == NULL);
	return true;
}

static bool test_self_test_read_paths(void)
{
	int (*callback)(struct ztp_device *, char *) = self_read_callback;
	char output[32] = { 0 };
	loff_t offset = 0;
	ssize_t result;

	reset_fixture();
	allocate_descriptor(8, 16);
	install_callback(SELF_READ_CALLBACK_OFFSET, callback);
	result = tp_self_test_read(NULL, output, sizeof(output), &offset);
	CHECK(result == 4 && memcmp(output, "SELF", 4) == 0);
	CHECK(callback_calls == 1);
	CHECK(read_pointer(FW_DESCRIPTOR_OFFSET) == NULL);
	CHECK(vfree_calls == 1 && kfree_calls == 2);

	reset_fixture();
	offset = 0;
	kmalloc_fail = 1;
	CHECK(tp_self_test_read(NULL, output, sizeof(output), &offset) == -ENOMEM);
	CHECK(kfree_calls == 0);
	return true;
}

static bool test_firmware_free_and_reset(void)
{
	uint64_t *descriptor;
	uint32_t position = 17;

	reset_fixture();
	descriptor = allocate_descriptor(99, 64);
	memcpy(device + FW_POSITION_OFFSET, &position, sizeof(position));
	tpd_reset_fw_data_pos_and_size();
	CHECK(descriptor[0] == position);
	CHECK(*(uint32_t *)(device + FW_POSITION_OFFSET) == 0);

	tp_free_tp_firmware_data();
	CHECK(read_pointer(FW_DESCRIPTOR_OFFSET) == NULL);
	CHECK(vfree_calls == 1 && kfree_calls == 1);
	CHECK(*(uint32_t *)(device + FW_POSITION_OFFSET) == 0);
	return true;
}

static bool test_tpfwupgrade_success_paths(void)
{
	int (*callback)(struct ztp_device *, char *, int) =
		firmware_upgrade_callback;
	uint64_t *descriptor;
	loff_t offset = 0;
	uint32_t position = 9;

	reset_fixture();
	allocate_descriptor(64, 88);
	memcpy(device + FW_POSITION_OFFSET, &position, sizeof(position));
	install_callback(FW_UPGRADE_CALLBACK_OFFSET, callback);
	CHECK(tpfwupgrade_store(NULL, "10\n", 3, &offset) == 3);
	CHECK(callback_calls == 1);
	CHECK(read_pointer(FW_DESCRIPTOR_OFFSET) == NULL);
	CHECK(vfree_calls == 1 && kfree_calls == 1);
	CHECK(*(uint32_t *)(device + FW_POSITION_OFFSET) == 0);
	CHECK(mutex_lock_calls == 1 && mutex_unlock_calls == 1 && mutex_depth == 0);

	reset_fixture();
	allocate_descriptor(8, 32);
	CHECK(tpfwupgrade_store(NULL, "11\n", 3, &offset) == 3);
	descriptor = read_pointer(FW_DESCRIPTOR_OFFSET);
	CHECK(descriptor != NULL && descriptor[0] == 11 && descriptor[1] != 0);
	CHECK(kmalloc_size == 24 && vmalloc_size == 35);
	CHECK(vfree_calls == 1 && kfree_calls == 1);
	CHECK(*(uint32_t *)(device + FW_POSITION_OFFSET) == 0);
	return true;
}

static bool test_tpfwupgrade_failure_paths(void)
{
	loff_t offset = 0;
	void *dangling;

	reset_fixture();
	CHECK(tpfwupgrade_store(NULL, "bad", 3, &offset) == -EINVAL);
	CHECK(mutex_lock_calls == 0 && mutex_unlock_calls == 0);

	reset_fixture();
	kmalloc_fail = 1;
	CHECK(tpfwupgrade_store(NULL, "11\n", 3, &offset) == -ENOMEM);
	CHECK(read_pointer(FW_DESCRIPTOR_OFFSET) == NULL);
	CHECK(kmalloc_size == 24 && vmalloc_size == 0);
	CHECK(mutex_lock_calls == 1 && mutex_unlock_calls == 1 && mutex_depth == 0);

	reset_fixture();
	vmalloc_fail = 1;
	CHECK(tpfwupgrade_store(NULL, "11\n", 3, &offset) == -ENOMEM);
	dangling = read_pointer(FW_DESCRIPTOR_OFFSET);
	CHECK(dangling != NULL);
	CHECK(kfree_calls == 1 && vmalloc_size == 35);
	write_pointer(FW_DESCRIPTOR_OFFSET, NULL);
	return true;
}

struct test_case {
	const char *name;
	bool (*run)(void);
};

int main(void)
{
	static const struct test_case tests[] = {
		{ "passthrough_writes", test_passthrough_writes },
		{ "bbat_read_paths", test_bbat_read_paths },
		{ "tp_test_read_paths", test_tp_test_read_paths },
		{ "noise_show_and_store", test_noise_show_and_store },
		{ "sensibility_paths", test_sensibility_paths },
		{ "pen_only_paths", test_pen_only_paths },
		{ "game_partition_paths", test_game_partition_paths },
		{ "self_test_write_paths", test_self_test_write_paths },
		{ "self_test_read_paths", test_self_test_read_paths },
		{ "firmware_free_and_reset", test_firmware_free_and_reset },
		{ "tpfwupgrade_success_paths", test_tpfwupgrade_success_paths },
		{ "tpfwupgrade_failure_paths", test_tpfwupgrade_failure_paths },
	};
	size_t index;
	size_t passed = 0;

	for (index = 0; index < sizeof(tests) / sizeof(tests[0]); index++) {
		if (tests[index].run()) {
			printf("PASS %s\n", tests[index].name);
			passed++;
		} else {
			printf("FAIL %s\n", tests[index].name);
		}
	}
	reset_fixture();
	printf("SUMMARY %zu/%zu tests passed\n", passed,
	       sizeof(tests) / sizeof(tests[0]));
	return passed == sizeof(tests) / sizeof(tests[0]) ? 0 : 1;
}
