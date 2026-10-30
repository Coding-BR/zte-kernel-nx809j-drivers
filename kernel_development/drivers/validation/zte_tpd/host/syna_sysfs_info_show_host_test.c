#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>

#define __fastcall
typedef long long __int64;
typedef unsigned int _DWORD;
typedef unsigned char u8;
typedef uint64_t tcm_unaligned_u64 __attribute__((aligned(1)));
struct kobject { unsigned char bytes[64]; };
struct kobj_attribute { unsigned char bytes[8]; };

static unsigned int g_scnprintf_calls;
static unsigned int g_scnprintf_fail_at;

static unsigned char g_kobj[64];
static unsigned char g_container[0x110];
static unsigned char g_tcm_dev[0x600];
static unsigned char g_core[0x200];
static char g_output[0x1000];

static void set_u32(unsigned char *base, size_t offset, unsigned int value)
{
  memcpy(base + offset, &value, sizeof(value));
}

static void set_u64(unsigned char *base, size_t offset, uint64_t value)
{
  memcpy(base + offset, &value, sizeof(value));
}

int scnprintf(char *buffer, size_t size, const char *format, ...)
{
  va_list args;
  int result;

  ++g_scnprintf_calls;
  if (g_scnprintf_fail_at != 0 && g_scnprintf_calls == g_scnprintf_fail_at)
    return -1;
  va_start(args, format);
  result = vsnprintf(buffer, size, format, args);
  va_end(args);
  if (result < 0)
    return result;
  if (size == 0)
    return 0;
  return result >= (int)size ? (int)size - 1 : result;
}

int printk(const char *format, ...)
{
  (void)format;
  return 0;
}

#include "../../../reconstructed/zte_tpd/syna_sysfs_info_show.c"

static void reset_state(void)
{
  memset(g_kobj, 0, sizeof(g_kobj));
  memset(g_container, 0, sizeof(g_container));
  memset(g_tcm_dev, 0, sizeof(g_tcm_dev));
  memset(g_core, 0, sizeof(g_core));
  memset(g_output, 0, sizeof(g_output));
  g_scnprintf_calls = 0;
  g_scnprintf_fail_at = 0;
  set_u64(g_kobj, 24, (uint64_t)(uintptr_t)g_container);
  set_u64(g_container, 0x98, (uint64_t)(uintptr_t)g_tcm_dev);
  set_u64(g_tcm_dev, 0, (uint64_t)(uintptr_t)g_core);
  set_u32(g_tcm_dev, 0x57c, 2);
  g_tcm_dev[0x582] = 0;
  g_core[0x80] = 7;
  g_core[0x81] = 1;
  set_u32(g_tcm_dev, 900, 4);
  set_u32(g_core, 0x0c, 1234);
  set_u32(g_core, 0x10, 1080);
  set_u32(g_core, 0x14, 2400);
  set_u32(g_core, 0x18, 12);
  set_u32(g_core, 0x1c, 40);
  set_u32(g_core, 0x20, 30);
  set_u32(g_core, 0x38, 4096);
  set_u32(g_core, 0x3c, 8192);
  for (size_t index = 0; index < 16; ++index) {
    g_core[0x24 + index] = (unsigned char)(index + 1);
    g_core[0x82 + index] = (unsigned char)('A' + index);
  }
}

static int contains(const char *needle)
{
  return strstr(g_output, needle) != NULL;
}

static int run_tests(void)
{
  ssize_t result;

  reset_state();
  result = syna_sysfs_info_show((struct kobject *)g_kobj,
                                (struct kobj_attribute *)0, g_output);
  if (result <= 0 || !contains("Driver version:     1.9.0") ||
      !contains("Device is NOT connected"))
    return 1;

  reset_state();
  set_u32(g_tcm_dev, 0x57c, 3);
  result = syna_sysfs_info_show((struct kobject *)g_kobj,
                                (struct kobj_attribute *)0, g_output);
  if (result <= 0 || !contains("Device in BARE connection"))
    return 2;

  reset_state();
  g_tcm_dev[0x582] = 1;
  result = syna_sysfs_info_show((struct kobject *)g_kobj,
                                (struct kobj_attribute *)0, g_output);
  if (result <= 0 || !contains("Character Dev. Node: /dev/tcm*") ||
      !contains("TouchComm version:  7") ||
      !contains("Application Firmware") || !contains("Config ID:") ||
      !contains("Max X & Y:          1080, 2400") ||
      !contains("Max. Write Size:    4096 bytes"))
    return 3;

  reset_state();
  g_tcm_dev[0x582] = 1;
  g_core[0x81] = 0x0b;
  result = syna_sysfs_info_show((struct kobject *)g_kobj,
                                (struct kobj_attribute *)0, g_output);
  if (result <= 0 || !contains("Firmware mode:      Bootloader, 0x0b"))
    return 4;

  reset_state();
  g_tcm_dev[0x582] = 1;
  g_core[0x81] = 2;
  result = syna_sysfs_info_show((struct kobject *)g_kobj,
                                (struct kobj_attribute *)0, g_output);
  if (result <= 0 || !contains("Firmware mode:      Mode 0x02"))
    return 5;

  reset_state();
  g_scnprintf_fail_at = 1;
  result = syna_sysfs_info_show((struct kobject *)g_kobj,
                                (struct kobj_attribute *)0, g_output);
  if (result != -1 || g_scnprintf_calls != 1)
    return 6;

  reset_state();
  g_tcm_dev[0x582] = 1;
  g_scnprintf_fail_at = 3;
  result = syna_sysfs_info_show((struct kobject *)g_kobj,
                                (struct kobj_attribute *)0, g_output);
  if (result != -1 || g_scnprintf_calls != 3)
    return 7;

  reset_state();
  g_tcm_dev[0x582] = 1;
  set_u32(g_tcm_dev, 900, 99);
  set_u32(g_core, 0x0c, 0x7fffffffU);
  result = syna_sysfs_info_show((struct kobject *)g_kobj,
                                (struct kobj_attribute *)0, g_output);
  if (result <= 0 || !contains("ref. count:99") ||
      !contains("Packrat number:     2147483647"))
    return 8;

  return 0;
}

int main(void)
{
  if (run_tests() != 0) {
    puts("FAIL syna_sysfs_info_show host tests");
    return 1;
  }
  puts("PASS syna_sysfs_info_show host tests (8 cases)");
  return 0;
}
