#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
typedef long long __int64;
typedef uint64_t _QWORD;
typedef uint32_t _DWORD;

struct file {
	int unused;
};

struct ztp_device;

long long tpd_cdev;
void *remove_proc_entry;

static unsigned int printk_calls;
static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static unsigned int vfree_calls;
static unsigned int kfree_calls;
static unsigned int callback_calls;
static uintptr_t callback_argument;
static uintptr_t callback_data;
static int callback_length;
static unsigned int fail_kmalloc;
static unsigned int fail_vmalloc;

static int firmware_callback(struct ztp_device *cdev, char *data, int length)
{
	callback_calls++;
	callback_argument = (uintptr_t)cdev;
	callback_data = (uintptr_t)data;
	callback_length = length;
	return 0;
}

int printk(const char *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

void mutex_lock(__int64 lock)
{
	(void)lock;
	mutex_lock_calls++;
}

void mutex_unlock(__int64 lock)
{
	(void)lock;
	mutex_unlock_calls++;
}

void vfree(_QWORD address)
{
	vfree_calls++;
	free((void *)(uintptr_t)address);
}

void kfree(__int64 address)
{
	kfree_calls++;
	free((void *)(uintptr_t)address);
}

_QWORD vmalloc(size_t size)
{
	if (fail_vmalloc)
		return 0;
	return (_QWORD)(uintptr_t)malloc(size);
}

__int64 _kmalloc_cache_noprof(void *cache, size_t size, size_t align)
{
	(void)cache;
	(void)size;
	if (fail_kmalloc)
		return 0;
	return (__int64)(uintptr_t)calloc(1, align);
}

int kstrtouint_from_user(__int64 buffer, __int64 count, unsigned int base,
				unsigned int *value)
{
	char local[64];
	char *end;
	unsigned long parsed;
	size_t length = (size_t)count;

	if (base != 10 || length == 0 || length >= sizeof(local))
		return -EINVAL;
	memcpy(local, (const void *)(uintptr_t)buffer, length);
	local[length] = '\0';
	parsed = strtoul(local, &end, base);
	if (end == local || (*end != '\0' && *end != '\n') || parsed > UINT32_MAX)
		return -EINVAL;
	*value = (unsigned int)parsed;
	return 0;
}

#include "../../../reconstructed/zte_tpd/tpfwupgrade_store.c"

struct firmware_fixture {
	uint64_t size;
	void *data;
};

struct fixture {
	uint8_t device[0xe18 + sizeof(void *)];
	struct firmware_fixture *firmware;
};

static void fail(const char *case_name, const char *message)
{
	fprintf(stderr, "FAIL %s: %s\n", case_name, message);
	exit(1);
}

static void expect(int condition, const char *case_name, const char *message)
{
	if (!condition)
		fail(case_name, message);
}

static void store_ptr(uint8_t *base, size_t offset, void *value)
{
	memcpy(base + offset, &value, sizeof(value));
}

static void *load_ptr(const uint8_t *base, size_t offset)
{
	void *value;
	memcpy(&value, base + offset, sizeof(value));
	return value;
}

static void fixture_init(struct fixture *fixture, int with_firmware,
				 int with_callback)
{
	memset(fixture, 0, sizeof(*fixture));
	fixture->firmware = NULL;
	if (with_firmware) {
		fixture->firmware = calloc(1, sizeof(*fixture->firmware));
		fixture->firmware->size = 4;
		fixture->firmware->data = malloc(4);
		memset(fixture->firmware->data, 0xa5, 4);
		store_ptr(fixture->device, 0xc58, fixture->firmware);
	}
	if (with_callback)
		store_ptr(fixture->device, 0xe18, (void *)firmware_callback);
	tpd_cdev = (long long)(uintptr_t)fixture->device;
	printk_calls = 0;
	mutex_lock_calls = 0;
	mutex_unlock_calls = 0;
	vfree_calls = 0;
	kfree_calls = 0;
	callback_calls = 0;
	callback_argument = 0;
	callback_data = 1;
	callback_length = -1;
	fail_kmalloc = 0;
	fail_vmalloc = 0;
	*(uint32_t *)(fixture->device + 0x448) = 7;
}

static ssize_t run_store(struct fixture *fixture, const char *input)
{
	struct file file = {0};
	loff_t offset = 0;
	return tpfwupgrade_store(&file, input, strlen(input), &offset);
}

static void test_parse_failure_has_no_side_effects(void)
{
	const char *case_name = "parse_failure_has_no_side_effects";
	struct fixture fixture;

	fixture_init(&fixture, 0, 1);
	expect(run_store(&fixture, "invalid") == -EINVAL, case_name,
	       "invalid input did not return -EINVAL");
	expect(printk_calls == 0, case_name, "parse failure was logged");
	expect(mutex_lock_calls == 0 && mutex_unlock_calls == 0, case_name,
	       "mutex changed after parse failure");
	expect(callback_calls == 0, case_name, "callback ran after parse failure");
}

static void test_small_value_cleans_firmware_and_calls_callback(void)
{
	const char *case_name = "small_value_cleans_firmware_and_calls_callback";
	struct fixture fixture;
	void *old_firmware;

	fixture_init(&fixture, 1, 1);
	old_firmware = fixture.firmware;
	expect(run_store(&fixture, "10") == 2, case_name,
	       "cleanup write did not return count");
	expect(printk_calls == 1, case_name, "valid write was not logged");
	expect(mutex_lock_calls == 1 && mutex_unlock_calls == 1, case_name,
	       "mutex contract differs");
	expect(callback_calls == 1, case_name, "firmware callback was not called");
	expect(callback_argument == (uintptr_t)fixture.device, case_name,
	       "callback device argument differs");
	expect(callback_data == 0 && callback_length == 0, case_name,
	       "cleanup callback arguments differ");
	expect(vfree_calls == 1 && kfree_calls == 1, case_name,
	       "firmware buffers were not released");
	expect(load_ptr(fixture.device, 0xc58) == NULL, case_name,
	       "firmware pointer was not cleared");
	expect(*(uint32_t *)(fixture.device + 0x448) == 0, case_name,
	       "firmware state flag was not cleared");
	(void)old_firmware;
}

static void test_threshold_allocates_and_zeroes_firmware(void)
{
	const char *case_name = "threshold_allocates_and_zeroes_firmware";
	struct fixture fixture;
	struct firmware_fixture *firmware;
	unsigned char *data;

	fixture_init(&fixture, 0, 1);
	expect(run_store(&fixture, "11") == 2, case_name,
	       "allocation write did not return count");
	firmware = load_ptr(fixture.device, 0xc58);
	expect(firmware != NULL, case_name, "firmware struct was not allocated");
	expect(firmware->size == 11, case_name, "firmware size differs");
	expect(firmware->data != NULL, case_name, "firmware data was not allocated");
	data = firmware->data;
	for (size_t index = 0; index < 35; index++)
		expect(data[index] == 0, case_name, "firmware data was not zeroed");
	expect(callback_calls == 0, case_name, "callback ran during allocation");
	expect(mutex_lock_calls == 1 && mutex_unlock_calls == 1, case_name,
	       "mutex contract differs");
	vfree((_QWORD)(uintptr_t)data);
	kfree((__int64)(uintptr_t)firmware);
	store_ptr(fixture.device, 0xc58, NULL);
}

static void test_struct_allocation_failure_returns_enomem(void)
{
	const char *case_name = "struct_allocation_failure_returns_enomem";
	struct fixture fixture;

	fixture_init(&fixture, 0, 0);
	fail_kmalloc = 1;
	expect(run_store(&fixture, "11") == -ENOMEM, case_name,
	       "struct allocation failure did not return -ENOMEM");
	expect(load_ptr(fixture.device, 0xc58) == NULL, case_name,
	       "failed struct allocation changed firmware pointer");
	expect(*(uint32_t *)(fixture.device + 0x448) == 0, case_name,
	       "failed struct allocation did not clear state");
	expect(mutex_lock_calls == 1 && mutex_unlock_calls == 1, case_name,
	       "mutex was not released after allocation failure");
}

static void test_data_allocation_failure_returns_enomem(void)
{
	const char *case_name = "data_allocation_failure_returns_enomem";
	struct fixture fixture;
	struct firmware_fixture *firmware;

	fixture_init(&fixture, 0, 0);
	fail_vmalloc = 1;
	expect(run_store(&fixture, "11") == -ENOMEM, case_name,
	       "data allocation failure did not return -ENOMEM");
	firmware = load_ptr(fixture.device, 0xc58);
	expect(firmware != NULL, case_name,
	       "failure path did not retain stock dangling slot for cleanup review");
	expect(kfree_calls == 1 && vfree_calls == 0, case_name,
	       "failed data allocation cleanup differs");
	*(void **)(fixture.device + 0xc58) = NULL;
	(void)firmware;
}

int main(void)
{
	test_parse_failure_has_no_side_effects();
	test_small_value_cleans_firmware_and_calls_callback();
	test_threshold_allocates_and_zeroes_firmware();
	test_struct_allocation_failure_returns_enomem();
	test_data_allocation_failure_returns_enomem();
	puts("PASS tpfwupgrade_store host tests (5 cases)");
	return 0;
}
