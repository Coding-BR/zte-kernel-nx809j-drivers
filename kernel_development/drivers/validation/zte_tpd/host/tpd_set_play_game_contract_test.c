#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;

struct ztp_device;
struct syna_tcm;
extern int tpd_set_play_game(struct ztp_device *cdev, int value);

const char unk_34878[] = "log";
const char unk_32D58[] = "log";
const char unk_34BC7[] = "log";
const char unk_3B5E0[] = "log";

static unsigned char client[0x1000] __attribute__((aligned(8)));
static unsigned char context[0x800] __attribute__((aligned(8)));
static unsigned char hardware[0x400] __attribute__((aligned(8)));
static unsigned char state[0x200] __attribute__((aligned(8)));
static int setter_calls;
static int setter_return;
static unsigned int setter_value;
static unsigned int setter_delay;
static struct syna_tcm *setter_context;
static int checks;
static int failures;

int printk(const char *format, ...)
{
  (void)format;
  return 0;
}

int syna_dev_set_play_game(struct syna_tcm *tcm, int value,
                           unsigned int delay_ms)
{
  ++setter_calls;
  setter_context = tcm;
  setter_value = (unsigned int)value;
  setter_delay = delay_ms;
  return setter_return;
}

#include "../../../reconstructed/zte_tpd/tpd_set_play_game.c"

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
  memset(hardware, 0, sizeof(hardware));
  memset(state, 0, sizeof(state));
  *(uintptr_t *)(client + 0xdb8) = (uintptr_t)context;
  *(uintptr_t *)context = (uintptr_t)hardware;
  *(uintptr_t *)(context + 0x270) = (uintptr_t)state;
  *(unsigned int *)(hardware + 0x20c) = 0x42;
  *(unsigned int *)(state + 0xb8) = 1;
  *(unsigned int *)(context + 0x57c) = 1;
  *(unsigned int *)(context + 0x5dc) = 1;
  *(unsigned int *)(client + 0x10) = 9;
  setter_calls = 0;
  setter_return = 0;
  setter_value = 0;
  setter_delay = 0;
  setter_context = NULL;
}

int main(void)
{
  int result;

  reset_fixture();
  *(uintptr_t *)(client + 0xdb8) = 0;
  result = tpd_set_play_game((struct ztp_device *)client, 2);
  expect_int("null return", result, -22);
  expect_int("null no setter", setter_calls, 0);

  reset_fixture();
  *(unsigned int *)(context + 0x57c) = 0;
  result = tpd_set_play_game((struct ztp_device *)client, 2);
  expect_int("inactive return", result, 9);
  expect_int("inactive no setter", setter_calls, 0);
  expect_int("inactive state unchanged", *(unsigned int *)(context + 0x5dc), 1);

  reset_fixture();
  result = tpd_set_play_game((struct ztp_device *)client, 1);
  expect_int("same return", result, 9);
  expect_int("same no setter", setter_calls, 0);

  reset_fixture();
  result = tpd_set_play_game((struct ztp_device *)client, 2);
  expect_int("changed return", result, 9);
  expect_int("changed setter", setter_calls, 1);
  expect_int("changed state", *(unsigned int *)(context + 0x5dc), 2);
  expect_int("changed value", setter_value, 2);
  expect_int("changed delay", setter_delay, 0x42);
  expect_int("changed context", setter_context == (struct syna_tcm *)context, 1);

  reset_fixture();
  *(unsigned char *)(*(uintptr_t *)(context + 0x270) + 0xbc) = 1;
  result = tpd_set_play_game((struct ztp_device *)client, 3);
  expect_int("flagged return", result, 9);
  expect_int("flagged zero delay", setter_delay, 0);

  reset_fixture();
  setter_return = -5;
  result = tpd_set_play_game((struct ztp_device *)client, 4);
  expect_int("setter error return", result, 9);
  expect_int("setter error state", *(unsigned int *)(context + 0x5dc), 4);

  if (failures != 0)
    return 1;
  printf("PASS tpd_set_play_game contract test (%d checks)\n", checks);
  return 0;
}
