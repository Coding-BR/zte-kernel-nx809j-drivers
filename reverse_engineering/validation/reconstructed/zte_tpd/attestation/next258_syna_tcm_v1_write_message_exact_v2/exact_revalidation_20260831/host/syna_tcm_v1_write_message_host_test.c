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
static int managed_available;
static int write_result;
static int read_message_result;
static int write_calls;
static int read_message_calls;
static int irq_calls;
static __int64 first_irq_arg;
static __int64 last_irq_arg;

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
    static unsigned char managed_device;
    return managed_available ? (__int64)(uintptr_t)&managed_device : 0;
}

static void *devm_kmalloc(__int64 device, size_t size, int flags)
{
    (void)device;
    (void)flags;
    return managed_available ? calloc(1, size ? size : 1) : NULL;
}

static void devm_kfree(__int64 device, void *pointer)
{
    (void)device;
    free(pointer);
}

static __int64 syna_tcm_v1_read_message(struct tcm_dev *tcm, u8 *code)
{
    (void)code;
    read_message_calls++;
    if (tcm && read_message_result == 0)
        *(_DWORD *)((unsigned char *)tcm + 504) = 0;
    return read_message_result;
}

static __int64 write_callback(void)
{
    write_calls++;
    return write_result;
}

static __int64 enable_callback(__int64 platform, __int64 enable)
{
    (void)platform;
    if (irq_calls == 0)
        first_irq_arg = enable;
    last_irq_arg = enable;
    irq_calls++;
    return 1;
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
    managed_available = 0;
    write_result = 0;
    read_message_result = 0;
    write_calls = 0;
    read_message_calls = 0;
    irq_calls = 0;
    first_irq_arg = -1;
    last_irq_arg = -1;
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

static void test_successful_write(void)
{
    uint8_t state[0x500] = {0};
    uint8_t platform[128] = {0};
    uint8_t result_code = 0xff;
    *(_QWORD *)(state + 72) = (uintptr_t)platform;
    *(__int64 (**)(void))(platform + 40) = write_callback;
    reset_state();
    managed_available = 1;
    if (syna_tcm_v1_write_message((struct tcm_dev *)(uintptr_t)state, 7,
                                   NULL, 0, &result_code, 0) != 0 ||
        result_code != 0 || lock_calls != 3 || unlock_calls != 3 ||
        *(_DWORD *)(state + 504) != 0 || *(_DWORD *)(state + 500) != 0 ||
        *(_DWORD *)(state + 656) != 3 ||
        !*(_QWORD *)(state + 648) ||
        ((uint8_t *)(uintptr_t)*(_QWORD *)(state + 648))[0] != 7 ||
        ((uint8_t *)(uintptr_t)*(_QWORD *)(state + 648))[1] != 0 ||
        ((uint8_t *)(uintptr_t)*(_QWORD *)(state + 648))[2] != 0)
        failures++;
    free((void *)(uintptr_t)*(_QWORD *)(state + 648));
}

static void test_missing_write_callback(void)
{
    uint8_t state[0x500] = {0};
    uint8_t platform[128] = {0};
    uint8_t result_code = 0xff;
    *(_QWORD *)(state + 72) = (uintptr_t)platform;
    reset_state();
    managed_available = 1;
    if (syna_tcm_v1_write_message((struct tcm_dev *)(uintptr_t)state, 7,
                                   NULL, 0, &result_code, 0) != -245 ||
        result_code != 0 || lock_calls != 3 || unlock_calls != 3 ||
        !*(_QWORD *)(state + 648))
        failures++;
    free((void *)(uintptr_t)*(_QWORD *)(state + 648));
}

static void test_transport_failure(void)
{
    uint8_t state[0x500] = {0};
    uint8_t platform[128] = {0};
    uint8_t result_code = 0xff;
    *(_QWORD *)(state + 72) = (uintptr_t)platform;
    *(__int64 (**)(void))(platform + 40) = write_callback;
    reset_state();
    managed_available = 1;
    write_result = -5;
    if (syna_tcm_v1_write_message((struct tcm_dev *)(uintptr_t)state, 7,
                                   NULL, 0, &result_code, 0) != -5 ||
        result_code != 0 || lock_calls != 3 || unlock_calls != 3 ||
        !*(_QWORD *)(state + 648))
        failures++;
    free((void *)(uintptr_t)*(_QWORD *)(state + 648));
}

static void test_payload_write(void)
{
    uint8_t state[0x500] = {0};
    uint8_t platform[128] = {0};
    uint8_t payload[] = {0xaa, 0xbb};
    uint8_t result_code = 0xff;
    uint8_t *buffer;
    *(_QWORD *)(state + 72) = (uintptr_t)platform;
    *(__int64 (**)(void))(platform + 40) = write_callback;
    reset_state();
    managed_available = 1;
    if (syna_tcm_v1_write_message((struct tcm_dev *)(uintptr_t)state, 0x23,
                                   payload, sizeof(payload), &result_code, 0) != 0 ||
        result_code != 0 || write_calls != 1 || lock_calls != 3 || unlock_calls != 3 ||
        *(_DWORD *)(state + 500) != 0 || *(_DWORD *)(state + 504) != 0 ||
        *(_DWORD *)(state + 656) != 5 || !*(_QWORD *)(state + 648))
        failures++;
    buffer = (uint8_t *)(uintptr_t)*(_QWORD *)(state + 648);
    if (!buffer || buffer[0] != 0x23 || buffer[1] != 2 || buffer[2] != 0 ||
        buffer[3] != 0xaa || buffer[4] != 0xbb)
        failures++;
    free(buffer);
}

static void test_irq_enable_disable(void)
{
    uint8_t state[0x500] = {0};
    uint8_t platform[128] = {0};
    uint8_t result_code = 0xff;
    *(_QWORD *)(state + 72) = (uintptr_t)platform;
    *(__int64 (**)(void))(platform + 40) = write_callback;
    *(void (**)(__int64, __int64))(platform + 56) =
        (void (*)(__int64, __int64))(uintptr_t)enable_callback;
    reset_state();
    managed_available = 1;
    if (syna_tcm_v1_write_message((struct tcm_dev *)(uintptr_t)state, 7,
                                   NULL, 0, &result_code, 1) != 0 ||
        result_code != 0 || write_calls != 1 || read_message_calls != 1 ||
        irq_calls != 2 || first_irq_arg != 0 || last_irq_arg != 1 ||
        lock_calls != 5 || unlock_calls != 5 ||
        *(_DWORD *)(state + 500) != 0 || *(_DWORD *)(state + 504) != 0 ||
        !*(_QWORD *)(state + 648))
        failures++;
    free((void *)(uintptr_t)*(_QWORD *)(state + 648));
}

int main(void)
{
    test_null_handle();
    test_missing_platform();
    test_buffer_allocation_failure();
    test_successful_write();
    test_missing_write_callback();
    test_transport_failure();
    test_payload_write();
    test_irq_enable_disable();
    if (failures != 0)
        return 1;
    puts("PASS syna_tcm_v1_write_message host tests (8 cases)");
    return 0;
}
