#include <stdbool.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define __int64 long long
#define ENOMEM 12
#define EINVAL 22
#define READ_ONCE(value) (value)

typedef uint8_t u8;
typedef uint32_t u32;

struct tpd_firmware_data {
	size_t size;
	void *data;
	u8 reserved_0010[8];
};

_Static_assert(offsetof(struct tpd_firmware_data, data) == 0x08,
	"firmware data pointer offset");

#define CDEV_SIZE 0xc80
#define POSITION_OFFSET 0x448
#define FIRMWARE_OFFSET 0xc58
#define OLD_FIRMWARE_OFFSET 0xaa0
#define DATA_BYTES 256

static union {
	max_align_t alignment;
	u8 bytes[CDEV_SIZE];
} cdev_storage;
static struct tpd_firmware_data descriptor;
static u8 firmware_data[DATA_BYTES];
static __int64 tpd_cdev;
static unsigned int memcpy_calls;
static char last_printk[128];

static void *test_memcpy(void *destination, const void *source, size_t count)
{
	++memcpy_calls;
	return __builtin_memcpy(destination, source, count);
}

static int printk(const char *format, ...)
{
	va_list arguments;
	int result;

	va_start(arguments, format);
	result = vsnprintf(last_printk, sizeof(last_printk), format, arguments);
	va_end(arguments);
	return result;
}

#define memcpy test_memcpy

#include "../../../reconstructed/zte_tpd/tpd_copy_to_tp_firmware_data.c"

#undef memcpy

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "%s:%d: requirement failed: %s\n", \
			__func__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void store_pointer(size_t offset, const void *pointer)
{
	__builtin_memcpy(cdev_storage.bytes + offset, &pointer, sizeof(pointer));
}

static u32 load_position(void)
{
	u32 position;

	__builtin_memcpy(&position, cdev_storage.bytes + POSITION_OFFSET,
			sizeof(position));
	return position;
}

static void store_position(u32 position)
{
	__builtin_memcpy(cdev_storage.bytes + POSITION_OFFSET, &position,
		sizeof(position));
}

static void reset_state(void)
{
	__builtin_memset(&cdev_storage, 0, sizeof(cdev_storage));
	__builtin_memset(&descriptor, 0, sizeof(descriptor));
	__builtin_memset(firmware_data, 0, sizeof(firmware_data));
	__builtin_memset(last_printk, 0, sizeof(last_printk));
	tpd_cdev = (__int64)(uintptr_t)cdev_storage.bytes;
	memcpy_calls = 0;
}

static void set_firmware(size_t size, u32 position, const char *initial)
{
	descriptor.size = size;
	descriptor.data = firmware_data;
	if (initial != NULL)
		__builtin_memcpy(firmware_data, initial, size);
	store_pointer(FIRMWARE_OFFSET, &descriptor);
	store_position(position);
}

static bool test_missing_descriptor(void)
{
	reset_state();
	REQUIRE(tpd_copy_to_tp_firmware_data("abc") == -ENOMEM);
	REQUIRE(strcmp(last_printk, "\001" "3Need set fw image size first") == 0);
	return true;
}

static bool test_missing_data(void)
{
	reset_state();
	descriptor.size = 3;
	descriptor.data = NULL;
	store_pointer(FIRMWARE_OFFSET, &descriptor);
	REQUIRE(tpd_copy_to_tp_firmware_data("abc") == -ENOMEM);
	REQUIRE(memcpy_calls == 0);
	return true;
}

static bool test_zero_size(void)
{
	reset_state();
	set_firmware(0, 0, NULL);
	REQUIRE(tpd_copy_to_tp_firmware_data("abc") == -EINVAL);
	REQUIRE(strcmp(last_printk, "\001" "3Invalid firmware size") == 0);
	return true;
}

static bool test_at_end(void)
{
	reset_state();
	set_firmware(4, 4, "abcd");
	REQUIRE(tpd_copy_to_tp_firmware_data("abc") == 0);
	REQUIRE(memcpy_calls == 0 && load_position() == 4);
	REQUIRE(memcmp(firmware_data, "abcd", 4) == 0);
	return true;
}

static bool test_full_string(void)
{
	reset_state();
	set_firmware(6, 1, "abcdef");
	REQUIRE(tpd_copy_to_tp_firmware_data("XYZ") == 3);
	REQUIRE(memcmp(firmware_data, "aXYZef", 6) == 0);
	REQUIRE(load_position() == 4 && memcpy_calls == 1);
	return true;
}

static bool test_truncated_string(void)
{
	reset_state();
	set_firmware(6, 4, "abcdef");
	REQUIRE(tpd_copy_to_tp_firmware_data("WXYZ") == 2);
	REQUIRE(memcmp(firmware_data, "abcdWX", 6) == 0);
	REQUIRE(load_position() == 6 && memcpy_calls == 1);
	return true;
}

static bool test_empty_string_and_old_offset(void)
{
	char input[] = "";
	struct tpd_firmware_data decoy = { .size = 3, .data = firmware_data };

	reset_state();
	set_firmware(4, 1, "abcd");
	REQUIRE(tpd_copy_to_tp_firmware_data(input) == 0);
	REQUIRE(load_position() == 1 && memcpy_calls == 1);
	REQUIRE(memcmp(firmware_data, "abcd", 4) == 0);

	reset_state();
	store_pointer(OLD_FIRMWARE_OFFSET, &decoy);
	REQUIRE(tpd_copy_to_tp_firmware_data("abc") == -ENOMEM);
	return true;
}

struct test_case {
	const char *name;
	bool (*run)(void);
};

int main(void)
{
	static const struct test_case tests[] = {
		{ "missing_descriptor", test_missing_descriptor },
		{ "missing_data", test_missing_data },
		{ "zero_size", test_zero_size },
		{ "at_end", test_at_end },
		{ "full_string", test_full_string },
		{ "truncated_string", test_truncated_string },
		{ "empty_string_and_old_offset", test_empty_string_and_old_offset },
	};
	size_t index;
	size_t passed = 0;

	for (index = 0; index < sizeof(tests) / sizeof(tests[0]); ++index) {
		if (tests[index].run()) {
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
