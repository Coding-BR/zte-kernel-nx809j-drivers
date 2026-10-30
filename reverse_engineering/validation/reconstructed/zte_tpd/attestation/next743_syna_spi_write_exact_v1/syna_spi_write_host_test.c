#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __fastcall
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
typedef unsigned short _WORD;
#define SP_EL0 0

struct list_head { struct list_head *next; struct list_head *prev; };
struct spi_transfer {
  struct list_head transfer_list;
  void *tx_buf;
  void *rx_buf;
  unsigned int len;
};
struct spi_message { struct list_head transfers; };
struct spi_device;

static unsigned char status_region[2048];
static int g_alloc_fail;
static int g_spi_result;
static unsigned int g_lock_count;
static unsigned int g_unlock_count;
static size_t g_tx_capacity;

void *rx_buf;
void *tx_buf;
void *xfer;

char unk_3A459[] = "write: missing context";
char unk_39DDD[] = "write: missing spi";
char unk_370F6[] = "write: invalid length";
char unk_35B63[] = "write: allocation failed";
char unk_394FC[] = "write: spi sync failed";
char unk_38E4F[] = "write: invalid input";

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

void mutex_lock(void *lock) { (void)lock; ++g_lock_count; }
void mutex_unlock(void *lock) { (void)lock; ++g_unlock_count; }

static void free_spi_buffers(void)
{
  free(tx_buf);
  free(xfer);
  tx_buf = NULL;
  xfer = NULL;
  g_tx_capacity = 0;
}

int syna_spi_alloc_mem(__int64 transfer_count, unsigned int length)
{
  size_t count = transfer_count > 0 ? (size_t)transfer_count : 1;
  if (g_alloc_fail)
    return -12;
  free_spi_buffers();
  tx_buf = calloc(length ? length : 1, 1);
  xfer = calloc(count, sizeof(struct spi_transfer));
  if (!tx_buf || !xfer) {
    free_spi_buffers();
    return -12;
  }
  g_tx_capacity = length ? length : 1;
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
  (void)device;
  (void)message;
  if (!tx_buf || g_tx_capacity == 0)
    return -14;
  return g_spi_result;
}

#include "../../../reconstructed/zte_tpd/syna_spi_write.c"

static int run_tests(void)
{
  __int64 context[32] = {0};
  __int64 *outer = context;
  unsigned char input[8] = {1, 2, 3, 4, 5, 6, 7, 8};
  int cases = 0;
  int result;

  result = syna_spi_write(&outer, input, 4);
  if (result != -6)
    return 1;
  ++cases;

  context[0] = 0;
  result = syna_spi_write(&outer, input, 4);
  if (result != -6)
    return 1;
  ++cases;

  context[0] = 1;
  g_lock_count = g_unlock_count = 0;
  result = syna_spi_write(&outer, input, 0xffff);
  if (result != -22 || g_lock_count != 1 || g_unlock_count != 1)
    return 1;
  ++cases;

  g_alloc_fail = 1;
  result = syna_spi_write(&outer, input, 4);
  if (result != -12)
    return 1;
  g_alloc_fail = 0;
  ++cases;

  g_spi_result = -5;
  result = syna_spi_write(&outer, input, 4);
  if (result != -5)
    return 1;
  g_spi_result = 0;
  ++cases;

  result = syna_spi_write(&outer, NULL, 4);
  if (result != -22)
    return 1;
  ++cases;

  result = syna_spi_write(&outer, input, 4);
  if (result != 4 ||
      !tx_buf || memcmp(tx_buf, input, 4) != 0)
    return 1;
  ++cases;

  context[25] = 1;
  result = syna_spi_write(&outer, input, 4);
  if (result != 4 ||
      !tx_buf || memcmp(tx_buf, input, 4) != 0)
    return 1;
  ++cases;

  free_spi_buffers();
  return cases == 8 ? 0 : 1;
}

int main(void)
{
  if (run_tests() != 0) {
    puts("FAIL syna_spi_write host tests");
    return 1;
  }
  puts("PASS syna_spi_write host tests (8 cases)");
  return 0;
}
