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
#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))

typedef uint8_t u8;
typedef uint32_t u32;
typedef unsigned int gfp_t;

struct tpd_firmware_data {
	size_t size;
	void *data;
	u8 reserved_0010[8];
};

_Static_assert(offsetof(struct tpd_firmware_data, data) == 0x08,
	       "firmware data pointer offset");
_Static_assert(sizeof(struct tpd_firmware_data) == 0x18,
	       "firmware descriptor size");

enum call_id {
	CALL_KMALLOC = 1,
	CALL_VMALLOC,
	CALL_VFREE,
	CALL_KFREE,
	CALL_MEMSET,
	CALL_MEMCPY,
	CALL_PRINTK,
};

#define CDEV_SIZE 0xc80
#define POSITION_OFFSET 0x448
#define FIRMWARE_OFFSET 0xc58
#define OLD_FIRMWARE_OFFSET 0xaa0
#define MAX_CALLS 16
#define POOL_ITEMS 4
#define DATA_BYTES 256

static union {
	max_align_t alignment;
	u8 bytes[CDEV_SIZE];
} cdev_storage;
static struct tpd_firmware_data descriptor_pool[POOL_ITEMS];
static u8 data_pool[POOL_ITEMS][DATA_BYTES];
static size_t descriptor_index;
static size_t data_index;
static __int64 tpd_cdev;
static enum call_id calls[MAX_CALLS];
static size_t call_count;
static bool kmalloc_fails;
static bool vmalloc_fails;
static size_t kmalloc_size;
static gfp_t kmalloc_flags;
static size_t vmalloc_size;
static char last_printk[128];

static void record_call(enum call_id call)
{
	if (call_count < MAX_CALLS)
		calls[call_count] = call;
	call_count++;
}

static void *test_kmalloc(size_t size, gfp_t flags)
{
	record_call(CALL_KMALLOC);
	kmalloc_size = size;
	kmalloc_flags = flags;
	if (kmalloc_fails)
		return NULL;
	if (descriptor_index >= POOL_ITEMS)
		return NULL;
	return &descriptor_pool[descriptor_index++];
}

static void *test_vmalloc(size_t size)
{
	record_call(CALL_VMALLOC);
	vmalloc_size = size;
	if (vmalloc_fails || data_index >= POOL_ITEMS || size > DATA_BYTES)
		return NULL;
	__builtin_memset(data_pool[data_index], 0xa5, DATA_BYTES);
	return data_pool[data_index++];
}

static void test_vfree(const void *pointer)
{
	(void)pointer;
	record_call(CALL_VFREE);
}

static void test_kfree(const void *pointer)
{
	(void)pointer;
	record_call(CALL_KFREE);
}

static void *test_memset(void *destination, int value, size_t count)
{
	record_call(CALL_MEMSET);
	return __builtin_memset(destination, value, count);
}

static void *test_memcpy(void *destination, const void *source, size_t count)
{
	record_call(CALL_MEMCPY);
	return __builtin_memcpy(destination, source, count);
}

static int printk(const char *format, ...)
{
	va_list arguments;
	int result;

	record_call(CALL_PRINTK);
	va_start(arguments, format);
	result = vsnprintf(last_printk, sizeof(last_printk), format, arguments);
	va_end(arguments);
	return result;
}

#define kmalloc test_kmalloc
#define vmalloc test_vmalloc
#define vfree test_vfree
#define kfree test_kfree
#define memset test_memset
#define memcpy test_memcpy
#define GFP_KERNEL ((gfp_t)0xcc0)

#include "../../../curated/zte_tpd/tp_alloc_tp_firmware_data.c"
#include "../../../curated/zte_tpd/tpd_copy_to_tp_firmware_data.c"

#undef kmalloc
#undef vmalloc
#undef vfree
#undef kfree
#undef memset
#undef memcpy

static void store_pointer(size_t offset, const void *pointer)
{
	__builtin_memcpy(cdev_storage.bytes + offset, &pointer, sizeof(pointer));
}

static struct tpd_firmware_data *load_firmware(void)
{
	struct tpd_firmware_data *firmware;

