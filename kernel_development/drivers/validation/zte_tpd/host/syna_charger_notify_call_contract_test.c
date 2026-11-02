#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct notifier_block { unsigned char unused; };
struct workqueue_struct { unsigned char unused; };
struct delayed_work { unsigned char unused; };

static int queue_calls;
static int queue_cpu;
static struct workqueue_struct *queue_wq;
static struct delayed_work *queue_work;
static unsigned long queue_delay;
static int checks;
static int failures;

int queue_delayed_work_on(int cpu, struct workqueue_struct *wq,
                          struct delayed_work *work, unsigned long delay)
{
  ++queue_calls;
  queue_cpu = cpu;
  queue_wq = wq;
  queue_work = work;
  queue_delay = delay;
  return 1;
}

#include "syna_charger_notify_call_under_test.c"

static void expect_int(const char *name, long long actual, long long expected)
{
  ++checks;
  if (actual != expected) {
    ++failures;
    printf("FAIL %s actual=%lld expected=%lld\n", name, actual, expected);
  }
}

static void reset_queue(void)
{
  queue_calls = 0;
  queue_cpu = -1;
  queue_wq = NULL;
  queue_work = NULL;
  queue_delay = 0;
}

static int invoke(struct notifier_block *notifier, unsigned long event,
                  const char *name)
{
  const char *name_slot = name;
  const char **data_slot = &name_slot;
  return syna_charger_notify_call(notifier, event, &data_slot);
}

int main(void)
{
  unsigned char notifier_storage[0x100] __attribute__((aligned(8)));
  unsigned char workqueue_storage[0x20] __attribute__((aligned(8)));
  struct notifier_block *notifier =
      (struct notifier_block *)(notifier_storage + 0x70);
  struct workqueue_struct *wq =
      (struct workqueue_struct *)workqueue_storage;
  struct delayed_work *work =
      (struct delayed_work *)notifier_storage;
  int result;

  *(uintptr_t *)((unsigned char *)notifier - 8) = (uintptr_t)wq;

  reset_queue();
  result = syna_charger_notify_call(notifier, 1, NULL);
  expect_int("nonzero event return", result, 0);
  expect_int("nonzero event no queue", queue_calls, 0);

  reset_queue();
  result = invoke(notifier, 0, "usb");
  expect_int("usb return", result, 0);
  expect_int("usb queue", queue_calls, 1);
  expect_int("usb cpu", queue_cpu, 32);
  expect_int("usb workqueue", queue_wq == wq, 1);
  expect_int("usb delayed work", queue_work == work, 1);
  expect_int("usb delay", queue_delay, 125);

  reset_queue();
  result = invoke(notifier, 0, "ac");
  expect_int("ac return", result, 0);
  expect_int("ac queue", queue_calls, 1);

  reset_queue();
  result = invoke(notifier, 0, "aux");
  expect_int("aux return", result, 0);
  expect_int("aux no queue", queue_calls, 0);

  reset_queue();
  result = invoke(notifier, 0, "acx");
  expect_int("acx return", result, 0);
  expect_int("acx no queue", queue_calls, 0);

  if (failures != 0)
    return 1;
  printf("PASS syna_charger_notify_call contract test (%d checks)\n", checks);
  return 0;
}
