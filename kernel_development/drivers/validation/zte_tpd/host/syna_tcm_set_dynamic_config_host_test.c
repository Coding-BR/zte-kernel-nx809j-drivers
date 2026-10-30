#include <assert.h>
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
static u8 write_payload[3];
static u32 write_length;
static u32 write_timeout;
static int write_calls;
static int printk_count;

static void reset_mocks(void)
{
  write_return = 0;
  write_command = 0;
  memset(write_payload, 0, sizeof(write_payload));
  write_length = 0;
  write_timeout = 0;
  write_calls = 0;
  printk_count = 0;
}

int printk(const char *format, ...)
{
  (void)format;
  ++printk_count;
  return 0;
}

static int mock_write_message(struct tcm_dev *tcm, u8 command, u8 *payload,
                              u32 length, u8 *response_code, u32 timeout)
{
  (void)tcm;
  (void)response_code;
  ++write_calls;
  write_command = command;
  write_length = length;
  write_timeout = timeout;
  if (payload && length <= sizeof(write_payload))
    memcpy(write_payload, payload, length);
  return write_return;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_set_dynamic_config.c"

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
  tcm->write_message = mock_write_message;
  tcm->command_delay_ms = 37;
  reset_mocks();
}

static void test_validation_and_payload(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_set_dynamic_config(NULL, 0x12, 0x3456, 1) == -241,
              "null tcm returns -241");

  reset_fixture(&tcm, &transport);
  tcm.firmware_mode = 0x0b;
  expect_true(syna_tcm_set_dynamic_config(&tcm, 0x12, 0x3456, 1) == -241,
              "wrong firmware mode returns -241");
  expect_true(write_calls == 0, "invalid mode does not write");

  reset_fixture(&tcm, &transport);
  transport.flags = 1;
  expect_true(syna_tcm_set_dynamic_config(&tcm, 0x22, 0xabcd, 0) == 0,
              "IRQ request succeeds");
  expect_true(write_command == 0x24 && write_length == 3 &&
              write_payload[0] == 0x22 && write_payload[1] == 0xcd &&
              write_payload[2] == 0xab && write_timeout == 0,
              "command, payload endianess and IRQ timeout are correct");
}

static void test_polling_and_explicit_delay(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  transport.flags = 0;
  expect_true(syna_tcm_set_dynamic_config(&tcm, 0x33, 0x0102, 0) == 0,
              "polling request succeeds");
  expect_true(write_payload[0] == 0x33 && write_payload[1] == 0x02 &&
              write_payload[2] == 0x01 && write_timeout == 37,
              "polling request uses little-endian payload and delay");

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_set_dynamic_config(&tcm, 0x44, 0x0000, 99) == 0,
              "explicit delay request succeeds");
  expect_true(write_timeout == 99, "explicit delay is preserved");
}

static void test_write_failure(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  write_return = -19;
  expect_true(syna_tcm_set_dynamic_config(&tcm, 0x55, 0xdead, 1) == -19,
              "write error is propagated");
  expect_true(write_command == 0x24 && write_payload[0] == 0x55 &&
              write_payload[1] == 0xad && write_payload[2] == 0xde,
              "failed request retains recovered payload");
}

int main(void)
{
  test_validation_and_payload();
  test_polling_and_explicit_delay();
  test_write_failure();
  puts("PASS: syna_tcm_set_dynamic_config host contract");
  return 0;
}
