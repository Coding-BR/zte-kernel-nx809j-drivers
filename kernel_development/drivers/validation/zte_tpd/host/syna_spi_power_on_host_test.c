#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define __fastcall
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef int _BOOL4;
#define SP_EL0 0

static int g_regulator_enable_result;
static unsigned int g_regulator_enable_calls;
static unsigned int g_regulator_disable_calls;
static unsigned int g_gpio_to_desc_calls;
static unsigned int g_gpio_set_calls;
static unsigned int g_gpio_direction_calls;
static unsigned int g_msleep_calls;
static unsigned int g_usleep_calls;
static unsigned int g_last_gpio;
static int g_last_gpio_value;
static unsigned int g_last_sleep;

char unk_33D51[] = "power %s";
char unk_39E34[] = "power disabled";
char unk_38E7D[] = "disable complete";
char unk_3711F[] = "enable complete";
char unk_362D2[] = "power result";
char unk_38350[] = "invalid regulator";
char unk_399EE[] = "regulator error";
char unk_325D6[] = "second regulator error";
char unk_3A480[] = "first regulator error";

int printk(const char *format, ...)
{
  (void)format;
  return 0;
}

void regulator_disable(__int64 regulator)
{
  (void)regulator;
  ++g_regulator_disable_calls;
}

int regulator_enable(void)
{
  ++g_regulator_enable_calls;
  return g_regulator_enable_result;
}

__int64 gpio_to_desc(unsigned int gpio)
{
  ++g_gpio_to_desc_calls;
  g_last_gpio = gpio;
  return (__int64)(uintptr_t)(gpio + 0x1000U);
}

void gpiod_set_raw_value(__int64 desc, int value)
{
  (void)desc;
  ++g_gpio_set_calls;
  g_last_gpio_value = value;
}

int gpiod_direction_output_raw(__int64 desc, int value)
{
  (void)desc;
  ++g_gpio_direction_calls;
  g_last_gpio_value = value;
  return 0;
}

void msleep(unsigned int milliseconds)
{
  ++g_msleep_calls;
  g_last_sleep = milliseconds;
}

int usleep_range_state(unsigned int minimum, unsigned int maximum,
                       unsigned int state)
{
  (void)maximum;
  (void)state;
  ++g_usleep_calls;
  g_last_sleep = minimum;
  return 0;
}

#include "../../../reconstructed/zte_tpd/syna_spi_power_on.c"

static unsigned char context[400];

static void reset_state(void)
{
  memset(context, 0, sizeof(context));
  g_regulator_enable_result = 0;
  g_regulator_enable_calls = 0;
  g_regulator_disable_calls = 0;
  g_gpio_to_desc_calls = 0;
  g_gpio_set_calls = 0;
  g_gpio_direction_calls = 0;
  g_msleep_calls = 0;
  g_usleep_calls = 0;
  g_last_gpio = 0;
  g_last_gpio_value = 0;
  g_last_sleep = 0;
}

static void set_u32(size_t offset, unsigned int value)
{
  *(unsigned int *)(context + offset) = value;
}

static void set_u64(size_t offset, unsigned long long value)
{
  *(unsigned long long *)(context + offset) = value;
}

static int run_tests(void)
{
  __int64 address = (__int64)(uintptr_t)context;
  int result;

  reset_state();
  set_u32(256, 1); set_u64(272, 1); set_u32(288, 5);
  result = syna_spi_power_on(address, 1);
  if (result != 0 || g_regulator_enable_calls != 1 ||
      g_msleep_calls != 1 || g_last_sleep != 5) return 1;

  reset_state();
  set_u32(256, 2); set_u32(280, 17); set_u32(336, 1);
  result = syna_spi_power_on(address, 1);
  if (result != 0 || g_gpio_set_calls != 1 ||
      g_last_gpio != 17 || g_last_gpio_value != 1) return 1;

  reset_state();
  set_u32(256, 1); set_u64(272, 1); set_u32(292, 3);
  set_u32(296, 1); set_u64(312, 1); set_u32(332, 4);
  result = syna_spi_power_on(address, 0);
  if (result != 0 || g_regulator_disable_calls != 2 ||
      g_gpio_direction_calls != 1 || g_usleep_calls != 1) return 1;

  reset_state();
  set_u32(256, 1); set_u64(272, 1); g_regulator_enable_result = -5;
  result = syna_spi_power_on(address, 1);
  if (result != -5 || g_regulator_enable_calls != 1) return 1;

  reset_state();
  set_u32(256, 1); set_u64(272, 0xffffffffffffffffULL);
  result = syna_spi_power_on(address, 1);
  if (result != 0 || g_regulator_enable_calls != 0) return 1;

  reset_state();
  set_u32(296, 2); set_u32(320, 23); set_u32(336, 0); set_u32(328, 6);
  result = syna_spi_power_on(address, 1);
  if (result != 0 || g_gpio_set_calls != 1 ||
      g_last_gpio != 23 || g_last_gpio_value != 0 || g_msleep_calls != 1) return 1;

  reset_state();
  set_u32(256, 2); set_u32(280, 31); set_u32(296, 2); set_u32(320, 32);
  set_u32(336, 1);
  result = syna_spi_power_on(address, 0);
  if (result != 0 || g_gpio_set_calls != 2 ||
      g_gpio_direction_calls != 1) return 1;

  reset_state();
  result = syna_spi_power_on(address, 1);
  if (result != 0 || g_regulator_enable_calls != 0 ||
      g_gpio_set_calls != 0) return 1;

  return 0;
}

int main(void)
{
  if (run_tests() != 0) {
    puts("FAIL syna_spi_power_on host tests");
    return 1;
  }
  puts("PASS syna_spi_power_on host tests (8 cases)");
  return 0;
}
