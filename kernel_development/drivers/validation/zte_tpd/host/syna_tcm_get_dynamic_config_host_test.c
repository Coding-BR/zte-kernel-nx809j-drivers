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
static u8 write_payload;
static u32 write_length;
static u32 write_timeout;
static int write_calls;
static int printk_count;

static void reset_mocks(void)
{
  write_return = 0;
  write_command = 0;
  write_payload = 0;
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
  write_payload = payload ? *payload : 0;
  write_length = length;
  write_timeout = timeout;
  return write_return;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_get_dynamic_config.c"

static void expect_true(bool condition, const char *label)
{
  if (!condition) {
    fprintf(stderr, "FAIL: %s\n", label);
    exit(1);
  }
}

static void reset_fixture(struct tcm_dev *tcm,
                          struct tcm_transport_overlay *transport,
                          u8 *response_data)
{
  memset(tcm, 0, sizeof(*tcm));
  memset(transport, 0, sizeof(*transport));
  memset(response_data, 0, 4);
  tcm->firmware_mode = 1;
  tcm->transport = transport;
  tcm->write_message = mock_write_message;
  tcm->command_delay_ms = 37;
  tcm->response.data = response_data;
  tcm->response.data_length = 2;
  reset_mocks();
}

static void test_validation_and_modes(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_data[4];
  u16 value = 0;

  reset_fixture(&tcm, &transport, response_data);
  expect_true(syna_tcm_get_dynamic_config(NULL, 0x12, &value, 1) == -241,
              "null tcm returns -241");

  reset_fixture(&tcm, &transport, response_data);
  tcm.firmware_mode = 0x0b;
  expect_true(syna_tcm_get_dynamic_config(&tcm, 0x12, &value, 1) == -241,
              "wrong firmware mode returns -241");
  expect_true(write_calls == 0, "invalid mode does not write");

  reset_fixture(&tcm, &transport, response_data);
  transport.flags = 1;
  response_data[0] = 0x34;
  response_data[1] = 0x12;
  expect_true(syna_tcm_get_dynamic_config(&tcm, 0x44, &value, 0) == 0,
              "IRQ request succeeds");
  expect_true(write_command == 0x23 && write_payload == 0x44 &&
              write_length == 1 && write_timeout == 0 && value == 0x1234,
              "IRQ command, payload and value are correct");

  reset_fixture(&tcm, &transport, response_data);
  transport.flags = 0;
  expect_true(syna_tcm_get_dynamic_config(&tcm, 0x55, &value, 0) == 0,
              "polling request succeeds");
  expect_true(write_timeout == 37, "polling request uses command delay");
}

static void test_short_response_and_explicit_delay(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_data[4];
  u16 value = 0xa5a5;

  reset_fixture(&tcm, &transport, response_data);
  tcm.response.data_length = 1;
  expect_true(syna_tcm_get_dynamic_config(&tcm, 0x66, &value, 99) == 0,
              "short response preserves recovered success return");
  expect_true(value == 0xa5a5,
              "short response does not update caller value");
  expect_true(write_timeout == 99, "explicit delay is preserved");

  reset_fixture(&tcm, &transport, response_data);
  response_data[0] = 0xef;
  response_data[1] = 0xbe;
  expect_true(syna_tcm_get_dynamic_config(&tcm, 0x77, &value, 9) == 0,
              "explicit delay request succeeds");
  expect_true(value == 0xbeef, "explicit delay request copies value");
}

static void test_write_failure(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_data[4];
  u16 value = 0;

  reset_fixture(&tcm, &transport, response_data);
  write_return = -19;
  expect_true(syna_tcm_get_dynamic_config(&tcm, 0x88, &value, 1) == -19,
              "write error is propagated");
  expect_true(write_command == 0x23 && write_payload == 0x88,
              "failed request still uses recovered command and payload");
}

int main(void)
{
  test_validation_and_modes();
  test_short_response_and_explicit_delay();
  test_write_failure();
  puts("PASS: syna_tcm_get_dynamic_config host contract");
  return 0;
}
