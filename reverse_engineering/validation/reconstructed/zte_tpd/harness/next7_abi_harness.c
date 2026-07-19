#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef long long __int64;

#define static_assert(condition, ...) _Static_assert(condition, #condition)
#include "../../../curated/zte_tpd/zte_tpd_tcm_layout.h"

struct mutex {
  u8 opaque[0x30];
};

#define INVALID_HANDLE_LOG \
  "\x01" "3[error] %s: Invalid tcm device handle\n"
#define INVALID_BOOT_MODE_LOG \
  "\x01" "3[error] %s: Device is not in bootloader mode, mode: %x\n"
#define INVALID_APP_MODE_LOG \
  "\x01" "3[error] %s: Device is not in application fw mode, mode: %x\n"
#define POLLING_LOG \
  "\x01" "5[info ] %s: No support of IRQ control, use polling mode instead\n"
#define SEND_FAILURE_LOG \
  "\x01" "3[error] %s: Fail to send command 0x%02x\n"
#define BALANCE_LOG \
  "\x01" "3[error] %s: Buffer access out-of balance, %d\n"
#define INVALID_SIZE_LOG \
  "\x01" "3[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n"
#define BOOT_COPY_LOG \
  "\x01" "3[error] %s: Fail to copy boot info\n"
#define APP_COPY_LOG \
  "\x01" "3[error] %s: Fail to copy application info\n"
#define FEATURES_COPY_LOG \
  "\x01" "3[error] %s: Fail to copy features_info to caller\n"
#define IDENTIFY_COPY_LOG \
  "\x01" "3[error] %s: Fail to copy identify info to caller\n"
#define BAD_APP_LOG \
  "\x01" "3[error] %s: Bad application firmware, status: 0x%x\n"
#define INCORRECT_APP_LOG \
  "\x01" "3[error] %s: Incorrect application status, 0x%x\n"
#define IDENTIFY_INFO_LOG \
  "\x01" "6[info ] %s: TCM Fw mode: 0x%02x, TCM ver.: %d\n"

static unsigned int log_calls;
static const char *last_log_format;
static const char *last_log_function;
static unsigned int last_log_values[3];

static unsigned int write_calls;
static struct tcm_dev *last_write_tcm;
static u8 last_write_command;
static u8 *last_write_payload;
static u32 last_write_length;
static u8 *last_write_response_code;
static u32 last_write_delay;
static int write_result;

static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static struct mutex *last_mutex_lock;
static struct mutex *last_mutex_unlock;
static unsigned int helper_unlock_calls;

static int printk(const char *format, ...)
{
  va_list arguments;

  last_log_format = format;
  last_log_function = NULL;
  memset(last_log_values, 0, sizeof(last_log_values));
  log_calls++;

  va_start(arguments, format);
  last_log_function = va_arg(arguments, const char *);
  if (strcmp(format, INVALID_BOOT_MODE_LOG) == 0 ||
      strcmp(format, INVALID_APP_MODE_LOG) == 0 ||
      strcmp(format, SEND_FAILURE_LOG) == 0 ||
      strcmp(format, BALANCE_LOG) == 0 ||
      strcmp(format, BAD_APP_LOG) == 0 ||
      strcmp(format, INCORRECT_APP_LOG) == 0) {
    last_log_values[0] = va_arg(arguments, unsigned int);
  } else if (strcmp(format, INVALID_SIZE_LOG) == 0) {
    last_log_values[0] = va_arg(arguments, unsigned int);
    last_log_values[1] = va_arg(arguments, unsigned int);
    last_log_values[2] = va_arg(arguments, unsigned int);
  } else if (strcmp(format, IDENTIFY_INFO_LOG) == 0) {
    last_log_values[0] = va_arg(arguments, unsigned int);
    last_log_values[1] = va_arg(arguments, unsigned int);
  }
  va_end(arguments);
  return 0;
}

static void mutex_lock(struct mutex *lock)
{
  mutex_lock_calls++;
  last_mutex_lock = lock;
}

static void mutex_unlock(struct mutex *lock)
{
  mutex_unlock_calls++;
  last_mutex_unlock = lock;
}

static int mock_write_message(struct tcm_dev *tcm, u8 command,
                              u8 *payload, u32 length,
                              u8 *response_code, u32 delay_ms)
{
  write_calls++;
  last_write_tcm = tcm;
  last_write_command = command;
  last_write_payload = payload;
  last_write_length = length;
  last_write_response_code = response_code;
  last_write_delay = delay_ms;
  return write_result;
}