	__builtin_memcpy(&firmware, cdev_storage.bytes + FIRMWARE_OFFSET,
			 sizeof(firmware));
	return firmware;
}

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
	__builtin_memset(&cdev_storage, 0, sizeof(cdev_storage));
	__builtin_memset(descriptor_pool, 0, sizeof(descriptor_pool));
	__builtin_memset(data_pool, 0, sizeof(data_pool));
	__builtin_memset(calls, 0, sizeof(calls));
	__builtin_memset(last_printk, 0, sizeof(last_printk));
	descriptor_index = 0;
	data_index = 0;
	tpd_cdev = (__int64)(uintptr_t)cdev_storage.bytes;
	call_count = 0;
	kmalloc_fails = false;
	vmalloc_fails = false;
	kmalloc_size = 0;
	kmalloc_flags = 0;
	vmalloc_size = 0;
}

static struct tpd_firmware_data *prepare_firmware(const char *bytes,
						  size_t size, u32 position)
{
	struct tpd_firmware_data *firmware = &descriptor_pool[descriptor_index++];
	u8 *data = data_pool[data_index++];

	if (size)
		__builtin_memcpy(data, bytes, size);
	firmware->size = size;
	firmware->data = data;
	store_pointer(FIRMWARE_OFFSET, firmware);
	store_u32(POSITION_OFFSET, position);
	return firmware;
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "%s:%d: requirement failed: %s\n", \
			__func__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static bool test_alloc_success(void)
{
	struct tpd_firmware_data *firmware;
	size_t index;

	reset_state();
	store_u32(POSITION_OFFSET, 9);
	REQUIRE(tp_alloc_tp_firmware_data(16) == 0);
	firmware = load_firmware();
	REQUIRE(firmware != NULL && firmware->data != NULL);
	REQUIRE(firmware->size == 16);
	REQUIRE(load_u32(POSITION_OFFSET) == 0);
	REQUIRE(kmalloc_size == 24 && kmalloc_flags == 3520);
	REQUIRE(vmalloc_size == 40);
	for (index = 0; index < vmalloc_size; index++)
		REQUIRE(((u8 *)firmware->data)[index] == 0);
	REQUIRE(call_count == 3);
	REQUIRE(calls[0] == CALL_KMALLOC && calls[1] == CALL_VMALLOC);
	REQUIRE(calls[2] == CALL_MEMSET);
	return true;
}

static bool test_alloc_replaces_existing_buffer(void)
{
	struct tpd_firmware_data *old;

	reset_state();
	old = prepare_firmware("old", 3, 2);
	REQUIRE(tp_alloc_tp_firmware_data(8) == 0);
	REQUIRE(old->data == NULL && old->size == 0);
	REQUIRE(load_firmware() != old);
	REQUIRE(call_count == 5);
	REQUIRE(calls[0] == CALL_VFREE && calls[1] == CALL_KFREE);
	REQUIRE(calls[2] == CALL_KMALLOC && calls[3] == CALL_VMALLOC);
	REQUIRE(calls[4] == CALL_MEMSET);
	return true;
}

static bool test_alloc_descriptor_failure(void)
{
	reset_state();
	kmalloc_fails = true;
	REQUIRE(tp_alloc_tp_firmware_data(8) == -ENOMEM);
	REQUIRE(load_firmware() == NULL);
	REQUIRE(strcmp(last_printk, "\001" "3tpd:alloc struct firmware failed") == 0);
	REQUIRE(call_count == 2);
	REQUIRE(calls[0] == CALL_KMALLOC && calls[1] == CALL_PRINTK);
	return true;
}

static bool test_alloc_data_failure_preserves_stock_slot(void)
{
	struct tpd_firmware_data *allocated;

	reset_state();
	vmalloc_fails = true;
	REQUIRE(tp_alloc_tp_firmware_data(8) == -ENOMEM);
	allocated = load_firmware();
	REQUIRE(allocated == &descriptor_pool[0]);
	REQUIRE(allocated->data == NULL);
	REQUIRE(strcmp(last_printk,
		       "\001" "3tpd: alloc tp_firmware->data failed") == 0);
	REQUIRE(call_count == 4);
	REQUIRE(calls[0] == CALL_KMALLOC && calls[1] == CALL_VMALLOC);
	REQUIRE(calls[2] == CALL_PRINTK && calls[3] == CALL_KFREE);
	return true;
}

static bool test_copy_missing_descriptor(void)
{
	char input[] = "abc";

	reset_state();
	REQUIRE(tpd_copy_to_tp_firmware_data(input) == -ENOMEM);
	REQUIRE(strcmp(last_printk, "\001" "3Need set fw image size first") == 0);
	return true;
}

static bool test_copy_missing_data(void)
{
	char input[] = "abc";
	struct tpd_firmware_data descriptor = { .size = 3, .data = NULL };

	reset_state();
	store_pointer(FIRMWARE_OFFSET, &descriptor);
	REQUIRE(tpd_copy_to_tp_firmware_data(input) == -ENOMEM);
	return true;
}

static bool test_copy_zero_size(void)
{
	char input[] = "abc";

	reset_state();
	prepare_firmware("", 0, 0);
	REQUIRE(tpd_copy_to_tp_firmware_data(input) == -EINVAL);
	REQUIRE(strcmp(last_printk, "\001" "3Invalid firmware size") == 0);
	return true;
}

static bool test_copy_at_end(void)
{
	char input[] = "abc";

	reset_state();
	prepare_firmware("abcd", 4, 4);
	REQUIRE(tpd_copy_to_tp_firmware_data(input) == 0);
	REQUIRE(call_count == 0);
	return true;
}

static bool test_copy_full_string(void)
{
	char input[] = "XYZ";
	struct tpd_firmware_data *firmware;

	reset_state();
	firmware = prepare_firmware("abcdef", 6, 1);
	REQUIRE(tpd_copy_to_tp_firmware_data(input) == 3);
	REQUIRE(memcmp(firmware->data, "aXYZef", 6) == 0);
	REQUIRE(load_u32(POSITION_OFFSET) == 4);
	REQUIRE(call_count == 1 && calls[0] == CALL_MEMCPY);
	return true;
}

static bool test_copy_truncated_string(void)
{
	char input[] = "WXYZ";
	struct tpd_firmware_data *firmware;

	reset_state();
	firmware = prepare_firmware("abcdef", 6, 4);
	REQUIRE(tpd_copy_to_tp_firmware_data(input) == 2);
	REQUIRE(memcmp(firmware->data, "abcdWX", 6) == 0);
	REQUIRE(load_u32(POSITION_OFFSET) == 6);
	return true;
}

static bool test_copy_empty_string(void)
{
	char input[] = "";

	reset_state();
	prepare_firmware("abcd", 4, 1);
	REQUIRE(tpd_copy_to_tp_firmware_data(input) == 0);
	REQUIRE(load_u32(POSITION_OFFSET) == 1);
	REQUIRE(call_count == 1 && calls[0] == CALL_MEMCPY);
	return true;
}

static bool test_copy_ignores_old_offsets(void)
{
	char input[] = "abc";
	struct tpd_firmware_data decoy = { .size = 3, .data = data_pool[0] };

	reset_state();
	store_pointer(OLD_FIRMWARE_OFFSET, &decoy);
	REQUIRE(tpd_copy_to_tp_firmware_data(input) == -ENOMEM);
	return true;
}

struct test_case {
	const char *name;
	bool (*run)(void);
};

int main(void)
{
	static const struct test_case tests[] = {
		{ "alloc_success", test_alloc_success },
		{ "alloc_replaces_existing_buffer", test_alloc_replaces_existing_buffer },
		{ "alloc_descriptor_failure", test_alloc_descriptor_failure },
		{ "alloc_data_failure_preserves_stock_slot", test_alloc_data_failure_preserves_stock_slot },
		{ "copy_missing_descriptor", test_copy_missing_descriptor },
		{ "copy_missing_data", test_copy_missing_data },
		{ "copy_zero_size", test_copy_zero_size },
		{ "copy_at_end", test_copy_at_end },
		{ "copy_full_string", test_copy_full_string },
		{ "copy_truncated_string", test_copy_truncated_string },
		{ "copy_empty_string", test_copy_empty_string },
		{ "copy_ignores_old_offsets", test_copy_ignores_old_offsets },
	};
	size_t index;
	size_t passed = 0;

	for (index = 0; index < ARRAY_SIZE(tests); index++) {
		if (tests[index].run()) {
			printf("PASS %s\n", tests[index].name);
			passed++;
		} else {
			printf("FAIL %s\n", tests[index].name);
		}
	}
	printf("SUMMARY %zu/%zu passed\n", passed, ARRAY_SIZE(tests));
	return passed == ARRAY_SIZE(tests) ? 0 : 1;
}
