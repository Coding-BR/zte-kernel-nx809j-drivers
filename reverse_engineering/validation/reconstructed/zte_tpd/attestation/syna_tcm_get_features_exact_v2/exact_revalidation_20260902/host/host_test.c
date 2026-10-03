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

#include "/drivers/reverse_engineering/validation/reconstructed/zte_tpd/attestation/syna_tcm_get_features_exact_v2/exact_revalidation_20260902/source/zte_tpd_tcm_layout.h"

static int write_return;
static u8 write_command;
static u32 write_timeout;
static int write_calls;
static int lock_count;
static int unlock_count;

static void reset_mocks(void)
{
  write_return = 0;
  write_command = 0;
  write_timeout = 0;
  write_calls = 0;
  lock_count = 0;
  unlock_count = 0;
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

#include "/drivers/reverse_engineering/validation/reconstructed/zte_tpd/attestation/syna_tcm_get_features_exact_v2/exact_revalidation_20260902/source/syna_tcm_get_features.c"

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
  memset(response_data, 0, 0x20);
  tcm->firmware_mode = 1;
  tcm->transport = transport;
  tcm->write_message = mock_write_message;
  tcm->command_delay_ms = 37;
  tcm->response.data = response_data;
  tcm->response.buf_size = 0x20;
  tcm->response.data_length = 0x20;
  reset_mocks();
}

static void test_validation_and_no_output(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_data[0x20];
  struct tcm_features_info output;

  reset_fixture(&tcm, &transport, response_data);
  expect_true(syna_tcm_get_features(NULL, &output, 1) == -241,
              "null tcm returns -241");

  reset_fixture(&tcm, &transport, response_data);
  tcm.firmware_mode = 0x0b;
  expect_true(syna_tcm_get_features(&tcm, &output, 1) == -241,
              "wrong mode returns -241");

  reset_fixture(&tcm, &transport, response_data);
  transport.flags = 1;
  expect_true(syna_tcm_get_features(&tcm, NULL, 0) == 0,
              "null output returns write result");
  expect_true(write_command == 0x32 && write_timeout == 0 &&
              lock_count == 0, "null output skips response lock");
}

static void test_copy_and_timeout(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_data[0x20];
  struct tcm_features_info output;

  reset_fixture(&tcm, &transport, response_data);
  transport.flags = 0;
  for (size_t i = 0; i < sizeof(response_data); ++i)
    response_data[i] = (u8)i;
  memset(&output, 0xa5, sizeof(output));
  expect_true(syna_tcm_get_features(&tcm, &output, 0) == 0,
              "copy succeeds in polling mode");
  expect_true(memcmp(&output, response_data, sizeof(output)) == 0,
              "copy is limited to feature structure size");
  expect_true(write_timeout == 37 && lock_count == 1 && unlock_count == 1 &&
              tcm.response.lock_depth == 0,
              "polling timeout and lock cleanup are correct");

  reset_fixture(&tcm, &transport, response_data);
  tcm.response.data_length = 4;
  memset(&output, 0xa5, sizeof(output));
  expect_true(syna_tcm_get_features(&tcm, &output, 99) == 0,
              "short but sufficient response succeeds");
  expect_true(output.raw[0] == 0 && output.raw[3] == 0 &&
              output.raw[4] == 0xa5,
              "short response copies only available bytes");
}

static void test_copy_errors_and_write_failure(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_data[0x20];
  struct tcm_features_info output;

  reset_fixture(&tcm, &transport, response_data);
  tcm.response.data = NULL;
  expect_true(syna_tcm_get_features(&tcm, &output, 1) == -22,
              "null response data returns -22");
  expect_true(lock_count == 1 && unlock_count == 1 &&
              tcm.response.lock_depth == 0,
              "null response data unlocks");

  reset_fixture(&tcm, &transport, response_data);
  tcm.response.buf_size = 2;
  expect_true(syna_tcm_get_features(&tcm, &output, 1) == -22,
              "short capacity returns -22");
  expect_true(tcm.response.lock_depth == 0 && unlock_count == 1,
              "short capacity unlocks");

  reset_fixture(&tcm, &transport, response_data);
  write_return = -19;
  expect_true(syna_tcm_get_features(&tcm, &output, 1) == -19,
              "write error is propagated");
  expect_true(lock_count == 0, "write error skips response lock");
}

int main(void)
{
  test_validation_and_no_output();
  test_copy_and_timeout();
  test_copy_errors_and_write_failure();
  puts("PASS: syna_tcm_get_features host contract");
  return 0;
}
