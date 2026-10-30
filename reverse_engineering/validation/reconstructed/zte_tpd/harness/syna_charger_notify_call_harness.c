#include <stddef.h>
#include <stdio.h>
#include <string.h>

#define _DEFS_H

struct workqueue_struct {
  unsigned long marker;
};

struct delayed_work {
  unsigned char bytes[104];
};

struct notifier_block {
  unsigned char bytes[24];
};

struct charger_fixture {
  struct delayed_work work;
  struct workqueue_struct *queue;
  struct notifier_block notifier;
};

struct queue_call {
  unsigned int count;
  int cpu;
  struct workqueue_struct *queue;
  struct delayed_work *work;
  unsigned long delay;
};

static struct queue_call queue_call;

static int queue_delayed_work_on(int cpu, struct workqueue_struct *queue,
                                 struct delayed_work *work,
                                 unsigned long delay)
{
  queue_call.count++;
  queue_call.cpu = cpu;
  queue_call.queue = queue;
  queue_call.work = work;
  queue_call.delay = delay;
  return 1;
}

#include "../../../../../kernel_development/drivers/reconstructed/zte_tpd/syna_charger_notify_call.c"

static unsigned int passed;
static unsigned int failed;

#define CHECK(name, condition)                                                 \
  do {                                                                         \
    if (condition) {                                                           \
      printf("PASS %s\n", name);                                              \
      passed++;                                                                \
    } else {                                                                   \
      printf("FAIL %s\n", name);                                              \
      failed++;                                                                \
    }                                                                          \
  } while (0)

static void reset_queue_call(void)
{
  memset(&queue_call, 0, sizeof(queue_call));
}

static void run_case(struct charger_fixture *fixture, const char *name,
                     unsigned long event, int expect_queue,
                     const char *check_name)
{
  const char *name_slot = name;
  const char **data = &name_slot;
  int result;

  reset_queue_call();
  result = syna_charger_notify_call(&fixture->notifier, event, &data);
  CHECK(check_name, result == 0 && queue_call.count == (unsigned int)expect_queue);
  if (expect_queue) {
    CHECK("queue_arguments", queue_call.cpu == 32 &&
                                 queue_call.queue == fixture->queue &&
                                 queue_call.work == &fixture->work &&
                                 queue_call.delay == 125);
  }
}

int main(void)
{
  struct workqueue_struct queue = { .marker = 0x1234 };
  struct charger_fixture fixture = { .queue = &queue };
  int result;

  _Static_assert(offsetof(struct charger_fixture, notifier) == 112,
                 "notifier offset must match stock callback");
  _Static_assert(offsetof(struct charger_fixture, queue) == 104,
                 "workqueue offset must match stock callback");

  reset_queue_call();
  result = syna_charger_notify_call(&fixture.notifier, 1, NULL);
  CHECK("nonzero_event_skips_data_and_queue", result == 0 && queue_call.count == 0);

  run_case(&fixture, "usb", 0, 1, "usb_queues_delayed_work");
  run_case(&fixture, "ac", 0, 1, "ac_queues_delayed_work");
  run_case(&fixture, "wireless", 0, 0, "unknown_name_does_not_queue");
  run_case(&fixture, "usbX", 0, 0, "usb_prefix_does_not_queue");
  run_case(&fixture, "a", 0, 0, "short_ac_prefix_does_not_queue");

  printf("SUMMARY passed=%u failed=%u\n", passed, failed);
  return failed ? 1 : 0;
}
