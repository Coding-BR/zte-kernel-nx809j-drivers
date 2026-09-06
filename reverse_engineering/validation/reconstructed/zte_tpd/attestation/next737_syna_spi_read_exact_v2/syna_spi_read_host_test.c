#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#define __fastcall
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
typedef unsigned short _WORD;
#define SP_EL0 0

struct list_head {
  struct list_head *next;
  struct list_head *prev;
};

struct spi_transfer {
  struct list_head transfer_list;
  void *tx_buf;
  void *rx_buf;
  unsigned int len;
};

struct spi_message {
  struct list_head transfers;
};

struct spi_device;

static unsigned char status_region[2048];
static int g_alloc_fail;
static int g_spi_result;
static unsigned int g_lock_count;
static unsigned int g_unlock_count;
static size_t g_rx_capacity;

void *rx_buf;
void *tx_buf;
void *xfer;

char unk_3A459[] = "read: missing context";
char unk_39DDD[] = "read: missing spi";
char unk_325AE[] = "read: invalid length";
char unk_3BFF0[] = "read: allocation failed";
char unk_355EA[] = "read: spi sync failed";
char unk_3AB30[] = "read: invalid output";

unsigned long long _ReadStatusReg(unsigned int reg)
{
  (void)reg;
  return (unsigned long long)(uintptr_t)status_region;
}

int printk(const char *format, ...)
{
  (void)format;
  return 0;
}

void mutex_lock(void *lock)
{
  (void)lock;
  ++g_lock_count;
}

void mutex_unlock(void *lock)
{
  (void)lock;
  ++g_unlock_count;
}

static void free_spi_buffers(void)
{
  free(rx_buf);
  free(tx_buf);
  free(xfer);
  rx_buf = NULL;
  tx_buf = NULL;
  xfer = NULL;
  g_rx_capacity = 0;
}

int syna_spi_alloc_mem(__int64 transfer_count, unsigned int length)
{
  size_t count = transfer_count > 0 ? (size_t)transfer_count : 1;
  if (g_alloc_fail)
    return -12;
  free_spi_buffers();
  rx_buf = calloc(length ? length : 1, 1);
  tx_buf = calloc(length ? length : 1, 1);
  xfer = calloc(count, sizeof(struct spi_transfer));
  if (!rx_buf || !tx_buf || !xfer) {
    free_spi_buffers();
    return -12;
  }
  g_rx_capacity = length ? length : 1;
  return 0;
}

void spi_message_init(struct spi_message *message)
{
  message->transfers.next = &message->transfers;
  message->transfers.prev = &message->transfers;
}

void spi_message_add_tail(struct spi_transfer *transfer,
                          struct spi_message *message)
{
  transfer->transfer_list.next = &message->transfers;
  transfer->transfer_list.prev = message->transfers.prev;
  message->transfers.prev->next = &transfer->transfer_list;
  message->transfers.prev = &transfer->transfer_list;
}

int spi_sync(struct spi_device *device, struct spi_message *message)
{
  unsigned int i;
  (void)device;
  (void)message;
  if (g_spi_result)
    return g_spi_result;
  for (i = 0; i < g_rx_capacity; ++i)
    if (rx_buf)
      ((unsigned char *)rx_buf)[i] = (unsigned char)(0xa0 + i);
  return 0;
}

#include "../../../reconstructed/zte_tpd/syna_spi_read.c"

static int check_equal(const unsigned char *actual,
                       const unsigned char *expected,
                       size_t length)
{
  return memcmp(actual, expected, length) == 0;
}

static int run_tests(void)
{
  __int64 context[32] = {0};
  __int64 *outer = context;
  unsigned char output[8] = {0};
  unsigned char expected[8] = {0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7};
  int cases = 0;
  int result;

  result = syna_spi_read(&outer, output, 4);
  if (result != -6)
    return 1;
  ++cases;

  context[0] = 0;
  result = syna_spi_read(&outer, output, 4);
  if (result != -6)
    return 1;
  ++cases;

  context[0] = 1;
  g_lock_count = g_unlock_count = 0;
  result = syna_spi_read(&outer, output, 0xffff);
  if (result != -22 ||
      g_lock_count != 1 || g_unlock_count != 1)
    return 1;
  ++cases;

  g_alloc_fail = 1;
  result = syna_spi_read(&outer, output, 4);
  if (result != -12)
    return 1;
  g_alloc_fail = 0;
  ++cases;

  g_spi_result = -5;
  result = syna_spi_read(&outer, output, 4);
  if (result != -5)
    return 1;
  g_spi_result = 0;
  ++cases;

  result = syna_spi_read(&outer, NULL, 4);
  if (result != -22)
    return 1;
  ++cases;

  memset(output, 0, sizeof(output));
  result = syna_spi_read(&outer, output, 4);
  if (result != 4 ||
      !check_equal(output, expected, 4))
    return 1;
  ++cases;

  context[25] = 1;
  memset(output, 0, sizeof(output));
  result = syna_spi_read(&outer, output, 4);
  if (result != 4 ||
      !check_equal(output, expected, 4))
    return 1;
  ++cases;

  free_spi_buffers();
  return cases == 8 ? 0 : 1;
}

int main(void)
{
  if (run_tests() != 0) {
    puts("FAIL syna_spi_read host tests");
    return 1;
  }
  puts("PASS syna_spi_read host tests (8 cases)");
  return 0;
}
