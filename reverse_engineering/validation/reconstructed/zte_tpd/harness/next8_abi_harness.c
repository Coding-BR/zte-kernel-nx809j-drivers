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

#define INVALID_HANDLE_LOG \
  "\x01" "3[error] %s: Invalid tcm device handle\n"
#define INVALID_APP_MODE_LOG \
  "\x01" "3[error] %s: Device is not in application fw mode, mode: %x\n"
#define POLLING_LOG \
  "\x01" "5[info ] %s: No support of IRQ control, use polling mode instead\n"
#define NO_ATTN_LOG \
  "\x01" "5[info ] %s: No support of ATTN, use polling mode instead\n"
#define SEND_FAILURE_X_LOG \
  "\x01" "3[error] %s: Fail to send command 0x%x\n"
#define SEND_FAILURE_02X_LOG \
  "\x01" "3[error] %s: Fail to send command 0x%02x\n"
#define ENABLE_FAILURE_LOG \
  "\x01" "3[error] %s: Fail to send command 0x%02x to %s 0x%02x report\n"
#define GET_FAILURE_LOG \
  "\x01" "3[error] %s: Fail to send command 0x%02x to get dynamic field 0x%x\n"
#define RESPONSE_SIZE_LOG \
  "\x01" "3[error] %s: Invalid resp data size, %d\n"
#define SET_FAILURE_LOG \
  "\x01" "3[error] %s: Fail to send command 0x%02x to set %d to field 0x%x\n"
#define INVALID_FW_REQUEST_LOG \
  "\x01" "3[error] %s: Invalid firmware mode requested\n"
#define APP_ACTIVATED_LOG \
  "\x01" "6[info ] %s: Application Firmware (mode 0x%x) activated\n"
#define BOOT_ACTIVATED_LOG \
  "\x01" "6[info ] %s: Bootloader Firmware (mode 0x%x) activated\n"
#define APP_ENTER_FAILURE_LOG \
  "\x01" "4[warn ] %s: Fail to enter application fw, mode: %x\n"
#define BOOT_ENTER_FAILURE_LOG \
  "\x01" "3[error] %s: Fail to enter bootloader, mode: %x\n"
#define APP_SWITCH_FAILURE_LOG \
  "\x01" "3[error] %s: Fail to switch to application mode\n"
#define BOOT_SWITCH_FAILURE_LOG \
  "\x01" "3[error] %s: Fail to switch to bootloader mode\n"

#define MAX_LOGS 16
#define MAX_PAYLOAD 16

static unsigned int log_calls;
static const char *log_formats[MAX_LOGS];
static const char *log_functions[MAX_LOGS];

static unsigned int write_calls;
static struct tcm_dev *last_write_tcm;
static u8 last_write_command;
static u8 last_write_payload[MAX_PAYLOAD];
static u32 last_write_length;
static u8 *last_write_response_code;
static u32 last_write_delay;
static int write_result;
static bool write_updates_mode;

static unsigned int check_calls;
static struct tcm_dev *last_check_tcm;
static int check_result;

static int printk(const char *format, ...)
{
  va_list arguments;
  const char *function;

  va_start(arguments, format);
  function = va_arg(arguments, const char *);
  va_end(arguments);

  if (log_calls < MAX_LOGS) {
    log_formats[log_calls] = format;
    log_functions[log_calls] = function;
  }
  log_calls++;
  return 0;
}

static int mock_write_message(struct tcm_dev *tcm, u8 command,
                              u8 *payload, u32 length,
                              u8 *response_code, u32 delay_ms)
{
  write_calls++;
  last_write_tcm = tcm;
  last_write_command = command;
  last_write_length = length;
  last_write_response_code = response_code;
  last_write_delay = delay_ms;
  memset(last_write_payload, 0, sizeof(last_write_payload));
  if (payload && length <= sizeof(last_write_payload))
    memcpy(last_write_payload, payload, length);

  if (write_result == 0 && write_updates_mode) {
    if (command == 0x14)
      tcm->firmware_mode = 0x01;
    else if (command == 0x1f)
      tcm->firmware_mode = 0x0b;
  }
  return write_result;
}

static int mock_check_max_rw_size(struct tcm_dev *tcm)
{
  check_calls++;
  last_check_tcm = tcm;
  return check_result;
}

