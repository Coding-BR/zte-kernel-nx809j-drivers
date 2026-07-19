#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;

#define static_assert(condition, ...) _Static_assert(condition, #condition)
#define barrier() __asm__ __volatile__("" : : : "memory")
#define OPTIMIZER_HIDE_VAR(var) __asm__("" : "=r"(var) : "0"(var))
#include "../../../curated/zte_tpd/zte_tpd_tcm_layout.h"

#define INVALID_HANDLE_LOG \
  "\x01" "3[error] %s: Invalid tcm device handle\n"
#define INVALID_IDENTIFY_LOG \
  "\x01" "3[error] %s: Invalid identify report stored\n"
#define INVALID_MAX_WRITE_LOG \
  "\x01" "3[error] %s: Invalid max write size from identify report\n"
#define INVALID_TIMINGS_LOG \
  "\x01" "3[error] %s: Invalid timing settings of product\n"
#define PREDICT_INFO_LOG \
  "\x01" "6[info ] %s: Predicted reading is %s\n"
#define DISPATCH_WARN_LOG \
  "\x01" "4[warn ] %s: The given code 0x%X may not belongs to report\n"
#define DISPATCH_INFO_LOG \
  "\x01" "6[info ] %s: Dispatcher for report 0x%02X is registered\n"

static unsigned int log_calls;
static const char *last_log_format;
static const char *last_log_function;
static const char *last_log_text;
static unsigned int last_log_code;
static const char *previous_log_format;
static const char *previous_log_function;
static unsigned int previous_log_code;

static unsigned int callback_calls;
static u8 callback_report_code;
static const u8 *callback_payload;
static u32 callback_length;
static void *callback_context;

static int printk(const char *format, ...)
{
  va_list arguments;

  previous_log_format = last_log_format;
  previous_log_function = last_log_function;
  previous_log_code = last_log_code;
  last_log_format = format;
  last_log_function = NULL;
  last_log_text = NULL;
  last_log_code = 0;
  log_calls++;

  va_start(arguments, format);
  last_log_function = va_arg(arguments, const char *);
  if (strcmp(format, PREDICT_INFO_LOG) == 0)
    last_log_text = va_arg(arguments, const char *);
  else if (strcmp(format, DISPATCH_WARN_LOG) == 0 ||
           strcmp(format, DISPATCH_INFO_LOG) == 0)
    last_log_code = (unsigned int)va_arg(arguments, int);
  va_end(arguments);
  return 0;
}

static int report_callback(u8 report_code, const u8 *payload, u32 length,
                           void *context)
{
  callback_calls++;
  callback_report_code = report_code;
  callback_payload = payload;
  callback_length = length;
  callback_context = context;
  return 73;
}

#include "../../../curated/zte_tpd/syna_tcm_v1_check_max_rw_size.c"
#include "../../../curated/zte_tpd/syna_tcm_v1_set_up_max_rw_size.c"
#include "../../../curated/zte_tpd/syna_tcm_config_timings.c"
#include "../../../curated/zte_tpd/syna_tcm_enable_predict_reading.c"
#include "../../../curated/zte_tpd/syna_tcm_set_report_dispatcher.c"

typedef int (*check_max_fn)(struct tcm_dev *);
typedef int (*set_up_max_fn)(struct tcm_dev *, u32, u32);
typedef int (*config_timings_fn)(struct tcm_dev *, struct tcm_timings *,
                                 u32, u32);
typedef int (*predict_reading_fn)(struct tcm_dev *, bool);
typedef int (*report_dispatcher_setter_fn)(struct tcm_dev *, u8,
                                           tcm_report_dispatcher_fn, void *);

_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_v1_check_max_rw_size), check_max_fn),
               "check max ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_v1_set_up_max_rw_size), set_up_max_fn),
               "set up max ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_config_timings), config_timings_fn),
               "config timings ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_enable_predict_reading),
                   predict_reading_fn),
               "predict reading ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_set_report_dispatcher),
                   report_dispatcher_setter_fn),
               "report dispatcher ABI");

#define REQUIRE(condition) do { \
  if (!(condition)) { \
    fprintf(stderr, "assertion failed at %s:%d: %s\n", \
            __FILE__, __LINE__, #condition); \
    return false; \
  } \
} while (0)

