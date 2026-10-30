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

static int event_returns[8];
static u8 event_codes[8];
static u32 event_lengths[8];
static size_t event_count;
static size_t event_index;
static int irq_disable_return;
static int irq_calls;
static int irq_values[4];
static int lock_count;
static int unlock_count;
static unsigned int sleep_calls;
static int printk_count;

static void reset_mocks(void)
{
  memset(event_returns, 0, sizeof(event_returns));
  memset(event_codes, 0, sizeof(event_codes));
  memset(event_lengths, 0, sizeof(event_lengths));
  event_count = 0;
  event_index = 0;
  irq_disable_return = 0;
  irq_calls = 0;
  memset(irq_values, 0, sizeof(irq_values));
  lock_count = 0;
  unlock_count = 0;
  sleep_calls = 0;
  printk_count = 0;
}

int printk(const char *format, ...)
{
  (void)format;
  ++printk_count;
  return 0;
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

void msleep(unsigned int milliseconds)
{
  (void)milliseconds;
  ++sleep_calls;
}

int syna_tcm_get_event_data(struct tcm_dev *tcm, u8 *code,
                            struct tcm_buffer *event_data)
{
  (void)tcm;
  if (event_index >= event_count)
    return -5;
  *code = event_codes[event_index];
  event_data->data_length = event_lengths[event_index];
  return event_returns[event_index++];
}

static int mock_irq_control(void *transport, int enable)
{
  (void)transport;
  if (irq_calls < (int)(sizeof(irq_values) / sizeof(irq_values[0])))
    irq_values[irq_calls] = enable;
  ++irq_calls;
  return enable ? 0 : irq_disable_return;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_wait_for_report.c"

static void expect_true(bool condition, const char *label)
{
  if (!condition) {
    fprintf(stderr, "FAIL: %s\n", label);
    exit(1);
  }
}

static void reset_fixture(struct tcm_dev *tcm,
                          struct syna_tcm_transport_runtime *transport,
                          struct tcm_buffer *event_data)
{
  memset(tcm, 0, sizeof(*tcm));
  memset(transport, 0, sizeof(*transport));
  memset(event_data, 0, sizeof(*event_data));
  tcm->firmware_mode = 1;
  tcm->transport = (struct tcm_transport_overlay *)transport;
  transport->irq_control = mock_irq_control;
  reset_mocks();
}

static void set_event(size_t index, int retval, u8 code, u32 length)
{
  event_returns[index] = retval;
  event_codes[index] = code;
  event_lengths[index] = length;
  if (event_count <= index)
    event_count = index + 1;
}

static void test_validation(void)
{
  struct tcm_dev tcm;
  struct syna_tcm_transport_runtime transport;
  struct tcm_buffer event_data;

  reset_fixture(&tcm, &transport, &event_data);
  expect_true(syna_tcm_wait_for_report(NULL, 0x20, &event_data, 0, 0) == -241,
              "null tcm returns -241");

  reset_fixture(&tcm, &transport, &event_data);
  expect_true(syna_tcm_wait_for_report(&tcm, 0x20, NULL, 0, 0) == -241,
              "null event data returns -241");

  reset_fixture(&tcm, &transport, &event_data);
  tcm.firmware_mode = 2;
  expect_true(syna_tcm_wait_for_report(&tcm, 0x20, &event_data, 0, 0) == -241,
              "wrong firmware mode returns -241");
}

static void test_matching_event_and_irq_restore(void)
{
  struct tcm_dev tcm;
  struct syna_tcm_transport_runtime transport;
  struct tcm_buffer event_data;

  reset_fixture(&tcm, &transport, &event_data);
  transport.flags = 1;
  irq_disable_return = 1;
  set_event(0, 0, 0x20, 4);
  expect_true(syna_tcm_wait_for_report(&tcm, 0x20, &event_data, 5, 20) == 0,
              "matching event returns success");
  expect_true(irq_calls == 2 && irq_values[0] == 0 && irq_values[1] == 1,
              "IRQ is disabled and restored");
  expect_true(lock_count == 2 && unlock_count == 2 && sleep_calls == 1,
              "IRQ and sleep synchronization is balanced");
}

static void test_polling_and_mismatch_retry(void)
{
  struct tcm_dev tcm;
  struct syna_tcm_transport_runtime transport;
  struct tcm_buffer event_data;

  reset_fixture(&tcm, &transport, &event_data);
  transport.flags = 0;
  set_event(0, 0, 0x21, 4);
  set_event(1, 0, 0x20, 4);
  expect_true(syna_tcm_wait_for_report(&tcm, 0x20, &event_data, 5, 20) == 0,
              "mismatch is retried until matching event");
  expect_true(event_index == 2 && sleep_calls == 2 && irq_calls == 0,
              "polling path retries without IRQ callbacks");
}

static void test_timeout_and_read_error(void)
{
  struct tcm_dev tcm;
  struct syna_tcm_transport_runtime transport;
  struct tcm_buffer event_data;

  reset_fixture(&tcm, &transport, &event_data);
  set_event(0, 0, 0x21, 4);
  expect_true(syna_tcm_wait_for_report(&tcm, 0x20, &event_data, 5, 5) == -244,
              "timeout returns -244 for wrong event");

  reset_fixture(&tcm, &transport, &event_data);
  set_event(0, -19, 0, 0);
  expect_true(syna_tcm_wait_for_report(&tcm, 0x20, &event_data, 0, 0) == -244,
              "failed read at timeout returns -244");
}

int main(void)
{
  test_validation();
  test_matching_event_and_irq_restore();
  test_polling_and_mismatch_retry();
  test_timeout_and_read_error();
  puts("PASS: syna_tcm_wait_for_report host contract");
  return 0;
}
