#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/types.h>

typedef uint32_t u32;
typedef unsigned char u8;
typedef unsigned long size_t_kernel;
typedef long long __int64;
typedef long long zte_loff_t;
#define loff_t zte_loff_t

struct file { int unused; };
struct kobject { int unused; };
struct bin_attribute { int unused; };
struct mutex { int locked; };

struct tpd_firmware_data {
	size_t_kernel size;
	void *data;
};

static long long tpd_cdev;
static unsigned int printk_calls;
static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;

static int printk_stub(const char *format, ...)
{
	(void)format;
	++printk_calls;
	return 0;
}

static void mutex_lock_stub(struct mutex *lock)
{
	++mutex_lock_calls;
	lock->locked = 1;
}

static void mutex_unlock_stub(struct mutex *lock)
{
	++mutex_unlock_calls;
	lock->locked = 0;
}

#define printk printk_stub
#define mutex_lock mutex_lock_stub
#define mutex_unlock mutex_unlock_stub

#include "../../../../../../kernel_development/drivers/reconstructed/zte_tpd/tpd_sysfs_fwimage_store.c"

struct fixture {
	unsigned char device[0xc60 + sizeof(struct mutex)];
	struct tpd_firmware_data firmware;
	char firmware_bytes[16];
	struct mutex lock;
};

static void fail_case(const char *name, const char *message)
{
	(void)fprintf(stderr, "FAIL %s: %s\n", name, message);
	exit(1);
}

static void expect_case(int condition, const char *name, const char *message)
{
	if (!condition)
		fail_case(name, message);
}

static void reset_counters(void)
{
	printk_calls = 0;
	mutex_lock_calls = 0;
	mutex_unlock_calls = 0;
}

static void fixture_init(struct fixture *fixture)
{
	struct tpd_firmware_data *firmware_pointer = NULL;

	memset(fixture, 0, sizeof(*fixture));
	tpd_cdev = (long long)(uintptr_t)fixture->device;
	memcpy(fixture->device + 0xc58, &firmware_pointer,
	       sizeof(firmware_pointer));
	reset_counters();
}

static void set_firmware(struct fixture *fixture, size_t_kernel size)
{
	struct tpd_firmware_data *firmware_pointer = &fixture->firmware;

	fixture->firmware.size = size;
	fixture->firmware.data = fixture->firmware_bytes;
	memset(fixture->firmware_bytes, 0, sizeof(fixture->firmware_bytes));
	memcpy(fixture->device + 0xc58, &firmware_pointer,
	       sizeof(firmware_pointer));
}

static u32 position_of(const struct fixture *fixture)
{
	u32 position;

	memcpy(&position, fixture->device + 0x448, sizeof(position));
	return position;
}

static void test_missing_firmware(void)
{
	const char *name = "missing_firmware";
	struct fixture fixture;
	char input[] = "abc";
	ssize_t result;

	fixture_init(&fixture);
	result = tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0,
					 sizeof(input) - 1);
	expect_case(result == -12 && printk_calls == 1U, name,
			    "missing firmware contract differs");
	expect_case(mutex_lock_calls == 0U, name,
			    "missing firmware locked mutex");
}

static void test_invalid_size(void)
{
	const char *name = "invalid_size";
	struct fixture fixture;
	char input[] = "abc";
	ssize_t result;

	fixture_init(&fixture);
	set_firmware(&fixture, 0);
	result = tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0,
					 sizeof(input) - 1);
	expect_case(result == -22 && printk_calls == 1U, name,
			    "invalid size contract differs");
}

static void test_bounded_write(void)
{
	const char *name = "bounded_write";
	struct fixture fixture;
	char input[] = "0123456789";
	ssize_t result;

	fixture_init(&fixture);
	set_firmware(&fixture, 6);
	result = tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0,
					 sizeof(input) - 1);
	expect_case(result == 6 && memcmp(fixture.firmware_bytes, "012345", 6) == 0,
			    name, "write was not bounded to firmware size");
	expect_case(position_of(&fixture) == 6U, name,
			    "position did not advance by copied bytes");
	expect_case(mutex_lock_calls == 1U && mutex_unlock_calls == 1U,
			    name, "mutex contract differs");
}

static void test_chunked_write(void)
{
	const char *name = "chunked_write";
	struct fixture fixture;
	char first[] = "abc";
	char second[] = "defghi";
	ssize_t result;

	fixture_init(&fixture);
	set_firmware(&fixture, 6);
	result = tpd_sysfs_fwimage_store(NULL, NULL, NULL, first, 0, 3);
	expect_case(result == 3 && position_of(&fixture) == 3U, name,
			    "first chunk differs");
	result = tpd_sysfs_fwimage_store(NULL, NULL, NULL, second, 3,
					 sizeof(second) - 1);
	expect_case(result == 3 && memcmp(fixture.firmware_bytes, "abcdef", 6) == 0,
			    name, "second chunk differs");
	expect_case(position_of(&fixture) == 6U, name,
			    "chunked position differs");
	expect_case(mutex_lock_calls == 2U && mutex_unlock_calls == 2U,
			    name, "chunked mutex contract differs");
}

static void test_end_resets_position(void)
{
	const char *name = "end_resets_position";
	struct fixture fixture;
	char input[] = "z";
	u32 end = 4;
	ssize_t result;

	fixture_init(&fixture);
	set_firmware(&fixture, 4);
	memcpy(fixture.device + 0x448, &end, sizeof(end));
	result = tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 4, 1);
	expect_case(result == -22 && position_of(&fixture) == 0U, name,
			    "end-of-firmware reset contract differs");
	expect_case(mutex_lock_calls == 0U, name,
			    "end-of-firmware path locked mutex");
}

int main(void)
{
	test_missing_firmware();
	test_invalid_size();
	test_bounded_write();
	test_chunked_write();
	test_end_resets_position();
	(void)puts("tpd_sysfs_fwimage_store host contract: PASS (5 cases)");
	return 0;
}