static void reset_state(struct tcm_dev *tcm)
{
  if (tcm)
    memset(tcm, 0, sizeof(*tcm));
  log_calls = 0;
  last_log_format = NULL;
  last_log_function = NULL;
  last_log_text = NULL;
  last_log_code = 0;
  previous_log_format = NULL;
  previous_log_function = NULL;
  previous_log_code = 0;
  callback_calls = 0;
  callback_report_code = 0;
  callback_payload = NULL;
  callback_length = 0;
  callback_context = NULL;
}

static bool verify_last_log(const char *format, const char *function)
{
  REQUIRE(last_log_format != NULL);
  REQUIRE(strcmp(last_log_format, format) == 0);
  REQUIRE(last_log_function != NULL);
  REQUIRE(strcmp(last_log_function, function) == 0);
  return true;
}

static bool test_signature_contract(void)
{
  return true;
}

static bool test_layout_contract(void)
{
  REQUIRE(offsetof(struct tcm_dev, max_read_size) == 0x38);
  REQUIRE(offsetof(struct tcm_dev, max_write_size) == 0x3c);
  REQUIRE(offsetof(struct tcm_dev, host_max_read_size) == 0x40);
  REQUIRE(offsetof(struct tcm_dev, host_max_write_size) == 0x44);
  REQUIRE(offsetof(struct tcm_dev, protocol_version) == 0x80);
  REQUIRE(offsetof(struct tcm_dev, identify_max_write_size) == 0x96);
  REQUIRE(offsetof(struct tcm_dev, timing_01e8) == 0x1e8);
  REQUIRE(offsetof(struct tcm_dev, timing_01ec) == 0x1ec);
  REQUIRE(offsetof(struct tcm_dev, timing_0208) == 0x208);
  REQUIRE(offsetof(struct tcm_dev, command_delay_ms) == 0x20c);
  REQUIRE(offsetof(struct tcm_dev, timing_0210) == 0x210);
  REQUIRE(offsetof(struct tcm_dev, timing_0214) == 0x214);
  REQUIRE(offsetof(struct tcm_dev, timing_0218) == 0x218);
  REQUIRE(offsetof(struct tcm_dev, predict_reading_enabled) == 0x37a);
  REQUIRE(offsetof(struct tcm_dev, predict_reading_offset) == 0x37c);
  REQUIRE(offsetof(struct tcm_dev, report_dispatchers) == 0x3d8);
  REQUIRE(sizeof(struct tcm_timings) == 0x28);
  REQUIRE(sizeof(struct tcm_report_dispatcher_slot) == 0x10);
  REQUIRE(sizeof(struct tcm_dev) == 0x23e8);
  return true;
}

static bool test_check_rejects_null(void)
{
  reset_state(NULL);
  REQUIRE(syna_tcm_v1_check_max_rw_size(NULL) == -241);
  REQUIRE(log_calls == 1);
  REQUIRE(verify_last_log(INVALID_HANDLE_LOG,
                          "syna_tcm_v1_check_max_rw_size"));
  return true;
}

static bool test_check_rejects_invalid_identify(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm);
  tcm.protocol_version = 2;
  REQUIRE(syna_tcm_v1_check_max_rw_size(&tcm) == -241);
  REQUIRE(verify_last_log(INVALID_IDENTIFY_LOG,
                          "syna_tcm_v1_check_max_rw_size"));

  reset_state(&tcm);
  tcm.protocol_version = 1;
  REQUIRE(syna_tcm_v1_check_max_rw_size(&tcm) == -241);
  REQUIRE(verify_last_log(INVALID_MAX_WRITE_LOG,
                          "syna_tcm_v1_check_max_rw_size"));
  return true;
}

static bool test_check_without_host_limit(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm);
  tcm.protocol_version = 1;
  tcm.identify_max_write_size = 800;
  tcm.max_read_size = 32;
  tcm.max_write_size = 900;
  tcm.host_max_read_size = 0;
  tcm.host_max_write_size = 64;
  REQUIRE(syna_tcm_v1_check_max_rw_size(&tcm) == 0);
  REQUIRE(tcm.max_read_size == 800);
  REQUIRE(tcm.max_write_size == 900);
  REQUIRE(log_calls == 0);
  return true;
}

