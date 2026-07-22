#include <stdbool.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define EINVAL 22
#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))

struct device {
  struct device *parent;
};

struct platform_device {
  struct device dev;
};

struct firmware {
  size_t size;
  const unsigned char *data;
};

struct tcm_dev {
  unsigned char reserved_0000[9];
  unsigned char firmware_mode;
};

struct syna_tcm {
  struct tcm_dev *tcm_dev;
  struct platform_device *pdev;
};

static int request_result;
static int update_result;
static const struct firmware *firmware_fixture;
static const char *request_name;
static struct device *request_device;
static struct tcm_dev *update_tcm;
static const unsigned char *update_image;
static unsigned int update_image_size;
static unsigned int update_flash_area;
static bool update_force;
static const struct firmware *released_firmware;
static char events[16];
static unsigned int event_count;
static char logs[4][128];
static unsigned int log_count;

static void record_event(char event)
{
  events[event_count++] = event;
  events[event_count] = '\0';
}

static int request_firmware(const struct firmware **firmware,
                            const char *name, struct device *device)
{
  record_event('Q');
  request_name = name;
  request_device = device;
  if (request_result >= 0)
    *firmware = firmware_fixture;
  return request_result;
}

static void release_firmware(const struct firmware *firmware)
{
  record_event('R');
  released_firmware = firmware;
}

static int syna_tcm_do_fw_update(struct tcm_dev *tcm_dev,
                                 const unsigned char *image,
                                 unsigned int image_size,
                                 unsigned int flash_area,
                                 bool force_reflash)
{
  record_event('U');
  update_tcm = tcm_dev;
  update_image = image;
  update_image_size = image_size;
  update_flash_area = flash_area;
  update_force = force_reflash;
  return update_result;
}

static int printk(const char *format, ...)
{
  va_list arguments;
  int result;

  record_event('L');
  if (log_count >= ARRAY_SIZE(logs))
    return -1;
  va_start(arguments, format);
  result = vsnprintf(logs[log_count], sizeof(logs[log_count]), format,
                     arguments);
  va_end(arguments);
  log_count++;
  return result;
}

#include "../../../curated/zte_tpd/syna_dev_do_reflash.c"

typedef int (*reflash_fn)(struct syna_tcm *tcm, bool force);

_Static_assert(__builtin_types_compatible_p(
                 typeof(&syna_dev_do_reflash), reflash_fn),
               "syna_dev_do_reflash ABI");

#define REQUIRE(condition) do { \
  if (!(condition)) { \
    fprintf(stderr, "%s:%d: requirement failed: %s\n", \
            __func__, __LINE__, #condition); \
    return false; \
  } \
} while (0)

static const unsigned char image_data[] = { 0x10, 0x20, 0x30, 0x40 };
static struct device managed_device;
static struct platform_device platform_device = {
  .dev = { .parent = &managed_device },
};
static struct tcm_dev tcm_dev = { .firmware_mode = 0x2a };
static struct syna_tcm tcm = {
  .tcm_dev = &tcm_dev,
  .pdev = &platform_device,
};
static struct firmware firmware = {
  .size = sizeof(image_data),
  .data = image_data,
};

static void reset_fixture(void)
{
  request_result = 0;
  update_result = 0;
  firmware_fixture = &firmware;
  request_name = NULL;
  request_device = NULL;
  update_tcm = NULL;
  update_image = NULL;
  update_image_size = 0;
  update_flash_area = ~0U;
  update_force = false;
  released_firmware = NULL;
  event_count = 0;
  log_count = 0;
  memset(events, 0, sizeof(events));
  memset(logs, 0, sizeof(logs));
  firmware.size = sizeof(image_data);
  tcm_dev.firmware_mode = 0x2a;
}

static bool test_signature_contract(void)
{
  return true;
}

static bool test_null_tcm(void)
{
  reset_fixture();
  REQUIRE(syna_dev_do_reflash(NULL, false) == -EINVAL);
  REQUIRE(events[0] == '\0');
  REQUIRE(log_count == 0);
  return true;
}

static bool test_request_arguments(void)
{
  reset_fixture();
  REQUIRE(syna_dev_do_reflash(&tcm, false) == 0);
  REQUIRE(strcmp(request_name, "syna_firmware.img") == 0);
  REQUIRE(request_device == &managed_device);
  return true;
}

