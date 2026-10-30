#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int64 long long
#define _QWORD uint64_t
#define _DWORD uint32_t
#define LODWORD(value) (*(uint32_t *)&(value))
#define HIDWORD(value) (*((uint32_t *)&(value) + 1))

struct inode { unsigned int unused; };
struct file { unsigned int unused; };
struct list_head { struct list_head *next; struct list_head *prev; };
struct byte_storage { _Alignas(uint64_t) uint8_t bytes[0x600]; };
struct cdev_context { _Alignas(uint64_t) uint8_t bytes[0xb0]; };
union cdev_global_storage { uint64_t alignment; uint8_t bytes[0x100]; };
struct queue_entry { struct list_head links; void *payload; };

static union cdev_global_storage global_storage;
static __int64 qword_31700;
static __int64 qword_31708;
static __int64 qword_31710;
static const char unk_34E53[] = "\0015[info ] %s: CDevice already closed, %d\n";
static const char unk_377F8[] = "\0016[info ] %s: CDevice close\n";
static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static unsigned int kfree_calls;
static unsigned int clear_data_calls;
static unsigned int printk_calls;
static const char *last_printk_format;
static const char *last_printk_name;
static __int64 last_printk_value;
static __int64 last_clear_data_argument;

#define g_cdev_data (*(__int64 *)(void *)(global_storage.bytes + 0x00))
#define qword_316A0 (*(_QWORD *)(void *)(global_storage.bytes + 0x50))
#define qword_316D0 (*(_QWORD *)(void *)(global_storage.bytes + 0x80))

static void mutex_lock(void *mutex) { (void)mutex; mutex_lock_calls++; }
static void mutex_unlock(void *mutex) { (void)mutex; mutex_unlock_calls++; }
static void list_del(struct list_head *entry)
{
    entry->prev->next = entry->next;
    entry->next->prev = entry->prev;
}
static void host_kfree(uintptr_t value) { kfree_calls++; free((void *)value); }
#define kfree(value) host_kfree((uintptr_t)(value))
static int syna_tcm_clear_data_duplicator(__int64 tcm)
{
    clear_data_calls++;
    last_clear_data_argument = tcm;
    return 0;
}
static int printk(const char *format, ...)
{
    va_list args;
    printk_calls++;
    last_printk_format = format;
    va_start(args, format);
    last_printk_name = va_arg(args, const char *);
    last_printk_value = va_arg(args, __int64);
    va_end(args);
    return 0;
}

#include "../../../reconstructed/zte_tpd/syna_cdev_release.c"

