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
static u32 write_timeout;
static int write_calls;
static int lock_count;
static int unlock_count;
static int unlock_helper_count;
static int printk_count;

static void reset_mocks(void)
{
  write_return = 0;
  write_command = 0;
  write_timeout = 0;
  write_calls = 0;
  lock_count = 0;
  unlock_count = 0;
  unlock_helper_count = 0;
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
  (void)response_code;
  ++write_calls;
  write_command = command;
  write_timeout = timeout;
  return write_return;
}

void mutex_lock(void *lock)
{
  (void)lock;
  ++lock_count;
}

void mutex_unlock(void *lock)
{
  (void)lock;
  ++unlock_count;
}

void syna_tcm_buf_unlock_0(__int64 buffer)
{
  struct tcm_buffer *response = (struct tcm_buffer *)(uintptr_t)buffer;

  ++unlock_helper_count;
  if (response->lock_depth == 1)
    response->lock_depth = 0;
  else
    --response->lock_depth;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_identify.c"

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
  memset(response_data, 0xa5, 0x30);
  tcm->transport = transport;
  tcm->write_message = mock_write_message;
  tcm->command_delay_ms = 37;
  tcm->identification_info.mode = 0x0b;
  tcm->identification_info.version = 3;
  tcm->response.data = response_data;
  tcm->response.buf_size = 0x30;
  tcm->response.data_length = 0x30;
  reset_mocks();
}

static void test_validation_and_timeout_selection(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_data[0x30];
  struct tcm_identification_info output;

  reset_fixture(&tcm, &transport, response_data);
  expect_true(syna_tcm_identify(NULL, &output, 1) == -241,
              "null tcm returns -241");

  reset_fixture(&tcm, &transport, response_data);
  transport.flags = 1;
  expect_true(syna_tcm_identify(&tcm, NULL, 0) == 0,
              "IRQ-capable transport accepts zero timeout");
  expect_true(write_calls == 1 && write_command == 2 && write_timeout == 0,
              "IRQ-capable transport uses timeout zero");

  reset_fixture(&tcm, &transport, response_data);
  transport.flags = 0;
  expect_true(syna_tcm_identify(&tcm, NULL, 0) == 0,
              "polling transport accepts zero timeout");
  expect_true(write_timeout == 37, "polling transport uses command delay");

  reset_fixture(&tcm, &transport, response_data);
  expect_true(syna_tcm_identify(&tcm, NULL, 99) == 0,
              "explicit timeout is accepted");
  expect_true(write_timeout == 99, "explicit timeout is preserved");
}

static void test_write_failure_and_no_output(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_data[0x30];
  struct tcm_identification_info output;

  reset_fixture(&tcm, &transport, response_data);
  tcm.firmware_mode = 0x55;
  write_return = -19;
  expect_true(syna_tcm_identify(&tcm, &output, 1) == -19,
              "write failure is propagated");
  expect_true(tcm.firmware_mode == 0x55 && lock_count == 0,
              "write failure does not update mode or lock");

  reset_fixture(&tcm, &transport, response_data);
  expect_true(syna_tcm_identify(&tcm, NULL, 1) == 0,
              "null output returns write result");
  expect_true(tcm.firmware_mode == 0x0b,
              "successful identify updates firmware mode");
}

static void test_copy_success_and_truncation(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_data[0x40];
  struct tcm_identification_info output;

  reset_fixture(&tcm, &transport, response_data);
  for (size_t i = 0; i < sizeof(response_data); ++i)
    response_data[i] = (u8)i;
  tcm.response.data_length = 0x40;
  tcm.response.buf_size = 0x40;
  memset(&output, 0, sizeof(output));
  expect_true(syna_tcm_identify(&tcm, &output, 1) == 0,
              "copy success returns zero");
  expect_true(memcmp(&output, response_data, sizeof(output)) == 0,
              "copy truncates at identification structure size");
  expect_true(tcm.response.lock_depth == 0 && lock_count == 1 &&
              unlock_count == 1 && unlock_helper_count == 0,
              "successful copy unlocks directly");
}

static void test_copy_errors_and_nested_lock(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_data[0x30];
  struct tcm_identification_info output;

  reset_fixture(&tcm, &transport, response_data);
  tcm.response.data = NULL;
  expect_true(syna_tcm_identify(&tcm, &output, 1) == -22,
              "null response data returns -22");
  expect_true(tcm.response.lock_depth == 0 && unlock_helper_count == 1,
              "null response data uses unlock helper");

  reset_fixture(&tcm, &transport, response_data);
  tcm.response.buf_size = 2;
  expect_true(syna_tcm_identify(&tcm, &output, 1) == -22,
              "short response buffer returns -22");
  expect_true(tcm.response.lock_depth == 0 && unlock_helper_count == 1,
              "short response buffer unlocks");

  reset_fixture(&tcm, &transport, response_data);
  tcm.response.lock_depth = 2;
  expect_true(syna_tcm_identify(&tcm, &output, 1) == 0,
              "nested response lock still copies");
  expect_true(tcm.response.lock_depth == 2 && unlock_count == 1,
              "nested response lock depth is restored");
}

int main(void)
{
  test_validation_and_timeout_selection();
  test_write_failure_and_no_output();
  test_copy_success_and_truncation();
  test_copy_errors_and_nested_lock();
  puts("PASS: syna_tcm_identify host contract");
  return 0;
}
