#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __fastcall
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;

struct spi_transfer {
  unsigned char bytes[0x88];
};

static unsigned int g_kmalloc_calls;
static unsigned int g_kfree_calls;
static unsigned int g_fail_at;

static unsigned char g_device[128];

__int64 p_device;
int buf_size;
void *rx_buf;
void *tx_buf;
void *xfer;

char unk_3BE43[] = "invalid managed device";
char unk_38286[] = "invalid parameter";
char unk_33731[] = "tx allocation failure";
char unk_39E02[] = "rx allocation failure";
char unk_3490A[] = "xfer allocation failure";

int printk(const char *format, ...)
{
  (void)format;
  return 0;
}

void *devm_kmalloc(__int64 device, unsigned long size, unsigned int flags)
{
  (void)device;
  (void)flags;
  ++g_kmalloc_calls;
  if (g_fail_at != 0 && g_kmalloc_calls == g_fail_at)
    return NULL;
  return calloc(1, size == 0 ? 1 : size);
}

void devm_kfree(__int64 device, void *pointer)
{
  (void)device;
  ++g_kfree_calls;
  free(pointer);
}

#include "../../../reconstructed/zte_tpd/syna_spi_alloc_mem.c"

static void reset_state(void)
{
  free(rx_buf);
  free(tx_buf);
  free(xfer);
  memset(g_device, 0, sizeof(g_device));
  g_kmalloc_calls = 0;
  g_kfree_calls = 0;
  g_fail_at = 0;
  p_device = 0;
  buf_size = 0;
  rx_buf = NULL;
  tx_buf = NULL;
  xfer = NULL;
  syna_spi_alloc_mem_xfer_count = 0;
}

static void enable_managed_device(void)
{
  *(uint64_t *)(g_device + 112) = 1;
  p_device = (__int64)(uintptr_t)g_device;
}

static int run_tests(void)
{
  int result;

  reset_state();
  enable_managed_device();
  result = syna_spi_alloc_mem(2, 0, 0);
  if (result != 0 || xfer == NULL || syna_spi_alloc_mem_xfer_count != 2 ||
      g_kmalloc_calls != 1)
    return 1;

  reset_state();
  enable_managed_device();
  result = syna_spi_alloc_mem(1, 8, 0);
  if (result != 0 || xfer == NULL || rx_buf == NULL || tx_buf == NULL ||
      buf_size != 8 || g_kmalloc_calls != 3)
    return 2;

  reset_state();
  enable_managed_device();
  result = syna_spi_alloc_mem(1, 8, 0);
  if (result != 0 || xfer == NULL || rx_buf == NULL || tx_buf == NULL)
    return 3;
  memset(xfer, 0xA5, sizeof(struct spi_transfer));
  {
    unsigned int allocations = g_kmalloc_calls;
    result = syna_spi_alloc_mem(1, 4, 0);
    if (result != 0 || g_kmalloc_calls != allocations ||
        ((unsigned char *)xfer)[0] != 0 || ((unsigned char *)xfer)[0x87] != 0)
      return 4;
  }

  reset_state();
  result = syna_spi_alloc_mem(1, 1, 0);
  if (result != -12 || xfer != NULL || syna_spi_alloc_mem_xfer_count != 0)
    return 5;

  reset_state();
  enable_managed_device();
  g_fail_at = 1;
  result = syna_spi_alloc_mem(1, 1, 0);
  if (result != -12 || xfer != NULL || syna_spi_alloc_mem_xfer_count != 0)
    return 6;

  reset_state();
  enable_managed_device();
  if (syna_spi_alloc_mem(1, 0, 0) != 0)
    return 7;
  g_fail_at = 2;
  result = syna_spi_alloc_mem(1, 8, 0);
  if (result != -12 || rx_buf != NULL || tx_buf != NULL || buf_size != 0)
    return 8;

  reset_state();
  enable_managed_device();
  if (syna_spi_alloc_mem(1, 0, 0) != 0)
    return 9;
  g_fail_at = 3;
  result = syna_spi_alloc_mem(1, 8, 0);
  if (result != -12 || rx_buf == NULL || tx_buf != NULL || buf_size != 0)
    return 10;

  reset_state();
  enable_managed_device();
  if (syna_spi_alloc_mem(1, 0, 0) != 0)
    return 11;
  result = syna_spi_alloc_mem(1, 0xffffffffU, 0);
  if (result != -12 || buf_size != 0)
    return 12;

  reset_state();
  return 0;
}

int main(void)
{
  if (run_tests() != 0) {
    puts("FAIL syna_spi_alloc_mem host tests");
    return 1;
  }
  puts("PASS syna_spi_alloc_mem host tests (8 cases)");
  return 0;
}
