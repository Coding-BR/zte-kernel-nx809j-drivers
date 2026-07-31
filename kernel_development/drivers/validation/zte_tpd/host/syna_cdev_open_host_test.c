#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int64 long long
#define _QWORD uint64_t
#define _DWORD uint32_t
#define _BYTE uint8_t
#define LODWORD(value) (*(uint32_t *)&(value))
#define HIDWORD(value) (*((uint32_t *)&(value) + 1))

struct inode {
    unsigned int unused;
};

struct file {
    unsigned int unused;
};

struct list_head {
    struct list_head *next;
    struct list_head *prev;
};

struct queue_entry {
    struct list_head links;
    void *payload;
};

struct byte_storage {
    _Alignas(uint64_t) uint8_t bytes[0x600];
};

struct cdev_context {
    _Alignas(uint64_t) uint8_t bytes[0xb0];
};

union cdev_global_storage {
    uint64_t alignment;
    uint8_t bytes[0x100];
};

static union cdev_global_storage global_storage;
static __int64 qword_31700;
static __int64 qword_31708;
static __int64 qword_31710;
static char unk_34E37[256] = "\0016[info ] %s: CDevice open\n";
static char unk_366C2[256] = "\0015[info ] %s: CDevice already open, %d\n";
static void *lock_arguments[4];
static void *unlock_arguments[4];
static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static unsigned int clear_data_calls;
static unsigned int kfree_calls;
static unsigned int printk_calls;
static void *clear_data_argument;
static const char *printk_formats[2];
static const char *printk_names[2];
static long long printk_open_counts[2];

#define g_cdev_data (*(__int64 *)(void *)(global_storage.bytes + 0x00))
#define qword_316A0 (*(_QWORD *)(void *)(global_storage.bytes + 0x50))
#define qword_316D0 (*(_QWORD *)(void *)(global_storage.bytes + 0x80))

static void mutex_lock(void *mutex)
{
    lock_arguments[mutex_lock_calls++] = mutex;
}

static void mutex_unlock(void *mutex)
{
    unlock_arguments[mutex_unlock_calls++] = mutex;
}

static void kfree(uintptr_t value)
{
    kfree_calls++;
    free((void *)value);
}

static void list_del(struct list_head *entry)
{
    entry->prev->next = entry->next;
    entry->next->prev = entry->prev;
}

static int syna_tcm_clear_data_duplicator(void *tcm)
{
    clear_data_calls++;
    clear_data_argument = tcm;
    return 0;
}

static int printk(const char *format, ...)
{
    va_list args;
    unsigned int index = printk_calls++;

    printk_formats[index] = format;
    va_start(args, format);
    printk_names[index] = va_arg(args, const char *);
    if (format == unk_366C2)
        printk_open_counts[index] = va_arg(args, long long);
    va_end(args);
    return 0;
}

#include "../../../reconstructed/zte_tpd/syna_cdev_open.c"

static void write_u32(struct byte_storage *storage, size_t offset, uint32_t value)
{
    memcpy(storage->bytes + offset, &value, sizeof(value));
}

static uint32_t read_u32(const struct byte_storage *storage, size_t offset)
{
    uint32_t value;

    memcpy(&value, storage->bytes + offset, sizeof(value));
    return value;
}

static void write_u64(void *destination, uint64_t value)
{
    memcpy(destination, &value, sizeof(value));
}

static void reset_environment(void)
{
    memset(&global_storage, 0, sizeof(global_storage));
    qword_31700 = UINT64_C(0x1111111111111111);
    qword_31708 = UINT64_C(0x2222222222222222);
    qword_31710 = UINT64_C(0x3333333333333333);
    memset(lock_arguments, 0, sizeof(lock_arguments));
    memset(unlock_arguments, 0, sizeof(unlock_arguments));
    mutex_lock_calls = 0;
    mutex_unlock_calls = 0;
    clear_data_calls = 0;
    kfree_calls = 0;
    printk_calls = 0;
    clear_data_argument = NULL;
    memset(printk_formats, 0, sizeof(printk_formats));
    memset(printk_names, 0, sizeof(printk_names));
    memset(printk_open_counts, 0, sizeof(printk_open_counts));
}

static void configure_context(struct cdev_context *context, struct byte_storage *tcm,
                              struct byte_storage *device)
{
    struct list_head *head = (struct list_head *)(void *)(tcm->bytes + 0x4f8);

    memset(context, 0, sizeof(*context));
    memset(tcm, 0, sizeof(*tcm));
    memset(device, 0, sizeof(*device));
    write_u64(context->bytes + 0xa8, (uint64_t)(uintptr_t)tcm);
    write_u64(tcm->bytes + 0x00, (uint64_t)(uintptr_t)device);
    head->next = head;
    head->prev = head;
    g_cdev_data = (__int64)(uintptr_t)context;
}