#include "../../../curated/zte_tpd/syna_tcm_sleep.c"
#include "../../../curated/zte_tpd/syna_tcm_switch_fw_mode.c"
#include "../../../curated/zte_tpd/syna_tcm_enable_report.c"
#include "../../../curated/zte_tpd/syna_tcm_get_dynamic_config.c"
#include "../../../curated/zte_tpd/syna_tcm_set_dynamic_config.c"

typedef int (*sleep_fn)(struct tcm_dev *, bool, unsigned int);
typedef int (*switch_fw_mode_fn)(struct tcm_dev *, u8, unsigned int);
typedef int (*enable_report_fn)(struct tcm_dev *, u8, bool, unsigned int);
typedef int (*get_dynamic_config_fn)(struct tcm_dev *, u8, u16 *,
                                     unsigned int);
typedef int (*set_dynamic_config_fn)(struct tcm_dev *, u8, u16,
                                     unsigned int);

_Static_assert(__builtin_types_compatible_p(typeof(&syna_tcm_sleep), sleep_fn),
               "sleep ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_switch_fw_mode), switch_fw_mode_fn),
               "switch firmware mode ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_enable_report), enable_report_fn),
               "enable report ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_get_dynamic_config),
                   get_dynamic_config_fn),
               "get dynamic config ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_set_dynamic_config),
                   set_dynamic_config_fn),
               "set dynamic config ABI");

#define REQUIRE(condition) do { \
  if (!(condition)) { \
    fprintf(stderr, "assertion failed at %s:%d: %s\n", \
            __FILE__, __LINE__, #condition); \
    return false; \
  } \
} while (0)

static struct tcm_transport_overlay transport;

static void reset_state(struct tcm_dev *tcm, u8 mode)
{
  if (tcm) {
    memset(tcm, 0, sizeof(*tcm));
    memset(&transport, 0, sizeof(transport));
    transport.flags = 1;
    tcm->firmware_mode = mode;
    tcm->transport = &transport;
    tcm->timing_01e8 = 50;
    tcm->command_delay_ms = 37;
    tcm->write_message = mock_write_message;
    tcm->check_max_rw_size = mock_check_max_rw_size;
  }
  log_calls = 0;
  memset(log_formats, 0, sizeof(log_formats));
  memset(log_functions, 0, sizeof(log_functions));
  write_calls = 0;
  last_write_tcm = NULL;
  last_write_command = 0;
  memset(last_write_payload, 0, sizeof(last_write_payload));
  last_write_length = 0;
  last_write_response_code = NULL;
  last_write_delay = 0;
  write_result = 0;
  write_updates_mode = false;
  check_calls = 0;
  last_check_tcm = NULL;
  check_result = 0;
}

static bool verify_log(unsigned int index, const char *format,
                       const char *function)
{
  REQUIRE(index < log_calls);
  REQUIRE(index < MAX_LOGS);
  REQUIRE(log_formats[index] != NULL);
  REQUIRE(strcmp(log_formats[index], format) == 0);
  REQUIRE(log_functions[index] != NULL);
  REQUIRE(strcmp(log_functions[index], function) == 0);
  return true;
}

static bool verify_last_log(const char *format, const char *function)
{
  REQUIRE(log_calls > 0);
  return verify_log(log_calls - 1, format, function);
}

static bool verify_write(struct tcm_dev *tcm, u8 command, u32 length,
                         u32 delay_ms)
{
  REQUIRE(write_calls == 1);
  REQUIRE(last_write_tcm == tcm);
  REQUIRE(last_write_command == command);
  REQUIRE(last_write_length == length);
  REQUIRE(last_write_response_code == NULL);
  REQUIRE(last_write_delay == delay_ms);
  return true;
}

static bool test_signature_contract(void)
{
  return true;
}

static bool test_layout_contract(void)
{
  REQUIRE(offsetof(struct tcm_dev, firmware_mode) == 0x09);
  REQUIRE(offsetof(struct tcm_dev, transport) == 0x48);
  REQUIRE(offsetof(struct tcm_dev, response.data) == 0x148);
  REQUIRE(offsetof(struct tcm_dev, response.data_length) == 0x154);
  REQUIRE(offsetof(struct tcm_dev, timing_01e8) == 0x1e8);
  REQUIRE(offsetof(struct tcm_dev, command_delay_ms) == 0x20c);
  REQUIRE(offsetof(struct tcm_dev, write_message) == 0x398);
  REQUIRE(offsetof(struct tcm_dev, check_max_rw_size) == 0x3b0);
  REQUIRE(sizeof(struct tcm_dev) == 0x23e8);
  return true;
}

