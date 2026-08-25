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
static u32 write_length;
static u32 write_timeout;
static int write_calls;

static void reset_mocks(void)
{
  write_return = 0;
  write_command = 0;
  write_length = 0;
  write_timeout = 0;
  write_calls = 0;
}

int printk(const char *format, ...)
{
  (void)format;
  return 0;
}

static int mock_write_message(struct tcm_dev *tcm, u8 command, u8 *payload,
                              u32 length, u8 *response_code, u32 timeout)
{
  (void)tcm;
  (void)payload;
  (void)response_code;
  ++write_calls;
  write_command = command;
  write_length = length;
  write_timeout = timeout;
  return write_return;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_sleep.c"

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
  tcm->transport = transport;
  tcm->write_message = mock_write_message;
  tcm->command_delay_ms = 37;
  reset_mocks();
}

static void test_null_and_commands(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_sleep(NULL, true, 1) == -241,
              "null tcm returns -241");

  reset_fixture(&tcm, &transport);
  transport.flags = 1;
  expect_true(syna_tcm_sleep(&tcm, true, 0) == 0,
              "enable sleep succeeds");
  expect_true(write_command == 0x2c && write_length == 0 &&
              write_timeout == 0, "enable uses command 0x2c and IRQ timeout");

  reset_fixture(&tcm, &transport);
  transport.flags = 1;
  expect_true(syna_tcm_sleep(&tcm, false, 0) == 0,
              "disable sleep succeeds");
  expect_true(write_command == 0x2d && write_length == 0,
              "disable uses command 0x2d");
}

static void test_polling_and_explicit_delay(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  transport.flags = 0;
  expect_true(syna_tcm_sleep(&tcm, true, 0) == 0,
              "polling sleep succeeds");
  expect_true(write_timeout == 37, "polling uses command delay");

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_sleep(&tcm, false, 99) == 0,
              "explicit delay succeeds");
  expect_true(write_timeout == 99, "explicit delay is preserved");
}

static void test_write_failure(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  write_return = -19;
  expect_true(syna_tcm_sleep(&tcm, true, 1) == -19,
              "write error is propagated");
  expect_true(write_command == 0x2c, "failed enable uses recovered command");
}

int main(void)
{
  test_null_and_commands();
  test_polling_and_explicit_delay();
  test_write_failure();
  puts("PASS: syna_tcm_sleep host contract");
  return 0;
}
