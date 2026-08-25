#include <assert.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;

struct tcm_dev {
  u8 reserved_0000[0x38];
  u32 max_read_size;
  u32 max_write_size;
  u32 host_max_read_size;
  u32 host_max_write_size;
  u8 reserved_0050[0x30];
  u8 protocol_version;
  u8 reserved_0081[0x15];
  u16 identify_max_write_size;
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
#define barrier() do { } while (0)
#include "../../../reconstructed/zte_tpd/syna_tcm_v1_set_up_max_rw_size.c"
#undef barrier
#undef printk

static void reset_observations(void)
{
  printk_calls = 0;
  last_format = NULL;
  last_function = NULL;
}

static void init_valid(struct tcm_dev *tcm)
{
  memset(tcm, 0, sizeof(*tcm));
  tcm->protocol_version = 1;
}

static void assert_error_log(const char *format)
{
  assert(printk_calls == 1);
  assert(last_format != NULL);
  assert(strcmp(last_format, format) == 0);
  assert(last_function != NULL);
  assert(strcmp(last_function, "syna_tcm_v1_set_up_max_rw_size") == 0);
}

int main(void)
{
  struct tcm_dev tcm;

  reset_observations();
  assert(syna_tcm_v1_set_up_max_rw_size(NULL, 60, 70) == -241);
  assert_error_log("\0013[error] %s: Invalid tcm device handle\n");

  init_valid(&tcm);
  tcm.protocol_version = 0;
  reset_observations();
  assert(syna_tcm_v1_set_up_max_rw_size(&tcm, 60, 70) == -241);
  assert_error_log("\0013[error] %s: Invalid identify report stored\n");

  init_valid(&tcm);
  tcm.identify_max_write_size = 100;
  tcm.host_max_read_size = 80;
  tcm.host_max_write_size = 40;
  tcm.max_read_size = 1;
  tcm.max_write_size = 2;
  reset_observations();
  assert(syna_tcm_v1_set_up_max_rw_size(&tcm, 60, 70) == 0);
  assert(printk_calls == 0);
  assert(tcm.max_read_size == 60);
  assert(tcm.max_write_size == 40);

  init_valid(&tcm);
  tcm.identify_max_write_size = 100;
  tcm.host_max_write_size = 40;
  tcm.max_read_size = 123;
  tcm.max_write_size = 2;
  reset_observations();
  assert(syna_tcm_v1_set_up_max_rw_size(&tcm, 60, 70) == 0);
  assert(tcm.max_read_size == 60);
  assert(tcm.max_write_size == 70);

  init_valid(&tcm);
  tcm.identify_max_write_size = 50;
  tcm.host_max_read_size = 100;
  tcm.host_max_write_size = 40;
  tcm.max_read_size = 123;
  reset_observations();
  assert(syna_tcm_v1_set_up_max_rw_size(&tcm, 60, 70) == 0);
  assert(tcm.max_read_size == 123);
  assert(tcm.max_write_size == 40);

  init_valid(&tcm);
  tcm.identify_max_write_size = 100;
  tcm.host_max_read_size = 80;
  tcm.host_max_write_size = 50;
  tcm.max_read_size = 60;
  tcm.max_write_size = 50;
  reset_observations();
  assert(syna_tcm_v1_set_up_max_rw_size(&tcm, 60, 50) == 0);
  assert(printk_calls == 0);
  assert(tcm.max_read_size == 60);
  assert(tcm.max_write_size == 50);

  init_valid(&tcm);
  tcm.identify_max_write_size = 100;
  tcm.host_max_read_size = 80;
  tcm.host_max_write_size = 100;
  reset_observations();
  assert(syna_tcm_v1_set_up_max_rw_size(&tcm, 60, 50) == 0);
  assert(tcm.max_read_size == 60);
  assert(tcm.max_write_size == 50);

  puts("syna_tcm_v1_set_up_max_rw_size host oracle: PASS");
  return 0;
}
