#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef uint32_t u32;

#define static_assert(condition, ...) _Static_assert(condition, #condition)
#include "../../../curated/zte_tpd/zte_tpd_tcm_layout.h"

static unsigned int log_calls;
static const char *last_log_format;
static const char *last_log_function;

static unsigned int custom_calls;
static u8 custom_entity;
static const u8 *custom_config;
static u32 *custom_config_offset;
static const u8 *custom_report;
static u32 *custom_report_offset;
static u32 custom_report_size;
static void *custom_context;

static unsigned int post_reset_calls;
static void *post_reset_context_seen;

static unsigned int data_calls;
static u8 data_report_code;
static const u8 *data_payload;
static u32 data_length;
static void *data_context;

static int printk(const char *format, ...)
{
  va_list arguments;

  log_calls++;
  last_log_format = format;
  va_start(arguments, format);
  last_log_function = va_arg(arguments, const char *);
  va_end(arguments);
  return 0;
}

static int custom_callback(u8 entity_code, const u8 *config_data,
                           u32 *config_offset, const u8 *report_data,
                           u32 *report_offset, u32 report_size,
                           void *callback_data)
{
  custom_calls++;
  custom_entity = entity_code;
  custom_config = config_data;
  custom_config_offset = config_offset;
  custom_report = report_data;
  custom_report_offset = report_offset;
  custom_report_size = report_size;
  custom_context = callback_data;
  return 37;
}

static int gesture_callback(u8 entity_code, const u8 *config_data,
                            u32 *config_offset, const u8 *report_data,
                            u32 *report_offset, u32 report_size,
                            void *callback_data)
{
  return custom_callback(entity_code, config_data, config_offset,
                         report_data, report_offset, report_size,
                         callback_data) + 4;
}

static int post_reset_callback(void *callback_data)
{
  post_reset_calls++;
  post_reset_context_seen = callback_data;
  return 43;
}

static int data_callback(u8 report_code, const u8 *payload, u32 length,
                         void *callback_data)
{
  data_calls++;
  data_report_code = report_code;
  data_payload = payload;
  data_length = length;
  data_context = callback_data;
  return 47;
}

#include "../../../curated/zte_tpd/syna_tcm_set_custom_touch_entity_callback.c"
#include "../../../curated/zte_tpd/syna_tcm_set_custom_gesture_callback.c"
#include "../../../curated/zte_tpd/syna_tcm_set_post_reset_callback.c"
#include "../../../curated/zte_tpd/syna_tcm_set_data_duplicator.c"
#include "../../../curated/zte_tpd/syna_tcm_clear_data_duplicator.c"

typedef int (*custom_setter_fn)(struct tcm_dev *,
                                tcm_custom_touch_callback_fn, void *);
typedef int (*post_reset_setter_fn)(struct tcm_dev *,
                                    tcm_post_reset_callback_fn, void *);
typedef int (*data_setter_fn)(struct tcm_dev *, u8,
                              tcm_data_duplicator_fn, void *);
typedef int (*data_clear_fn)(struct tcm_dev *);

_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_set_custom_touch_entity_callback),
                   custom_setter_fn),
               "custom touch setter ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_set_custom_gesture_callback),
                   custom_setter_fn),
               "custom gesture setter ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_set_post_reset_callback),
                   post_reset_setter_fn),
               "post reset setter ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_set_data_duplicator), data_setter_fn),
               "data duplicator setter ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_clear_data_duplicator), data_clear_fn),
               "data duplicator clear ABI");

#define REQUIRE(condition) do { \
  if (!(condition)) { \
    fprintf(stderr, "assertion failed at %s:%d: %s\n", \
            __FILE__, __LINE__, #condition); \
    return false; \
  } \
} while (0)

