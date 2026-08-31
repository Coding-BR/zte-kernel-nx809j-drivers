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

#define __user
#define __init
#define __exit
#define barrier() __asm__ __volatile__("" ::: "memory")

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static int read_return;
static u8 read_code;
static int read_calls;
static int copy_return;
static int copy_calls;
static struct tcm_buffer *copy_destination;
static struct tcm_buffer *copy_source;

int printk(const char *format, ...)
{
  (void)format;
  return 0;
}

static int mock_read_message(struct tcm_dev *tcm_dev, u8 *code)
{
  (void)tcm_dev;
  ++read_calls;
  *code = read_code;
  return read_return;
}

static int syna_tcm_buf_copy(struct tcm_buffer *destination,
                             struct tcm_buffer *source)
{
  ++copy_calls;
  copy_destination = destination;
  copy_source = source;
  return copy_return;
}

#define SYNA_TCM_GET_EVENT_DATA_EXTERNAL_BUF_COPY
#include "../../../reconstructed/zte_tpd/syna_tcm_get_event_data.c"

static void expect_true(bool condition, const char *label)
{
  if (!condition) {
    fprintf(stderr, "FAIL: %s\n", label);
    exit(1);
  }
}

static void reset_fixture(struct tcm_dev *tcm, u8 *code)
{
  memset(tcm, 0, sizeof(*tcm));
  memset(code, 0, 1);
  read_return = 0;
  read_code = 0;
  read_calls = 0;
  copy_return = 0;
  copy_calls = 0;
  copy_destination = NULL;
  copy_source = NULL;
  tcm->read_message = mock_read_message;
}

static void test_validation_and_transport(void)
{
  struct tcm_dev tcm;
  u8 code;

  reset_fixture(&tcm, &code);
  expect_true(syna_tcm_get_event_data(NULL, &code, NULL) == -241,
              "null device returns -241");
  expect_true(syna_tcm_get_event_data(&tcm, NULL, NULL) == -241,
              "null code returns -241");

  reset_fixture(&tcm, &code);
  read_return = -17;
  read_code = 0x10;
  expect_true(syna_tcm_get_event_data(&tcm, &code, NULL) == -17,
              "read failure is propagated");
  expect_true(read_calls == 1 && copy_calls == 0,
              "read failure does not copy");
}

static void test_no_destination_and_no_data(void)
{
  struct tcm_dev tcm;
  struct tcm_buffer destination;
  u8 code;

  reset_fixture(&tcm, &code);
  read_code = 0x10;
  expect_true(syna_tcm_get_event_data(&tcm, &code, NULL) == 0,
              "null destination returns read result");

  reset_fixture(&tcm, &code);
  destination = (struct tcm_buffer){0};
  read_code = 0x10;
  expect_true(syna_tcm_get_event_data(&tcm, &code, &destination) == 0,
              "empty report buffer returns read result");
  expect_true(copy_calls == 0, "empty report buffer does not copy");

  reset_fixture(&tcm, &code);
  read_code = 0x01;
  expect_true(syna_tcm_get_event_data(&tcm, &code, &destination) == 0,
              "empty response buffer returns read result");
  expect_true(copy_calls == 0, "empty response buffer does not copy");
}

static void test_report_path(void)
{
  struct tcm_dev tcm;
  struct tcm_buffer destination;
  u8 code;

  reset_fixture(&tcm, &code);
  destination = (struct tcm_buffer){0};
  tcm.report_buf.data_length = 4;
  read_code = 0x10;
  copy_return = 0;
  expect_true(syna_tcm_get_event_data(&tcm, &code, &destination) == 0,
              "report copy success returns zero");
  expect_true(copy_calls == 1 && copy_destination == &destination &&
              copy_source == &tcm.report_buf,
              "report path copies report buffer");

  reset_fixture(&tcm, &code);
  destination = (struct tcm_buffer){0};
  tcm.report_buf.data_length = 4;
  read_code = 0xfe;
  copy_return = -23;
  expect_true(syna_tcm_get_event_data(&tcm, &code, &destination) == -23,
              "report copy failure is propagated");
  expect_true(copy_calls == 1, "report copy failure still calls copier");

  reset_fixture(&tcm, &code);
  destination = (struct tcm_buffer){0};
  tcm.report_buf.data_length = 4;
  read_code = 0xff;
  expect_true(syna_tcm_get_event_data(&tcm, &code, &destination) == 0,
              "0xff is outside report range");
  expect_true(copy_calls == 0, "0xff does not copy report buffer");
}

static void test_response_path_and_other_codes(void)
{
  struct tcm_dev tcm;
  struct tcm_buffer destination;
  u8 code;

  reset_fixture(&tcm, &code);
  destination = (struct tcm_buffer){0};
  tcm.resp_buf.data_length = 2;
  read_code = 0x01;
  expect_true(syna_tcm_get_event_data(&tcm, &code, &destination) == 0,
              "response copy success returns zero");
  expect_true(copy_calls == 1 && copy_source == &tcm.resp_buf,
              "response path copies response buffer");

  reset_fixture(&tcm, &code);
  destination = (struct tcm_buffer){0};
  tcm.resp_buf.data_length = 2;
  read_code = 0x0f;
  copy_return = -29;
  expect_true(syna_tcm_get_event_data(&tcm, &code, &destination) == -29,
              "response copy failure is propagated");

  reset_fixture(&tcm, &code);
  destination = (struct tcm_buffer){0};
  tcm.report_buf.data_length = 3;
  tcm.resp_buf.data_length = 3;
  read_code = 0x00;
  expect_true(syna_tcm_get_event_data(&tcm, &code, &destination) == 0,
              "zero code does not copy");
  expect_true(copy_calls == 0, "zero code selects neither buffer");
}

int main(void)
{
  test_validation_and_transport();
  test_no_destination_and_no_data();
  test_report_path();
  test_response_path_and_other_codes();
  puts("PASS: syna_tcm_get_event_data host contract");
  return 0;
}
