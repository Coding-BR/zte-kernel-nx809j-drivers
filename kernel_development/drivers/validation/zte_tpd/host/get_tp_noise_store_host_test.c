#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
typedef long long __int64;
typedef uint64_t _QWORD;
typedef uint32_t _DWORD;

struct file { int unused; };

long long tpd_cdev;
static unsigned int lock_calls;
static unsigned int unlock_calls;
static unsigned int vfree_calls;
static unsigned int kfree_calls;
static unsigned int field_before_unlock;
static uintptr_t vfree_argument;
static uintptr_t kfree_argument;
static uintptr_t expected_lock;
static uintptr_t expected_buffer;
static uintptr_t expected_resource;
static int expect_vfree;

void mutex_lock(__int64 lock)
{
  if ((uintptr_t)lock != expected_lock) {
    fprintf(stderr, "FAIL mutex_lock: unexpected lock address\n");
    exit(1);
  }
  lock_calls++;
}

void mutex_unlock(__int64 lock)
{
  if ((uintptr_t)lock != expected_lock) {
    fprintf(stderr, "FAIL mutex_unlock: unexpected lock address\n");
    exit(1);
  }
  field_before_unlock = *(unsigned int *)((uint8_t *)(uintptr_t)tpd_cdev + 0x448);
  unlock_calls++;
}

void vfree(__int64 pointer)
{
  vfree_calls++;
  vfree_argument = (uintptr_t)pointer;
}

void kfree(__int64 pointer)
{
  kfree_calls++;
  kfree_argument = (uintptr_t)pointer;
  if (expect_vfree && vfree_calls == 0) {
    fprintf(stderr, "FAIL kfree: resource was freed before its buffer\n");
    exit(1);
  }
}

#include "../../../reconstructed/zte_tpd/get_tp_noise_store.c"

struct noise_resource {
  uint64_t reserved;
  void *buffer;
};

struct fixture {
  uint8_t device[0xc60 + sizeof(void *)];
  struct noise_resource resource;
};

static void expect(int condition, const char *case_name, const char *message)
{
  if (!condition) {
    fprintf(stderr, "FAIL %s: %s\n", case_name, message);
    exit(1);
  }
}

static void store_ptr(uint8_t *base, size_t offset, void *value)
{
  memcpy(base + offset, &value, sizeof(value));
}

static void fixture_init(struct fixture *fixture, int with_resource,
                         int with_buffer)
{
  memset(fixture, 0, sizeof(*fixture));
  fixture->resource.buffer = with_buffer ? (void *)(uintptr_t)0x12345678 : NULL;
  store_ptr(fixture->device, 0xc58,
            with_resource ? (void *)&fixture->resource : NULL);
  *(unsigned int *)(fixture->device + 0x448) = 99;
  tpd_cdev = (long long)(uintptr_t)fixture->device;
  expected_lock = (uintptr_t)fixture->device + 0xc60;
  expected_buffer = (uintptr_t)fixture->resource.buffer;
  expected_resource = (uintptr_t)&fixture->resource;
  expect_vfree = with_buffer;
  lock_calls = 0;
  unlock_calls = 0;
  vfree_calls = 0;
  kfree_calls = 0;
  field_before_unlock = 99;
  vfree_argument = 0;
  kfree_argument = 0;
}

static void test_full_resource_teardown(void)
{
  const char *name = "full_resource_teardown";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  const char input[] = "ignored";

  fixture_init(&fixture, 1, 1);
  expect(get_tp_noise_store(&file, input, sizeof(input) - 1, &offset) ==
             (ssize_t)(sizeof(input) - 1),
         name, "store did not return count");
  expect(lock_calls == 1 && unlock_calls == 1, name,
         "mutex was not balanced");
  expect(vfree_calls == 1 && vfree_argument == expected_buffer, name,
         "noise buffer was not released");
  expect(kfree_calls == 1 && kfree_argument == expected_resource, name,
         "noise resource was not released");
  expect(*(void **)(fixture.device + 0xc58) == NULL, name,
         "resource slot was not cleared");
  expect(fixture.resource.buffer == NULL, name,
         "resource buffer slot was not cleared");
  expect(field_before_unlock == 0, name, "feature field was not cleared");
}

static void test_resource_without_buffer(void)
{
  const char *name = "resource_without_buffer";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  const char input[] = "x";

  fixture_init(&fixture, 1, 0);
  expect(get_tp_noise_store(&file, input, sizeof(input) - 1, &offset) == 1,
         name, "store did not return count");
  expect(vfree_calls == 0, name, "null buffer was passed to vfree");
  expect(kfree_calls == 1 && kfree_argument == expected_resource, name,
         "resource was not released");
  expect(*(void **)(fixture.device + 0xc58) == NULL, name,
         "resource slot was not cleared");
  expect(field_before_unlock == 0, name, "feature field was not cleared");
}

static void test_null_resource(void)
{
  const char *name = "null_resource";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  const char input[] = "x";

  fixture_init(&fixture, 0, 0);
  expect(get_tp_noise_store(&file, input, sizeof(input) - 1, &offset) == 1,
         name, "store did not return count");
  expect(vfree_calls == 0 && kfree_calls == 0, name,
         "free was called for a null resource");
  expect(field_before_unlock == 0, name, "feature field was not cleared");
  expect(lock_calls == 1 && unlock_calls == 1, name,
         "mutex was not balanced");
}

int main(void)
{
  test_full_resource_teardown();
  test_resource_without_buffer();
  test_null_resource();
  puts("PASS get_tp_noise_store host tests (3 cases)");
  return 0;
}
