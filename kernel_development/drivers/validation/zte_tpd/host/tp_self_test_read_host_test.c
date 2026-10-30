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
static unsigned int printk_calls;
static unsigned int callback_calls;
static int callback_result;
static int allocation_should_fail;
static int freed_data;
static int freed_state;

void *kmalloc(size_t size, unsigned int flags)
{
  (void)flags;
  if (allocation_should_fail)
    return NULL;
  return malloc(size);
}

void kfree(const void *pointer)
{
  if (pointer)
    freed_data++;
  free((void *)pointer);
}

void vfree(const void *pointer)
{
  if (pointer)
    freed_state++;
  free((void *)pointer);
}

int printk(const char *format, ...)
{
  (void)format;
  printk_calls++;
  return 0;
}

ssize_t simple_read_from_buffer(__int64 destination_address,
                                __int64 count, __int64 *position,
                                const void *source, __int64 available)
{
  char *destination = (char *)(uintptr_t)destination_address;
  __int64 copied;

  if (*position < 0 || count < 0 || available < 0)
    return -1;
  if (*position >= available)
    return 0;
  copied = available - *position;
  if (copied > count)
    copied = count;
  memcpy(destination, (const char *)source + *position, (size_t)copied);
  *position += copied;
  return (ssize_t)copied;
}

static int host_self_test(void *device, char *buffer)
{
  (void)device;
  callback_calls++;
  memcpy(buffer, "PASS\n", 5);
  return callback_result;
}

#include "../../../reconstructed/zte_tpd/tp_self_test_read.c"

struct fixture {
  uint8_t device[0xf98 + sizeof(void *)];
  void *state;
  void *state_buffer;
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

static void fixture_dispose(struct fixture *fixture)
{
  free(fixture->state_buffer);
  free(fixture->state);
  fixture->state_buffer = NULL;
  fixture->state = NULL;
}

static void fixture_init(struct fixture *fixture, int with_callback,
                         int with_state)
{
  memset(fixture, 0, sizeof(*fixture));
  fixture->state = with_state ? malloc(16) : NULL;
  fixture->state_buffer = with_state ? malloc(32) : NULL;
  if (with_state) {
    store_ptr(fixture->device, 0xc58, fixture->state);
    store_ptr((uint8_t *)fixture->state, 8, fixture->state_buffer);
  }
  store_ptr(fixture->device, 0xf98,
            with_callback ? (void *)host_self_test : NULL);
  store_u32(fixture->device, 0x448, 77);
  tpd_cdev = (long long)(uintptr_t)fixture->device;
  printk_calls = 0;
  callback_calls = 0;
  callback_result = 5;
  allocation_should_fail = 0;
  freed_data = 0;
  freed_state = 0;
}

static void test_callback_and_cleanup(void)
{
  const char *case_name = "callback_and_cleanup";
  struct fixture fixture;
  char output[8] = {0};
  loff_t position = 0;
  ssize_t result;

  fixture_init(&fixture, 1, 1);
  result = tp_self_test_read(NULL, output, sizeof(output), &position);
  expect(result == 5, case_name, "callback result was not returned");
  expect(callback_calls == 1, case_name, "callback was not called");
  expect(memcmp(output, "PASS\n", 5) == 0, case_name,
         "callback data was not copied");
  expect(position == 5, case_name, "position was not advanced");
  expect(*(void **)(fixture.device + 0xc58) == NULL, case_name,
         "state container was not cleared");
  expect(*(uint32_t *)(fixture.device + 0x448) == 0, case_name,
         "state length was not reset");
  expect(freed_data == 2 && freed_state == 1, case_name,
         "cleanup contract differs");
}

static void test_no_callback_returns_zero(void)
{
  const char *case_name = "no_callback_returns_zero";
  struct fixture fixture;
  char output[4] = {0};
  loff_t position = 0;
  ssize_t result;

  fixture_init(&fixture, 0, 0);
  result = tp_self_test_read(NULL, output, sizeof(output), &position);
  expect(result == 0 && callback_calls == 0, case_name,
         "missing callback contract differs");
  expect(freed_data == 1, case_name, "data buffer was not freed");
}

static void test_nonzero_position_is_eof(void)
{
  const char *case_name = "nonzero_position_is_eof";
  struct fixture fixture;
  char output[4];
  loff_t position = 1;
  ssize_t result;

  fixture_init(&fixture, 1, 1);
  memset(output, 0xa5, sizeof(output));
  result = tp_self_test_read(NULL, output, sizeof(output), &position);
  expect(result == 0 && callback_calls == 0, case_name,
         "EOF path performed work");
  expect((unsigned char)output[0] == 0xa5, case_name,
         "EOF path modified output");
  fixture_dispose(&fixture);
}

static void test_allocation_failure(void)
{
  const char *case_name = "allocation_failure";
  struct fixture fixture;
  char output[4] = {0};
  loff_t position = 0;
  ssize_t result;

  fixture_init(&fixture, 1, 0);
  allocation_should_fail = 1;
  result = tp_self_test_read(NULL, output, sizeof(output), &position);
  expect(result == -12, case_name, "allocation failure did not return -ENOMEM");
  expect(callback_calls == 0 && printk_calls == 1, case_name,
         "allocation failure side effects differ");
}

int main(void)
{
  test_callback_and_cleanup();
  test_no_callback_returns_zero();
  test_nonzero_position_is_eof();
  test_allocation_failure();
  puts("PASS tp_self_test_read: 4 cases");
  return 0;
}
