#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;

struct ztp_device;
struct syna_tcm;
extern int tpd_set_frame_data(struct ztp_device *cdev, int value);

const char unk_34878[] = "log";
const char unk_345B2[] = "log";
const char unk_3B5E0[] = "log";

static unsigned char client[0x1000] __attribute__((aligned(8)));
static unsigned char context[0x800] __attribute__((aligned(8)));
static unsigned char hardware[0x400] __attribute__((aligned(8)));
static unsigned char state[0x200] __attribute__((aligned(8)));
static int reset_calls;
static int getter_calls;
static int getter_return;
static unsigned int getter_value;
static unsigned int getter_delay;
static struct syna_tcm *getter_context;
static int checks;
static int failures;

int printk(const char *format, ...)
{
  (void)format;
  return 0;
}

void zte_reset_frame_list(struct syna_tcm *tcm)
{
  ++reset_calls;
  (void)tcm;
}

int syna_dev_get_frame_data(struct syna_tcm *tcm, int value,
                            unsigned int delay_ms)
{
  ++getter_calls;
  getter_context = tcm;
  getter_value = (unsigned int)value;
  getter_delay = delay_ms;
  return getter_return;
}

#include "../../../reconstructed/zte_tpd/tpd_set_frame_data.c"

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
  *(unsigned int *)(hardware + 0x20c) = 0x55;
  *(unsigned int *)(state + 0xb8) = 1;
  *(unsigned int *)(context + 0x57c) = 1;
  *(unsigned int *)(context + 0x5e0) = 0;
  reset_calls = 0;
  getter_calls = 0;
  getter_return = 0;
  getter_value = 0;
  getter_delay = 0;
  getter_context = NULL;
}

int main(void)
{
  int result;

  reset_fixture();
  *(uintptr_t *)(client + 0xdb8) = 0;
  result = tpd_set_frame_data((struct ztp_device *)client, 2);
  expect_int("null return", result, -22);
  expect_int("null no reset", reset_calls, 0);
  expect_int("null no getter", getter_calls, 0);

  reset_fixture();
  *(unsigned int *)(context + 0x57c) = 0;
  result = tpd_set_frame_data((struct ztp_device *)client, 3);
  expect_int("inactive return", result, 0);
  expect_int("inactive no reset", reset_calls, 0);
  expect_int("inactive no getter", getter_calls, 0);
  expect_int("inactive value unchanged", *(unsigned int *)(context + 0x5e0), 0);

  reset_fixture();
  result = tpd_set_frame_data((struct ztp_device *)client, 4);
  expect_int("active return", result, 0);
  expect_int("active value stored", *(unsigned int *)(context + 0x5e0), 4);
  expect_int("active reset", reset_calls, 1);
  expect_int("active getter", getter_calls, 1);
  expect_int("active context", getter_context == (struct syna_tcm *)context, 1);
  expect_int("active value", getter_value, 4);
  expect_int("active delay", getter_delay, 0x55);

  reset_fixture();
  *(unsigned char *)(state + 0xbc) = 1;
  result = tpd_set_frame_data((struct ztp_device *)client, 5);
  expect_int("flagged return", result, 0);
  expect_int("flagged zero delay", getter_delay, 0);

  reset_fixture();
  getter_return = -5;
  result = tpd_set_frame_data((struct ztp_device *)client, 6);
  expect_int("getter error return", result, 0);
  expect_int("getter error stored", *(unsigned int *)(context + 0x5e0), 6);

  if (failures != 0)
    return 1;
  printf("PASS tpd_set_frame_data contract test (%d checks)\n", checks);
  return 0;
}