static __int64 syna_tcm_buf_unlock(__int64 buffer)
{
  struct tcm_response_buffer *response =
      (struct tcm_response_buffer *)(uintptr_t)buffer;

  helper_unlock_calls++;
  if (response->lock_depth == 1) {
    response->lock_depth = 0;
  } else {
    printk(BALANCE_LOG, "syna_tcm_buf_unlock", response->lock_depth);
    response->lock_depth--;
  }
  mutex_unlock((struct mutex *)response->mutex);
  return 0;
}

#include "../../../curated/zte_tpd/syna_tcm_get_boot_info.c"
#include "../../../curated/zte_tpd/syna_tcm_get_app_info.c"
#include "../../../curated/zte_tpd/syna_tcm_get_features.c"
#include "../../../curated/zte_tpd/syna_tcm_identify.c"

typedef int (*boot_info_fn)(struct tcm_dev *, struct tcm_boot_info *, u32);
typedef int (*app_info_fn)(struct tcm_dev *, struct tcm_application_info *, u32);
typedef int (*features_fn)(struct tcm_dev *, struct tcm_features_info *, u32);
typedef int (*identify_fn)(struct tcm_dev *,
                           struct tcm_identification_info *, u32);

_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_get_boot_info), boot_info_fn),
               "boot info ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_get_app_info), app_info_fn),
               "application info ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_get_features), features_fn),
               "features ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_identify), identify_fn),
               "identify ABI");

#define REQUIRE(condition) do { \
  if (!(condition)) { \
    fprintf(stderr, "assertion failed at %s:%d: %s\n", \
            __FILE__, __LINE__, #condition); \
    return false; \
  } \
} while (0)

static struct tcm_transport_overlay transport;

static void reset_state(struct tcm_dev *tcm, u8 mode,
                        u8 *response, u32 capacity, u32 length)
{
  if (tcm) {
    memset(tcm, 0, sizeof(*tcm));
    memset(&transport, 0, sizeof(transport));
    transport.flags = 1;
    tcm->firmware_mode = mode;
    tcm->transport = &transport;
    tcm->command_delay_ms = 37;
    tcm->write_message = mock_write_message;
    tcm->response.data = response;
    tcm->response.buf_size = capacity;
    tcm->response.data_length = length;
  }
  log_calls = 0;
  last_log_format = NULL;
  last_log_function = NULL;
  memset(last_log_values, 0, sizeof(last_log_values));
  write_calls = 0;
  last_write_tcm = NULL;
  last_write_command = 0;
  last_write_payload = NULL;
  last_write_length = 0;
  last_write_response_code = NULL;
  last_write_delay = 0;
  write_result = 0;
  mutex_lock_calls = 0;
  mutex_unlock_calls = 0;
  last_mutex_lock = NULL;
  last_mutex_unlock = NULL;
  helper_unlock_calls = 0;
}

static bool verify_last_log(const char *format, const char *function)
{
  REQUIRE(last_log_format != NULL);
  REQUIRE(strcmp(last_log_format, format) == 0);
  REQUIRE(last_log_function != NULL);
  REQUIRE(strcmp(last_log_function, function) == 0);
  return true;
}

static bool verify_write(struct tcm_dev *tcm, u8 command, u32 delay)
{
  REQUIRE(write_calls == 1);
  REQUIRE(last_write_tcm == tcm);
  REQUIRE(last_write_command == command);
  REQUIRE(last_write_payload == NULL);
  REQUIRE(last_write_length == 0);
  REQUIRE(last_write_response_code == NULL);
  REQUIRE(last_write_delay == delay);
  return true;
}

static bool verify_balanced_mutex(struct tcm_dev *tcm)
{
  struct mutex *expected = (struct mutex *)tcm->response.mutex;

  REQUIRE(mutex_lock_calls == 1);
  REQUIRE(mutex_unlock_calls == 1);
  REQUIRE(last_mutex_lock == expected);
  REQUIRE(last_mutex_unlock == expected);
  REQUIRE(tcm->response.lock_depth == 0);
  return true;
}

static void put_le16(u8 value[2], u16 number)
{
  value[0] = (u8)number;
  value[1] = (u8)(number >> 8);
}

static bool test_signature_contract(void)
{
  return true;
}

