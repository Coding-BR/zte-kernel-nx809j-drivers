#include <assert.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef uint32_t u32;

struct tcm_timings {
  u32 value_00;
  u32 value_04;
  u32 value_08;
  u32 value_0c;
  u32 value_10;
  u8 reserved_14[0x0c];
  u32 value_20;
  u32 value_24;
};

struct tcm_dev {
  u8 reserved_0000[0x1e8];
  u32 timing_01e8;
  u32 timing_01ec;
  u8 reserved_01f0[0x18];
  u32 timing_0208;
  u32 command_delay_ms;
  u32 timing_0210;
  u32 timing_0214;
  u32 timing_0218;
};

static unsigned int printk_calls;
static const char *last_format;
static const char *last_function;

static int test_printk(const char *format, ...)
{
  va_list args;

  ++printk_calls;
  last_format = format;
  va_start(args, format);
  last_function = va_arg(args, const char *);
  va_end(args);
  return 0;
}

#define printk test_printk
#include "../../../reconstructed/zte_tpd/syna_tcm_config_timings.c"
#undef printk

static void reset_observations(void)
{
  printk_calls = 0;
  last_format = NULL;
  last_function = NULL;
}

static void reset_device(struct tcm_dev *tcm, u32 value)
{
  memset(tcm, 0, sizeof(*tcm));
  tcm->timing_01e8 = value;
  tcm->timing_01ec = value;
  tcm->timing_0208 = value;
  tcm->command_delay_ms = value;
  tcm->timing_0210 = value;
  tcm->timing_0214 = value;
  tcm->timing_0218 = value;
}

static void assert_invalid_log(void)
{
  assert(printk_calls == 1);
  assert(strcmp(last_format,
                "\0013[error] %s: Invalid timing settings of product\n") == 0);
  assert(strcmp(last_function, "syna_tcm_config_timings") == 0);
}

int main(void)
{
  struct tcm_dev tcm;
  struct tcm_timings timings;

  reset_device(&tcm, 0x55);
  reset_observations();
  assert(syna_tcm_config_timings(&tcm, NULL, 9, 0xffff) == -241);
  assert_invalid_log();
  assert(tcm.timing_01e8 == 0x55);

  reset_device(&tcm, 0x55);
  reset_observations();
  assert(syna_tcm_config_timings(&tcm, NULL, 9, 0) == 0);
  assert(printk_calls == 0);
  assert(tcm.timing_01e8 == 0x55);

  memset(&timings, 0, sizeof(timings));
  timings.value_00 = 1;
  timings.value_04 = 2;
  timings.value_08 = 3;
  timings.value_0c = 4;
  timings.value_10 = 5;
  timings.value_20 = 6;
  timings.value_24 = 7;
  reset_device(&tcm, 0);
  reset_observations();
  assert(syna_tcm_config_timings(&tcm, &timings, 99, 0x3ff) == 0);
  assert(printk_calls == 0);
  assert(tcm.timing_0210 == 3);
  assert(tcm.timing_0214 == 4);
  assert(tcm.timing_0208 == 1);
  assert(tcm.command_delay_ms == 2);
  assert(tcm.timing_0218 == 5);
  assert(tcm.timing_01e8 == 6);
  assert(tcm.timing_01ec == 7);

  memset(&timings, 0, sizeof(timings));
  reset_device(&tcm, 0);
  reset_observations();
  assert(syna_tcm_config_timings(&tcm, &timings, 11, 0x3ff) == 0);
  assert(tcm.timing_0210 == 0);
  assert(tcm.timing_0214 == 0);
  assert(tcm.timing_0208 == 0);
  assert(tcm.command_delay_ms == 0);
  assert(tcm.timing_0218 == 0);
  assert(tcm.timing_01e8 == 0);
  assert(tcm.timing_01ec == 0);

  reset_device(&tcm, 0);
  reset_observations();
  assert(syna_tcm_config_timings(&tcm, NULL, 7,
                                 1 | 2 | 0x100 | 0x200) == 0);
  assert(tcm.timing_0208 == 7);
  assert(tcm.command_delay_ms == 7);
  assert(tcm.timing_01e8 == 7);
  assert(tcm.timing_01ec == 7);
  assert(tcm.timing_0210 == 0);
  assert(tcm.timing_0214 == 0);
  assert(tcm.timing_0218 == 0);

  memset(&timings, 0, sizeof(timings));
  timings.value_08 = 9;
  timings.value_0c = 10;
  reset_device(&tcm, 0);
  reset_observations();
  assert(syna_tcm_config_timings(&tcm, &timings, 100, 4) == 0);
  assert(tcm.timing_0210 == 9);
  assert(tcm.timing_0214 == 10);

  reset_device(&tcm, 0x66);
  reset_observations();
  assert(syna_tcm_config_timings(&tcm, &timings, 0, 1) == 0);
  assert(tcm.timing_0208 == 0x66);

  reset_device(&tcm, 0);
  timings.value_00 = 8;
  timings.value_04 = 9;
  timings.value_08 = 10;
  timings.value_0c = 11;
  timings.value_10 = 12;
  timings.value_20 = 13;
  timings.value_24 = 14;
  reset_observations();
  assert(syna_tcm_config_timings(&tcm, &timings, 0, 0xffff) == 0);
  assert(tcm.timing_0210 == 10);
  assert(tcm.timing_0214 == 11);
  assert(tcm.timing_0208 == 8);
  assert(tcm.command_delay_ms == 9);
  assert(tcm.timing_0218 == 12);
  assert(tcm.timing_01e8 == 13);
  assert(tcm.timing_01ec == 14);

  puts("syna_tcm_config_timings host oracle: PASS");
  return 0;
}