static bool test_request_failure(void)
{
  reset_fixture();
  request_result = -2;
  REQUIRE(syna_dev_do_reflash(&tcm, true) == -2);
  REQUIRE(strcmp(events, "QL") == 0);
  REQUIRE(log_count == 1);
  REQUIRE(strcmp(logs[0],
                 "\0013[error] syna_dev_do_reflash: Fail to request syna_firmware.img\n") == 0);
  REQUIRE(update_tcm == NULL);
  REQUIRE(released_firmware == NULL);
  return true;
}

static bool test_successful_update_false(void)
{
  reset_fixture();
  REQUIRE(syna_dev_do_reflash(&tcm, false) == 0);
  REQUIRE(strcmp(events, "QULR") == 0);
  REQUIRE(update_tcm == &tcm_dev);
  REQUIRE(update_image == image_data);
  REQUIRE(update_image_size == sizeof(image_data));
  REQUIRE(update_flash_area == 0);
  REQUIRE(!update_force);
  REQUIRE(released_firmware == &firmware);
  REQUIRE(log_count == 1);
  REQUIRE(strcmp(logs[0],
                 "\0016[info ] syna_dev_do_reflash: Firmware mode 2A after reflash\n") == 0);
  return true;
}

static bool test_update_failure(void)
{
  reset_fixture();
  update_result = -5;
  REQUIRE(syna_dev_do_reflash(&tcm, false) == -5);
  REQUIRE(strcmp(events, "QULLR") == 0);
  REQUIRE(log_count == 2);
  REQUIRE(strcmp(logs[0],
                 "\0013[error] syna_dev_do_reflash: Fail to do reflash\n") == 0);
  REQUIRE(strcmp(logs[1],
                 "\0016[info ] syna_dev_do_reflash: Firmware mode 2A after reflash\n") == 0);
  REQUIRE(released_firmware == &firmware);
  return true;
}

static bool test_force_true(void)
{
  reset_fixture();
  REQUIRE(syna_dev_do_reflash(&tcm, true) == 0);
  REQUIRE(update_force);
  return true;
}

static bool test_firmware_size_truncation(void)
{
  reset_fixture();
  if (sizeof(size_t) > sizeof(unsigned int))
    firmware.size = ((size_t)1 << 32) | 5U;
  else
    firmware.size = 5U;
  REQUIRE(syna_dev_do_reflash(&tcm, false) == 0);
  REQUIRE(update_image_size == 5U);
  return true;
}

static bool test_positive_update_return(void)
{
  reset_fixture();
  update_result = 7;
  REQUIRE(syna_dev_do_reflash(&tcm, false) == 7);
  REQUIRE(strcmp(events, "QULR") == 0);
  REQUIRE(released_firmware == &firmware);
  return true;
}

static bool test_mode_format(void)
{
  reset_fixture();
  tcm_dev.firmware_mode = 0xff;
  REQUIRE(syna_dev_do_reflash(&tcm, false) == 0);
  REQUIRE(strcmp(logs[0],
                 "\0016[info ] syna_dev_do_reflash: Firmware mode FF after reflash\n") == 0);
  return true;
}

struct test_case {
  const char *name;
  bool (*run)(void);
};

int main(void)
{
  static const struct test_case tests[] = {
    { "signature_contract", test_signature_contract },
    { "null_tcm", test_null_tcm },
    { "request_arguments", test_request_arguments },
    { "request_failure", test_request_failure },
    { "successful_update_false", test_successful_update_false },
    { "update_failure", test_update_failure },
    { "force_true", test_force_true },
    { "firmware_size_truncation", test_firmware_size_truncation },
    { "positive_update_return", test_positive_update_return },
    { "mode_format", test_mode_format },
  };
  unsigned int passed = 0;
  size_t index;

  for (index = 0; index < ARRAY_SIZE(tests); index++) {
    if (!tests[index].run()) {
      printf("FAIL %s\n", tests[index].name);
      continue;
    }
    printf("PASS %s\n", tests[index].name);
    passed++;
  }

  printf("SUMMARY %u/%zu passed\n", passed, ARRAY_SIZE(tests));
  return passed == ARRAY_SIZE(tests) ? 0 : 1;
}
