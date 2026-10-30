#include <stdint.h>
#include <stdio.h>
#include <stddef.h>
#include <string.h>

typedef int64_t __int64;
typedef uint32_t _DWORD;

#define __fastcall
#define __int16 short

union cdev_memory {
  max_align_t alignment;
  unsigned char bytes[0x4a8];
};

__int64 tpd_cdev;
static const char *last_log;

static int host_printk(const char *format)
{
  last_log = format;
  return 0;
}

#define printk host_printk
#include "../../../reconstructed/zte_tpd/ghost_check_area.c"
#undef printk

static void store_u16(union cdev_memory *cdev, size_t offset, uint16_t value)
{
  memcpy(cdev->bytes + offset, &value, sizeof(value));
}

static void store_u32(union cdev_memory *cdev, size_t offset, uint32_t value)
{
  memcpy(cdev->bytes + offset, &value, sizeof(value));
}

static int run_case(const char *name, uint32_t mode, uint16_t x, uint16_t y,
                    int expected_result, const char *expected_log)
{
  union cdev_memory cdev = { 0 };
  unsigned char point[32] = { 0 };
  int result;

  tpd_cdev = (__int64)(uintptr_t)cdev.bytes;
  store_u32(&cdev, 0x10, mode);
  store_u16(&cdev, 0x442, 1000);
  store_u16(&cdev, 0x444, 2000);
  store_u32(&cdev, 0x49c, 100);
  store_u32(&cdev, 0x4a0, 400);
  store_u32(&cdev, 0x4a4, 200);
  memcpy(point + 24, &x, sizeof(x));
  memcpy(point + 28, &y, sizeof(y));
  last_log = NULL;
  result = (int)ghost_check_area((__int64)(uintptr_t)point);
  if (result != expected_result || last_log != expected_log) {
    fprintf(stderr, "%s: result/log mismatch\n", name);
    return 1;
  }
  return 0;
}

int main(void)
{
  int failures = 0;

  failures += run_case("edge", 0, 50, 500, 0,
                       "\0015tpd: in ghost ignore edge area");
  failures += run_case("interior", 0, 500, 500, 1, NULL);
  failures += run_case("vertical_corner", 0, 300, 1950, 0,
                       "\0015tpd: in ghost_ignore_corner_area");
  failures += run_case("dual_axis", 3, 500, 500, 1, NULL);
  if (failures)
    return 1;
  puts("PASS ghost_check_area host tests (4 cases)");
  return 0;
}