static bool test_check_applies_host_caps(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm);
  tcm.protocol_version = 1;
  tcm.identify_max_write_size = 800;
  tcm.max_read_size = 1024;
  tcm.max_write_size = 900;
  tcm.host_max_read_size = 512;
  tcm.host_max_write_size = 600;
  REQUIRE(syna_tcm_v1_check_max_rw_size(&tcm) == 0);
  REQUIRE(tcm.max_read_size == 512);
  REQUIRE(tcm.max_write_size == 600);

  tcm.max_write_size = 500;
  REQUIRE(syna_tcm_v1_check_max_rw_size(&tcm) == 0);
  REQUIRE(tcm.max_write_size == 500);
  return true;
}

static bool test_setup_rejects_invalid_device(void)
{
  struct tcm_dev tcm;

  reset_state(NULL);
  REQUIRE(syna_tcm_v1_set_up_max_rw_size(NULL, 1, 2) == -241);
  REQUIRE(verify_last_log(INVALID_HANDLE_LOG,
                          "syna_tcm_v1_set_up_max_rw_size"));

  reset_state(&tcm);
  tcm.protocol_version = 0;
  REQUIRE(syna_tcm_v1_set_up_max_rw_size(&tcm, 1, 2) == -241);
  REQUIRE(verify_last_log(INVALID_IDENTIFY_LOG,
                          "syna_tcm_v1_set_up_max_rw_size"));
  return true;
}

static bool test_setup_identify_below_request(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm);
  tcm.protocol_version = 1;
  tcm.identify_max_write_size = 128;
  tcm.host_max_read_size = 64;
  tcm.host_max_write_size = 700;
  tcm.max_read_size = 99;
  tcm.max_write_size = 100;
  REQUIRE(syna_tcm_v1_set_up_max_rw_size(&tcm, 256, 900) == 0);
  REQUIRE(tcm.max_read_size == 99);
  REQUIRE(tcm.max_write_size == 700);
  return true;
}

static bool test_setup_without_host_limit(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm);
  tcm.protocol_version = 1;
  tcm.identify_max_write_size = 1024;
  tcm.host_max_read_size = 0;
  tcm.host_max_write_size = 128;
  REQUIRE(syna_tcm_v1_set_up_max_rw_size(&tcm, 512, 900) == 0);
  REQUIRE(tcm.max_read_size == 512);
  REQUIRE(tcm.max_write_size == 900);
  return true;
}

static bool test_setup_read_write_minima(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm);
  tcm.protocol_version = 1;
  tcm.identify_max_write_size = 1024;
  tcm.host_max_read_size = 256;
  tcm.host_max_write_size = 400;
  REQUIRE(syna_tcm_v1_set_up_max_rw_size(&tcm, 512, 900) == 0);
  REQUIRE(tcm.max_read_size == 256);
  REQUIRE(tcm.max_write_size == 400);

  tcm.identify_max_write_size = 600;
  tcm.host_max_read_size = 800;
  tcm.host_max_write_size = 1000;
  REQUIRE(syna_tcm_v1_set_up_max_rw_size(&tcm, 512, 700) == 0);
  REQUIRE(tcm.max_read_size == 512);
  REQUIRE(tcm.max_write_size == 700);
  return true;
}

static bool test_timings_rejects_missing_product(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm);
  REQUIRE(syna_tcm_config_timings(&tcm, NULL, 0, 0xffff) == -241);
  REQUIRE(verify_last_log(INVALID_TIMINGS_LOG, "syna_tcm_config_timings"));
  return true;
}

static bool test_timings_all_fields(void)
{
  struct tcm_dev tcm;
  struct tcm_timings timings = {
    .value_00 = 10,
    .value_04 = 20,
    .value_08 = 30,
    .value_0c = 40,
    .value_10 = 50,
    .value_20 = 60,
    .value_24 = 70,
  };

  reset_state(&tcm);
  REQUIRE(syna_tcm_config_timings(&tcm, &timings, 99, 0x30f) == 0);
  REQUIRE(tcm.timing_0208 == 10);
  REQUIRE(tcm.command_delay_ms == 20);
  REQUIRE(tcm.timing_0210 == 30);
  REQUIRE(tcm.timing_0214 == 40);
  REQUIRE(tcm.timing_0218 == 50);
  REQUIRE(tcm.timing_01e8 == 60);
  REQUIRE(tcm.timing_01ec == 70);
  return true;
}

