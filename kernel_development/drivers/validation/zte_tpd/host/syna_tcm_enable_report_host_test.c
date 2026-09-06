#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int64 long long
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

#include "../../../reconstructed/zte_tpd/syna_tcm_enable_report.c"

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
  tcm->firmware_mode = 1;
  tcm->command_delay_ms = 41;
  reset_mocks();
}

static void test_validation(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_enable_report(NULL, 0x22, true, 1) == -241,
              "null tcm returns -241");
  expect_true(write_calls == 0, "null tcm does not write");

  reset_fixture(&tcm, &transport);
  tcm.firmware_mode = 2;
  expect_true(syna_tcm_enable_report(&tcm, 0x22, true, 1) == -241,
              "non-application firmware returns -241");
  expect_true(write_calls == 0, "wrong firmware mode does not write");
}

static void test_commands_and_timeouts(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  transport.flags = 1;
  expect_true(syna_tcm_enable_report(&tcm, 0x22, true, 0) == 0,
              "enable with IRQ control succeeds");
  expect_true(write_calls == 1 && write_command == 5 &&
              write_payload == 0x22 && write_length == 1 &&
              write_timeout == 0, "enable selects command 5 and IRQ timeout");

  reset_fixture(&tcm, &transport);
  transport.flags = 0;
  expect_true(syna_tcm_enable_report(&tcm, 0x33, false, 0) == 0,
              "disable with polling succeeds");
  expect_true(write_command == 6 && write_payload == 0x33 &&
              write_length == 1 && write_timeout == 41,
              "disable selects command 6 and polling delay");

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_enable_report(&tcm, 0x44, true, 99) == 0,
              "explicit delay succeeds");
  expect_true(write_timeout == 99, "explicit delay is preserved");
}

static void test_error_propagation(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  write_return = -19;
  expect_true(syna_tcm_enable_report(&tcm, 0x55, false, 1) == -19,
              "write error is propagated");
  expect_true(write_command == 6 && write_payload == 0x55,
              "failed write still receives the recovered request");
}

int main(void)
{
  test_validation();
  test_commands_and_timeouts();
  test_error_propagation();
  puts("PASS: syna_tcm_enable_report host contract");
  return 0;
}
