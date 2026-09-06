#include <errno.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static int write_return;
static u8 write_command;
static u8 write_payload[32];
static u32 write_length;
static u32 write_delay;
static int write_calls;
static int printk_count;
static int kmalloc_calls;
static int kfree_calls;
static int kmalloc_fail_after;

static void reset_mocks(void)
{
  write_return = 0;
  write_command = 0;
  memset(write_payload, 0, sizeof(write_payload));
  write_length = 0;
  write_delay = 0;
  write_calls = 0;
  printk_count = 0;
  kmalloc_calls = 0;
  kfree_calls = 0;
  kmalloc_fail_after = -1;
}

int printk(const char *format, ...)
{
  (void)format;
  ++printk_count;
  return 0;
}

static void *host_kmalloc(size_t size)
{
  ++kmalloc_calls;
  if (kmalloc_fail_after == 0)
    return NULL;
  if (kmalloc_fail_after > 0)
    --kmalloc_fail_after;
  return malloc(size);
}

static void host_kfree(void *memory)
{
  ++kfree_calls;
  free(memory);
}

#define kmalloc(size, flags) host_kmalloc(size)
#define kfree(memory) host_kfree(memory)
#define GFP_KERNEL 0
#define BIT(value) (1U << (value))
#define pr_err printk

static int mock_write_message(struct tcm_dev *tcm, u8 command, u8 *payload,
                              u32 length, u8 *response_code, u32 delay_ms)
{
  (void)tcm;
  (void)response_code;
  ++write_calls;
  write_command = command;
  write_length = length;
  write_delay = delay_ms;
  if (payload && length <= sizeof(write_payload))
    memcpy(write_payload, payload, length);
  return write_return;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_set_game_partition_config.c"

static void expect_true(bool condition, const char *label)
{
  if (!condition) {
    fprintf(stderr, "FAIL: %s\n", label);
    exit(1);
  }
}

static void reset_fixture(struct tcm_dev *tcm,
                          struct tcm_transport_overlay *transport)
{
  memset(tcm, 0, sizeof(*tcm));
  memset(transport, 0, sizeof(*transport));
  tcm->firmware_mode = 1;
  tcm->transport = transport;
  tcm->command_delay_ms = 37;
  tcm->write_message = mock_write_message;
  reset_mocks();
}

static void test_validation_and_allocation(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 data[2] = {0xaa, 0x55};

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_set_game_partition_config(NULL, 3, 2, data, 1) == -241,
              "null tcm returns -241");
  expect_true(write_calls == 0, "null tcm does not write");

  reset_fixture(&tcm, &transport);
  tcm.firmware_mode = 0x0b;
  expect_true(syna_tcm_set_game_partition_config(&tcm, 3, 2, data, 1) == -241,
              "wrong firmware mode returns -241");
  expect_true(write_calls == 0, "wrong mode does not write");

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_set_game_partition_config(&tcm, 3, -1, data, 1) == -EINVAL,
              "negative data length is rejected by C oracle");
  expect_true(write_calls == 0, "invalid data length does not write");

  reset_fixture(&tcm, &transport);
  kmalloc_fail_after = 0;
  expect_true(syna_tcm_set_game_partition_config(&tcm, 3, 2, data, 1) == -ENOMEM,
              "payload allocation failure returns -ENOMEM");
  expect_true(write_calls == 0, "allocation failure does not write");
}

static void test_delay_and_payload(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 data[3] = {0x12, 0xab, 0x00};

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_set_game_partition_config(&tcm, 0x44, 3, data, 0) == 0,
              "polling request succeeds");
  expect_true(write_calls == 1 && write_command == 0xc7 && write_length == 4,
              "command and payload length are correct");
  expect_true(write_payload[0] == 0x44 && write_payload[1] == 0x12 &&
              write_payload[2] == 0xab && write_payload[3] == 0x00,
              "config id and data bytes are preserved");
  expect_true(write_delay == 37, "polling request uses command delay");
  expect_true(kmalloc_calls == 2 && kfree_calls == 2,
              "payload and diagnostic buffers are allocated and freed");
  expect_true(printk_count == 1, "diagnostic payload is logged once");

  reset_fixture(&tcm, &transport);
  transport.flags = 1;
  expect_true(syna_tcm_set_game_partition_config(&tcm, 0x55, 0, NULL, 0) == 0,
              "IRQ request with empty data succeeds");
  expect_true(write_length == 1 && write_payload[0] == 0x55 && write_delay == 0,
              "empty data and IRQ delay are correct");

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_set_game_partition_config(&tcm, 0x66, 1, data, 99) == 0,
              "explicit delay request succeeds");
  expect_true(write_delay == 99, "explicit delay is preserved");
}

static void test_write_failure(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 data[1] = {0x7f};

  reset_fixture(&tcm, &transport);
  write_return = -19;
  expect_true(syna_tcm_set_game_partition_config(&tcm, 0x21, 1, data, 1) == -19,
              "write error is propagated");
  expect_true(write_command == 0xc7 && write_payload[0] == 0x21 &&
              write_payload[1] == 0x7f && write_length == 2,
              "failed request retains recovered payload");
  expect_true(kfree_calls == 2, "payload and diagnostic buffers are freed after write failure");
}

int main(void)
{
  test_validation_and_allocation();
  test_delay_and_payload();
  test_write_failure();
  puts("PASS: syna_tcm_set_game_partition_config host contract (3 groups)");
  return 0;
}
