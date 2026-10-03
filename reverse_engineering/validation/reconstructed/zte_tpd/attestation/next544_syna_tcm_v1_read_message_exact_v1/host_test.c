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
  (void)buffer;
  (void)capacity;
  return 0;
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

int main(void)
{
  uint8_t state[0x400] = {0};
  uint8_t code = 0;

  printk_calls = 0;
  if (syna_tcm_v1_read_message(NULL, &code) != -241 || printk_calls != 1)
    return 1;

  printk_calls = 0;
  if (syna_tcm_v1_read_message((struct tcm_dev *)(uintptr_t)state, &code) !=
          -241 ||
      printk_calls != 1)
    return 1;

  puts("PASS syna_tcm_v1_read_message host tests (2 cases)");
  return 0;
}
