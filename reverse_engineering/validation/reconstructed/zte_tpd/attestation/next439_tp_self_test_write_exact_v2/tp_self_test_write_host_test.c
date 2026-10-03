#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
#define __int64 long long
#define _DWORD uint32_t
#define ZTE_TPD_HOST_TEST 1

struct file {
  int unused;
};

static long long tpd_cdev;
static unsigned int alloc_calls;
static unsigned int alloc_size;
static unsigned int callback_calls;
static unsigned int printk_calls;
static int allocation_result;

int tp_alloc_tp_firmware_data(int size)
{
  alloc_calls++;
  alloc_size = (unsigned int)size;
  return allocation_result;
}

int printk(const char *format, ...)
{
  (void)format;
  printk_calls++;
  return 0;
}

static int host_self_test(void *device)
{
  (void)device;
  callback_calls++;
  return 0;
}

#include "../../../reconstructed/zte_tpd/tp_self_test_write.c"

struct fixture {
  uint8_t device[0xfa0 + sizeof(void *)];
  uint64_t state[2];
};

static void fail(const char *case_name, const char *message)
{
  fprintf(stderr, "FAIL %s: %s\n", case_name, message);
  exit(1);
}

static void expect(int condition, const char *case_name, const char *message)
{
  if (!condition)
    fail(case_name, message);
}

static void store_ptr(uint8_t *base, size_t offset, void *value)
{
  memcpy(base + offset, &value, sizeof(value));
}

static void store_u32(uint8_t *base, size_t offset, uint32_t value)
{
  memcpy(base + offset, &value, sizeof(value));
}

static uint32_t load_u32(const uint8_t *base, size_t offset)
{
  uint32_t value;
  memcpy(&value, base + offset, sizeof(value));
  return value;
}

static void fixture_init(struct fixture *fixture, int with_callback)
{
  memset(fixture, 0, sizeof(*fixture));
  store_ptr(fixture->device, 0xc58, fixture->state);
  store_ptr(fixture->device, 0xfa0,
            with_callback ? (void *)host_self_test : NULL);
  store_u32(fixture->device, 0x448, 0x12345678);
  fixture->state[0] = 0xfeedfaceULL;
  tpd_cdev = (long long)(uintptr_t)fixture->device;
  alloc_calls = 0;
  alloc_size = 0;
  callback_calls = 0;
  printk_calls = 0;
  allocation_result = 0;
}

static void test_success_calls_callback_and_transfers_result(void)
{
  const char *case_name = "success_calls_callback_and_transfers_result";
  struct fixture fixture;
  ssize_t result;

  fixture_init(&fixture, 1);
  result = tp_self_test_write(NULL, NULL, 37, NULL);
  expect(result == 37, case_name, "write count was not returned");
  expect(alloc_calls == 1 && alloc_size == 0x100000, case_name,
         "firmware allocation contract differs");
  expect(callback_calls == 1, case_name, "self-test callback was not called");
  expect(fixture.state[0] == 0x12345678ULL, case_name,
         "result was not copied into firmware state");
  expect(load_u32(fixture.device, 0x448) == 0, case_name,
         "result field was not reset");
  expect(printk_calls == 0, case_name, "success path logged an error");
}

static void test_success_without_callback_stores_result(void)
{
  const char *case_name = "success_without_callback_stores_result";
  struct fixture fixture;
  ssize_t result;

  fixture_init(&fixture, 0);
  result = tp_self_test_write(NULL, NULL, 0, NULL);
  expect(result == 0, case_name, "zero write count was not returned");
  expect(callback_calls == 0, case_name, "missing callback was called");
  expect(fixture.state[0] == 0x12345678ULL, case_name,
         "result was not stored without callback");
  expect(load_u32(fixture.device, 0x448) == 0, case_name,
         "result field was not reset");
}

static void test_allocation_failure_returns_enomem(void)
{
  const char *case_name = "allocation_failure_returns_enomem";
  struct fixture fixture;
  ssize_t result;

  fixture_init(&fixture, 1);
  allocation_result = -12;
  result = tp_self_test_write(NULL, NULL, 19, NULL);
  expect(result == -12, case_name, "allocation failure did not return -ENOMEM");
  expect(callback_calls == 0, case_name, "failure path called callback");
  expect(printk_calls == 1, case_name, "failure path did not log once");
  expect(fixture.state[0] == 0xfeedfaceULL, case_name,
         "failure path changed firmware state");
  expect(load_u32(fixture.device, 0x448) == 0x12345678, case_name,
         "failure path reset result field");
}

int main(void)
{
  test_success_calls_callback_and_transfers_result();
  test_success_without_callback_stores_result();
  test_allocation_failure_returns_enomem();
  puts("PASS tp_self_test_write: 3 cases");
  return 0;
}