static bool test_timings_defaults_and_masks(void)
{
  struct tcm_dev tcm;
  struct tcm_timings timings;

  reset_state(&tcm);
  memset(&timings, 0, sizeof(timings));
  REQUIRE(syna_tcm_config_timings(
              &tcm, &timings, 77, 1 | 2 | 0x100 | 0x200) == 0);
  REQUIRE(tcm.timing_0208 == 77);
  REQUIRE(tcm.command_delay_ms == 77);
  REQUIRE(tcm.timing_01e8 == 77);
  REQUIRE(tcm.timing_01ec == 77);
  REQUIRE(tcm.timing_0210 == 0);
  REQUIRE(tcm.timing_0214 == 0);
  REQUIRE(tcm.timing_0218 == 0);

  reset_state(&tcm);
  REQUIRE(syna_tcm_config_timings(&tcm, NULL, 66, 1 | 2) == 0);
  REQUIRE(tcm.timing_0208 == 66);
  REQUIRE(tcm.command_delay_ms == 66);
  return true;
}

static bool test_timings_zero_suppression(void)
{
  struct tcm_dev tcm;
  struct tcm_timings timings;

  reset_state(&tcm);
  memset(&timings, 0, sizeof(timings));
  tcm.timing_0210 = 1;
  tcm.timing_0214 = 2;
  tcm.timing_0218 = 3;
  REQUIRE(syna_tcm_config_timings(&tcm, &timings, 55, 4 | 8) == 0);
  REQUIRE(tcm.timing_0210 == 1);
  REQUIRE(tcm.timing_0214 == 2);
  REQUIRE(tcm.timing_0218 == 3);
  return true;
}

static bool test_predict_enable_disable(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm);
  tcm.predict_reading_offset = 99;
  REQUIRE(syna_tcm_enable_predict_reading(&tcm, true) == 0);
  REQUIRE(tcm.predict_reading_enabled == 1);
  REQUIRE(tcm.predict_reading_offset == 0);
  REQUIRE(verify_last_log(PREDICT_INFO_LOG,
                          "syna_tcm_enable_predict_reading"));
  REQUIRE(last_log_text != NULL && strcmp(last_log_text, "enabled") == 0);

  REQUIRE(syna_tcm_enable_predict_reading(&tcm, false) == 0);
  REQUIRE(tcm.predict_reading_enabled == 0);
  REQUIRE(last_log_text != NULL && strcmp(last_log_text, "disabled") == 0);
  REQUIRE(log_calls == 2);
  return true;
}

static bool test_predict_rejects_null(void)
{
  reset_state(NULL);
  REQUIRE(syna_tcm_enable_predict_reading(NULL, true) == -241);
  REQUIRE(verify_last_log(INVALID_HANDLE_LOG,
                          "syna_tcm_enable_predict_reading"));
  return true;
}

static bool test_dispatcher_all_slots(void)
{
  struct tcm_dev tcm;
  unsigned int index;

  reset_state(&tcm);
  for (index = 0; index < 256; index++) {
    REQUIRE(syna_tcm_set_report_dispatcher(
                &tcm, (u8)index, report_callback,
                (void *)(uintptr_t)(index + 1)) == 0);
  }
  for (index = 0; index < 256; index++) {
    REQUIRE(tcm.report_dispatchers[index].callback == report_callback);
    REQUIRE(tcm.report_dispatchers[index].callback_data ==
            (void *)(uintptr_t)(index + 1));
  }
  REQUIRE(log_calls == 272);
  return true;
}

