#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define __int64 long long

typedef uint32_t u32;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;

#define CDEV_SIZE 0xc80
#define POSITION_OFFSET 0x448
#define FIRMWARE_OFFSET 0xc58

static union {
	max_align_t alignment;
	unsigned char bytes[CDEV_SIZE];
} cdev_storage;
static _QWORD descriptor[2];
static __int64 tpd_cdev;

#include "../../../reconstructed/zte_tpd/tpd_reset_fw_data_pos_and_size.c"

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "%s:%d: requirement failed: %s\n", \
			__func__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void store_u32(size_t offset, u32 value)
{
	__builtin_memcpy(cdev_storage.bytes + offset, &value, sizeof(value));
}

static u32 load_u32(size_t offset)
{
	u32 value;

	__builtin_memcpy(&value, cdev_storage.bytes + offset, sizeof(value));
	return value;
}

static void reset_state(void)
{
	const void *descriptor_pointer = descriptor;

	__builtin_memset(&cdev_storage, 0, sizeof(cdev_storage));
	__builtin_memset(descriptor, 0, sizeof(descriptor));
	tpd_cdev = (__int64)(uintptr_t)cdev_storage.bytes;
	__builtin_memcpy(cdev_storage.bytes + FIRMWARE_OFFSET, &descriptor_pointer,
		sizeof(descriptor_pointer));
}

static bool test_position(u32 position)
{
	reset_state();
	descriptor[0] = 0xfeedfacecafebeefULL;
	store_u32(POSITION_OFFSET, position);
	tpd_reset_fw_data_pos_and_size();
	REQUIRE(descriptor[0] == position);
	REQUIRE(load_u32(POSITION_OFFSET) == 0);
	return true;
}

struct test_case {
	const char *name;
	u32 position;
};

int main(void)
{
	static const struct test_case tests[] = {
		{ "zero", 0 },
		{ "ordinary", 123456 },
		{ "uint32_max", UINT32_MAX },
	};
	size_t index;
	size_t passed = 0;

	for (index = 0; index < sizeof(tests) / sizeof(tests[0]); ++index) {
		if (test_position(tests[index].position)) {
			printf("PASS %s\n", tests[index].name);
			++passed;
		} else {
			printf("FAIL %s\n", tests[index].name);
		}
	}
	printf("SUMMARY %zu/%zu passed\n", passed,
		sizeof(tests) / sizeof(tests[0]));
	return passed == sizeof(tests) / sizeof(tests[0]) ? 0 : 1;
}
