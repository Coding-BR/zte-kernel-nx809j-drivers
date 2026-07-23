#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define _DEFS_H
#define __user

typedef int32_t _DWORD;
typedef int64_t __int64;

struct file {
  uint8_t reserved_0000[0x20];
  void *driver_data;
};

struct mutex {
  uint64_t opaque;
};

struct wait_queue_head {
  uint64_t opaque;
};

struct wait_queue_entry {
  uint64_t opaque[5];
};

_Static_assert(offsetof(struct file, driver_data) == 0x20,
               "stock file context offset");
_Static_assert(sizeof(struct wait_queue_entry) == 0x28,
               "stock wait entry size");

#define CMD_WAIT 0xc0047001U
#define CMD_SIGNAL 0xc0047002U
#define CMD_REPORT_RATE 0xc0047003U
#define CONTEXT_WORDS (0x600U / sizeof(uint32_t))

struct tpd_ioctl_context {
  _Alignas(8) uint32_t words[CONTEXT_WORDS];
};

static struct tpd_ioctl_context context;
static struct file file_fixture;
static unsigned long copy_residual;
static unsigned int copy_calls;
static unsigned int lock_calls;
static unsigned int unlock_calls;
static unsigned int init_wait_calls;
static unsigned int prepare_calls;
static unsigned int schedule_calls;
static unsigned int finish_wait_calls;
static long prepare_results[4];
static bool set_ready_on_prepare[4];
static bool set_ready_on_schedule;
static void *copy_destination;
static const void *copy_source;
static unsigned long copy_length;
static struct mutex *last_mutex;
static struct wait_queue_head *last_wait_head;
static struct wait_queue_entry *last_wait_entry;

static void mutex_lock(struct mutex *mutex)
{
  lock_calls++;
  last_mutex = mutex;
}

static void mutex_unlock(struct mutex *mutex)
{
  unlock_calls++;
  last_mutex = mutex;
}

static unsigned long copy_to_user(void *destination, const void *source,
                                  unsigned long length)
{
  copy_calls++;
  copy_destination = destination;
  copy_source = source;
  copy_length = length;
  if (!copy_residual && destination)
    memcpy(destination, source, length);
  return copy_residual;
}

static void init_wait_entry(struct wait_queue_entry *entry, int flags)
{
  (void)flags;
  init_wait_calls++;
  last_wait_entry = entry;
}

static long prepare_to_wait_event(struct wait_queue_head *head,
                                  struct wait_queue_entry *entry, int state)
{
  unsigned int index = prepare_calls++;

  (void)state;
  last_wait_head = head;
  last_wait_entry = entry;
  if (index < 4 && set_ready_on_prepare[index])
    context.words[282] = 1;
  return index < 4 ? prepare_results[index] : -99;
}

static void schedule(void)
{
  schedule_calls++;
  if (set_ready_on_schedule)
    context.words[282] = 1;
}

static void finish_wait(struct wait_queue_head *head,
                        struct wait_queue_entry *entry)
{
  finish_wait_calls++;
  last_wait_head = head;
  last_wait_entry = entry;
}

#include "../../../curated/zte_tpd/syna_ioctl.c"

typedef long (*ioctl_fn)(struct file *file, unsigned int cmd,
                         unsigned long arg);

_Static_assert(__builtin_types_compatible_p(typeof(&syna_ioctl), ioctl_fn),
               "syna_ioctl ABI");

#define REQUIRE(condition) do { \
  if (!(condition)) { \
    fprintf(stderr, "%s:%d: requirement failed: %s\n", \
            __func__, __LINE__, #condition); \
    return false; \
  } \
} while (0)

static void reset_fixture(void)
{
  memset(&context, 0, sizeof(context));
  memset(&file_fixture, 0, sizeof(file_fixture));
  memset(prepare_results, 0, sizeof(prepare_results));
  memset(set_ready_on_prepare, 0, sizeof(set_ready_on_prepare));
  file_fixture.driver_data = context.words;
  copy_residual = 0;
  copy_calls = 0;
  lock_calls = 0;
  unlock_calls = 0;
  init_wait_calls = 0;
  prepare_calls = 0;
  schedule_calls = 0;
  finish_wait_calls = 0;
  set_ready_on_schedule = false;
  copy_destination = NULL;
  copy_source = NULL;
  copy_length = 0;
  last_mutex = NULL;
  last_wait_head = NULL;
  last_wait_entry = NULL;
}

static bool test_signature_contract(void)
{
  return true;
}

static bool test_unknown_command(void)
{
  reset_fixture();
  REQUIRE(syna_ioctl(&file_fixture, 0x12345678U, 0) == -25);
  REQUIRE(copy_calls == 0 && lock_calls == 0 && prepare_calls == 0);
  return true;
}

static bool test_wait_disabled(void)
{
  reset_fixture();
  REQUIRE(syna_ioctl(&file_fixture, CMD_WAIT, 0) == -11);
  REQUIRE(init_wait_calls == 0 && prepare_calls == 0);
  REQUIRE(context.words[282] == 0);
  return true;
}