static void reset_state(struct tcm_dev *tcm)
{
  memset(tcm, 0, sizeof(*tcm));
  log_calls = 0;
  last_log_format = NULL;
  last_log_function = NULL;
  custom_calls = 0;
  custom_entity = 0;
  custom_config = NULL;
  custom_config_offset = NULL;
  custom_report = NULL;
  custom_report_offset = NULL;
  custom_report_size = 0;
  custom_context = NULL;
  post_reset_calls = 0;
  post_reset_context_seen = NULL;
  data_calls = 0;
  data_report_code = 0;
  data_payload = NULL;
  data_length = 0;
  data_context = NULL;
}

static bool test_signature_contract(void)
{
  return true;
}

static bool test_layout_contract(void)
{
  REQUIRE(offsetof(struct tcm_dev, custom_touch_callback_data) == 0x3b8);
  REQUIRE(offsetof(struct tcm_dev, custom_touch_callback) == 0x3c0);
  REQUIRE(offsetof(struct tcm_dev, custom_gesture_callback_data) == 0x3c8);
  REQUIRE(offsetof(struct tcm_dev, custom_gesture_callback) == 0x3d0);
  REQUIRE(offsetof(struct tcm_dev, data_duplicators) == 0x13d8);
  REQUIRE(offsetof(struct tcm_dev, post_reset_context) == 0x23d8);
  REQUIRE(offsetof(struct tcm_dev, post_reset_callback) == 0x23e0);
  REQUIRE(sizeof(struct tcm_dev) == 0x23e8);
  return true;
}

static bool test_custom_touch_storage(void)
{
  struct tcm_dev tcm;
  unsigned long context = 0x1122;

  reset_state(&tcm);
  REQUIRE(syna_tcm_set_custom_touch_entity_callback(
              &tcm, custom_callback, &context) == 0);
  REQUIRE(tcm.custom_touch_callback == custom_callback);
  REQUIRE(tcm.custom_touch_callback_data == &context);
  REQUIRE(tcm.custom_gesture_callback == NULL);
  return true;
}

static bool test_custom_gesture_storage(void)
{
  struct tcm_dev tcm;
  unsigned long context = 0x3344;

  reset_state(&tcm);
  REQUIRE(syna_tcm_set_custom_gesture_callback(
              &tcm, gesture_callback, &context) == 0);
  REQUIRE(tcm.custom_gesture_callback == gesture_callback);
  REQUIRE(tcm.custom_gesture_callback_data == &context);
  REQUIRE(tcm.custom_touch_callback == NULL);
  return true;
}

static bool test_post_reset_storage(void)
{
  struct tcm_dev tcm;
  unsigned long context = 0x5566;

  reset_state(&tcm);
  REQUIRE(syna_tcm_set_post_reset_callback(
              &tcm, post_reset_callback, &context) == 0);
  REQUIRE(tcm.post_reset_callback == post_reset_callback);
  REQUIRE(tcm.post_reset_context == &context);
  return true;
}

static bool test_data_slot_zero(void)
{
  struct tcm_dev tcm;
  unsigned long context = 0x7788;

  reset_state(&tcm);
  REQUIRE(syna_tcm_set_data_duplicator(
              &tcm, 0, data_callback, &context) == 0);
  REQUIRE(tcm.data_duplicators[0].callback == data_callback);
  REQUIRE(tcm.data_duplicators[0].callback_data == &context);
  REQUIRE(tcm.data_duplicators[1].callback == NULL);
  return true;
}

static bool test_data_slot_255(void)
{
  struct tcm_dev tcm;
  unsigned long context = 0x99aa;

  reset_state(&tcm);
  REQUIRE(syna_tcm_set_data_duplicator(
              &tcm, 255, data_callback, &context) == 0);
  REQUIRE(tcm.data_duplicators[255].callback == data_callback);
  REQUIRE(tcm.data_duplicators[255].callback_data == &context);
  REQUIRE(tcm.data_duplicators[254].callback == NULL);
  REQUIRE(tcm.post_reset_context == NULL);
  return true;
}