static bool test_dispatcher_boundaries_and_logs(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm);
  REQUIRE(syna_tcm_set_report_dispatcher(
              &tcm, 0, report_callback, &tcm) == 0);
  REQUIRE(log_calls == 2);
  REQUIRE(previous_log_format != NULL &&
          strcmp(previous_log_format, DISPATCH_WARN_LOG) == 0);
  REQUIRE(strcmp(previous_log_function,
                 "syna_tcm_set_report_dispatcher") == 0);
  REQUIRE(previous_log_code == 0);
  REQUIRE(verify_last_log(DISPATCH_INFO_LOG,
                          "syna_tcm_set_report_dispatcher"));
  REQUIRE(last_log_code == 0);

  reset_state(&tcm);
  REQUIRE(syna_tcm_set_report_dispatcher(
              &tcm, 15, report_callback, &tcm) == 0);
  REQUIRE(log_calls == 2 && previous_log_code == 15 && last_log_code == 15);

  reset_state(&tcm);
  REQUIRE(syna_tcm_set_report_dispatcher(
              &tcm, 16, report_callback, &tcm) == 0);
  REQUIRE(log_calls == 1 && previous_log_format == NULL);
  REQUIRE(last_log_code == 16);

  reset_state(&tcm);
  REQUIRE(syna_tcm_set_report_dispatcher(
              &tcm, 255, report_callback, &tcm) == 0);
  REQUIRE(log_calls == 1 && last_log_code == 255);
  REQUIRE(tcm.report_dispatchers[255].callback == report_callback);
  return true;
}

static bool test_dispatcher_overwrite_and_callback(void)
{
  struct tcm_dev tcm;
  u8 payload[3] = {7, 8, 9};
  unsigned long first = 0x1111;
  unsigned long second = 0x2222;

  reset_state(&tcm);
  REQUIRE(syna_tcm_set_report_dispatcher(
              &tcm, 91, report_callback, &first) == 0);
  REQUIRE(syna_tcm_set_report_dispatcher(
              &tcm, 91, report_callback, &second) == 0);
  REQUIRE(tcm.report_dispatchers[90].callback == NULL);
  REQUIRE(tcm.report_dispatchers[91].callback_data == &second);
  REQUIRE(tcm.report_dispatchers[92].callback == NULL);
  REQUIRE(tcm.report_dispatchers[91].callback(
              91, payload, sizeof(payload),
              tcm.report_dispatchers[91].callback_data) == 73);
  REQUIRE(callback_calls == 1);
  REQUIRE(callback_report_code == 91);
  REQUIRE(callback_payload == payload);
  REQUIRE(callback_length == sizeof(payload));
  REQUIRE(callback_context == &second);

  REQUIRE(syna_tcm_set_report_dispatcher(&tcm, 91, NULL, NULL) == 0);
  REQUIRE(tcm.report_dispatchers[91].callback == NULL);
  REQUIRE(tcm.report_dispatchers[91].callback_data == NULL);
  return true;
}

static bool test_dispatcher_rejects_null(void)
{
  reset_state(NULL);
  REQUIRE(syna_tcm_set_report_dispatcher(
              NULL, 255, report_callback, NULL) == -241);
  REQUIRE(log_calls == 1);
  REQUIRE(verify_last_log(INVALID_HANDLE_LOG,
                          "syna_tcm_set_report_dispatcher"));
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
    {"layout_contract", test_layout_contract},
    {"check_rejects_null", test_check_rejects_null},
    {"check_rejects_invalid_identify", test_check_rejects_invalid_identify},
    {"check_without_host_limit", test_check_without_host_limit},
    {"check_applies_host_caps", test_check_applies_host_caps},
    {"setup_rejects_invalid_device", test_setup_rejects_invalid_device},
    {"setup_identify_below_request", test_setup_identify_below_request},
    {"setup_without_host_limit", test_setup_without_host_limit},
    {"setup_read_write_minima", test_setup_read_write_minima},
    {"timings_rejects_missing_product", test_timings_rejects_missing_product},
    {"timings_all_fields", test_timings_all_fields},
    {"timings_defaults_and_masks", test_timings_defaults_and_masks},
    {"timings_zero_suppression", test_timings_zero_suppression},
    {"predict_enable_disable", test_predict_enable_disable},
    {"predict_rejects_null", test_predict_rejects_null},
    {"dispatcher_all_slots", test_dispatcher_all_slots},
    {"dispatcher_boundaries_and_logs", test_dispatcher_boundaries_and_logs},
    {"dispatcher_overwrite_and_callback", test_dispatcher_overwrite_and_callback},
    {"dispatcher_rejects_null", test_dispatcher_rejects_null},
  };
  size_t index;

  for (index = 0; index < sizeof(tests) / sizeof(tests[0]); index++) {
    if (!tests[index].run()) {
      printf("FAIL %s\n", tests[index].name);
      return 1;
    }
    printf("PASS %s\n", tests[index].name);
  }

  printf("SUMMARY 20/20 passed\n");
  return 0;
}