static bool test_null_contracts(void)
{
  u16 value = 0;

  reset_state(NULL, 0);
  REQUIRE(syna_tcm_sleep(NULL, true, 0) == -241);
  REQUIRE(verify_last_log(INVALID_HANDLE_LOG, "syna_tcm_sleep"));

  reset_state(NULL, 0);
  REQUIRE(syna_tcm_switch_fw_mode(NULL, 1, 0) == -241);
  REQUIRE(verify_last_log(INVALID_HANDLE_LOG,
                          "syna_tcm_switch_fw_mode"));

  reset_state(NULL, 0);
  REQUIRE(syna_tcm_enable_report(NULL, 0x81, true, 0) == -241);
  REQUIRE(verify_last_log(INVALID_HANDLE_LOG, "syna_tcm_enable_report"));

  reset_state(NULL, 0);
  REQUIRE(syna_tcm_get_dynamic_config(NULL, 0x20, &value, 0) == -241);
  REQUIRE(verify_last_log(INVALID_HANDLE_LOG,
                          "syna_tcm_get_dynamic_config"));

  reset_state(NULL, 0);
  REQUIRE(syna_tcm_set_dynamic_config(NULL, 0x20, 1, 0) == -241);
  REQUIRE(verify_last_log(INVALID_HANDLE_LOG,
                          "syna_tcm_set_dynamic_config"));
  return true;
}

static bool test_application_mode_contracts(void)
{
  struct tcm_dev tcm;
  u16 value = 0;

  reset_state(&tcm, 0x0b);
  REQUIRE(syna_tcm_enable_report(&tcm, 0x81, true, 0) == -241);
  REQUIRE(verify_last_log(INVALID_APP_MODE_LOG,
                          "syna_tcm_enable_report"));
  REQUIRE(write_calls == 0);

  reset_state(&tcm, 0x0b);
  REQUIRE(syna_tcm_get_dynamic_config(&tcm, 0x20, &value, 0) == -241);
  REQUIRE(verify_last_log(INVALID_APP_MODE_LOG,
                          "syna_tcm_get_dynamic_config"));
  REQUIRE(write_calls == 0);

  reset_state(&tcm, 0x0b);
  REQUIRE(syna_tcm_set_dynamic_config(&tcm, 0x20, 1, 0) == -241);
  REQUIRE(verify_last_log(INVALID_APP_MODE_LOG,
                          "syna_tcm_set_dynamic_config"));
  REQUIRE(write_calls == 0);
  return true;
}

static bool test_sleep_irq_enable(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  REQUIRE(syna_tcm_sleep(&tcm, true, 0) == 0);
  REQUIRE(verify_write(&tcm, 0x2c, 0, 0));
  REQUIRE(log_calls == 0);
  return true;
}

static bool test_sleep_explicit_disable(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  transport.flags = 0;
  REQUIRE(syna_tcm_sleep(&tcm, false, 91) == 0);
  REQUIRE(verify_write(&tcm, 0x2d, 0, 91));
  REQUIRE(log_calls == 0);
  return true;
}

static bool test_sleep_polling(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  transport.flags = 0;
  REQUIRE(syna_tcm_sleep(&tcm, true, 0) == 0);
  REQUIRE(verify_write(&tcm, 0x2c, 0, 37));
  REQUIRE(verify_last_log(POLLING_LOG, "syna_tcm_sleep"));
  return true;
}

static bool test_sleep_failure(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  write_result = -73;
  REQUIRE(syna_tcm_sleep(&tcm, false, 12) == -73);
  REQUIRE(verify_write(&tcm, 0x2d, 0, 12));
  REQUIRE(verify_last_log(SEND_FAILURE_X_LOG, "syna_tcm_sleep"));
  return true;
}

static bool test_enable_report_irq(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  REQUIRE(syna_tcm_enable_report(&tcm, 0x81, true, 0) == 0);
  REQUIRE(verify_write(&tcm, 0x05, 1, 0));
  REQUIRE(last_write_payload[0] == 0x81);
  REQUIRE(log_calls == 0);
  return true;
}