static bool test_wait_already_ready(void)
{
  reset_fixture();
  context.words[376] = 1;
  context.words[282] = 7;
  REQUIRE(syna_ioctl(&file_fixture, CMD_WAIT, 0) == 0);
  REQUIRE(context.words[282] == 0);
  REQUIRE(init_wait_calls == 0 && prepare_calls == 0);
  return true;
}

static bool test_wait_prepare_wakes(void)
{
  reset_fixture();
  context.words[376] = 1;
  set_ready_on_prepare[0] = true;
  REQUIRE(syna_ioctl(&file_fixture, CMD_WAIT, 0) == 0);
  REQUIRE(init_wait_calls == 1 && prepare_calls == 1);
  REQUIRE(schedule_calls == 0 && finish_wait_calls == 1);
  REQUIRE(last_wait_head == (struct wait_queue_head *)&context.words[274]);
  REQUIRE(last_wait_entry != NULL && context.words[282] == 0);
  return true;
}

static bool test_wait_interrupted(void)
{
  reset_fixture();
  context.words[376] = 1;
  prepare_results[0] = -512;
  REQUIRE(syna_ioctl(&file_fixture, CMD_WAIT, 0) == 0);
  REQUIRE(init_wait_calls == 1 && prepare_calls == 1);
  REQUIRE(schedule_calls == 0 && finish_wait_calls == 0);
  REQUIRE(context.words[282] == 0);
  return true;
}

static bool test_wait_schedule_then_wakes(void)
{
  reset_fixture();
  context.words[376] = 1;
  set_ready_on_schedule = true;
  REQUIRE(syna_ioctl(&file_fixture, CMD_WAIT, 0) == 0);
  REQUIRE(init_wait_calls == 1 && prepare_calls == 2);
  REQUIRE(schedule_calls == 1 && finish_wait_calls == 1);
  REQUIRE(context.words[282] == 0);
  return true;
}

static bool test_copy_signal(void)
{
  uint32_t output = 0;

  reset_fixture();
  context.words[376] = 0x13572468U;
  REQUIRE(syna_ioctl(&file_fixture, CMD_SIGNAL,
                     (unsigned long)&output) == 0);
  REQUIRE(output == 0x13572468U);
  REQUIRE(copy_calls == 1 && copy_destination == &output);
  REQUIRE(copy_source != NULL && copy_length == sizeof(output));
  REQUIRE(lock_calls == 1 && unlock_calls == 1);
  REQUIRE(last_mutex == (struct mutex *)&context.words[284]);
  return true;
}

static bool test_copy_report_rate(void)
{
  uint32_t output = 0;

  reset_fixture();
  context.words[270] = 960;
  REQUIRE(syna_ioctl(&file_fixture, CMD_REPORT_RATE,
                     (unsigned long)&output) == 0);
  REQUIRE(output == 960 && copy_calls == 1);
  REQUIRE(lock_calls == 1 && unlock_calls == 1);
  return true;
}

static bool test_copy_failure_unlocks(void)
{
  uint32_t output = 0xa5a5a5a5U;

  reset_fixture();
  context.words[376] = 42;
  copy_residual = 4;
  REQUIRE(syna_ioctl(&file_fixture, CMD_SIGNAL,
                     (unsigned long)&output) == -14);
  REQUIRE(output == 0xa5a5a5a5U);
  REQUIRE(copy_calls == 1 && lock_calls == 1 && unlock_calls == 1);

  reset_fixture();
  context.words[270] = 144;
  copy_residual = 1;
  REQUIRE(syna_ioctl(&file_fixture, CMD_REPORT_RATE,
                     (unsigned long)&output) == -14);
  REQUIRE(copy_calls == 1 && lock_calls == 1 && unlock_calls == 1);
  return true;
}

struct test_case {
  const char *name;
  bool (*run)(void);
};

int main(void)
{
  static const struct test_case tests[] = {
    {"signature_contract", test_signature_contract},
    {"unknown_command", test_unknown_command},
    {"wait_disabled", test_wait_disabled},
    {"wait_already_ready", test_wait_already_ready},
    {"wait_prepare_wakes", test_wait_prepare_wakes},
    {"wait_interrupted", test_wait_interrupted},
    {"wait_schedule_then_wakes", test_wait_schedule_then_wakes},
    {"copy_signal", test_copy_signal},
    {"copy_report_rate", test_copy_report_rate},
    {"copy_failure_unlocks", test_copy_failure_unlocks},
  };
  unsigned int passed = 0;

  for (unsigned int index = 0; index < sizeof(tests) / sizeof(tests[0]); index++) {
    if (!tests[index].run()) {
      printf("FAIL %s\n", tests[index].name);
      continue;
    }
    printf("PASS %s\n", tests[index].name);
    passed++;
  }

  printf("SUMMARY %u/%zu\n", passed, sizeof(tests) / sizeof(tests[0]));
  return passed == sizeof(tests) / sizeof(tests[0]) ? 0 : 1;
}
