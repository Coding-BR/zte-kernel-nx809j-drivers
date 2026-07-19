#include <stdbool.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __int64 long long
#define ENOMEM 12
#define EINVAL 22
#define READ_ONCE(value) (value)
#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))

typedef uint8_t u8;
typedef uint32_t u32;
struct file { int unused; };
struct kobject { int unused; };
struct mutex { int unused; };
struct bin_attribute;

struct bin_attribute {
	ssize_t (*read)(struct file *, struct kobject *, struct bin_attribute *,
			char *, loff_t, size_t);
	ssize_t (*write)(struct file *, struct kobject *, struct bin_attribute *,
			 char *, loff_t, size_t);
};

struct tpd_firmware_data {
	size_t size;
	void *data;
};

_Static_assert(offsetof(struct tpd_firmware_data, data) == 0x08,
	       "firmware data pointer offset");
_Static_assert(sizeof(struct tpd_firmware_data) == 0x10,
	       "firmware descriptor size");

enum call_id {
	CALL_PRINTK = 1,
	CALL_LOCK,
	CALL_COPY,
	CALL_VFREE,
	CALL_KFREE,
	CALL_UNLOCK,
};

#define CDEV_SIZE 0xc80
#define POSITION_OFFSET 0x448
#define FIRMWARE_OFFSET 0xc58
#define MUTEX_OFFSET 0xc60
#define MAX_CALLS 16

static union {
	max_align_t alignment;
	u8 bytes[CDEV_SIZE];
} cdev_storage;

static __int64 tpd_cdev;
static struct tpd_firmware_data *owned_firmware;
static void *owned_data;
static enum call_id calls[MAX_CALLS];
static size_t call_count;
static char last_printk[256];
static void *last_lock;