static bool test_layout_contract(void)
{
  REQUIRE(sizeof(struct tcm_identification_info) == 0x30);
  REQUIRE(sizeof(struct tcm_application_info) == 0x30);
  REQUIRE(sizeof(struct tcm_boot_info) == 0x20);
  REQUIRE(sizeof(struct tcm_features_info) == 0x10);
  REQUIRE(sizeof(struct tcm_response_buffer) == 0x48);
  REQUIRE(offsetof(struct tcm_dev, firmware_mode) == 0x09);
  REQUIRE(offsetof(struct tcm_dev, build_id) == 0x0c);
  REQUIRE(offsetof(struct tcm_dev, max_x) == 0x10);
  REQUIRE(offsetof(struct tcm_dev, customer_config_id) == 0x24);
  REQUIRE(offsetof(struct tcm_dev, identification_info) == 0x80);
  REQUIRE(offsetof(struct tcm_dev, application_info) == 0xb0);
  REQUIRE(offsetof(struct tcm_dev, boot_info) == 0xe0);
  REQUIRE(offsetof(struct tcm_dev, response.data) == 0x148);
  REQUIRE(offsetof(struct tcm_dev, response.buf_size) == 0x150);
  REQUIRE(offsetof(struct tcm_dev, response.data_length) == 0x154);
  REQUIRE(offsetof(struct tcm_dev, response.mutex) == 0x158);
  REQUIRE(offsetof(struct tcm_dev, response.lock_depth) == 0x188);
  REQUIRE(offsetof(struct tcm_dev, command_delay_ms) == 0x20c);
  REQUIRE(offsetof(struct tcm_dev, write_message) == 0x398);
  REQUIRE(sizeof(struct tcm_dev) == 0x23e8);
  return true;
}

static bool test_null_contracts(void)
{
  reset_state(NULL, 0, NULL, 0, 0);
  REQUIRE(syna_tcm_get_boot_info(NULL, NULL, 0) == -241);
  REQUIRE(verify_last_log(INVALID_HANDLE_LOG, "syna_tcm_get_boot_info"));

  reset_state(NULL, 0, NULL, 0, 0);
  REQUIRE(syna_tcm_get_app_info(NULL, NULL, 0) == -241);
  REQUIRE(verify_last_log(INVALID_HANDLE_LOG, "syna_tcm_get_app_info"));

  reset_state(NULL, 0, NULL, 0, 0);
  REQUIRE(syna_tcm_get_features(NULL, NULL, 0) == -241);
  REQUIRE(verify_last_log(INVALID_HANDLE_LOG, "syna_tcm_get_features"));

  reset_state(NULL, 0, NULL, 0, 0);
  REQUIRE(syna_tcm_identify(NULL, NULL, 0) == -241);
  REQUIRE(verify_last_log(INVALID_HANDLE_LOG, "syna_tcm_identify"));
  return true;
}

static bool test_mode_contracts(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1, NULL, 0, 0);
  REQUIRE(syna_tcm_get_boot_info(&tcm, NULL, 0) == -241);
  REQUIRE(verify_last_log(INVALID_BOOT_MODE_LOG, "syna_tcm_get_boot_info"));
  REQUIRE(write_calls == 0);

  reset_state(&tcm, 0x0b, NULL, 0, 0);
  REQUIRE(syna_tcm_get_app_info(&tcm, NULL, 0) == -241);
  REQUIRE(verify_last_log(INVALID_APP_MODE_LOG, "syna_tcm_get_app_info"));
  REQUIRE(write_calls == 0);

  reset_state(&tcm, 0x0b, NULL, 0, 0);
  REQUIRE(syna_tcm_get_features(&tcm, NULL, 0) == -241);
  REQUIRE(verify_last_log(INVALID_APP_MODE_LOG, "syna_tcm_get_features"));
  REQUIRE(write_calls == 0);
  return true;
}

static bool test_boot_irq_success(void)
{
  struct tcm_dev tcm;
  struct tcm_boot_info output;
  u8 response[sizeof(output)];
  size_t index;

  for (index = 0; index < sizeof(response); index++)
    response[index] = (u8)(index + 1);
  memset(&output, 0, sizeof(output));
  reset_state(&tcm, 0x0b, response, sizeof(response), sizeof(response));

  REQUIRE(syna_tcm_get_boot_info(&tcm, &output, 0) == 0);
  REQUIRE(verify_write(&tcm, 0x10, 0));
  REQUIRE(memcmp(&tcm.boot_info, response, sizeof(response)) == 0);
  REQUIRE(memcmp(&output, response, sizeof(response)) == 0);
  REQUIRE(verify_balanced_mutex(&tcm));
  REQUIRE(log_calls == 0);
  return true;
}

