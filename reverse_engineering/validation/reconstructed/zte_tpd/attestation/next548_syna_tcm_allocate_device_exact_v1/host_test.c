#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int64 long long
#define __int8 char
#define __int16 short
#define __int32 int
typedef unsigned long long _QWORD;
typedef unsigned char _BYTE;
typedef unsigned short _WORD;
typedef unsigned int _DWORD;

#define __fastcall

static unsigned char managed_token;
static bool managed_available;
static int allocation_count;
static int fail_allocation_number;
static int free_count;
static int lock_count;
static int unlock_count;

void *unk_3AC64 = (void *)0x2;
void *unk_384CE = (void *)0x3;
void *unk_343EB = (void *)0x4;
void *unk_367BF = (void *)0x5;
void *unk_3BE43 = (void *)0x6;
void *unk_35C97 = (void *)0x7;
void *unk_38244 = (void *)0x8;
void *unk_3703C = (void *)0x9;
void *unk_35CC7 = (void *)0xa;
void *unk_3B375 = (void *)0xb;
void *unk_34845 = (void *)0xc;
void *unk_3B99D = (void *)0xd;
void *unk_398C0 = (void *)0xe;
void *unk_36C2A = (void *)0xf;
void *unk_3CCBD = (void *)0x10;
void *syna_pal_mutex_alloc___key_7 = (void *)0x11;
void *init_completion___key_2 = (void *)0x12;

static void reset_mocks(void)
{
    managed_available = true;
    allocation_count = 0;
    fail_allocation_number = 0;
    free_count = 0;
    lock_count = 0;
    unlock_count = 0;
}

int printk(const void *format, const char *function, ...)
{
    (void)format;
    (void)function;
    return 0;
}

__int64 syna_request_managed_device(void)
{
    return managed_available ? (__int64)(uintptr_t)&managed_token : 0;
}

void *devm_kmalloc(void *device, size_t size, unsigned int flags)
{
    void *memory;

    (void)device;
    (void)flags;
    allocation_count++;
    if (fail_allocation_number == allocation_count)
        return NULL;
    memory = malloc(size);
    if (memory != NULL)
        memset(memory, 0xa5, size);
    return memory;
}

void devm_kfree(void *device, void *memory)
{
    (void)device;
    if (memory != NULL) {
        free_count++;
        free(memory);
    }
}

void _mutex_init(void *lock, const char *name, void *key)
{
    (void)lock;
    (void)name;
    (void)key;
}

void mutex_lock(void *lock)
{
    (void)lock;
    lock_count++;
}

void mutex_unlock(void *lock)
{
    (void)lock;
    unlock_count++;
}

