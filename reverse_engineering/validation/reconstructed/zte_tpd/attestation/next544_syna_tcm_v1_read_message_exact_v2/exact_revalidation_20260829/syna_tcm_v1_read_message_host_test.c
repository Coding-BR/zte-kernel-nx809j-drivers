#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int8 char
#define __int16 short
#define __int64 long long
#define __fastcall
#define _BOOL4 int
typedef uint8_t _BYTE;
typedef uint16_t _WORD;
typedef uint32_t _DWORD;
typedef uint64_t _QWORD;
typedef uint8_t u8;
struct tcm_dev;

#define nullptr ((void *)0)
#define LODWORD(value) (*((uint32_t *)&(value)))

#define unk_31A6B "%s"
#define unk_31A9A "%s"
#define unk_320FD "%s"
#define unk_32AED "%s"
#define unk_3365A "%s"
#define unk_343B9 "%s"
#define unk_34FAB "%s"
#define unk_3563C "%s"
#define unk_3617E "%s"
#define unk_3703C "%s"
#define unk_37206 "%s"
#define unk_3795A "%s"
#define unk_37999 "%s"
#define unk_37DFA "%s"
#define unk_37F60 "%s"
#define unk_38244 "%s"
#define unk_38286 "%s"
#define unk_38466 "%s"
#define unk_3944E "%s"
#define unk_39E78 "%s"
#define unk_39EA9 "%s"
#define unk_3ABA5 "%s"
#define unk_3ABF0 "%s"
#define unk_3AC2B "%s"
#define unk_3B956 "%s"
#define unk_3BE43 "%s"
#define unk_3C094 "%s"
#define unk_3C6C4 "%s"
#define unk_3D392 "%s"

static unsigned int printk_calls;
static int configured_read_result;
static unsigned int read_calls;

static int printk(const char *format, ...)
{
  (void)format;
  ++printk_calls;
  return 0;
}

static void __break(unsigned int code)
{
  (void)code;
}

static void mutex_lock(__int64 mutex)
{
  (void)mutex;
}

static int mutex_unlock(__int64 mutex)
{
  (void)mutex;
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

static void devm_kfree(__int64 device, const void *pointer)
{
  (void)device;
  free((void *)pointer);
}

static unsigned int syna_tcm_v1_read(__int64 device, unsigned int size,
                                     __int64 buffer, unsigned int capacity)
{
  (void)device;
  (void)size;
  (void)capacity;
  ++read_calls;
  if (configured_read_result == 0 && buffer != 0) {
    uint8_t *bytes = (uint8_t *)(uintptr_t)buffer;
    bytes[0] = 0;
    bytes[1] = 0;
    bytes[2] = 0;
    bytes[3] = 0;
  }
  return (unsigned int)configured_read_result;
}

static __int64 syna_tcm_v1_parse_idinfo(__int64 device, const void *data,
                                        __int64 available, unsigned int size)
{
  (void)device;
  (void)data;
  (void)available;
  (void)size;
  return 0;
}

static __int64 syna_tcm_buf_unlock(__int64 device)
{
  (void)device;
  return 0;
}

static void usleep_range_state(unsigned int minimum, unsigned int maximum,
                               int state)
{
  (void)minimum;
  (void)maximum;
  (void)state;
}

static void complete(__int64 completion)
{
  (void)completion;
}

static int completion_done(__int64 completion)
{
  (void)completion;
  return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_v1_read_message.c"

static int expect_buffer_allocation_failure(void)
{
  uint8_t state[0x5200] = {0};
  uint8_t device[64] = {0};
  uint8_t code = 0;

  *(uint64_t *)(state + 72) = (uintptr_t)device;
  *(uint64_t *)(state + 576) = 0;
  *(uint32_t *)(state + 584) = 0;
  configured_read_result = 0;
  read_calls = 0;
  printk_calls = 0;
  if (syna_tcm_v1_read_message((struct tcm_dev *)(uintptr_t)state, &code) !=
          -243)
    return 0;
  return code == 0xff && read_calls == 0 && state[640] == 0 &&
         *(uint32_t *)(state + 512) == 0 && printk_calls >= 2;
}

int main(void)
{
  uint8_t state[0x5200] = {0};
  uint8_t device[64] = {0};
  uint8_t primary_buffer[16] = {0};
  uint8_t code = 0;

  printk_calls = 0;
  if (syna_tcm_v1_read_message(NULL, &code) != -241 || printk_calls != 1)
    return 1;

  printk_calls = 0;
  if (syna_tcm_v1_read_message((struct tcm_dev *)(uintptr_t)state, &code) !=
          -241 ||
      printk_calls != 1)
    return 1;

  memset(state, 0, sizeof(state));
  memset(primary_buffer, 0, sizeof(primary_buffer));
  *(uint64_t *)(state + 72) = (uintptr_t)device;
  *(uint64_t *)(state + 576) = (uintptr_t)primary_buffer;
  *(uint32_t *)(state + 584) = sizeof(primary_buffer);
  configured_read_result = -5;
  read_calls = 0;
  code = 0;
  if (syna_tcm_v1_read_message((struct tcm_dev *)(uintptr_t)state, &code) !=
          -5 ||
      code != 0xff || read_calls != 1 || state[640] != 0 ||
      *(uint32_t *)(state + 512) != 0)
    return 1;

  memset(state, 0, sizeof(state));
  memset(primary_buffer, 0, sizeof(primary_buffer));
  *(uint64_t *)(state + 72) = (uintptr_t)device;
  *(uint64_t *)(state + 576) = (uintptr_t)primary_buffer;
  *(uint32_t *)(state + 584) = sizeof(primary_buffer);
  configured_read_result = 0;
  read_calls = 0;
  code = 0xff;
  if (syna_tcm_v1_read_message((struct tcm_dev *)(uintptr_t)state, &code) !=
          0 ||
      code != 0 || read_calls != 1 || state[640] != 0 ||
      *(uint32_t *)(state + 512) != 0 || primary_buffer[0] != 0xa5)
    return 1;

  if (!expect_buffer_allocation_failure())
    return 1;

  puts("PASS syna_tcm_v1_read_message host tests (5 cases)");
  return 0;
}