static bool test_slot_overwrite_isolated(void)
{
  struct tcm_dev tcm;
  unsigned long first = 1;
  unsigned long second = 2;

  reset_state(&tcm);
  REQUIRE(syna_tcm_set_data_duplicator(
              &tcm, 91, data_callback, &first) == 0);
  REQUIRE(syna_tcm_set_data_duplicator(
              &tcm, 91, data_callback, &second) == 0);
  REQUIRE(tcm.data_duplicators[91].callback_data == &second);
  REQUIRE(tcm.data_duplicators[90].callback == NULL);
  REQUIRE(tcm.data_duplicators[92].callback == NULL);
  return true;
}

static bool test_callback_invocation(void)
{
  struct tcm_dev tcm;
  u8 config[3] = {1, 2, 3};
  u8 report[4] = {4, 5, 6, 7};
  u32 config_offset = 9;
  u32 report_offset = 11;
  unsigned long custom_cookie = 0x1234;
  unsigned long post_cookie = 0x5678;
  unsigned long data_cookie = 0x9abc;

  reset_state(&tcm);
  REQUIRE(syna_tcm_set_custom_touch_entity_callback(
              &tcm, custom_callback, &custom_cookie) == 0);
  REQUIRE(syna_tcm_set_post_reset_callback(
              &tcm, post_reset_callback, &post_cookie) == 0);
  REQUIRE(syna_tcm_set_data_duplicator(
              &tcm, 42, data_callback, &data_cookie) == 0);

  REQUIRE(tcm.custom_touch_callback(
              7, config, &config_offset, report, &report_offset,
              sizeof(report), tcm.custom_touch_callback_data) == 37);
  REQUIRE(custom_calls == 1);
  REQUIRE(custom_entity == 7);
  REQUIRE(custom_config == config);
  REQUIRE(custom_config_offset == &config_offset);
  REQUIRE(custom_report == report);
  REQUIRE(custom_report_offset == &report_offset);
  REQUIRE(custom_report_size == sizeof(report));
  REQUIRE(custom_context == &custom_cookie);

  REQUIRE(tcm.post_reset_callback(tcm.post_reset_context) == 43);
  REQUIRE(post_reset_calls == 1);
  REQUIRE(post_reset_context_seen == &post_cookie);

  REQUIRE(tcm.data_duplicators[42].callback(
              42, report, sizeof(report),
              tcm.data_duplicators[42].callback_data) == 47);
  REQUIRE(data_calls == 1);
  REQUIRE(data_report_code == 42);
  REQUIRE(data_payload == report);
  REQUIRE(data_length == sizeof(report));
  REQUIRE(data_context == &data_cookie);
  return true;
}

static bool test_clear_all_slots(void)
{
  struct tcm_dev tcm;
  unsigned int index;

  reset_state(&tcm);
  for (index = 0; index < 256; index++) {
    tcm.data_duplicators[index].callback = data_callback;
    tcm.data_duplicators[index].callback_data =
        (void *)(uintptr_t)(index + 1);
  }
  REQUIRE(syna_tcm_clear_data_duplicator(&tcm) == 0);
  for (index = 0; index < 256; index++) {
    REQUIRE(tcm.data_duplicators[index].callback == NULL);
    REQUIRE(tcm.data_duplicators[index].callback_data == NULL);
  }
  return true;
}

static bool test_clear_preserves_neighbors(void)
{
  struct tcm_dev tcm;
  unsigned long pre_cookie = 0x1111;
  unsigned long post_cookie = 0x2222;

  reset_state(&tcm);
  tcm.custom_gesture_callback = gesture_callback;
  tcm.custom_gesture_callback_data = &pre_cookie;
  tcm.reserved_03d8[0] = 0x5a;
  tcm.reserved_03d8[sizeof(tcm.reserved_03d8) - 1] = 0xa5;
  tcm.data_duplicators[17].callback = data_callback;
  tcm.data_duplicators[17].callback_data = &pre_cookie;
  tcm.post_reset_context = &post_cookie;
  tcm.post_reset_callback = post_reset_callback;

  REQUIRE(syna_tcm_clear_data_duplicator(&tcm) == 0);
  REQUIRE(tcm.custom_gesture_callback == gesture_callback);
  REQUIRE(tcm.custom_gesture_callback_data == &pre_cookie);
  REQUIRE(tcm.reserved_03d8[0] == 0x5a);
  REQUIRE(tcm.reserved_03d8[sizeof(tcm.reserved_03d8) - 1] == 0xa5);
  REQUIRE(tcm.post_reset_context == &post_cookie);
  REQUIRE(tcm.post_reset_callback == post_reset_callback);
  return true;
}

