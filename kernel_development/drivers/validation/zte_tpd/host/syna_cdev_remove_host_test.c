#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int64 long long
#define __int8 char
#define _QWORD uint64_t
#define _DWORD uint32_t
#define _BYTE uint8_t
#define LOBYTE(value) (*(uint8_t *)&(value))
#define unlikely(value) (value)

struct list_head {
    struct list_head *next;
    struct list_head *prev;
};

struct syna_tcm {
    _Alignas(uint64_t) uint8_t bytes[0x600];
};

union cdev_global_storage {
    uint64_t alignment;
    uint8_t bytes[0x100];
};

struct frame_entry {
    struct list_head links;
    void *buffer;
};

static union cdev_global_storage cdev_global_storage;
static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static unsigned int kfree_calls;
static unsigned int invalid_list_calls;
static unsigned int device_destroy_calls;
static unsigned int class_destroy_calls;
static unsigned int cdev_del_calls;
static unsigned int unregister_calls;
static unsigned int request_managed_device_calls;
static unsigned int devm_kfree_calls;
static unsigned int printk_calls;
static const char *last_printk_format;
static const char *last_printk_name;
static uint32_t last_unregistered_dev;
static uint32_t last_destroyed_dev;
static uint64_t last_destroyed_class;
static __int64 managed_device_result;
static __int64 last_devm_device;
static __int64 last_devm_buffer;

#define g_cdev_data (*(__int64 *)(void *)(cdev_global_storage.bytes + 0x00))
#define qword_31658 (*(_QWORD *)(void *)(cdev_global_storage.bytes + 0x08))
#define qword_31660 (*(_QWORD *)(void *)(cdev_global_storage.bytes + 0x10))
#define qword_31698 (*(_BYTE *)(void *)(cdev_global_storage.bytes + 0x48))
#define qword_316D0 (*(_QWORD *)(void *)(cdev_global_storage.bytes + 0x80))

static void mutex_lock(void *mutex)
{
    (void)mutex;
    mutex_lock_calls++;
}

static __int64 mutex_unlock(void *mutex)
{
    (void)mutex;
    mutex_unlock_calls++;
    return 0;
}

static void host_kfree(uintptr_t value)
{
    kfree_calls++;
    free((void *)value);
}

#define kfree(value) host_kfree((uintptr_t)(value))

static void __list_del_entry_valid_or_report(struct list_head *entry)
{
    invalid_list_calls++;
    entry->prev->next = entry->next;
    entry->next->prev = entry->prev;
}

static void device_destroy(uint64_t class, uint32_t dev)
{
    device_destroy_calls++;
    last_destroyed_class = class;
    last_destroyed_dev = dev;
}

static void class_destroy(uint64_t class)
{
    class_destroy_calls++;
    last_destroyed_class = class;
}

static void cdev_del(__int64 cdev)
{
    (void)cdev;
    cdev_del_calls++;
}

static __int64 unregister_chrdev_region(uint32_t dev, unsigned int count)
{
    (void)count;
    unregister_calls++;
    last_unregistered_dev = dev;
    return 0;
}

static __int64 syna_request_managed_device(void)
{
    request_managed_device_calls++;
    return managed_device_result;
}

static __int64 devm_kfree(__int64 device, __int64 buffer)
{
    devm_kfree_calls++;
    last_devm_device = device;
    last_devm_buffer = buffer;
    free((void *)(uintptr_t)buffer);
    return 0;
}

static int printk(const char *format, ...)
{
    va_list args;

    printk_calls++;
    last_printk_format = format;
    va_start(args, format);
    last_printk_name = va_arg(args, const char *);
    va_end(args);
    return 0;
}

#include "../../../reconstructed/zte_tpd/syna_cdev_remove.c"

static void write_u32(struct syna_tcm *tcm, size_t offset, uint32_t value)
{
    memcpy(tcm->bytes + offset, &value, sizeof(value));
}

static void write_u64(struct syna_tcm *tcm, size_t offset, uint64_t value)
{
    memcpy(tcm->bytes + offset, &value, sizeof(value));
}

static uint64_t read_u64(const struct syna_tcm *tcm, size_t offset)
{
    uint64_t value;

    memcpy(&value, tcm->bytes + offset, sizeof(value));
    return value;
}

static void reset_environment(void)
{
    memset(&cdev_global_storage, 0, sizeof(cdev_global_storage));
    mutex_lock_calls = 0;
    mutex_unlock_calls = 0;
    kfree_calls = 0;
    invalid_list_calls = 0;
    device_destroy_calls = 0;
    class_destroy_calls = 0;
    cdev_del_calls = 0;
    unregister_calls = 0;
    request_managed_device_calls = 0;
    devm_kfree_calls = 0;
    printk_calls = 0;
    last_printk_format = NULL;
    last_printk_name = NULL;
    last_unregistered_dev = 0;
    last_destroyed_dev = 0;
    last_destroyed_class = 0;
    managed_device_result = 0;
    last_devm_device = 0;
    last_devm_buffer = 0;
}

static int expect(int condition, const char *message)
{
    if (condition)
        return 0;
    fprintf(stderr, "%s\n", message);
    return 1;
}

static void init_empty_frame_list(struct syna_tcm *tcm)
{
    struct list_head *head = (struct list_head *)(void *)(tcm->bytes + 0x4f8);

    head->next = head;
    head->prev = head;
}