static void record_call(enum call_id call)
{
	if (call_count < MAX_CALLS)
		calls[call_count] = call;
	call_count++;
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

static void test_mutex_lock(struct mutex *mutex)
{
	record_call(CALL_LOCK);
	last_lock = mutex;
}

static void test_mutex_unlock(struct mutex *mutex)
{
	record_call(CALL_UNLOCK);
	last_lock = mutex;
}

static void *test_memcpy(void *destination, const void *source, size_t count)
{
	record_call(CALL_COPY);
	return __builtin_memcpy(destination, source, count);
}

static void test_vfree(const void *pointer)
{
	record_call(CALL_VFREE);
	if (pointer == owned_data)
		owned_data = NULL;
	free((void *)pointer);
}

static void test_kfree(const void *pointer)
{
	record_call(CALL_KFREE);
	if (pointer == owned_firmware)
		owned_firmware = NULL;
	free((void *)pointer);
}

#define mutex_lock test_mutex_lock
#define mutex_unlock test_mutex_unlock
#define memcpy test_memcpy
#define vfree test_vfree
#define kfree test_kfree

#include "../../../curated/zte_tpd/tpd_sysfs_fwimage_show.c"
#include "../../../curated/zte_tpd/tpd_sysfs_fwimage_store.c"

#undef mutex_lock
#undef mutex_unlock
#undef memcpy
#undef vfree
#undef kfree

static void store_pointer(size_t offset, const void *pointer)
{
	__builtin_memcpy(cdev_storage.bytes + offset, &pointer, sizeof(pointer));
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
	if (owned_data)
		free(owned_data);
	if (owned_firmware)
		free(owned_firmware);
	owned_data = NULL;
	owned_firmware = NULL;
	memset(&cdev_storage, 0, sizeof(cdev_storage));
	memset(calls, 0, sizeof(calls));
	memset(last_printk, 0, sizeof(last_printk));
	tpd_cdev = (__int64)(uintptr_t)cdev_storage.bytes;
	call_count = 0;
	last_lock = NULL;
}

static void prepare_firmware(const char *bytes, size_t size, u32 position)
{
	owned_firmware = calloc(1, sizeof(*owned_firmware));
	owned_data = malloc(size ? size : 1);
	if (!owned_firmware || !owned_data) {
		fprintf(stderr, "host allocation failed\n");
		exit(2);
	}
	if (size)
		__builtin_memcpy(owned_data, bytes, size);
	owned_firmware->size = size;
	owned_firmware->data = owned_data;
	store_pointer(FIRMWARE_OFFSET, owned_firmware);
	store_u32(POSITION_OFFSET, position);
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "%s:%d: requirement failed: %s\n", \
			__func__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static bool test_show_missing_descriptor(void)
{
	char output[4] = { 0 };

	reset_state();
	REQUIRE(tpd_sysfs_fwimage_show(NULL, NULL, NULL, output, 0, 4) == -ENOMEM);
	REQUIRE(strcmp(last_printk, "\001" "3Need set fw image size first") == 0);
	REQUIRE(call_count == 1 && calls[0] == CALL_PRINTK);
	return true;
}

static bool test_show_missing_data(void)
{
	char output[4] = { 0 };
	struct tpd_firmware_data descriptor = { .size = 4, .data = NULL };

	reset_state();
	store_pointer(FIRMWARE_OFFSET, &descriptor);
	REQUIRE(tpd_sysfs_fwimage_show(NULL, NULL, NULL, output, 0, 4) == -ENOMEM);
	REQUIRE(call_count == 1 && calls[0] == CALL_PRINTK);
	return true;
}

static bool test_show_zero_size(void)
{
	char output[4] = { 0 };

	reset_state();
	prepare_firmware("", 0, 0);
	REQUIRE(tpd_sysfs_fwimage_show(NULL, NULL, NULL, output, 0, 4) == -EINVAL);
	REQUIRE(strcmp(last_printk, "\001" "3Invalid firmware size") == 0);
	REQUIRE(call_count == 1 && calls[0] == CALL_PRINTK);
	return true;
}

static bool test_show_full_copy(void)
{
	char output[4] = { 0 };

	reset_state();
	prepare_firmware("abcdef", 6, 1);
	REQUIRE(tpd_sysfs_fwimage_show(NULL, NULL, NULL, output, 0, 3) == 3);
	REQUIRE(memcmp(output, "bcd", 3) == 0);
	REQUIRE(load_u32(POSITION_OFFSET) == 4);
	REQUIRE(call_count == 3);
	REQUIRE(calls[0] == CALL_LOCK && calls[1] == CALL_COPY && calls[2] == CALL_UNLOCK);
	REQUIRE(last_lock == cdev_storage.bytes + MUTEX_OFFSET);
	return true;
}

static bool test_show_truncated_copy(void)
{
	char output[8] = { 0 };

	reset_state();
	prepare_firmware("abcdef", 6, 4);
	REQUIRE(tpd_sysfs_fwimage_show(NULL, NULL, NULL, output, 0, 8) == 2);
	REQUIRE(memcmp(output, "ef", 2) == 0);
	REQUIRE(load_u32(POSITION_OFFSET) == 6);
	return true;
}

static bool test_show_cleanup_at_end(void)
{
	char output[2] = { 0 };
	void *null_pointer = (void *)(uintptr_t)1;

	reset_state();
	prepare_firmware("abcd", 4, 4);
	REQUIRE(tpd_sysfs_fwimage_show(NULL, NULL, NULL, output, 0, 2) == 0);
	__builtin_memcpy(&null_pointer, cdev_storage.bytes + FIRMWARE_OFFSET,
			 sizeof(null_pointer));
	REQUIRE(null_pointer == NULL);
	REQUIRE(load_u32(POSITION_OFFSET) == 0);
	REQUIRE(call_count == 5);
	REQUIRE(calls[0] == CALL_LOCK && calls[1] == CALL_VFREE);
	REQUIRE(calls[2] == CALL_KFREE && calls[3] == CALL_PRINTK);
	REQUIRE(calls[4] == CALL_UNLOCK);
	REQUIRE(strcmp(last_printk, "\001" "6tpd, tp_firmware free.\n") == 0);
	return true;
}

static bool test_show_ignores_sysfs_metadata(void)
{
	char output[2] = { 0 };
	struct file file;
	struct kobject kobject;
	struct bin_attribute attribute;

	reset_state();
	prepare_firmware("xy", 2, 0);
	REQUIRE(tpd_sysfs_fwimage_show(&file, &kobject, &attribute, output, 999, 1) == 1);
	REQUIRE(output[0] == 'x');
	return true;
}

static bool test_store_missing_descriptor(void)
{
	char input[] = "data";

	reset_state();
	REQUIRE(tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0, 4) == -ENOMEM);
	REQUIRE(strcmp(last_printk, "\001" "3Need set fw image size first") == 0);
	REQUIRE(call_count == 1 && calls[0] == CALL_PRINTK);
	return true;
}

static bool test_store_missing_data(void)
{
	char input[] = "data";
	struct tpd_firmware_data descriptor = { .size = 4, .data = NULL };

	reset_state();
	store_pointer(FIRMWARE_OFFSET, &descriptor);
	REQUIRE(tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0, 4) == -ENOMEM);
	return true;
}

