#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static unsigned char context_area[2048];
static unsigned char payload_area[8];
static unsigned char managed_device;
static int managed_available;
static int force_first_alloc_failure;
static int allow_fifo_node_alloc;
static int force_fifo_payload_failure;
static unsigned int printk_calls;
static unsigned int free_calls;
static void *last_fifo_node;
static unsigned long long qword_316D0;
static unsigned long long qword_31700;
static unsigned long long qword_31708;
static unsigned int syna_cdev_push_data_to_fifo_pre_remaining_frames;

static int test_printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

static intptr_t test_syna_request_managed_device(void)
{
    return managed_available ? (intptr_t)&managed_device : 0;
}

static intptr_t test_devm_kmalloc(intptr_t device, unsigned int size,
                                  unsigned int flags)
{
    (void)device;
    (void)flags;
    if (force_first_alloc_failure) {
        force_first_alloc_failure = 0;
        return 0;
    }
    return (intptr_t)calloc(1, size ? size : 1);
}

static intptr_t test_devm_kfree(intptr_t device, intptr_t pointer)
{
    (void)device;
    free((void *)pointer);
    free_calls++;
    return 0;
}

static void test_mutex_lock(void *lock) { (void)lock; }
static void test_mutex_unlock(void *lock) { (void)lock; }
static void test_kfree(intptr_t pointer) { free((void *)pointer); }
static intptr_t test_kmalloc_cache(void *cache, unsigned int size,
                                    unsigned int flags)
{
    (void)cache; (void)size; (void)flags;
    if (!allow_fifo_node_alloc)
        return 0;
    last_fifo_node = calloc(1, size ? size : 1);
    return (intptr_t)last_fifo_node;
}
static intptr_t test_kmalloc(unsigned int size, unsigned int flags)
{
    (void)flags;
    if (force_fifo_payload_failure)
        return 0;
    return (intptr_t)calloc(1, size ? size : 1);
}
static void test_ktime(intptr_t timestamp) { memset((void *)timestamp, 0, 16); }
static intptr_t test_wake_up(void *wait, unsigned int mode, unsigned int nr,
                             void *key)
{
    (void)wait; (void)mode; (void)nr; (void)key;
    return 0;
}
static void test_list_del(intptr_t entry) { (void)entry; }
static void test_list_add(intptr_t entry, intptr_t next) { (void)entry; (void)next; }
static void test_fortify(unsigned int reason, size_t left, size_t right)
{
    (void)reason; (void)left; (void)right;
    abort();
}

#define __int64 long long
#define __int16 short
#define __int8 char
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _WORD unsigned short
#define _BYTE unsigned char
#define nullptr ((void *)0)
#define HIDWORD(value) ((unsigned int)(((unsigned long long)(value)) >> 32))
#define SHIDWORD(value) ((int)HIDWORD(value))
#define WORD2(value) ((unsigned short)(((unsigned long long)(value)) >> 32))
#define BYTE1(value) ((unsigned char)(((unsigned int)(value)) >> 8))
#define HIBYTE(value) ((unsigned char)(((unsigned short)(value)) >> 8))
#define __fastcall
#define __break(value) ((void)(value))
#define printk test_printk
#define syna_request_managed_device test_syna_request_managed_device
#define devm_kmalloc test_devm_kmalloc
#define devm_kfree test_devm_kfree
#define mutex_lock test_mutex_lock
#define mutex_unlock test_mutex_unlock
#define kfree test_kfree
#define _kmalloc_cache_noprof test_kmalloc_cache
#define _kmalloc_noprof test_kmalloc
#define ktime_get_real_ts64 test_ktime
#define _wake_up test_wake_up
#define _list_del_entry_valid_or_report test_list_del
#define _list_add_valid_or_report test_list_add
#define _fortify_panic test_fortify
#define platform_device_alloc ((void *)0)
#define unk_31F9D "alloc_data"
#define unk_33CFA "copy_overflow"
#define unk_341DE "frame_count"
#define unk_34D82 "fifo_update"
#define unk_35592 "alloc_buffer"
#define unk_35B39 "bad_payload"
#define unk_35B63 "fifo_alloc"
#define unk_377AA "copy_size"
#define unk_37E9C "fifo_full"
#define unk_38286 "zero_size"
#define unk_38D56 "bad_context"
#define unk_3944E "copy_data"
#define unk_39968 "process_reports"
#define unk_3B1BE "cache_alloc"
#define unk_3BE43 "managed_device"
#define unk_3CBD2 "extra_alloc"
#include "../../../reconstructed/zte_tpd/syna_cdev_process_reports.c"
#undef platform_device_alloc
#undef _fortify_panic
#undef _list_add_valid_or_report
#undef _list_del_entry_valid_or_report
#undef _wake_up
#undef ktime_get_real_ts64
#undef _kmalloc_noprof
#undef _kmalloc_cache_noprof
#undef kfree
#undef mutex_unlock
#undef mutex_lock
#undef devm_kfree
#undef devm_kmalloc
#undef syna_request_managed_device
#undef printk
#undef __break
#undef BYTE1
#undef WORD2
#undef SHIDWORD
#undef HIDWORD
#undef nullptr
#undef _BYTE
#undef _DWORD
#undef _QWORD
#undef __int16
#undef __int8
#undef HIBYTE
#undef __fastcall
#undef _WORD
#undef __int64

