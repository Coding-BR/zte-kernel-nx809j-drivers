#include <stdint.h>
#include <stdio.h>

typedef uint32_t u32;

struct tcm_dev {
  u32 max_read_size;
  u32 max_write_size;
  u32 host_max_read_size;
  u32 host_max_write_size;
  uint8_t reserved[0x3c];
  uint8_t protocol_version;
  uint8_t reserved2[0x15];
  uint16_t identify_max_write_size;
};

static unsigned int printk_calls;

static int test_printk(const char *format, ...)
{
  (void)format;
  ++printk_calls;
  return 0;
}

#define printk test_printk
#define OPTIMIZER_HIDE_VAR(value) ((void)(value))
#define barrier() __asm__ volatile("" ::: "memory")
#include "../../../reconstructed/zte_tpd/syna_tcm_v1_check_max_rw_size.c"
#undef barrier
#undef OPTIMIZER_HIDE_VAR
#undef printk

static int failures;

static void expect(int condition, const char *name)
{
  if (!condition) {
    fprintf(stderr, "FAIL %s\n", name);
    ++failures;
  }
}

static void reset(struct tcm_dev *tcm)
{
  *tcm = (struct tcm_dev){0};
  printk_calls = 0;
}

int main(void)
{
  struct tcm_dev tcm;

  reset(&tcm);
  expect(syna_tcm_v1_check_max_rw_size(NULL) == -241 && printk_calls == 1,
         "null handle");

  reset(&tcm);
  tcm.protocol_version = 0;
  tcm.identify_max_write_size = 1024;
  expect(syna_tcm_v1_check_max_rw_size(&tcm) == -241 && printk_calls == 1,
         "invalid protocol");

  reset(&tcm);
  tcm.protocol_version = 1;
  expect(syna_tcm_v1_check_max_rw_size(&tcm) == -241 && printk_calls == 1,
         "missing identify size");

  reset(&tcm);
  tcm.protocol_version = 1;
  tcm.identify_max_write_size = 1024;
  tcm.host_max_read_size = 512;
  tcm.host_max_write_size = 256;
  tcm.max_read_size = 1;
  tcm.max_write_size = 1024;
  expect(syna_tcm_v1_check_max_rw_size(&tcm) == 0 &&
             tcm.max_read_size == 512 && tcm.max_write_size == 256 &&
             printk_calls == 0,
         "host read and write clamps");

  reset(&tcm);
  tcm.protocol_version = 1;
  tcm.identify_max_write_size = 1024;
  tcm.host_max_read_size = 2048;
  tcm.host_max_write_size = 4096;
  tcm.max_read_size = 0;
  tcm.max_write_size = 123;
  expect(syna_tcm_v1_check_max_rw_size(&tcm) == 0 &&
             tcm.max_read_size == 1024 && tcm.max_write_size == 123,
         "identify size below host read");

  reset(&tcm);
  tcm.protocol_version = 1;
  tcm.identify_max_write_size = 1024;
  tcm.host_max_read_size = 0;
  tcm.host_max_write_size = 0;
  tcm.max_read_size = 1;
  tcm.max_write_size = 123;
  expect(syna_tcm_v1_check_max_rw_size(&tcm) == 0 &&
             tcm.max_read_size == 1024 && tcm.max_write_size == 123,
         "host read disabled");

  reset(&tcm);
  tcm.protocol_version = 1;
  tcm.identify_max_write_size = 1024;
  tcm.host_max_read_size = 1024;
  tcm.host_max_write_size = 2048;
  tcm.max_read_size = 1024;
  tcm.max_write_size = 200;
  expect(syna_tcm_v1_check_max_rw_size(&tcm) == 0 &&
             tcm.max_read_size == 1024 && tcm.max_write_size == 200,
         "already selected limits");

  reset(&tcm);
  tcm.protocol_version = 1;
  tcm.identify_max_write_size = 1024;
  tcm.host_max_read_size = 1024;
  tcm.host_max_write_size = 200;
  tcm.max_write_size = 300;
  expect(syna_tcm_v1_check_max_rw_size(&tcm) == 0 &&
             tcm.max_read_size == 1024 && tcm.max_write_size == 200,
         "write clamp only");

  reset(&tcm);
  tcm.protocol_version = 1;
  tcm.identify_max_write_size = 1024;
  tcm.host_max_read_size = 1;
  tcm.host_max_write_size = 0;
  tcm.max_write_size = 1;
  expect(syna_tcm_v1_check_max_rw_size(&tcm) == 0 &&
             tcm.max_read_size == 1 && tcm.max_write_size == 0,
         "zero host write limit");

  if (failures)
    return 1;
  puts("PASS syna_tcm_v1_check_max_rw_size direct host tests (9 cases)");
  return 0;
}