static int test_null_tcm_logs_and_returns(void)
{
    reset_environment();
    syna_cdev_remove(NULL);
    return expect(mutex_lock_calls == 0 && printk_calls == 1 &&
                  strcmp(last_printk_format,
                         "\0013[error] %s: Invalid tcm driver handle\n") == 0 &&
                  strcmp(last_printk_name, "syna_cdev_remove") == 0,
                  "null tcm contract mismatch");
}

static int test_full_teardown_with_one_valid_frame(void)
{
    struct syna_tcm tcm = {0};
    struct list_head *head;
    struct frame_entry *frame;
    void *managed_buffer;

    reset_environment();
    init_empty_frame_list(&tcm);
    head = (struct list_head *)(void *)(tcm.bytes + 0x4f8);
    frame = calloc(1, sizeof(*frame));
    managed_buffer = malloc(32);
    if (frame == NULL || managed_buffer == NULL)
        return fprintf(stderr, "allocation failed\n"), free(frame), free(managed_buffer), 1;
    frame->buffer = malloc(16);
    if (frame->buffer == NULL)
        return fprintf(stderr, "frame buffer allocation failed\n"), free(frame), free(managed_buffer), 1;
    frame->links.next = head;
    frame->links.prev = head;
    head->next = &frame->links;
    head->prev = &frame->links;
    write_u32(&tcm, 0x4f0, 1);
    write_u32(&tcm, 0x380, UINT32_C(0x2ab00000));
    write_u64(&tcm, 0x388, UINT64_C(0x1122334455667788));
    write_u64(&tcm, 0x390, UINT64_C(0x8877665544332211));
    qword_31658 = (uint64_t)(uintptr_t)managed_buffer;
    qword_31660 = UINT64_C(0xdeadbeef);
    qword_31698 = 1;
    g_cdev_data = 7;
    managed_device_result = 9;

    syna_cdev_remove(&tcm);
    if (expect(mutex_lock_calls == 1 && mutex_unlock_calls == 1 && kfree_calls == 2 &&
               invalid_list_calls == 0 && device_destroy_calls == 1 && class_destroy_calls == 1 &&
               cdev_del_calls == 1 && unregister_calls == 1 && request_managed_device_calls == 1 &&
               devm_kfree_calls == 1, "full teardown call sequence"))
        return 1;
    if (expect(head->next == head && head->prev == head &&
               last_unregistered_dev == UINT32_C(0x2ab00000) &&
               last_destroyed_dev == UINT32_C(0x2ab00000) &&
               last_destroyed_class == UINT64_C(0x1122334455667788),
               "full teardown list or device state"))
        return 1;
    if (expect(last_devm_device == 9 && last_devm_buffer == (__int64)(uintptr_t)managed_buffer &&
               read_u64(&tcm, 0x388) == 0 && read_u64(&tcm, 0x390) == 0 &&
               qword_31660 == 0 && qword_31698 == 0 && g_cdev_data == 0,
               "full teardown final state"))
        return 1;
    return expect(printk_calls == 1 &&
                  strcmp(last_printk_format,
                         "\0013[error] %s: Buffer still in used, %d references\n") == 0 &&
                  strcmp(last_printk_name, "syna_tcm_buf_release") == 0,
                  "reference warning contract");
}

static int test_empty_list_without_managed_device_logs_failure(void)
{
    struct syna_tcm tcm = {0};

    reset_environment();
    init_empty_frame_list(&tcm);
    qword_31658 = (uint64_t)(uintptr_t)malloc(8);
    if (qword_31658 == 0)
        return fprintf(stderr, "managed buffer allocation failed\n"), 1;
    syna_cdev_remove(&tcm);
    if (expect(mutex_lock_calls == 1 && mutex_unlock_calls == 1 && kfree_calls == 0 &&
               device_destroy_calls == 0 && devm_kfree_calls == 0 &&
               request_managed_device_calls == 1 && printk_calls == 1,
               "unmanaged empty list call sequence"))
        return free((void *)(uintptr_t)qword_31658), 1;
    if (expect(strcmp(last_printk_format,
                      "\0013[error] %s: Invalid managed device\n") == 0 &&
               strcmp(last_printk_name, "syna_pal_mem_free") == 0 &&
               qword_31660 == 0 && qword_31698 == 0 && g_cdev_data == 0,
               "unmanaged empty list result"))
        return free((void *)(uintptr_t)qword_31658), 1;
    free((void *)(uintptr_t)qword_31658);
    return 0;
}

static int test_empty_list_with_device_tears_down_character_node(void)
{
    struct syna_tcm tcm = {0};

    reset_environment();
    init_empty_frame_list(&tcm);
    write_u32(&tcm, 0x380, UINT32_C(0x1f000000));
    write_u64(&tcm, 0x388, UINT64_C(0x1010));
    write_u64(&tcm, 0x390, UINT64_C(0x2020));
    managed_device_result = 11;
    syna_cdev_remove(&tcm);
    return expect(device_destroy_calls == 1 && class_destroy_calls == 1 &&
                  cdev_del_calls == 1 && unregister_calls == 1 &&
                  last_unregistered_dev == UINT32_C(0x1f000000) &&
                  printk_calls == 0 && devm_kfree_calls == 0,
                  "empty list device teardown contract");
}

int main(void)
{
    if (test_null_tcm_logs_and_returns() || test_full_teardown_with_one_valid_frame() ||
        test_empty_list_without_managed_device_logs_failure() ||
        test_empty_list_with_device_tears_down_character_node())
        return 1;
    puts("PASS syna_cdev_remove host tests (4 cases)");
    return 0;
}