static void reset_state(void)
{
    memset(context_area, 0, sizeof(context_area));
    memset(payload_area, 0, sizeof(payload_area));
    managed_available = 1;
    force_first_alloc_failure = 0;
    allow_fifo_node_alloc = 0;
    force_fifo_payload_failure = 0;
    printk_calls = 0;
    free_calls = 0;
    last_fifo_node = NULL;
    qword_316D0 = 0;
    qword_31700 = 0;
    qword_31708 = 0;
    syna_cdev_push_data_to_fifo_pre_remaining_frames = 0;
}

static int expect_null_context(void)
{
    reset_state();
    return syna_cdev_process_reports(1, payload_area, 0, NULL) == -22 &&
           printk_calls == 1;
}

static int expect_null_payload(void)
{
    reset_state();
    int result = syna_cdev_process_reports(1, NULL, 0, context_area);
    return result == -22 && printk_calls == 2;
}

static int expect_missing_managed_device(void)
{
    reset_state();
    managed_available = 0;
    int result = syna_cdev_process_reports(1, payload_area, 1, context_area);
    return result == -12 && printk_calls == 3;
}

static int expect_fifo_allocation_failure(void)
{
    reset_state();
    return syna_cdev_process_reports(7, payload_area, 0, context_area) == -12 &&
           free_calls == 1 && printk_calls >= 2;
}

static int expect_initial_buffer_failure(void)
{
    reset_state();
    force_first_alloc_failure = 1;
    return syna_cdev_process_reports(7, payload_area, 1, context_area) == -12 &&
           free_calls == 0 && printk_calls >= 2;
}

static int expect_fifo_payload_allocation_failure(void)
{
    reset_state();
    allow_fifo_node_alloc = 1;
    force_fifo_payload_failure = 1;
    ((unsigned long long *)context_area)[159] =
        (uintptr_t)&((unsigned long long *)context_area)[159];
    ((unsigned long long *)context_area)[160] =
        (uintptr_t)&((unsigned long long *)context_area)[159];
    int result = syna_cdev_process_reports(1, payload_area, 1, context_area);
    int observed_stock_node_leak = last_fifo_node != NULL;
    free(last_fifo_node);
    last_fifo_node = NULL;
    return result == -12 && observed_stock_node_leak && free_calls == 1;
}

int main(void)
{
    int c1 = expect_null_context();
    int c2 = expect_null_payload();
    int c3 = expect_missing_managed_device();
    int c4 = expect_fifo_allocation_failure();
    int c5 = expect_initial_buffer_failure();
    int c6 = expect_fifo_payload_allocation_failure();
    if (!c1 || !c2 || !c3 || !c4 || !c5 || !c6) {
        fprintf(stderr, "cases: %d %d %d %d %d %d\n", c1, c2, c3, c4, c5,
                c6);
        fprintf(stderr, "syna_cdev_process_reports contract mismatch\n");
        return 1;
    }
    puts("PASS syna_cdev_process_reports host tests (6 cases)");
    return 0;
}
