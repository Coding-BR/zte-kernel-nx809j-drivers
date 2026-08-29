#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;

struct ztp_device;
extern int tpd_get_fake_sleep(struct ztp_device *cdev);

static unsigned char client[0x1000] __attribute__((aligned(8)));
static unsigned char context[0x800] __attribute__((aligned(8)));
static int checks;
static int failures;

#include "../../../reconstructed/zte_tpd/tpd_get_fake_sleep.c"

static void expect_int(const char *name, long long actual, long long expected)
{
  ++checks;
  if (actual != expected) {
    ++failures;
    printf("FAIL %s actual=%lld expected=%lld\n", name, actual, expected);
  }
}

static void reset_fixture(void)
{
  memset(client, 0, sizeof(client));
  memset(context, 0, sizeof(context));
  *(uintptr_t *)(client + 0xdb8) = (uintptr_t)context;
  *(unsigned int *)(context + 0x5e8) = 0xabcdef01;
  *(unsigned int *)(client + 0x480) = 0x12345678;
  *(unsigned int *)(client + 0x47c) = 0x87654321;
}

int main(void)
{
  int result;

  reset_fixture();
  result = tpd_get_fake_sleep((struct ztp_device *)client);
  expect_int("return", result, 0);
  expect_int("destination", *(unsigned int *)(client + 0x480), 0xabcdef01);
  expect_int("unrelated destination", *(unsigned int *)(client + 0x47c),
             0x87654321);
  expect_int("source unchanged", *(unsigned int *)(context + 0x5e8),
             0xabcdef01);

  if (failures != 0)
    return 1;
  printf("PASS tpd_get_fake_sleep contract test (%d checks)\n", checks);
  return 0;
}
