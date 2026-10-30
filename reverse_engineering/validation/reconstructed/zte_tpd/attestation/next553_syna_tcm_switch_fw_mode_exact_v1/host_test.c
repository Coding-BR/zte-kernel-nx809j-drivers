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
static bool update_mode;
static u8 write_command;
static u32 write_timeout;
static int write_calls;
static int check_calls;
static int printk_count;

static void reset_mocks(void)
{
  write_return = 0;
  update_mode = true;
  write_command = 0;
  write_timeout = 0;
  write_calls = 0;
  check_calls = 0;
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
  (void)payload;
  (void)length;
  (void)response_code;
  ++write_calls;
  write_command = command;
  write_timeout = timeout;
  if (write_return >= 0 && update_mode)
    tcm->firmware_mode = command == 0x14 ? 0x01 : 0x0b;
  return write_return;
}

static int mock_check_max_rw_size(struct tcm_dev *tcm)
{
  (void)tcm;
  ++check_calls;
  return -7;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_switch_fw_mode.c"

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
  tcm->check_max_rw_size = mock_check_max_rw_size;
  tcm->timing_01e8 = 37;
  reset_mocks();
}

static void test_validation_and_noop(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_switch_fw_mode(NULL, 1, 1) == -241,
              "null tcm returns -241");

  reset_fixture(&tcm, &transport);
  expect_true(syna_tcm_switch_fw_mode(&tcm, 0x02, 1) == -241,
              "invalid mode returns -241");
  expect_true(write_calls == 0 && check_calls == 0,
              "invalid mode does not call dependencies");

  reset_fixture(&tcm, &transport);
  tcm.firmware_mode = 1;
  expect_true(syna_tcm_switch_fw_mode(&tcm, 1, 1) == 0,
              "application mode is idempotent");
  expect_true(write_calls == 0 && check_calls == 1,
              "application no-op still checks max rw size");
}

static void test_application_switch(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  transport.flags = 1;
  tcm.firmware_mode = 0x0b;
  expect_true(syna_tcm_switch_fw_mode(&tcm, 1, 0) == 0,
              "IRQ application switch succeeds");
  expect_true(write_calls == 1 && write_command == 0x14 &&
              write_timeout == 0 && check_calls == 1,
              "IRQ application command and timeout are correct");

  reset_fixture(&tcm, &transport);
  transport.flags = 0;
  tcm.firmware_mode = 0x0b;
  expect_true(syna_tcm_switch_fw_mode(&tcm, 1, 0) == 0,
              "polling application switch succeeds");
  expect_true(write_command == 0x14 && write_timeout == 37,
              "polling application delay uses timing");
}

static void test_bootloader_switch_and_delay_floor(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  tcm.firmware_mode = 1;
  expect_true(syna_tcm_switch_fw_mode(&tcm, 0x0b, 9) == 0,
              "bootloader switch succeeds");
  expect_true(write_command == 0x1f && write_timeout == 37,
              "explicit delay is floored at timing");

  reset_fixture(&tcm, &transport);
  tcm.firmware_mode = 0x0b;
  expect_true(syna_tcm_switch_fw_mode(&tcm, 0x0b, 9) == 0,
              "bootloader no-op is idempotent");
  expect_true(write_calls == 0 && check_calls == 1,
              "bootloader no-op checks max rw size");
}

static void test_failures(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;

  reset_fixture(&tcm, &transport);
  tcm.firmware_mode = 0x0b;
  write_return = -19;
  expect_true(syna_tcm_switch_fw_mode(&tcm, 1, 1) == -19,
              "transport failure is propagated");
  expect_true(check_calls == 0, "transport failure skips max rw check");

  reset_fixture(&tcm, &transport);
  tcm.firmware_mode = 0x0b;
  update_mode = false;
  expect_true(syna_tcm_switch_fw_mode(&tcm, 1, 1) == -242,
              "unchanged firmware mode returns -242");
  expect_true(check_calls == 0, "unchanged mode skips max rw check");
}

int main(void)
{
  test_validation_and_noop();
  test_application_switch();
  test_bootloader_switch_and_delay_floor();
  test_failures();
  puts("PASS: syna_tcm_switch_fw_mode host contract");
  return 0;
}
