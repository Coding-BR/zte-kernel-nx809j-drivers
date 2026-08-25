#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int64 long long
#define __int16 short
#define __fastcall
#define __int8 char
#define _BOOL4 int
typedef uint8_t _BYTE;
typedef uint16_t _WORD;
typedef uint32_t _DWORD;
typedef uint64_t _QWORD;
typedef uint8_t u8;
typedef uint32_t u32;
struct tcm_dev;

#define HIBYTE(value) ((uint8_t)(((uint16_t)(value)) >> 8))
#define LOBYTE(value) (*((uint8_t *)&(value)))

#define unk_3365A "%s: invalid handle %lld"
#define unk_3C6C4 "%s: invalid hardware platform %lld"
#define unk_37DFA "%s: platform missing %lld"
#define unk_38244 "%s lock %d"
#define unk_3BE43 "%s: invalid managed device %lld"
#define unk_38286 "%s: allocation failed %d"
#define unk_3703C "%s: allocation failed %d"
#define unk_32A93 "%s: write failed %lld"
#define unk_34F7B "%s: write failed %d"
#define unk_3944E "%s: invalid copy %lld"
#define unk_3D36E "%s: copy failed %lld"
#define unk_3D331 "%s: copy failed %lld"
#define unk_36762 "%s: timed out %d"
#define unk_36BA7 "%s: failed %d"
#define unk_37E2D "%s: write operation missing %lld"

static unsigned short syna_tcm_crc16_crc16_table[256];
static int printk_calls;
static int lock_calls;
static int unlock_calls;

static void __break(unsigned int code)
{
    (void)code;
}

static int printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

static void mutex_lock(__int64 mutex)
{
    (void)mutex;
    lock_calls++;
}

static int mutex_unlock(__int64 mutex)
{
    (void)mutex;
    unlock_calls++;
    return 0;
}

static __int64 syna_request_managed_device(void)
{
    return 0;
}

static void *devm_kmalloc(__int64 device, size_t size, int flags)
{
    (void)device;
    (void)size;
    (void)flags;
    return NULL;
}

static void devm_kfree(__int64 device, void *pointer)
{
    (void)device;
    free(pointer);
}

static __int64 syna_tcm_v1_read_message(struct tcm_dev *tcm, u8 *code)
{
    (void)tcm;
    (void)code;
    return 0;
}

static __int64 msecs_to_jiffies(unsigned int value)
{
    return value;
}

static void msleep(unsigned int value)
{
    (void)value;
}

static void usleep_range_state(unsigned int minimum, unsigned int maximum, int state)
{
    (void)minimum;
    (void)maximum;
    (void)state;
}

static __int64 wait_for_completion_timeout(__int64 completion, __int64 timeout)
{
    (void)completion;
    (void)timeout;
    return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_v1_write_message.c"

static int failures;

static void reset_state(void)
{
    printk_calls = 0;
    lock_calls = 0;
    unlock_calls = 0;
}

static void test_null_handle(void)
{
    uint8_t result_code = 0;
    reset_state();
    if (syna_tcm_v1_write_message(NULL, 7, NULL, 0, &result_code, 1) != -241 ||
        printk_calls != 1 || lock_calls != 0 || unlock_calls != 0)
        failures++;
}

static void test_missing_platform(void)
{
    uint8_t state[0x400] = {0};
    uint8_t result_code = 0;
    reset_state();
    if (syna_tcm_v1_write_message((struct tcm_dev *)(uintptr_t)state, 7,
                                   NULL, 0, &result_code, 1) != -241 ||
        printk_calls != 1 || result_code != 0 || lock_calls != 0 || unlock_calls != 0)
        failures++;
}

static void test_buffer_allocation_failure(void)
{
    uint8_t state[0x500] = {0};
    uint8_t ops[64] = {0};
    uint8_t result_code = 0;
    *(_QWORD *)(state + 72) = (uintptr_t)ops;
    reset_state();
    if (syna_tcm_v1_write_message((struct tcm_dev *)(uintptr_t)state, 7,
                                   NULL, 0, &result_code, 1) != -243 ||
        result_code != 0 || lock_calls != 3 || unlock_calls != 3 || printk_calls < 2 ||
        *(_DWORD *)(state + 500) != 0 || *(_DWORD *)(state + 504) != 0)
        failures++;
}

int main(void)
{
    test_null_handle();
    test_missing_platform();
    test_buffer_allocation_failure();
    if (failures != 0)
        return 1;
    puts("PASS syna_tcm_v1_write_message host tests (3 cases)");
    return 0;
}
