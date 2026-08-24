#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

typedef uint32_t u32;
typedef unsigned char u8;
typedef unsigned long size_t_kernel;
typedef long ssize_t;
typedef long long zte_loff_t;
typedef long long __int64;
#define loff_t zte_loff_t
#ifndef ENOMEM
#define ENOMEM 12
#endif
#ifndef EINVAL
#define EINVAL 22
#endif

struct file {
	int unused;
};

struct kobject {
	int unused;
};

struct bin_attribute {
	int unused;
};

struct mutex {
	int locked;
};

struct tpd_firmware_data {
	size_t_kernel size;
	void *data;
};

static long long tpd_cdev;
static unsigned int printk_calls;
static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static unsigned int vfree_calls;
static unsigned int kfree_calls;

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

static void vfree_stub(void *pointer)
{
	(void)pointer;
	++vfree_calls;
}

static void kfree_stub(const void *pointer)
{
	(void)pointer;
	++kfree_calls;
}

#define printk printk_stub
#define mutex_lock mutex_lock_stub
#define mutex_unlock mutex_unlock_stub
#define vfree vfree_stub
#define kfree kfree_stub
#define READ_ONCE(value) (value)

#include "../../../reconstructed/zte_tpd/tpd_sysfs_fwimage_show.c"

struct fixture {
	unsigned char device[0xc60 + sizeof(struct mutex)];
	struct tpd_firmware_data firmware;
	char payload[16];
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
	vfree_calls = 0;
	kfree_calls = 0;
}

static void fixture_init(struct fixture *fixture)
{
	struct tpd_firmware_data *firmware_pointer = NULL;

	memset(fixture, 0, sizeof(*fixture));
	tpd_cdev = (long long)(uintptr_t)fixture->device;
	memcpy(fixture->device + 0xc58, &firmware_pointer, sizeof(firmware_pointer));
	reset_counters();
}

static void set_firmware(struct fixture *fixture, const char *payload)
{
	struct tpd_firmware_data *firmware_pointer = &fixture->firmware;

	fixture->firmware.size = strlen(payload);
	fixture->firmware.data = fixture->payload;
	memset(fixture->payload, 0, sizeof(fixture->payload));
	memcpy(fixture->payload, payload, fixture->firmware.size);
	memcpy(fixture->device + 0xc58, &firmware_pointer, sizeof(firmware_pointer));
}

static void test_missing_firmware(void)
{
	const char *name = "missing_firmware";
	struct fixture fixture;
	char output[8] = {0};
	ssize_t result;

	fixture_init(&fixture);
	result = tpd_sysfs_fwimage_show(NULL, NULL, NULL, output, 0, sizeof(output));
	expect_case(result == -12 && printk_calls == 1U, name,
			    "missing firmware contract differs");
	expect_case(mutex_lock_calls == 0U, name, "missing firmware locked mutex");
}

static void test_invalid_size(void)
{
	const char *name = "invalid_size";
	struct fixture fixture;
	struct tpd_firmware_data *firmware_pointer;
	char output[8] = {0};
	ssize_t result;

	fixture_init(&fixture);
	fixture.firmware.size = 0;
	fixture.firmware.data = fixture.payload;
	firmware_pointer = &fixture.firmware;
	memcpy(fixture.device + 0xc58, &firmware_pointer, sizeof(firmware_pointer));
	result = tpd_sysfs_fwimage_show(NULL, NULL, NULL, output, 0, sizeof(output));
	expect_case(result == -22 && printk_calls == 1U, name,
			    "invalid size contract differs");
}

static void test_chunked_copy(void)
{
	const char *name = "chunked_copy";
	struct fixture fixture;
	char output[8] = {0};
	ssize_t result;

	fixture_init(&fixture);
	set_firmware(&fixture, "abcdef");
	result = tpd_sysfs_fwimage_show(NULL, NULL, NULL, output, 0, 3);
	expect_case(result == 3 && memcmp(output, "abc", 3) == 0, name,
			    "first chunk differs");
	result = tpd_sysfs_fwimage_show(NULL, NULL, NULL, output, 3, 8);
	expect_case(result == 3 && memcmp(output, "def", 3) == 0, name,
			    "second chunk differs");
	expect_case(mutex_lock_calls == 2U && mutex_unlock_calls == 2U, name,
			    "mutex contract differs");
}

static void test_cleanup_at_end(void)
{
	const char *name = "cleanup_at_end";
	struct fixture fixture;
	char output[8] = {0};
	struct tpd_firmware_data *firmware_pointer;
	ssize_t result;

	fixture_init(&fixture);
	set_firmware(&fixture, "ok");
	memcpy(fixture.device + 0x448, &(u32){2}, sizeof(u32));
	result = tpd_sysfs_fwimage_show(NULL, NULL, NULL, output, 2, sizeof(output));
	expect_case(result == 0 && vfree_calls == 1U && kfree_calls == 1U, name,
			    "cleanup contract differs");
	memcpy(&firmware_pointer, fixture.device + 0xc58, sizeof(firmware_pointer));
	expect_case(firmware_pointer == NULL, name, "firmware pointer was not cleared");
	expect_case(mutex_lock_calls == 1U && mutex_unlock_calls == 1U, name,
			    "cleanup mutex contract differs");
}

int main(void)
{
	test_missing_firmware();
	test_invalid_size();
	test_chunked_copy();
	test_cleanup_at_end();
	(void)puts("tpd_sysfs_fwimage_show host contract: PASS (4 cases)");
	return 0;
}
