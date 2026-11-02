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
static int write_calls;
static u8 write_command;
static u32 write_length;
static u8 *write_payload;
static u8 *write_response_code;
static u32 write_delay;
static int printk_count;

static void reset_mocks(void)
{
  write_return = 0;
  write_calls = 0;
  write_command = 0;
  write_length = 0;
  write_payload = NULL;
  write_response_code = NULL;
  write_delay = 0;
  printk_count = 0;
}

int printk(const char *format, ...)
{
  (void)format;
  ++printk_count;
  return 0;
}

static int mock_write_message(struct tcm_dev *tcm, u8 command, u8 *payload,
                              u32 length, u8 *response_code, u32 delay_ms)
{
  (void)tcm;
  ++write_calls;
  write_command = command;
  write_length = length;
  write_payload = payload;
  write_response_code = response_code;
  write_delay = delay_ms;
  return write_return;
}

#define BIT(value) (1U << (value))

#include "../../../reconstructed/zte_tpd/syna_tcm_rezero.c"

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

static void test_validation(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_rezero(NULL, 1) == -241,
              "null tcm returns -241");
  expect_true(write_calls == 0 && printk_count == 1,
              "null tcm does not write and logs once");

  reset_fixture(&tcm, &transport);
  tcm.firmware_mode = 0x0b;
  expect_true(syna_tcm_rezero(&tcm, 1) == -241,
              "wrong firmware mode returns -241");
  expect_true(write_calls == 0 && printk_count == 1,
              "wrong mode does not write and logs once");
}

static void test_delay_selection(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  transport.flags = 1;
  expect_true(syna_tcm_rezero(&tcm, 0) == 0,
              "IRQ-controlled request succeeds");
  expect_true(write_calls == 1 && write_command == 0x27 &&
              write_length == 0 && write_payload == NULL &&
              write_response_code == NULL && write_delay == 0 &&
              printk_count == 0,
              "IRQ-controlled request preserves zero delay and empty payload");

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_rezero(&tcm, 0) == 0,
              "polling request succeeds");
  expect_true(write_delay == 37 && printk_count == 1,
              "polling request uses command delay and logs fallback");

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_rezero(&tcm, 99) == 0,
              "explicit delay request succeeds");
  expect_true(write_delay == 99 && printk_count == 0,
              "explicit delay is preserved without fallback log");
}

static void test_write_failure(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  write_return = -19;
  expect_true(syna_tcm_rezero(&tcm, 1) == -19,
              "write error is propagated");
  expect_true(write_command == 0x27 && write_length == 0 &&
              write_payload == NULL && write_response_code == NULL &&
              printk_count == 1,
              "write failure has the stock command shape and error log");
}

int main(void)
{
  test_validation();
  test_delay_selection();
  test_write_failure();
  puts("PASS: syna_tcm_rezero host contract (3 groups)");
  return 0;
}