static bool test_boot_polling_truncation(void)
{
  struct tcm_dev tcm;
  struct tcm_boot_info output;
  u8 response[8] = {1, 3, 5, 7, 9, 11, 13, 15};

  memset(&output, 0xa5, sizeof(output));
  reset_state(&tcm, 0x0b, response, sizeof(response), sizeof(response));
  transport.flags = 0;

  REQUIRE(syna_tcm_get_boot_info(&tcm, &output, 0) == 0);
  REQUIRE(verify_write(&tcm, 0x10, 37));
  REQUIRE(memcmp(&output, response, sizeof(response)) == 0);
  REQUIRE(((u8 *)&output)[sizeof(response)] == 0xa5);
  REQUIRE(verify_balanced_mutex(&tcm));
  REQUIRE(log_calls == 1);
  REQUIRE(verify_last_log(POLLING_LOG, "syna_tcm_get_boot_info"));
  return true;
}

static bool test_boot_explicit_timeout(void)
{
  struct tcm_dev tcm;
  u8 response[1] = {0x55};

  reset_state(&tcm, 0x0b, response, sizeof(response), sizeof(response));
  transport.flags = 0;
  REQUIRE(syna_tcm_get_boot_info(&tcm, NULL, 91) == 0);
  REQUIRE(verify_write(&tcm, 0x10, 91));
  REQUIRE(log_calls == 0);
  REQUIRE(verify_balanced_mutex(&tcm));
  return true;
}

static bool test_boot_write_failure(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 0x0b, NULL, 0, 0);
  write_result = -73;
  REQUIRE(syna_tcm_get_boot_info(&tcm, NULL, 14) == -73);
  REQUIRE(verify_write(&tcm, 0x10, 14));
  REQUIRE(mutex_lock_calls == 0 && mutex_unlock_calls == 0);
  REQUIRE(verify_last_log(SEND_FAILURE_LOG, "syna_tcm_get_boot_info"));
  REQUIRE(last_log_values[0] == 0x10);
  return true;
}

static bool test_boot_null_response(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 0x0b, NULL, 0, 8);
  REQUIRE(syna_tcm_get_boot_info(&tcm, NULL, 1) == -22);
  REQUIRE(verify_balanced_mutex(&tcm));
  REQUIRE(verify_last_log(BOOT_COPY_LOG, "syna_tcm_get_boot_info"));
  return true;
}

static bool test_boot_oversized_response(void)
{
  struct tcm_dev tcm;
  u8 response[16] = {0};

  reset_state(&tcm, 0x0b, response, 8, sizeof(response));
  REQUIRE(syna_tcm_get_boot_info(&tcm, NULL, 1) == -22);
  REQUIRE(verify_balanced_mutex(&tcm));
  REQUIRE(log_calls == 2);
  REQUIRE(verify_last_log(BOOT_COPY_LOG, "syna_tcm_get_boot_info"));
  return true;
}

static bool test_nested_lock_balance(void)
{
  struct tcm_dev tcm;
  u8 response[1] = {0x77};

  reset_state(&tcm, 0x0b, response, sizeof(response), sizeof(response));
  tcm.response.lock_depth = 2;
  REQUIRE(syna_tcm_get_boot_info(&tcm, NULL, 1) == 0);
  REQUIRE(mutex_lock_calls == 1 && mutex_unlock_calls == 1);
  REQUIRE(tcm.response.lock_depth == 2);
  REQUIRE(log_calls == 2);
  REQUIRE(verify_last_log(BALANCE_LOG, "syna_tcm_buf_unlock"));
  REQUIRE(last_log_values[0] == 3);
  return true;
}