static void write_u32(struct byte_storage *storage, size_t offset, uint32_t value)
{
    memcpy(storage->bytes + offset, &value, sizeof(value));
}
static void write_u64(struct byte_storage *storage, size_t offset, uint64_t value)
{
    memcpy(storage->bytes + offset, &value, sizeof(value));
}
static uint32_t read_u32(const struct byte_storage *storage, size_t offset)
{
    uint32_t value;
    memcpy(&value, storage->bytes + offset, sizeof(value));
    return value;
}
static void reset_environment(void)
{
    memset(&global_storage, 0, sizeof(global_storage));
    qword_31700 = UINT64_C(0x1111111111111111);
    qword_31708 = UINT64_C(0x2222222233333333);
    qword_31710 = UINT64_C(0x44444444);
    mutex_lock_calls = 0;
    mutex_unlock_calls = 0;
    kfree_calls = 0;
    clear_data_calls = 0;
    printk_calls = 0;
    last_printk_format = NULL;
    last_printk_name = NULL;
    last_printk_value = 0;
    last_clear_data_argument = 0;
}
static void configure_context(struct cdev_context *context, struct byte_storage *tcm,
                              struct byte_storage *device)
{
    memset(context, 0, sizeof(*context));
    memset(tcm, 0, sizeof(*tcm));
    memset(device, 0, sizeof(*device));
    write_u64((struct byte_storage *)context, 0xa8, (uint64_t)(uintptr_t)tcm);
    write_u64(tcm, 0x00, (uint64_t)(uintptr_t)device);
    g_cdev_data = (__int64)(uintptr_t)context;
    ((struct list_head *)(void *)(tcm->bytes + 0x4f8))->next =
        (struct list_head *)(void *)(tcm->bytes + 0x4f8);
    ((struct list_head *)(void *)(tcm->bytes + 0x4f8))->prev =
        (struct list_head *)(void *)(tcm->bytes + 0x4f8);
}
static int expect(int condition, const char *message)
{
    if (condition) return 0;
    fprintf(stderr, "%s\n", message);
    return 1;
}
static int test_closed_device_logs_and_returns(void)
{
    struct cdev_context context;
    struct byte_storage tcm, device;
    reset_environment();
    configure_context(&context, &tcm, &device);
    write_u32(&tcm, 0x384, 0);
    if (expect(syna_cdev_release(NULL, NULL) == 0, "closed return")) return 1;
    return expect(mutex_lock_calls == 0 && mutex_unlock_calls == 0 && printk_calls == 1 &&
                  last_printk_format == unk_34E53 && last_printk_value == 0 &&
                  strcmp(last_printk_name, "syna_cdev_release") == 0,
                  "closed-device contract");
}
static int test_active_empty_list_resets_state(void)
{
    struct cdev_context context;
    struct byte_storage tcm, device;
    reset_environment();
    configure_context(&context, &tcm, &device);
    write_u32(&tcm, 0x384, 1);
    if (expect(syna_cdev_release(NULL, NULL) == 0, "empty release return")) return 1;
    return expect(read_u32(&tcm, 0x384) == 0 && mutex_lock_calls == 2 &&
                  mutex_unlock_calls == 2 && clear_data_calls == 1 &&
                  last_clear_data_argument == (__int64)(uintptr_t)&device && kfree_calls == 0 &&
                  qword_31700 == 0 && LODWORD(qword_31708) == 0 &&
                  read_u32(&device, 0x38) == HIDWORD(qword_31708) &&
                  read_u32(&device, 0x3c) == (uint32_t)qword_31710 && printk_calls == 1 &&
                  last_printk_format == unk_377F8,
                  "empty active release contract");
}
static int test_active_list_drains_one_frame(void)
{
    struct cdev_context context;
    struct byte_storage tcm, device;
    struct list_head *head;
    struct queue_entry *entry;
    reset_environment();
    configure_context(&context, &tcm, &device);
    head = (struct list_head *)(void *)(tcm.bytes + 0x4f8);
    entry = calloc(1, sizeof(*entry));
    entry->payload = malloc(23);
    if (entry == NULL || entry->payload == NULL) return fprintf(stderr, "allocation\n"), 1;
    entry->links.prev = head;
    entry->links.next = head;
    head->next = &entry->links;
    head->prev = &entry->links;
    write_u32(&tcm, 0x384, 1);
    write_u32(&tcm, 0x4f0, 1);
    if (expect(syna_cdev_release(NULL, NULL) == 0, "one-frame return")) return 1;
    return expect(head->next == head && head->prev == head && read_u32(&tcm, 0x4f0) == 0 &&
                  kfree_calls == 2 && mutex_lock_calls == 2 && mutex_unlock_calls == 2,
                  "one-frame drain contract");
}
static int test_active_list_drains_two_frames(void)
{
    struct cdev_context context;
    struct byte_storage tcm, device;
    struct list_head *head;
    struct queue_entry *first, *second;
    reset_environment();
    configure_context(&context, &tcm, &device);
    head = (struct list_head *)(void *)(tcm.bytes + 0x4f8);
    first = calloc(1, sizeof(*first)); second = calloc(1, sizeof(*second));
    if (!first || !second) return fprintf(stderr, "queue allocation\n"), 1;
    first->payload = malloc(7); second->payload = malloc(11);
    if (!first->payload || !second->payload) return fprintf(stderr, "payload allocation\n"), 1;
    first->links.prev = head; first->links.next = &second->links;
    second->links.prev = &first->links; second->links.next = head;
    head->next = &first->links; head->prev = &second->links;
    write_u32(&tcm, 0x384, 1); write_u32(&tcm, 0x4f0, 2);
    if (expect(syna_cdev_release(NULL, NULL) == 0, "two-frame return")) return 1;
    return expect(head->next == head && head->prev == head && read_u32(&tcm, 0x4f0) == 0 &&
                  kfree_calls == 4 && clear_data_calls == 1,
                  "two-frame drain contract");
}
static int test_release_preserves_zero_count_branch(void)
{
    struct cdev_context context;
    struct byte_storage tcm, device;
    reset_environment();
    configure_context(&context, &tcm, &device);
    write_u32(&tcm, 0x384, UINT32_C(0xffffffff));
    syna_cdev_release(NULL, NULL);
    return expect(mutex_lock_calls == 0 && printk_calls == 1 &&
                  last_printk_value == UINT64_C(0xffffffff),
                  "negative count branch contract");
}
int main(void)
{
    if (test_closed_device_logs_and_returns() || test_active_empty_list_resets_state() ||
        test_active_list_drains_one_frame() || test_active_list_drains_two_frames() ||
        test_release_preserves_zero_count_branch()) return 1;
    puts("PASS syna_cdev_release host tests (5 cases)");
    return 0;
}
