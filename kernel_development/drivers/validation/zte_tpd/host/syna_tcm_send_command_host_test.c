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
typedef long long __int64;
typedef unsigned char _BYTE;
#define __fastcall

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static int command_return;
static u8 command_response;
static u8 command_seen;
static u32 command_timeout;
static int command_calls;
static int copy_return;
static __int64 copy_dst;
static __int64 copy_src;
static int copy_calls;
static int printk_count;

static void reset_mocks(void)
{
  command_return = 0;
  command_response = 0x20;
  command_seen = 0;
  command_timeout = 0;
  command_calls = 0;
  copy_return = 0;
  copy_dst = 0;
  copy_src = 0;
  copy_calls = 0;
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
  (void)payload;
  (void)length;
  ++command_calls;
  command_seen = command;
  command_timeout = timeout;
  if (response_code)
    *response_code = command_response;
  return command_return;
}

int syna_tcm_buf_copy_2(__int64 destination, __int64 source)
{
  ++copy_calls;
  copy_dst = destination;
  copy_src = source;
  return copy_return;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_send_command.c"

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

static void test_validation_and_timeout(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_code = 0;

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_send_command(0, 0x20, 0, 0, &response_code, 0, 1) == -241,
              "null tcm returns -241");

  reset_fixture(&tcm, &transport);
  transport.flags = 1;
  command_response = 0x12;
  expect_true(syna_tcm_send_command((__int64)&tcm, 0x20, 0, 0, &response_code,
                                    0, 0) == 0,
              "IRQ command succeeds");
  expect_true(command_timeout == 0 && response_code == 0x12,
              "IRQ timeout and response code are correct");

  reset_fixture(&tcm, &transport);
  transport.flags = 0;
  expect_true(syna_tcm_send_command((__int64)&tcm, 0x21, 0, 0, NULL, 0, 0) == 0,
              "polling command succeeds");
  expect_true(command_timeout == 37, "polling command uses command delay");
}

static void test_report_and_response_routing(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  struct tcm_buffer destination;
  u8 response_code = 0;

  reset_fixture(&tcm, &transport);
  command_response = 0x20;
  tcm.report_buf.data_length = 1;
  expect_true(syna_tcm_send_command((__int64)&tcm, 0x30, 0, 0,
                                    &response_code,
                                    (__int64)&destination, 1) == 0,
              "report response succeeds");
  expect_true(copy_calls == 1 &&
              copy_dst == (__int64)&destination &&
              copy_src == (__int64)&tcm.report_buf,
              "report response routes through report buffer");

  reset_fixture(&tcm, &transport);
  command_response = 0x05;
  tcm.response.data_length = 1;
  expect_true(syna_tcm_send_command((__int64)&tcm, 0x31, 0, 0,
                                    NULL, (__int64)&destination, 1) == 0,
              "status response succeeds");
  expect_true(copy_calls == 1 && copy_src == (__int64)&tcm.response,
              "status response routes through response buffer");
}

static void test_copy_failure_and_no_buffer(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  struct tcm_buffer destination;
  u8 response_code = 0;

  reset_fixture(&tcm, &transport);
  command_response = 0x20;
  tcm.report_buf.data_length = 1;
  copy_return = -19;
  expect_true(syna_tcm_send_command((__int64)&tcm, 0x30, 0, 0,
                                    &response_code,
                                    (__int64)&destination, 1) == -243,
              "copy failure returns -243");

  reset_fixture(&tcm, &transport);
  command_response = 0x20;
  expect_true(syna_tcm_send_command((__int64)&tcm, 0x30, 0, 0,
                                    &response_code, 0, 1) == 0,
              "null destination skips copy");
  expect_true(copy_calls == 0, "null destination does not copy");
}

static void test_command_failure_and_response_preservation(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  struct tcm_buffer destination;
  u8 response_code = 0;

  reset_fixture(&tcm, &transport);
  command_response = 0x09;
  command_return = -19;
  expect_true(syna_tcm_send_command((__int64)&tcm, 0x40, 0, 0,
                                    &response_code,
                                    (__int64)&destination, 1) == -19,
              "command failure is propagated");
  expect_true(response_code == 0x09, "response code is written on command failure");
}

int main(void)
{
  test_validation_and_timeout();
  test_report_and_response_routing();
  test_copy_failure_and_no_buffer();
  test_command_failure_and_response_preservation();
  puts("PASS: syna_tcm_send_command host contract");
  return 0;
}
