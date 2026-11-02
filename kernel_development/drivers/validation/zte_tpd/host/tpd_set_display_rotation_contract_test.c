#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;

struct ztp_device;
struct syna_tcm;

extern int tpd_set_display_rotation(struct ztp_device *cdev, int a2);

const char unk_34878[] = "log";
const char unk_37B3D[] = "log";
const char unk_3C397[] = "log";
const char unk_38BA1[] = "log";
const char unk_36936[] = "log";

static unsigned char client[0x1000] __attribute__((aligned(8)));
static unsigned char context[0x800] __attribute__((aligned(8)));
static unsigned char hardware[0x400] __attribute__((aligned(8)));
static unsigned char state[0x200] __attribute__((aligned(8)));
static int sleep_calls;
static int transition_after;
static int setter_calls;
static int setter_return;
static unsigned int setter_rotation;
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

void msleep(unsigned int milliseconds)
{
  (void)milliseconds;
  ++sleep_calls;
  if (transition_after > 0 && sleep_calls >= transition_after)
    *(unsigned int *)(context + 0x57c) = 1;
}

int syna_dev_set_display_rotation(struct syna_tcm *tcm, int rotation,
                                  unsigned int delay_ms)
{
  ++setter_calls;
  setter_context = tcm;
  setter_rotation = (unsigned int)rotation;
  setter_value = delay_ms;
  setter_delay = delay_ms;
  return setter_return;
}

#include "../../../reconstructed/zte_tpd/tpd_set_display_rotation.c"

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
  *(unsigned int *)(hardware + 0x20c) = 0x1234;
  *(unsigned int *)(state + 0xb8) = 1;
  *(unsigned int *)(context + 0x57c) = 1;
  sleep_calls = 0;
  transition_after = 0;
  setter_calls = 0;
  setter_return = 0;
  setter_rotation = 0;
  setter_value = 0;
  setter_delay = 0;
  setter_context = NULL;
}

int main(void)
{
  int result;

  reset_fixture();
  *(uintptr_t *)(client + 0xdb8) = 0;
  result = tpd_set_display_rotation((struct ztp_device *)client, 2);
  expect_int("null return", result, -22);
  expect_int("null no sleep", sleep_calls, 0);
  expect_int("null no setter", setter_calls, 0);

  reset_fixture();
  result = tpd_set_display_rotation((struct ztp_device *)client, 2);
  expect_int("ready return", result, 2);
  expect_int("client rotation", *(unsigned int *)(client + 0x10), 2);
  expect_int("context rotation", *(unsigned int *)(context + 0x608), 2);
  expect_int("ready setter calls", setter_calls, 1);
  expect_int("ready setter context", setter_context == (struct syna_tcm *)context, 1);
  expect_int("ready setter rotation", setter_rotation, 2);
  expect_int("ready hardware value", setter_value, 0x1234);
  expect_int("ready delay", setter_delay, 0x1234);

  reset_fixture();
  *(unsigned char *)(state + 0xbc) = 1;
  result = tpd_set_display_rotation((struct ztp_device *)client, 3);
  expect_int("flagged return", result, 3);
  expect_int("flagged zero value", setter_value, 0);

  reset_fixture();
  *(unsigned int *)(context + 0x57c) = 0;
  transition_after = 2;
  result = tpd_set_display_rotation((struct ztp_device *)client, 4);
  expect_int("retry success return", result, 4);
  expect_int("retry success sleeps", sleep_calls, 2);
  expect_int("retry success setter", setter_calls, 1);

  reset_fixture();
  *(unsigned int *)(context + 0x57c) = 0;
  result = tpd_set_display_rotation((struct ztp_device *)client, 5);
  expect_int("retry failure return", result, -22);
  expect_int("retry failure sleeps", sleep_calls, 5);
  expect_int("retry failure no setter", setter_calls, 0);

  reset_fixture();
  setter_return = -5;
  result = tpd_set_display_rotation((struct ztp_device *)client, 1);
  expect_int("setter error return", result, 1);
  expect_int("setter error called", setter_calls, 1);

  if (failures != 0)
    return 1;
  printf("PASS tpd_set_display_rotation contract test (%d checks)\n", checks);
  return 0;
}
