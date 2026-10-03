#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef int64_t __int64;
typedef int64_t loff_t;
typedef uint8_t u8;
typedef uint32_t u32;
typedef long ssize_t;

struct file;
struct kobject;
struct bin_attribute;
struct mutex { uint8_t opaque[64]; };

struct tpd_firmware_data {
    size_t size;
    void *data;
    uint8_t reserved[8];
};

static __int64 tpd_cdev;
static uint8_t cdev_storage[0xd00];
static uint8_t firmware_storage[0x100];
static struct tpd_firmware_data firmware;
static unsigned int printk_calls;
static unsigned int lock_calls;
static unsigned int unlock_calls;
static uintptr_t last_lock;
static uintptr_t last_unlock;

int printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

void mutex_lock(struct mutex *lock)
{
    lock_calls++;
    last_lock = (uintptr_t)lock;
}

void mutex_unlock(struct mutex *lock)
{
    unlock_calls++;
    last_unlock = (uintptr_t)lock;
}

#include "/drivers/reverse_engineering/validation/reconstructed/zte_tpd/attestation/tpd_sysfs_fwimage_store_exact_v3/exact_revalidation_20260902/source/tpd_sysfs_fwimage_store.c"

static unsigned int failures;

static void check(int condition, const char *name)
{
    if (condition)
        printf("PASS %s\n", name);
    else {
        printf("FAIL %s\n", name);
        failures++;
    }
}

static void reset_fixture(void)
{
    memset(cdev_storage, 0, sizeof(cdev_storage));
    memset(firmware_storage, 0xa5, sizeof(firmware_storage));
    memset(&firmware, 0, sizeof(firmware));
    tpd_cdev = (__int64)(uintptr_t)cdev_storage;
    printk_calls = 0;
    lock_calls = 0;
    unlock_calls = 0;
    last_lock = 0;
    last_unlock = 0;
}

static void install_firmware(size_t size)
{
    firmware.size = size;
    firmware.data = firmware_storage;
    *(struct tpd_firmware_data **)(cdev_storage + 0xc58) = &firmware;
}

static u32 position(void)
{
    return *(u32 *)(cdev_storage + 0x448);
}

static void test_missing_firmware(void)
{
    char input[8] = {0};
    reset_fixture();
    check(tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0, sizeof(input)) == -ENOMEM,
          "missing_firmware_errno");
    check(printk_calls == 1 && lock_calls == 0 && unlock_calls == 0,
          "missing_firmware_no_lock");
}

static void test_missing_data(void)
{
    char input[8] = {0};
    reset_fixture();
    firmware.size = 32;
    *(struct tpd_firmware_data **)(cdev_storage + 0xc58) = &firmware;
    check(tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0, sizeof(input)) == -ENOMEM,
          "missing_data_errno");
    check(printk_calls == 1 && lock_calls == 0, "missing_data_no_lock");
}

static void test_invalid_size(void)
{
    char input[8] = {0};
    reset_fixture();
    install_firmware(0);
    check(tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0, sizeof(input)) == -EINVAL,
          "invalid_size_errno");
    check(printk_calls == 1 && lock_calls == 0, "invalid_size_no_lock");
}

static void test_position_at_end(void)
{
    char input[8] = {0};
    reset_fixture();
    install_firmware(16);
    *(u32 *)(cdev_storage + 0x448) = 16;
    check(tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0, sizeof(input)) == -EINVAL,
          "end_position_errno");
    check(position() == 0 && lock_calls == 0, "end_position_resets_without_lock");
}

static void test_bounded_write(void)
{
    char input[8] = "ABCDEFG";
    reset_fixture();
    install_firmware(32);
    check(tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0, 7) == 7,
          "bounded_write_return");
    check(position() == 7 && memcmp(firmware_storage, input, 7) == 0,
          "bounded_write_payload_and_position");
    check(lock_calls == 1 && unlock_calls == 1,
          "bounded_write_lock_pair");
    check(last_lock == (uintptr_t)cdev_storage + 0xc60 &&
          last_unlock == (uintptr_t)cdev_storage + 0xc60,
          "bounded_write_mutex_offset");
}

static void test_clamped_write(void)
{
    char input[16] = "0123456789ABCDE";
    reset_fixture();
    install_firmware(10);
    *(u32 *)(cdev_storage + 0x448) = 6;
    check(tpd_sysfs_fwimage_store(NULL, NULL, NULL, input, 0, 16) == 4,
          "clamped_write_return");
    check(position() == 10 && memcmp(firmware_storage + 6, input, 4) == 0,
          "clamped_write_payload_and_position");
}

static void test_chunked_write_and_reset(void)
{
    char first[4] = "abc";
    char second[4] = "XYZ";
    reset_fixture();
    install_firmware(6);
    check(tpd_sysfs_fwimage_store(NULL, NULL, NULL, first, 0, 3) == 3,
          "chunk_first_return");
    check(tpd_sysfs_fwimage_store(NULL, NULL, NULL, second, 0, 3) == 3,
          "chunk_second_return");
    check(position() == 6 && memcmp(firmware_storage, "abcXYZ", 6) == 0,
          "chunked_payload_and_position");
    check(tpd_sysfs_fwimage_store(NULL, NULL, NULL, second, 0, 1) == -EINVAL,
          "chunk_end_reset_return");
    check(position() == 0, "chunk_end_reset_position");
}

int main(void)
{
    test_missing_firmware();
    test_missing_data();
    test_invalid_size();
    test_position_at_end();
    test_bounded_write();
    test_clamped_write();
    test_chunked_write_and_reset();
    printf("SUMMARY tests=19 failures=%u\n", failures);
    return failures ? 1 : 0;
}