static bool test_app_success_state(void)
{
  struct tcm_dev tcm;
  struct tcm_application_info response;
  struct tcm_application_info output;
  unsigned int index;

  memset(&response, 0, sizeof(response));
  memset(&output, 0xa5, sizeof(output));
  for (index = 0; index < sizeof(response.customer_config_id); index++)
    response.customer_config_id[index] = (u8)(0x80 + index);
  put_le16(response.status, 0);
  put_le16(response.max_x, 2460);
  put_le16(response.max_y, 1080);
  put_le16(response.max_objects, 10);
  put_le16(response.num_of_image_rows, 48);
  put_le16(response.num_of_image_cols, 32);
  reset_state(&tcm, 1, (u8 *)&response, sizeof(response), sizeof(response));

  REQUIRE(syna_tcm_get_app_info(&tcm, &output, 0) == 0);
  REQUIRE(verify_write(&tcm, 0x20, 0));
  REQUIRE(memcmp(&tcm.application_info, &response, sizeof(response)) == 0);
  REQUIRE(memcmp(&output, &response, sizeof(response)) == 0);
  REQUIRE(tcm.max_x == 2460);
  REQUIRE(tcm.max_y == 1080);
  REQUIRE(tcm.max_objects == 10);
  REQUIRE(tcm.num_of_image_rows == 48);
  REQUIRE(tcm.num_of_image_cols == 32);
  REQUIRE(memcmp(tcm.customer_config_id, response.customer_config_id,
                 sizeof(tcm.customer_config_id)) == 0);
  REQUIRE(verify_balanced_mutex(&tcm));
  return true;
}

static bool test_app_truncated_success(void)
{
  struct tcm_dev tcm;
  struct tcm_application_info output;
  u8 response[4] = {1, 2, 0, 0};

  memset(&output, 0xa5, sizeof(output));
  reset_state(&tcm, 1, response, sizeof(response), sizeof(response));
  REQUIRE(syna_tcm_get_app_info(&tcm, &output, 5) == 0);
  REQUIRE(memcmp(&output, response, sizeof(response)) == 0);
  REQUIRE(((u8 *)&output)[sizeof(response)] == 0xa5);
  REQUIRE(verify_balanced_mutex(&tcm));
  return true;
}

static bool test_app_bad_status(void)
{
  struct tcm_dev tcm;
  struct tcm_application_info response;

  memset(&response, 0, sizeof(response));
  put_le16(response.status, 0xff);
  reset_state(&tcm, 1, (u8 *)&response, sizeof(response), sizeof(response));
  REQUIRE(syna_tcm_get_app_info(&tcm, NULL, 1) == -242);
  REQUIRE(verify_last_log(BAD_APP_LOG, "syna_tcm_get_app_info"));
  REQUIRE(last_log_values[0] == 0xff);
  return true;
}

static bool test_app_incorrect_status(void)
{
  struct tcm_dev tcm;
  struct tcm_application_info response;

  memset(&response, 0, sizeof(response));
  put_le16(response.status, 7);
  reset_state(&tcm, 1, (u8 *)&response, sizeof(response), sizeof(response));
  REQUIRE(syna_tcm_get_app_info(&tcm, NULL, 1) == -242);
  REQUIRE(verify_last_log(INCORRECT_APP_LOG, "syna_tcm_get_app_info"));
  REQUIRE(last_log_values[0] == 7);
  return true;
}

static bool test_app_write_failure(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1, NULL, 0, 0);
  transport.flags = 0;
  write_result = -9;
  REQUIRE(syna_tcm_get_app_info(&tcm, NULL, 0) == -9);
  REQUIRE(verify_write(&tcm, 0x20, 37));
  REQUIRE(verify_last_log(SEND_FAILURE_LOG, "syna_tcm_get_app_info"));
  REQUIRE(last_log_values[0] == 0x20);
  return true;
}

static bool test_features_null_output(void)
{
  struct tcm_dev tcm;
  u8 response[16] = {0};

  reset_state(&tcm, 1, response, sizeof(response), sizeof(response));
  REQUIRE(syna_tcm_get_features(&tcm, NULL, 0) == 0);
  REQUIRE(verify_write(&tcm, 0x32, 0));
  REQUIRE(mutex_lock_calls == 0 && mutex_unlock_calls == 0);
  return true;
}

static bool test_features_success(void)
{
  struct tcm_dev tcm;
  struct tcm_features_info output;
  u8 response[32];
  size_t index;

  for (index = 0; index < sizeof(response); index++)
    response[index] = (u8)(0xf0 - index);
  memset(&output, 0, sizeof(output));
  reset_state(&tcm, 1, response, sizeof(response), sizeof(response));
  REQUIRE(syna_tcm_get_features(&tcm, &output, 12) == 0);
  REQUIRE(verify_write(&tcm, 0x32, 12));
  REQUIRE(memcmp(&output, response, sizeof(output)) == 0);
  REQUIRE(verify_balanced_mutex(&tcm));
  return true;
}

static bool test_features_copy_failure(void)
{
  struct tcm_dev tcm;
  struct tcm_features_info output;

  memset(&output, 0, sizeof(output));
  reset_state(&tcm, 1, NULL, 0, sizeof(output));
  REQUIRE(syna_tcm_get_features(&tcm, &output, 1) == -22);
  REQUIRE(verify_balanced_mutex(&tcm));
  REQUIRE(verify_last_log(FEATURES_COPY_LOG, "syna_tcm_get_features"));
  return true;
}