static bool test_enable_report_polling(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  transport.flags = 0;
  REQUIRE(syna_tcm_enable_report(&tcm, 0x92, false, 0) == 0);
  REQUIRE(verify_write(&tcm, 0x06, 1, 37));
  REQUIRE(last_write_payload[0] == 0x92);
  REQUIRE(verify_last_log(POLLING_LOG, "syna_tcm_enable_report"));
  return true;
}

static bool test_enable_report_failure(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  write_result = -5;
  REQUIRE(syna_tcm_enable_report(&tcm, 0xa4, true, 8) == -5);
  REQUIRE(verify_write(&tcm, 0x05, 1, 8));
  REQUIRE(last_write_payload[0] == 0xa4);
  REQUIRE(verify_last_log(ENABLE_FAILURE_LOG,
                          "syna_tcm_enable_report"));
  return true;
}

static bool test_get_dynamic_success(void)
{
  struct tcm_dev tcm;
  u16 response = 0xb42d;
  u16 value = 0;

  reset_state(&tcm, 1);
  tcm.response.data = (u8 *)&response;
  tcm.response.data_length = sizeof(response);
  REQUIRE(syna_tcm_get_dynamic_config(&tcm, 0x31, &value, 7) == 0);
  REQUIRE(verify_write(&tcm, 0x23, 1, 7));
  REQUIRE(last_write_payload[0] == 0x31);
  REQUIRE(value == response);
  REQUIRE(log_calls == 0);
  return true;
}

static bool test_get_dynamic_polling(void)
{
  struct tcm_dev tcm;
  u16 response = 0x715a;
  u16 value = 0;

  reset_state(&tcm, 1);
  transport.flags = 0;
  tcm.response.data = (u8 *)&response;
  tcm.response.data_length = sizeof(response);
  REQUIRE(syna_tcm_get_dynamic_config(&tcm, 0x32, &value, 0) == 0);
  REQUIRE(verify_write(&tcm, 0x23, 1, 37));
  REQUIRE(value == response);
  REQUIRE(verify_last_log(POLLING_LOG,
                          "syna_tcm_get_dynamic_config"));
  return true;
}

static bool test_get_dynamic_failure(void)
{
  struct tcm_dev tcm;
  u16 value = 0;

  reset_state(&tcm, 1);
  write_result = -33;
  REQUIRE(syna_tcm_get_dynamic_config(&tcm, 0x35, &value, 9) == -33);
  REQUIRE(verify_write(&tcm, 0x23, 1, 9));
  REQUIRE(verify_last_log(GET_FAILURE_LOG,
                          "syna_tcm_get_dynamic_config"));
  return true;
}

static bool test_get_dynamic_short_response(void)
{
  struct tcm_dev tcm;
  u8 response = 0x66;
  u16 value = 0xa55a;

  reset_state(&tcm, 1);
  tcm.response.data = &response;
  tcm.response.data_length = 1;
  REQUIRE(syna_tcm_get_dynamic_config(&tcm, 0x36, &value, 1) == 0);
  REQUIRE(verify_write(&tcm, 0x23, 1, 1));
  REQUIRE(value == 0xa55a);
  REQUIRE(verify_last_log(RESPONSE_SIZE_LOG,
                          "syna_tcm_get_dynamic_config"));
  return true;
}

static bool test_set_dynamic_success(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  REQUIRE(syna_tcm_set_dynamic_config(&tcm, 0x41, 0xb52c, 6) == 0);
  REQUIRE(verify_write(&tcm, 0x24, 3, 6));
  REQUIRE(last_write_payload[0] == 0x41);
  REQUIRE(last_write_payload[1] == 0x2c);
  REQUIRE(last_write_payload[2] == 0xb5);
  REQUIRE(log_calls == 0);
  return true;
}

static bool test_set_dynamic_polling(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  transport.flags = 0;
  REQUIRE(syna_tcm_set_dynamic_config(&tcm, 0x42, 0x0102, 0) == 0);
  REQUIRE(verify_write(&tcm, 0x24, 3, 37));
  REQUIRE(last_write_payload[0] == 0x42);
  REQUIRE(last_write_payload[1] == 0x02);
  REQUIRE(last_write_payload[2] == 0x01);
  REQUIRE(verify_last_log(POLLING_LOG,
                          "syna_tcm_set_dynamic_config"));
  return true;
}