static int expect(int condition, const char *message)
{
    if (condition)
        return 0;
    fprintf(stderr, "%s\n", message);
    return 1;
}

static int test_first_open_resets_state_and_locks_in_order(void)
{
    struct inode inode = {0};
    struct file file = {0};
    struct cdev_context context;
    struct byte_storage tcm;
    struct byte_storage device;

    reset_environment();
    configure_context(&context, &tcm, &device);
    write_u32(&tcm, 0x384, 0);
    write_u32(&device, 0x38, 0x11223344);
    write_u32(&device, 0x3c, 0x55667788);
    device.bytes[0x37a] = 0xa5;
    tcm.bytes[0x584] = 0x5a;

    if (expect(syna_cdev_open(&inode, &file) == 0, "first-open return"))
        return 1;
    return expect(
        read_u32(&tcm, 0x384) == 1 && qword_31700 == 0 &&
            LODWORD(qword_31708) == 0 && HIDWORD(qword_31708) == 0x11223344 &&
            LODWORD(qword_31710) == 0x55667788 && device.bytes[0x37a] == 0 &&
            tcm.bytes[0x584] == 0 && mutex_lock_calls == 2 &&
            mutex_unlock_calls == 2 && lock_arguments[0] == &qword_316A0 &&
            lock_arguments[1] == &qword_316D0 && unlock_arguments[0] == &qword_316D0 &&
            unlock_arguments[1] == &qword_316A0 && clear_data_calls == 1 &&
            clear_data_argument == &device && kfree_calls == 0 && printk_calls == 1 &&
            printk_formats[0] == unk_34E37 && strcmp(printk_names[0], "syna_cdev_open") == 0,
        "first-open state, lock, or log contract");
}

static int test_reopen_increments_and_records_previous_count(void)
{
    struct inode inode = {0};
    struct file file = {0};
    struct cdev_context context;
    struct byte_storage tcm;
    struct byte_storage device;

    reset_environment();
    configure_context(&context, &tcm, &device);
    write_u32(&tcm, 0x384, 2);

    if (expect(syna_cdev_open(&inode, &file) == 0, "reopen return"))
        return 1;
    return expect(
        read_u32(&tcm, 0x384) == 3 && printk_calls == 2 &&
            printk_formats[0] == unk_366C2 && printk_open_counts[0] == 2 &&
            strcmp(printk_names[0], "syna_cdev_open") == 0 &&
            printk_formats[1] == unk_34E37 && mutex_lock_calls == 2 &&
            mutex_unlock_calls == 2 && clear_data_calls == 1,
        "reopen count, log, or lock contract");
}

static int test_open_drains_queue_and_frees_each_pair(void)
{
    struct inode inode = {0};
    struct file file = {0};
    struct cdev_context context;
    struct byte_storage tcm;
    struct byte_storage device;
    struct list_head *head;
    struct queue_entry *first;
    struct queue_entry *second;

    reset_environment();
    configure_context(&context, &tcm, &device);
    head = (struct list_head *)(void *)(tcm.bytes + 0x4f8);
    first = calloc(1, sizeof(*first));
    second = calloc(1, sizeof(*second));
    if (!first || !second)
        return fprintf(stderr, "queue allocation\n"), free(first), free(second), 1;
    first->payload = malloc(17);
    second->payload = malloc(23);
    if (!first->payload || !second->payload)
        return fprintf(stderr, "payload allocation\n"), free(first->payload),
               free(second->payload), free(first), free(second), 1;
    head->next = &first->links;
    head->prev = &second->links;
    first->links.prev = head;
    first->links.next = &second->links;
    second->links.prev = &first->links;
    second->links.next = head;
    write_u32(&tcm, 0x4f0, 2);

    if (expect(syna_cdev_open(&inode, &file) == 0, "queue-drain return"))
        return 1;
    return expect(
        head->next == head && head->prev == head && read_u32(&tcm, 0x4f0) == 0 &&
            kfree_calls == 4 && mutex_lock_calls == 2 && mutex_unlock_calls == 2 &&
            clear_data_calls == 1,
        "queue drain, free, or lock contract");
}

int main(void)
{
    if (test_first_open_resets_state_and_locks_in_order() ||
        test_reopen_increments_and_records_previous_count() ||
        test_open_drains_queue_and_frees_each_pair())
        return 1;
    puts("PASS syna_cdev_open host tests (3 cases)");
    return 0;
}