static bool verify_last_log(const char *function_name)
{
  REQUIRE(last_log_format != NULL);
  REQUIRE(strcmp(last_log_format,
                 "\x01" "3[error] %s: Invalid tcm device handle\n") == 0);
  REQUIRE(last_log_function != NULL);
  REQUIRE(strcmp(last_log_function, function_name) == 0);
  return true;
}

static bool test_null_rejection_and_logs(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm);
  REQUIRE(syna_tcm_set_custom_touch_entity_callback(
              NULL, custom_callback, &tcm) == -241);
  REQUIRE(verify_last_log("syna_tcm_set_custom_touch_entity_callback"));
  REQUIRE(syna_tcm_set_custom_gesture_callback(
              NULL, gesture_callback, &tcm) == -241);
  REQUIRE(verify_last_log("syna_tcm_set_custom_gesture_callback"));
  REQUIRE(syna_tcm_set_post_reset_callback(
              NULL, post_reset_callback, &tcm) == -241);
  REQUIRE(verify_last_log("syna_tcm_set_post_reset_callback"));
  REQUIRE(syna_tcm_set_data_duplicator(
              NULL, 255, data_callback, &tcm) == -241);
  REQUIRE(verify_last_log("syna_tcm_set_data_duplicator"));
  REQUIRE(syna_tcm_clear_data_duplicator(NULL) == -241);
  REQUIRE(verify_last_log("syna_tcm_clear_data_duplicator"));
  REQUIRE(log_calls == 5);
  return true;
}

static bool test_null_callbacks_are_stored(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm);
  REQUIRE(syna_tcm_set_custom_touch_entity_callback(
              &tcm, NULL, NULL) == 0);
  REQUIRE(syna_tcm_set_custom_gesture_callback(&tcm, NULL, NULL) == 0);
  REQUIRE(syna_tcm_set_post_reset_callback(&tcm, NULL, NULL) == 0);
  REQUIRE(syna_tcm_set_data_duplicator(&tcm, 8, NULL, NULL) == 0);
  REQUIRE(tcm.custom_touch_callback == NULL);
  REQUIRE(tcm.custom_gesture_callback == NULL);
  REQUIRE(tcm.post_reset_callback == NULL);
  REQUIRE(tcm.data_duplicators[8].callback == NULL);
  REQUIRE(log_calls == 0);
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
    {"custom_touch_storage", test_custom_touch_storage},
    {"custom_gesture_storage", test_custom_gesture_storage},
    {"post_reset_storage", test_post_reset_storage},
    {"data_slot_zero", test_data_slot_zero},
    {"data_slot_255", test_data_slot_255},
    {"slot_overwrite_isolated", test_slot_overwrite_isolated},
    {"callback_invocation", test_callback_invocation},
    {"clear_all_slots", test_clear_all_slots},
    {"clear_preserves_neighbors", test_clear_preserves_neighbors},
    {"null_rejection_and_logs", test_null_rejection_and_logs},
    {"null_callbacks_are_stored", test_null_callbacks_are_stored},
  };
  size_t index;

  for (index = 0; index < sizeof(tests) / sizeof(tests[0]); index++) {
    if (!tests[index].run()) {
      printf("FAIL %s\n", tests[index].name);
      return 1;
    }
    printf("PASS %s\n", tests[index].name);
  }

  printf("SUMMARY 13/13 passed\n");
  return 0;
}