static bool test_set_dynamic_failure(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  write_result = -47;
  REQUIRE(syna_tcm_set_dynamic_config(&tcm, 0x43, 0xff01, 3) == -47);
  REQUIRE(verify_write(&tcm, 0x24, 3, 3));
  REQUIRE(verify_last_log(SET_FAILURE_LOG,
                          "syna_tcm_set_dynamic_config"));
  return true;
}

static bool test_switch_invalid_mode(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  REQUIRE(syna_tcm_switch_fw_mode(&tcm, 0x7f, 0) == -241);
  REQUIRE(write_calls == 0);
  REQUIRE(check_calls == 0);
  REQUIRE(verify_last_log(INVALID_FW_REQUEST_LOG,
                          "syna_tcm_switch_fw_mode"));
  return true;
}

static bool test_switch_already_application(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  REQUIRE(syna_tcm_switch_fw_mode(&tcm, 1, 0) == 0);
  REQUIRE(write_calls == 0);
  REQUIRE(check_calls == 1);
  REQUIRE(last_check_tcm == &tcm);
  REQUIRE(log_calls == 0);
  return true;
}

static bool test_switch_application_success_clamp(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 0x0b);
  write_updates_mode = true;
  REQUIRE(syna_tcm_switch_fw_mode(&tcm, 1, 12) == 0);
  REQUIRE(verify_write(&tcm, 0x14, 0, 50));
  REQUIRE(tcm.firmware_mode == 1);
  REQUIRE(check_calls == 1);
  REQUIRE(verify_last_log(APP_ACTIVATED_LOG,
                          "syna_tcm_run_application_fw"));
  return true;
}

static bool test_switch_application_no_attn(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 0x0b);
  transport.flags = 0;
  write_updates_mode = true;
  REQUIRE(syna_tcm_switch_fw_mode(&tcm, 1, 0) == 0);
  REQUIRE(verify_write(&tcm, 0x14, 0, 50));
  REQUIRE(log_calls == 2);
  REQUIRE(verify_log(0, NO_ATTN_LOG, "syna_tcm_switch_fw_mode"));
  REQUIRE(verify_log(1, APP_ACTIVATED_LOG,
                     "syna_tcm_run_application_fw"));
  REQUIRE(check_calls == 1);
  return true;
}

static bool test_switch_application_write_failure(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 0x0b);
  write_result = -61;
  REQUIRE(syna_tcm_switch_fw_mode(&tcm, 1, 80) == -61);
  REQUIRE(verify_write(&tcm, 0x14, 0, 80));
  REQUIRE(log_calls == 2);
  REQUIRE(verify_log(0, SEND_FAILURE_02X_LOG,
                     "syna_tcm_run_application_fw"));
  REQUIRE(verify_log(1, APP_SWITCH_FAILURE_LOG,
                     "syna_tcm_switch_fw_mode"));
  REQUIRE(check_calls == 0);
  return true;
}

static bool test_switch_application_wrong_mode(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 0x0b);
  REQUIRE(syna_tcm_switch_fw_mode(&tcm, 1, 70) == -242);
  REQUIRE(verify_write(&tcm, 0x14, 0, 70));
  REQUIRE(log_calls == 2);
  REQUIRE(verify_log(0, APP_ENTER_FAILURE_LOG,
                     "syna_tcm_run_application_fw"));
  REQUIRE(verify_log(1, APP_SWITCH_FAILURE_LOG,
                     "syna_tcm_switch_fw_mode"));
  REQUIRE(check_calls == 0);
  return true;
}

static bool test_switch_already_bootloader(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 0x0b);
  REQUIRE(syna_tcm_switch_fw_mode(&tcm, 0x0b, 0) == 0);
  REQUIRE(write_calls == 0);
  REQUIRE(check_calls == 1);
  REQUIRE(log_calls == 0);
  return true;
}

static bool test_switch_bootloader_success(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  write_updates_mode = true;
  REQUIRE(syna_tcm_switch_fw_mode(&tcm, 0x0b, 55) == 0);
  REQUIRE(verify_write(&tcm, 0x1f, 0, 55));
  REQUIRE(tcm.firmware_mode == 0x0b);
  REQUIRE(check_calls == 1);
  REQUIRE(verify_last_log(BOOT_ACTIVATED_LOG,
                          "syna_tcm_run_bootloader_fw"));
  return true;
}

