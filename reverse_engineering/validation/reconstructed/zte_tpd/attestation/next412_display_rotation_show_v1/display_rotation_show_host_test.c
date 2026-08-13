#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
typedef long long __int64;
typedef uint64_t _QWORD;
typedef uint16_t _WORD;
typedef uint32_t _DWORD;

struct file { int unused; };
static uint8_t fake_sp[1824];
#define SP_EL0 0
#define _ReadStatusReg(reg) ((uintptr_t)fake_sp)

long long tpd_cdev;
char unk_3A127[256] = "zte_tpd_log";
static unsigned int printk_calls;

int printk(const char *format, ...)
{
  (void)format;
  printk_calls++;
  return 0;
}

int snprintf(char *buffer, size_t size, const char *format, ...)
{
  (void)format;
  if (size > 0) {
    memcpy(buffer, "display rotation: 2\n", 20);
    if (size > 20) buffer[20] = '\0';
  }
  return 20;
}

ssize_t simple_read_from_buffer(__int64 to, size_t count, __int64 *offset,
                                const void *from, size_t available)
{
  size_t copied = available < count ? available : count;
  memcpy((void *)(uintptr_t)to, from, copied);
  *offset += copied;
  return (ssize_t)copied;
}

#include "../../../reconstructed/zte_tpd/display_rotation_show.c"

struct fixture { uint8_t device[0x18]; };

static void expect(int condition, const char *name, const char *message)
{
  if (!condition) {
    fprintf(stderr, "FAIL %s: %s\n", name, message);
    exit(1);
  }
}

static void fixture_init(struct fixture *fixture, unsigned int rotation)
{
  memset(fixture, 0, sizeof(*fixture));
  *(unsigned int *)(fixture->device + 0x10) = rotation;
  tpd_cdev = (long long)(uintptr_t)fixture->device;
  printk_calls = 0;
}

static void test_formats_rotation_value(void)
{
  const char *name = "formats_rotation_value";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  char output[32] = {0};

  fixture_init(&fixture, 2);
  expect(display_rotation_show(&file, output, sizeof(output), &offset) == 20,
         name, "read length differs");
  expect(memcmp(output, "display rotation: 2\n", 20) == 0,
         name, "formatted rotation differs");
  expect(printk_calls == 1, name, "rotation was not logged");
}

static void test_nonzero_offset_has_no_side_effects(void)
{
  const char *name = "nonzero_offset_has_no_side_effects";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 1;
  char output[32] = {0};

  fixture_init(&fixture, 2);
  expect(display_rotation_show(&file, output, sizeof(output), &offset) == 0,
         name, "nonzero offset result differs");
  expect(printk_calls == 0, name, "nonzero offset was logged");
}

int main(void)
{
  test_formats_rotation_value();
  test_nonzero_offset_has_no_side_effects();
  puts("PASS display_rotation_show host tests (2 cases)");
  return 0;
}