static bool test_store_zero_size(void)
{
	char input[] = "data";

	reset_state();
	prepare_firmware("", 0, 0);
	REQUIRE(tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0, 4) == -EINVAL);
	REQUIRE(strcmp(last_printk, "\001" "3Invalid firmware size") == 0);
	return true;
}

static bool test_store_resets_position_at_end(void)
{
	char input[] = "x";

	reset_state();
	prepare_firmware("abcd", 4, 4);
	REQUIRE(tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0, 1) == -EINVAL);
	REQUIRE(load_u32(POSITION_OFFSET) == 0);
	REQUIRE(call_count == 0);
	return true;
}

static bool test_store_full_copy(void)
{
	char input[] = "XYZ";

	reset_state();
	prepare_firmware("abcdef", 6, 1);
	REQUIRE(tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0, 3) == 3);
	REQUIRE(memcmp(owned_data, "aXYZef", 6) == 0);
	REQUIRE(load_u32(POSITION_OFFSET) == 4);
	REQUIRE(call_count == 4);
	REQUIRE(calls[0] == CALL_PRINTK && calls[1] == CALL_LOCK);
	REQUIRE(calls[2] == CALL_COPY && calls[3] == CALL_UNLOCK);
	REQUIRE(strstr(last_printk, "fw_data_pos: 1, count:3") != NULL);
	return true;
}

static bool test_store_truncated_copy(void)
{
	char input[] = "WXYZ";

	reset_state();
	prepare_firmware("abcdef", 6, 4);
	REQUIRE(tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0, 4) == 2);
	REQUIRE(memcmp(owned_data, "abcdWX", 6) == 0);
	REQUIRE(load_u32(POSITION_OFFSET) == 6);
	return true;
}

static bool test_store_ignores_sysfs_metadata(void)
{
	char input[] = "Q";
	struct file file;
	struct kobject kobject;
	struct bin_attribute attribute;

	reset_state();
	prepare_firmware("ab", 2, 0);
	REQUIRE(tpd_sysfs_fwimage_store(&file, &kobject, &attribute, input, 999, 1) == 1);
	REQUIRE(memcmp(owned_data, "Qb", 2) == 0);
	return true;
}

static bool test_bin_attribute_callback_signatures(void)
{
	char output[2] = { 0 };
	char input[] = "Z";
	struct bin_attribute attribute = {
		.read = tpd_sysfs_fwimage_show,
		.write = tpd_sysfs_fwimage_store,
	};

	reset_state();
	prepare_firmware("ab", 2, 0);
	REQUIRE(attribute.read(NULL, NULL, &attribute, output, 0, 1) == 1);
	store_u32(POSITION_OFFSET, 0);
	REQUIRE(attribute.write(NULL, NULL, &attribute, input, 0, 1) == 1);
	REQUIRE(output[0] == 'a' && ((char *)owned_data)[0] == 'Z');
	return true;
}

struct test_case {
	const char *name;
	bool (*run)(void);
};

int main(void)
{
	static const struct test_case tests[] = {
		{ "show_missing_descriptor", test_show_missing_descriptor },
		{ "show_missing_data", test_show_missing_data },
		{ "show_zero_size", test_show_zero_size },
		{ "show_full_copy", test_show_full_copy },
		{ "show_truncated_copy", test_show_truncated_copy },
		{ "show_cleanup_at_end", test_show_cleanup_at_end },
		{ "show_ignores_sysfs_metadata", test_show_ignores_sysfs_metadata },
		{ "store_missing_descriptor", test_store_missing_descriptor },
		{ "store_missing_data", test_store_missing_data },
		{ "store_zero_size", test_store_zero_size },
		{ "store_resets_position_at_end", test_store_resets_position_at_end },
		{ "store_full_copy", test_store_full_copy },
		{ "store_truncated_copy", test_store_truncated_copy },
		{ "store_ignores_sysfs_metadata", test_store_ignores_sysfs_metadata },
		{ "bin_attribute_callback_signatures", test_bin_attribute_callback_signatures },
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
	reset_state();
	printf("SUMMARY %zu/%zu passed\n", passed, ARRAY_SIZE(tests));
	return passed == ARRAY_SIZE(tests) ? 0 : 1;
}
