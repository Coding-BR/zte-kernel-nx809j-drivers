#include <limits.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;

struct ztp_device;
extern int tpd_set_screen_off_awake(struct ztp_device *cdev, int value);

uint32_t is_screen_off_awake_mode;
const char unk_3B5E0[] = "\0013[error] %s: error, change set in suspend!";

struct fixture {
  unsigned char client[0x1000] __attribute__((aligned(8)));
  unsigned char context[0x800] __attribute__((aligned(8)));
  uint32_t global;
};

struct call_trace {
  unsigned int calls;
  const char *format;
  const char *name;
  int logger_result;
};

static struct call_trace candidate_trace;
static int logger_result;
static int checks;

int printk(const char *format, ...)
{
  va_list arguments;

  va_start(arguments, format);
  candidate_trace.calls++;
  candidate_trace.format = format;
  candidate_trace.name = va_arg(arguments, const char *);
  candidate_trace.logger_result = logger_result;
  va_end(arguments);
  return logger_result;
}

#ifdef TPD_SET_SCREEN_OFF_AWAKE_SOURCE
#include TPD_SET_SCREEN_OFF_AWAKE_SOURCE
#else
#include "../../../reconstructed/zte_tpd/tpd_set_screen_off_awake.c"
#endif

static int expect_int(const char *name, long long actual, long long expected)
{
  ++checks;
  if (actual != expected) {
    printf("FAIL %s actual=%lld expected=%lld\n", name, actual, expected);
    return 0;
  }
  return 1;
}

static int expect_string(const char *name, const char *actual,
                         const char *expected)
{
  ++checks;
  if ((actual == NULL) != (expected == NULL) ||
      (actual != NULL && strcmp(actual, expected) != 0)) {
    printf("FAIL %s actual=%s expected=%s\n", name,
           actual == NULL ? "<null>" : actual,
           expected == NULL ? "<null>" : expected);
    return 0;
  }
  return 1;
}

static int expect_bytes(const char *name, const unsigned char *actual,
                        const unsigned char *expected, size_t size,
                        size_t ignored_offset, size_t ignored_size)
{
  size_t index;

  ++checks;
  for (index = 0; index < size; ++index) {
    if (index >= ignored_offset && index - ignored_offset < ignored_size)
      continue;
    if (actual[index] != expected[index]) {
      printf("FAIL %s byte[%zu] actual=0x%02x expected=0x%02x\n",
             name, index, actual[index], expected[index]);
      return 0;
    }
  }
  return 1;
}

static void initialize_fixture(struct fixture *fixture, uint32_t mode)
{
  uintptr_t context_address;

  memset(fixture, 0xa5, sizeof(*fixture));
  memset(fixture->context, 0x5a, sizeof(fixture->context));
  context_address = (uintptr_t)fixture->context;
  memcpy(fixture->client + 0xdb8, &context_address,
         sizeof(context_address));
  memcpy(fixture->context + 0x57c, &mode, sizeof(mode));
  fixture->global = 0x33333333;
}

/* Independent oracle transcribed from stock Assembly/P-Code effects. */
static int stock_model(struct fixture *fixture, uint32_t requested,
                       int configured_logger_result,
                       struct call_trace *trace)
{
  uintptr_t context_address;
  unsigned char *context;
  uint32_t mode;

  memcpy(&context_address, fixture->client + 0xdb8,
         sizeof(context_address));
  context = (unsigned char *)context_address;
  memcpy(&mode, context + 0x57c, sizeof(mode));
  memcpy(context + 0x5f4, &requested, sizeof(requested));
  if (mode == 1) {
    memcpy(context + 0x5f0, &requested, sizeof(requested));
    fixture->global = requested;
  } else {
    trace->calls = 1;
    trace->format = unk_3B5E0;
    trace->name = "tpd_set_screen_off_awake";
    trace->logger_result = configured_logger_result;
  }
  return 0;
}

int main(void)
{
  static const uint32_t modes[] = {0, 1, 2, UINT32_MAX};
  static const uint32_t requested_values[] = {
    0, 1, UINT32_MAX, 0x12345678, (uint32_t)INT_MIN, (uint32_t)INT_MAX
  };
  static const int logger_results[] = {0, -5, INT_MAX};
  const size_t client_context_pointer_offset = 0xdb8;
  struct fixture stock;
  struct fixture candidate;
  struct call_trace stock_trace;
  int stock_return;
  int candidate_return;
  size_t mode_index;
  size_t value_index;
  size_t logger_index;
  unsigned int cases = 0;

  for (mode_index = 0; mode_index < sizeof(modes) / sizeof(modes[0]);
       ++mode_index) {
    for (value_index = 0;
         value_index < sizeof(requested_values) / sizeof(requested_values[0]);
         ++value_index) {
      for (logger_index = 0;
           logger_index < sizeof(logger_results) / sizeof(logger_results[0]);
           ++logger_index) {
        memset(&stock_trace, 0, sizeof(stock_trace));
        stock_trace.logger_result = 0x5a5a5a5a;
        initialize_fixture(&stock, modes[mode_index]);
        initialize_fixture(&candidate, modes[mode_index]);
        stock_return = stock_model(&stock, requested_values[value_index],
                                   logger_results[logger_index], &stock_trace);

        logger_result = logger_results[logger_index];
        memset(&candidate_trace, 0, sizeof(candidate_trace));
        candidate_trace.logger_result = 0x5a5a5a5a;
        is_screen_off_awake_mode = candidate.global;
        candidate_return = tpd_set_screen_off_awake(
            (struct ztp_device *)candidate.client,
            (int)(int32_t)requested_values[value_index]);
        candidate.global = is_screen_off_awake_mode;

        if (!expect_int("return", candidate_return, stock_return) ||
            !expect_bytes("client memory", candidate.client, stock.client,
                          sizeof(candidate.client),
                          client_context_pointer_offset,
                          sizeof(uintptr_t)) ||
            !expect_bytes("context memory", candidate.context, stock.context,
                          sizeof(candidate.context), 0, 0) ||
            !expect_int("global", candidate.global, stock.global) ||
            !expect_int("printk call count", candidate_trace.calls,
                        stock_trace.calls) ||
            !expect_int("printk format pointer",
                        candidate_trace.format == stock_trace.format, 1) ||
            !expect_string("printk name", candidate_trace.name,
                           stock_trace.name) ||
            !expect_int("printk return observation",
                        candidate_trace.logger_result,
                        stock_trace.logger_result))
          return 1;
        ++cases;
      }
    }
  }

  printf("PASS tpd_set_screen_off_awake relational contract: %u cases, %d checks\n",
         cases, checks);
  return 0;
}
