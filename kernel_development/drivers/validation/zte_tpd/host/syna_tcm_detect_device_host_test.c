#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

#define __user
#define __init
#define __exit
#define barrier() __asm__ __volatile__("" ::: "memory")

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static int detect_return;
static u8 detected_mode;
static unsigned int detect_quick_setup;
static unsigned int detect_reinit;
static int detect_calls;
static int printk_count;

int printk(const char *format, ...)
{
  (void)format;
  ++printk_count;
  return 0;
}

int syna_tcm_v1_detect(struct tcm_dev *tcm_dev, bool quick_setup,
                       bool reinit)
{
  (void)tcm_dev;
  detect_quick_setup = quick_setup;
  detect_reinit = reinit;
  ++detect_calls;
  tcm_dev->firmware_mode = detected_mode;
  return detect_return;
}

static int dummy_read(struct tcm_dev *tcm_dev, u8 *code)
{
  (void)tcm_dev;
  (void)code;
  return 0;
}

static int dummy_write(struct tcm_dev *tcm_dev, u8 command, u8 *payload,
                       u32 length, u8 *response_code, u32 delay_ms)
{
  (void)tcm_dev;
  (void)command;
  (void)payload;
  (void)length;
  (void)response_code;
  (void)delay_ms;
  return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_detect_device.c"

static void expect_true(bool condition, const char *label)
{
  if (!condition) {
    fprintf(stderr, "FAIL: %s\n", label);
    exit(1);
  }
}

static void reset_fixture(struct tcm_dev *tcm)
{
  memset(tcm, 0, sizeof(*tcm));
  detect_return = 0;
  detected_mode = 0;
  detect_quick_setup = 0;
  detect_reinit = 0;
  detect_calls = 0;
  printk_count = 0;
}

static void install_handlers(struct tcm_dev *tcm)
{
  tcm->read_message = dummy_read;
  tcm->write_message = dummy_write;
}

static void test_invalid_inputs(void)
{
  struct tcm_dev tcm;

  reset_fixture(&tcm);
  expect_true(syna_tcm_detect_device(NULL, 1, 0) == -241,
              "null device returns -241");
  expect_true(syna_tcm_detect_device(&tcm, 2, 0) == -241,
              "protocol v2 returns -241");
  expect_true(syna_tcm_detect_device(&tcm, 3, 0) == -241,
              "invalid protocol returns -241");
  expect_true(detect_calls == 0, "invalid protocols do not detect");
}

static void test_detection_error_paths(void)
{
  struct tcm_dev tcm;
  u8 response[4] = {0xa1, 0xb2, 0xc3, 0xd4};

  reset_fixture(&tcm);
  detect_return = -1;
  expect_true(syna_tcm_detect_device(&tcm, 1, 1) == -245,
              "detect error without response returns -245");
  expect_true(detect_quick_setup == 0 && detect_reinit == 1,
              "detect receives protocol flags");
  expect_true(tcm.detection_state == 0, "detect resets detection state");

  reset_fixture(&tcm);
  tcm.message_buf.data = response;
  tcm.message_buf.buf_size = sizeof(response);
  detect_return = -1;
  expect_true(syna_tcm_detect_device(&tcm, 1, 0) == -245,
              "detect error with response returns -245");
  expect_true(detect_calls == 1, "detect error calls v1 detector");
}

static void test_handler_validation(void)
{
  struct tcm_dev tcm;

  reset_fixture(&tcm);
  detect_return = 0;
  expect_true(syna_tcm_detect_device(&tcm, 1, 0) == -245,
              "missing handlers returns -245");
  expect_true(detect_calls == 1, "handler validation follows detection");
}

static void test_success_modes(void)
{
  struct tcm_dev tcm;

  reset_fixture(&tcm);
  install_handlers(&tcm);
  detect_return = 0;
  detected_mode = 11;
  expect_true(syna_tcm_detect_device(&tcm, 0x81, 1) == 1,
              "quick setup returns one");
  expect_true(detect_quick_setup == 1 && detect_reinit == 1,
              "quick setup flags are exact");

  reset_fixture(&tcm);
  install_handlers(&tcm);
  detected_mode = 11;
  expect_true(syna_tcm_detect_device(&tcm, 1, 0) == 11,
              "bootloader mode returns firmware mode");

  reset_fixture(&tcm);
  install_handlers(&tcm);
  detected_mode = 1;
  tcm.build_id = 1234;
  memcpy(tcm.identification_info.part_number, "NX809J", 7);
  expect_true(syna_tcm_detect_device(&tcm, 1, 0) == 1,
              "application mode returns firmware mode");

  reset_fixture(&tcm);
  install_handlers(&tcm);
  detected_mode = 7;
  expect_true(syna_tcm_detect_device(&tcm, 1, 0) == 7,
              "unknown mode returns firmware mode");
}

int main(void)
{
  test_invalid_inputs();
  test_detection_error_paths();
  test_handler_validation();
  test_success_modes();
  puts("PASS: syna_tcm_detect_device host contract");
  return 0;
}
