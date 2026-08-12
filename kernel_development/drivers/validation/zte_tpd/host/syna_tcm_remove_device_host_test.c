#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define __int64 long long
#define __int8 char
#define __int16 short
#define __int32 int
typedef unsigned long long _QWORD;
typedef unsigned char _BYTE;
typedef unsigned short _WORD;
typedef unsigned int _DWORD;

#define __fastcall

struct tcm_dev {
  unsigned char opaque[0x400];
};

static unsigned char managed_token;
static bool managed_available;
static int free_count;
static int printk_count;

void *unk_34845 = (void *)0x1;
void *unk_3BE43 = (void *)0x2;
void *unk_3AC8E = (void *)0x3;
void *unk_3365A = (void *)0x4;

long long syna_request_managed_device(void)
{
  return managed_available ? (long long)(uintptr_t)&managed_token : 0;
}

void devm_kfree(long long device, void *ptr)
{
  (void)device;
  if (ptr)
    ++free_count;
}

void printk(void *format, ...)
{
  (void)format;
  ++printk_count;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_remove_device.c"

static void expect_true(bool condition, const char *label)
{
  if (!condition) {
    fprintf(stderr, "FAIL: %s\n", label);
    exit(1);
  }
}

static void seed_buffer(unsigned char *tcm, size_t pointer_offset,
                        size_t reset_offset, size_t flag_offset,
                        unsigned char *buffer)
{
  *(_QWORD *)(tcm + pointer_offset) = (_QWORD)(uintptr_t)buffer;
  *(_BYTE *)(tcm + flag_offset) = 1;
  *(_QWORD *)(tcm + reset_offset) = (_QWORD)(uintptr_t)buffer;
}

static void test_null_device(void)
{
  managed_available = true;
  free_count = 0;
  printk_count = 0;
  syna_tcm_remove_device(NULL);
  expect_true(free_count == 0, "null device does not free");
  expect_true(printk_count == 1, "null device emits final log");
}

static void test_missing_managed_device(void)
{
  unsigned char *tcm = calloc(1, 0x400);
  expect_true(tcm != NULL, "allocate missing-device fixture");
  seed_buffer(tcm, 0x2d0, 0x2d8, 0x310, tcm + 0x10);
  seed_buffer(tcm, 0x288, 0x290, 0x2c8, tcm + 0x20);
  seed_buffer(tcm, 0x240, 0x248, 0x280, tcm + 0x30);
  seed_buffer(tcm, 0x190, 0x198, 0x1d0, tcm + 0x40);
  seed_buffer(tcm, 0x100, 0x108, 0x140, tcm + 0x50);
  seed_buffer(tcm, 0x148, 0x150, 0x188, tcm + 0x60);
  *(_QWORD *)(tcm + 0x0) = 0x11;
  *(_QWORD *)(tcm + 0x48) = 0x22;

  managed_available = false;
  free_count = 0;
  printk_count = 0;
  syna_tcm_remove_device((struct tcm_dev *)tcm);

  expect_true(free_count == 0, "missing managed device skips frees");
  expect_true(*(_QWORD *)(tcm + 0x2d8) == 0 &&
              *(_QWORD *)(tcm + 0x290) == 0 &&
              *(_QWORD *)(tcm + 0x248) == 0 &&
              *(_QWORD *)(tcm + 0x198) == 0 &&
              *(_QWORD *)(tcm + 0x108) == 0 &&
              *(_QWORD *)(tcm + 0x150) == 0,
              "missing managed device clears buffer state fields");
  expect_true(*(_QWORD *)(tcm + 0x0) == 0 &&
              *(_QWORD *)(tcm + 0x48) == 0,
              "missing managed device clears identity fields");
  free(tcm);
}

static void test_full_cleanup(void)
{
  unsigned char *tcm = calloc(1, 0x400);
  expect_true(tcm != NULL, "allocate cleanup fixture");
  seed_buffer(tcm, 0x2d0, 0x2d8, 0x310, tcm + 0x10);
  seed_buffer(tcm, 0x288, 0x290, 0x2c8, tcm + 0x20);
  seed_buffer(tcm, 0x240, 0x248, 0x280, tcm + 0x30);
  seed_buffer(tcm, 0x190, 0x198, 0x1d0, tcm + 0x40);
  seed_buffer(tcm, 0x100, 0x108, 0x140, tcm + 0x50);
  seed_buffer(tcm, 0x148, 0x150, 0x188, tcm + 0x60);
  *(_QWORD *)(tcm + 0x0) = 0x11;
  *(_QWORD *)(tcm + 0x48) = 0x22;

  managed_available = true;
  free_count = 0;
  printk_count = 0;
  syna_tcm_remove_device((struct tcm_dev *)tcm);

  expect_true(free_count == 7, "full cleanup frees six buffers and tcm");
  expect_true(*(_QWORD *)(tcm + 0x2d8) == 0 &&
              *(_QWORD *)(tcm + 0x290) == 0 &&
              *(_QWORD *)(tcm + 0x248) == 0 &&
              *(_QWORD *)(tcm + 0x198) == 0 &&
              *(_QWORD *)(tcm + 0x108) == 0 &&
              *(_QWORD *)(tcm + 0x150) == 0,
              "full cleanup clears all buffer state fields");
  expect_true(*(_BYTE *)(tcm + 0x310) == 0 &&
              *(_BYTE *)(tcm + 0x2c8) == 0 &&
              *(_BYTE *)(tcm + 0x280) == 0 &&
              *(_BYTE *)(tcm + 0x1d0) == 0 &&
              *(_BYTE *)(tcm + 0x140) == 0 &&
              *(_BYTE *)(tcm + 0x188) == 0,
              "full cleanup clears all buffer flags");
  expect_true(*(_QWORD *)(tcm + 0x0) == 0 &&
              *(_QWORD *)(tcm + 0x48) == 0,
              "full cleanup clears identity fields");
  free(tcm);
}

int main(void)
{
  test_null_device();
  test_missing_managed_device();
  test_full_cleanup();
  puts("PASS: syna_tcm_remove_device host contract");
  return 0;
}
