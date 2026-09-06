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
static u32 write_timeout;
static int write_calls;
static int lock_count;
static int unlock_count;
static int printk_count;

static void reset_mocks(void)
{
  write_return = 0;
  write_command = 0;
  write_timeout = 0;
  write_calls = 0;
  lock_count = 0;
  unlock_count = 0;
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

#include "../../../reconstructed/zte_tpd/syna_tcm_get_app_info.c"

static void expect_true(bool condition, const char *label)
{
  if (!condition) {
    fprintf(stderr, "FAIL: %s\n", label);
    exit(1);
  }
}

static void put_le16(u8 *data, size_t offset, u16 value)
{
  data[offset] = (u8)value;
  data[offset + 1] = (u8)(value >> 8);
}

static void reset_fixture(struct tcm_dev *tcm,
                          struct tcm_transport_overlay *transport,
                          u8 *response_data)
{
  memset(tcm, 0, sizeof(*tcm));
  memset(transport, 0, sizeof(*transport));
  memset(response_data, 0, 0x30);
  tcm->firmware_mode = 1;
  tcm->transport = transport;
  tcm->write_message = mock_write_message;
  tcm->command_delay_ms = 37;
  tcm->response.data = response_data;
  tcm->response.buf_size = 0x30;
  tcm->response.data_length = 0x30;
  reset_mocks();
}

static void test_validation_and_timeout(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_data[0x30];
  struct tcm_application_info output;

  reset_fixture(&tcm, &transport, response_data);
  expect_true(syna_tcm_get_app_info(NULL, &output, 1) == -241,
              "null tcm returns -241");

  reset_fixture(&tcm, &transport, response_data);
  tcm.firmware_mode = 0x0b;
  expect_true(syna_tcm_get_app_info(&tcm, &output, 1) == -241,
              "non-application mode returns -241");
  expect_true(write_calls == 0, "invalid mode does not write");

  reset_fixture(&tcm, &transport, response_data);
  transport.flags = 1;
  expect_true(syna_tcm_get_app_info(&tcm, NULL, 0) == 0,
              "IRQ path succeeds with zero timeout");
  expect_true(write_command == 0x20 && write_timeout == 0,
              "IRQ path uses command 0x20 and zero timeout");

  reset_fixture(&tcm, &transport, response_data);
  transport.flags = 0;
  expect_true(syna_tcm_get_app_info(&tcm, NULL, 0) == 0,
              "polling path succeeds with zero timeout");
  expect_true(write_timeout == 37, "polling path uses command delay");
}

static void fill_valid_app_info(u8 *response_data)
{
  put_le16(response_data, 0x02, 0);
  put_le16(response_data, 0x20, 0x1234);
  put_le16(response_data, 0x22, 0x5678);
  put_le16(response_data, 0x24, 0x000a);
  put_le16(response_data, 0x28, 0x0012);
  put_le16(response_data, 0x2a, 0x0034);
  for (size_t i = 0; i < 0x10; ++i)
    response_data[0x10 + i] = (u8)(0xa0 + i);
}

static void test_success_and_state_update(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_data[0x30];
  struct tcm_application_info output;

  reset_fixture(&tcm, &transport, response_data);
  fill_valid_app_info(response_data);
  memset(&output, 0, sizeof(output));
  expect_true(syna_tcm_get_app_info(&tcm, &output, 1) == 0,
              "valid application info succeeds");
  expect_true(memcmp(&output, response_data, sizeof(output)) == 0,
              "caller receives application info");
  expect_true(tcm.max_x == 0x1234 && tcm.max_y == 0x5678 &&
              tcm.max_objects == 0x000a && tcm.num_of_image_rows == 0x0012 &&
              tcm.num_of_image_cols == 0x0034,
              "derived geometry fields are updated");
  expect_true(memcmp(tcm.customer_config_id, response_data + 0x10, 0x10) == 0,
              "customer config id is updated");
  expect_true(tcm.response.lock_depth == 0 && lock_count == 1 &&
              unlock_count == 1, "successful copy unlocks response");
}

static void test_status_and_copy_errors(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_data[0x30];
  struct tcm_application_info output;

  reset_fixture(&tcm, &transport, response_data);
  put_le16(response_data, 0x02, 1);
  expect_true(syna_tcm_get_app_info(&tcm, &output, 1) == -242,
              "nonzero application status returns -242");

  reset_fixture(&tcm, &transport, response_data);
  put_le16(response_data, 0x02, 0xff);
  expect_true(syna_tcm_get_app_info(&tcm, &output, 1) == -242,
              "bad application status returns -242");

  reset_fixture(&tcm, &transport, response_data);
  tcm.response.data = NULL;
  expect_true(syna_tcm_get_app_info(&tcm, &output, 1) == -22,
              "null response data returns -22");
  expect_true(tcm.response.lock_depth == 0 && unlock_count == 1,
              "null response data unlocks");

  reset_fixture(&tcm, &transport, response_data);
  tcm.response.buf_size = 2;
  expect_true(syna_tcm_get_app_info(&tcm, &output, 1) == -22,
              "short response buffer returns -22");
  expect_true(tcm.response.lock_depth == 0 && unlock_count == 1,
              "short response buffer unlocks");
}

static void test_write_failure_and_nested_lock(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  u8 response_data[0x30];
  struct tcm_application_info output;

  reset_fixture(&tcm, &transport, response_data);
  write_return = -19;
  expect_true(syna_tcm_get_app_info(&tcm, &output, 1) == -19,
              "write error is propagated");
  expect_true(lock_count == 0, "write error does not lock response");

  reset_fixture(&tcm, &transport, response_data);
  fill_valid_app_info(response_data);
  tcm.response.lock_depth = 2;
  expect_true(syna_tcm_get_app_info(&tcm, &output, 1) == 0,
              "nested response lock still succeeds");
  expect_true(tcm.response.lock_depth == 2 && unlock_count == 1,
              "nested response lock depth is restored");
}

int main(void)
{
  test_validation_and_timeout();
  test_success_and_state_update();
  test_status_and_copy_errors();
  test_write_failure_and_nested_lock();
  puts("PASS: syna_tcm_get_app_info host contract");
  return 0;
}