void _init_swait_queue_head(void *queue, const char *name, void *key)
{
    (void)queue;
    (void)name;
    (void)key;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_allocate_device.c"

#define REQUIRE(condition) do { \
    if (!(condition)) { \
        fprintf(stderr, "FAIL:%s:%d: %s\n", __FILE__, __LINE__, #condition); \
        return 1; \
    } \
} while (0)

static void make_valid_config(unsigned char *config,
                              unsigned int max_read,
                              unsigned int max_write)
{
    void *non_null = (void *)(uintptr_t)0x1111;

    memset(config, 0, 0x30);
    memcpy(config + 0x20, &non_null, sizeof(non_null));
    memcpy(config + 0x28, &non_null, sizeof(non_null));
    memcpy(config + 0x0c, &max_read, sizeof(max_read));
    memcpy(config + 0x10, &max_write, sizeof(max_write));
}

static int test_validation_errors(void)
{
    unsigned char config[0x30];
    __int64 output = 0x1234;

    reset_mocks();
    REQUIRE(syna_tcm_allocate_device(&output, 0, 0) == 4294967055LL);
    REQUIRE(output == 0x1234);

    memset(config, 0, sizeof(config));
    REQUIRE(syna_tcm_allocate_device(&output, (__int64)(uintptr_t)config, 0) ==
            4294967055LL);
    REQUIRE(output == 0x1234);

    make_valid_config(config, 4096, 2048);
    memset(config + 0x28, 0, sizeof(void *));
    REQUIRE(syna_tcm_allocate_device(&output, (__int64)(uintptr_t)config, 0) ==
            4294967055LL);
    REQUIRE(output == 0x1234);
    return 0;
}

static int test_managed_device_and_tcm_allocation_failures(void)
{
    unsigned char config[0x30];
    __int64 output = 0x1234;

    make_valid_config(config, 4096, 2048);

    reset_mocks();
    managed_available = false;
    REQUIRE(syna_tcm_allocate_device(&output, (__int64)(uintptr_t)config,
                                     0xfeedface) == 4294967053LL);
    REQUIRE(output == 0);
    REQUIRE(allocation_count == 0);

    reset_mocks();
    fail_allocation_number = 1;
    output = 0x1234;
    REQUIRE(syna_tcm_allocate_device(&output, (__int64)(uintptr_t)config,
                                     0xfeedface) == 4294967053LL);
    REQUIRE(output == 0);
    REQUIRE(allocation_count == 1);
    REQUIRE(free_count == 0);
    return 0;
}

static int test_success_layout_and_defaults(void)
{
    unsigned char config[0x30];
    unsigned char *device;
    __int64 output = 0x1234;
    unsigned int max_read = 4096;
    unsigned int max_write = 2048;
    unsigned long long expected_208 = 0x1400000bb8ULL;
    unsigned long long expected_210 = 0x6400000032ULL;
    unsigned long long expected_1e8 = 0x6400000064ULL;

    make_valid_config(config, max_read, max_write);
    reset_mocks();
    REQUIRE(syna_tcm_allocate_device(&output, (__int64)(uintptr_t)config,
                                     0xfeedface) == 0);
    REQUIRE(output != 0);
    REQUIRE(allocation_count == 2);
    REQUIRE(free_count == 0);
    REQUIRE(lock_count == 1);
    REQUIRE(unlock_count == 1);
    device = (unsigned char *)(uintptr_t)output;

    REQUIRE(*(unsigned long long *)(device + 0x00) == 0xfeedfaceULL);
    REQUIRE(*(unsigned long long *)(device + 0x48) ==
            (unsigned long long)(uintptr_t)config);
    REQUIRE(*(unsigned int *)(device + 0x38) == max_write);
    REQUIRE(*(unsigned int *)(device + 0x3c) == max_read);
    REQUIRE(*(unsigned int *)(device + 0x40) == max_write);
    REQUIRE(*(unsigned int *)(device + 0x44) == max_read);
    {
        unsigned char *response =
            (unsigned char *)(uintptr_t)*(unsigned long long *)(device + 0x240);
        REQUIRE(response != NULL);
        REQUIRE(response[0] == 0);
        REQUIRE(response[1] == 0);
        REQUIRE(response[2] == 0);
        REQUIRE(response[3] == 0);
        free(response);
    }
    REQUIRE(*(unsigned int *)(device + 0x248) == 4);
    REQUIRE(device[0x280] == 0);
    REQUIRE(*(unsigned int *)(device + 0x37c) == 0);
    REQUIRE(*(unsigned long long *)(device + 0x208) == expected_208);
    REQUIRE(*(unsigned long long *)(device + 0x210) == expected_210);
    REQUIRE(*(unsigned int *)(device + 0x218) == 10);
    REQUIRE(device[0x380] == 0);
    REQUIRE(device[0x9] == 0);
    REQUIRE(*(unsigned long long *)(device + 0x1e8) == expected_1e8);
    REQUIRE(*(unsigned long long *)(device + 0x390) == 0);
    REQUIRE(*(unsigned long long *)(device + 0x398) == 0);
    REQUIRE(*(unsigned long long *)(device + 0x3a0) == 0);
    REQUIRE(*(unsigned long long *)(device + 0x3a8) == 0);
    free(device);
    return 0;
}

static int test_response_buffer_failure_cleanup(void)
{
    unsigned char config[0x30];
    __int64 output = 0x1234;

    make_valid_config(config, 4096, 2048);
    reset_mocks();
    fail_allocation_number = 2;
    REQUIRE(syna_tcm_allocate_device(&output, (__int64)(uintptr_t)config,
                                     0xfeedface) == 4294967053LL);
    REQUIRE(output == 0);
    REQUIRE(allocation_count == 2);
    REQUIRE(free_count == 1);
    REQUIRE(lock_count == 1);
    REQUIRE(unlock_count == 1);
    return 0;
}

int main(void)
{
    REQUIRE(test_validation_errors() == 0);
    REQUIRE(test_managed_device_and_tcm_allocation_failures() == 0);
    REQUIRE(test_success_layout_and_defaults() == 0);
    REQUIRE(test_response_buffer_failure_cleanup() == 0);
    puts("PASS: syna_tcm_allocate_device host contract");
    return 0;
}