static bool test_switch_bootloader_write_failure(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  write_result = -62;
  REQUIRE(syna_tcm_switch_fw_mode(&tcm, 0x0b, 60) == -62);
  REQUIRE(verify_write(&tcm, 0x1f, 0, 60));
  REQUIRE(log_calls == 2);
  REQUIRE(verify_log(0, SEND_FAILURE_02X_LOG,
                     "syna_tcm_run_bootloader_fw"));
  REQUIRE(verify_log(1, BOOT_SWITCH_FAILURE_LOG,
                     "syna_tcm_switch_fw_mode"));
  REQUIRE(check_calls == 0);
  return true;
}

static bool test_switch_bootloader_wrong_mode(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 1);
  REQUIRE(syna_tcm_switch_fw_mode(&tcm, 0x0b, 65) == -242);
  REQUIRE(verify_write(&tcm, 0x1f, 0, 65));
  REQUIRE(log_calls == 2);
  REQUIRE(verify_log(0, BOOT_ENTER_FAILURE_LOG,
                     "syna_tcm_run_bootloader_fw"));
  REQUIRE(verify_log(1, BOOT_SWITCH_FAILURE_LOG,
                     "syna_tcm_switch_fw_mode"));
  REQUIRE(check_calls == 0);
  return true;
}

static bool test_static_helper_polling_paths(void)
{
  struct tcm_dev tcm;

  reset_state(&tcm, 0x0b);
  transport.flags = 0;
  write_updates_mode = true;
  REQUIRE(syna_tcm_run_application_fw(&tcm, 0) == 0);
  REQUIRE(verify_write(&tcm, 0x14, 0, 50));
  REQUIRE(log_calls == 2);
  REQUIRE(verify_log(0, POLLING_LOG, "syna_tcm_run_application_fw"));
  REQUIRE(verify_log(1, APP_ACTIVATED_LOG,
                     "syna_tcm_run_application_fw"));

  reset_state(&tcm, 1);
  transport.flags = 0;
  write_updates_mode = true;
  REQUIRE(syna_tcm_run_bootloader_fw(&tcm, 0) == 0);
  REQUIRE(verify_write(&tcm, 0x1f, 0, 50));
  REQUIRE(log_calls == 2);
  REQUIRE(verify_log(0, POLLING_LOG, "syna_tcm_run_bootloader_fw"));
  REQUIRE(verify_log(1, BOOT_ACTIVATED_LOG,
                     "syna_tcm_run_bootloader_fw"));
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
    {"application_mode_contracts", test_application_mode_contracts},
    {"sleep_irq_enable", test_sleep_irq_enable},
    {"sleep_explicit_disable", test_sleep_explicit_disable},
    {"sleep_polling", test_sleep_polling},
    {"sleep_failure", test_sleep_failure},
    {"enable_report_irq", test_enable_report_irq},
    {"enable_report_polling", test_enable_report_polling},
    {"enable_report_failure", test_enable_report_failure},
    {"get_dynamic_success", test_get_dynamic_success},
    {"get_dynamic_polling", test_get_dynamic_polling},
    {"get_dynamic_failure", test_get_dynamic_failure},
    {"get_dynamic_short_response", test_get_dynamic_short_response},
    {"set_dynamic_success", test_set_dynamic_success},
    {"set_dynamic_polling", test_set_dynamic_polling},
    {"set_dynamic_failure", test_set_dynamic_failure},
    {"switch_invalid_mode", test_switch_invalid_mode},
    {"switch_already_application", test_switch_already_application},
    {"switch_application_success_clamp",
     test_switch_application_success_clamp},
    {"switch_application_no_attn", test_switch_application_no_attn},
    {"switch_application_write_failure",
     test_switch_application_write_failure},
    {"switch_application_wrong_mode",
     test_switch_application_wrong_mode},
    {"switch_already_bootloader", test_switch_already_bootloader},
    {"switch_bootloader_success", test_switch_bootloader_success},
    {"switch_bootloader_write_failure",
     test_switch_bootloader_write_failure},
    {"switch_bootloader_wrong_mode", test_switch_bootloader_wrong_mode},
    {"static_helper_polling_paths", test_static_helper_polling_paths},
  };
  size_t index;

  for (index = 0; index < sizeof(tests) / sizeof(tests[0]); index++) {
    if (!tests[index].run()) {
      printf("FAIL %s\n", tests[index].name);
      return 1;
    }
    printf("PASS %s\n", tests[index].name);
  }

  printf("SUMMARY 29/29 passed\n");
  return 0;
}