static bool test_identify_success(void)
{
  struct tcm_dev tcm;
  struct tcm_identification_info response;
  struct tcm_identification_info output;

  memset(&response, 0x5a, sizeof(response));
  memset(&output, 0, sizeof(output));
  reset_state(&tcm, 0, (u8 *)&response, sizeof(response), sizeof(response));
  tcm.identification_info.mode = 0x0b;
  tcm.identification_info.version = 3;

  REQUIRE(syna_tcm_identify(&tcm, &output, 0) == 0);
  REQUIRE(verify_write(&tcm, 0x02, 0));
  REQUIRE(tcm.firmware_mode == 0x0b);
  REQUIRE(memcmp(&output, &response, sizeof(response)) == 0);
  REQUIRE(verify_balanced_mutex(&tcm));
  REQUIRE(verify_last_log(IDENTIFY_INFO_LOG, "syna_tcm_identify"));
  REQUIRE(last_log_values[0] == 0x0b);
  REQUIRE(last_log_values[1] == 3);
  return true;
}

static bool test_identify_null_output(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 0, NULL, 0, 0);
  tcm.identification_info.mode = 1;
  tcm.identification_info.version = 4;
  REQUIRE(syna_tcm_identify(&tcm, NULL, 23) == 0);
  REQUIRE(verify_write(&tcm, 0x02, 23));
  REQUIRE(tcm.firmware_mode == 1);
  REQUIRE(mutex_lock_calls == 0 && mutex_unlock_calls == 0);
  return true;
}

static bool test_identify_polling_write_failure(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 0, NULL, 0, 0);
  transport.flags = 0;
  write_result = -81;
  REQUIRE(syna_tcm_identify(&tcm, NULL, 0) == -81);
  REQUIRE(verify_write(&tcm, 0x02, 37));
  REQUIRE(log_calls == 2);
  REQUIRE(verify_last_log(SEND_FAILURE_LOG, "syna_tcm_identify"));
  REQUIRE(last_log_values[0] == 0x02);
  return true;
}

static bool test_identify_copy_failure(void)
{
  struct tcm_dev tcm;
  struct tcm_identification_info output;

  memset(&output, 0, sizeof(output));
  reset_state(&tcm, 0, NULL, 0, sizeof(output));
  tcm.identification_info.mode = 1;
  tcm.identification_info.version = 2;
  REQUIRE(syna_tcm_identify(&tcm, &output, 1) == -22);
  REQUIRE(helper_unlock_calls == 1);
  REQUIRE(mutex_lock_calls == 1 && mutex_unlock_calls == 1);
  REQUIRE(tcm.response.lock_depth == 0);
  REQUIRE(verify_last_log(IDENTIFY_COPY_LOG, "syna_tcm_identify"));
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
    {"null_contracts", test_null_contracts},
    {"mode_contracts", test_mode_contracts},
    {"boot_irq_success", test_boot_irq_success},
    {"boot_polling_truncation", test_boot_polling_truncation},
    {"boot_explicit_timeout", test_boot_explicit_timeout},
    {"boot_write_failure", test_boot_write_failure},
    {"boot_null_response", test_boot_null_response},
    {"boot_oversized_response", test_boot_oversized_response},
    {"nested_lock_balance", test_nested_lock_balance},
    {"app_success_state", test_app_success_state},
    {"app_truncated_success", test_app_truncated_success},
    {"app_bad_status", test_app_bad_status},
    {"app_incorrect_status", test_app_incorrect_status},
    {"app_write_failure", test_app_write_failure},
    {"features_null_output", test_features_null_output},
    {"features_success", test_features_success},
    {"features_copy_failure", test_features_copy_failure},
    {"identify_success", test_identify_success},
    {"identify_null_output", test_identify_null_output},
    {"identify_polling_write_failure", test_identify_polling_write_failure},
    {"identify_copy_failure", test_identify_copy_failure},
  };
  size_t index;

  for (index = 0; index < sizeof(tests) / sizeof(tests[0]); index++) {
    if (!tests[index].run()) {
      printf("FAIL %s\n", tests[index].name);
      return 1;
    }
    printf("PASS %s\n", tests[index].name);
  }

  printf("SUMMARY 23/23 passed\n");
  return 0;
}
