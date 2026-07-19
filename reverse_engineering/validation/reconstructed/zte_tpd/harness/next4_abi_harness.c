#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define _DEFS_H
#define __int64 long long
#define _QWORD uint64_t

struct device {
  unsigned long marker;
};

enum flash_area {
  FLASH_AREA_UNKNOWN = 0,
};

static _Alignas(8) unsigned char tpd_storage[2600];
static __int64 tpd_cdev;
static unsigned int change_calls;
static bool last_change_state;
static unsigned int jiffies_calls;
static unsigned int last_msecs;
static unsigned int delayed_work_calls;
static int last_cpu;
static __int64 last_workqueue;
static __int64 last_delayed_work;
static __int64 last_delay;
static unsigned int resume_calls;
static unsigned int suspend_calls;
static struct device *last_resume_device;
static struct device *last_suspend_device;
static int resume_result;
static int suspend_result;

static void change_tp_state(bool state)
{
  change_calls++;
  last_change_state = state;
}

static __int64 msecs_to_jiffies(unsigned int milliseconds)
{
  jiffies_calls++;
  last_msecs = milliseconds;
  return (__int64)milliseconds * 3 + 7;
}

static bool mod_delayed_work_on(int cpu, __int64 workqueue,
                                __int64 delayed_work, __int64 delay)
{
  delayed_work_calls++;
  last_cpu = cpu;
  last_workqueue = workqueue;
  last_delayed_work = delayed_work;
  last_delay = delay;
  return true;
}

static int syna_dev_resume(struct device *device)
{
  resume_calls++;
  last_resume_device = device;
  return resume_result;
}

static int syna_dev_suspend(struct device *device)
{
  suspend_calls++;
  last_suspend_device = device;
  return suspend_result;
}

#include "../../../curated/zte_tpd/ufp_report_lcd_state_delayed_work.c"
#include "../../../curated/zte_tpd/ufp_notifier_cb.c"
#include "../../../curated/zte_tpd/tpd_goodix_ts_resume.c"
#include "../../../curated/zte_tpd/tpd_goodix_ts_suspend.c"
#include "../../../curated/zte_tpd/syna_tcm_get_partition_id_string.c"

typedef void (*delayed_work_fn)(unsigned int);
typedef int (*notifier_fn)(int);
typedef int (*goodix_pm_fn)(void *);
typedef char *(*partition_name_fn)(enum flash_area);

_Static_assert(__builtin_types_compatible_p(
                   typeof(&ufp_report_lcd_state_delayed_work), delayed_work_fn),
               "delayed work ABI");
_Static_assert(__builtin_types_compatible_p(typeof(&ufp_notifier_cb), notifier_fn),
               "notifier ABI");
_Static_assert(__builtin_types_compatible_p(typeof(&tpd_goodix_ts_resume),
                                            goodix_pm_fn),
               "Goodix resume ABI");
_Static_assert(__builtin_types_compatible_p(typeof(&tpd_goodix_ts_suspend),
                                            goodix_pm_fn),
               "Goodix suspend ABI");
_Static_assert(__builtin_types_compatible_p(
                   typeof(&syna_tcm_get_partition_id_string), partition_name_fn),
               "partition name ABI");

#define REQUIRE(condition) do { \
  if (!(condition)) { \
    fprintf(stderr, "assertion failed at %s:%d: %s\n", \
            __FILE__, __LINE__, #condition); \
    return false; \
  } \
} while (0)

static void reset_state(void)
{
  memset(tpd_storage, 0, sizeof(tpd_storage));
  tpd_cdev = (__int64)(uintptr_t)tpd_storage;
  change_calls = 0;
  last_change_state = false;
  jiffies_calls = 0;
  last_msecs = 0;
  delayed_work_calls = 0;
  last_cpu = -1;
  last_workqueue = 0;
  last_delayed_work = 0;
  last_delay = 0;
  resume_calls = 0;
  suspend_calls = 0;
  last_resume_device = NULL;
  last_suspend_device = NULL;
  resume_result = 0;
  suspend_result = 0;
}

static bool test_signature_contract(void)
{
  return true;
}

static bool test_delayed_work_zero(void)
{
  __int64 expected_workqueue = (__int64)0x1122334455667788ULL;

  reset_state();
  *(__int64 *)(tpd_storage + 1200) = expected_workqueue;
  ufp_report_lcd_state_delayed_work(0);

  REQUIRE(jiffies_calls == 1);
  REQUIRE(last_msecs == 0);
  REQUIRE(delayed_work_calls == 1);
  REQUIRE(last_cpu == 32);
  REQUIRE(last_workqueue == expected_workqueue);
  REQUIRE(last_delayed_work == tpd_cdev + 2528);
  REQUIRE(last_delay == 7);
  return true;
}

static bool test_delayed_work_nonzero(void)
{
  reset_state();
  *(__int64 *)(tpd_storage + 1200) = 0x1234;
  ufp_report_lcd_state_delayed_work(250);

  REQUIRE(last_msecs == 250);
  REQUIRE(last_delay == 757);
  REQUIRE(last_workqueue == 0x1234);
  return true;
}

static bool test_notifier_zero(void)
{
  reset_state();
  REQUIRE(ufp_notifier_cb(0) == 0);
  REQUIRE(change_calls == 1);
  REQUIRE(!last_change_state);
  return true;
}

static bool test_notifier_nonzero(void)
{
  reset_state();
  REQUIRE(ufp_notifier_cb(-7) == 0);
  REQUIRE(change_calls == 1);
  REQUIRE(last_change_state);
  return true;
}

static bool test_goodix_resume(void)
{
  _Alignas(8) unsigned char pdev[24] = {0};
  _Alignas(8) unsigned char parent[64] = {0};

  reset_state();
  *(_QWORD *)(pdev + 8) = (_QWORD)(uintptr_t)parent;
  resume_result = -19;

  REQUIRE(tpd_goodix_ts_resume(pdev) == -19);
  REQUIRE(resume_calls == 1);
  REQUIRE(last_resume_device == (struct device *)(parent + 16));
  return true;
}

static bool test_goodix_suspend(void)
{
  _Alignas(8) unsigned char pdev[24] = {0};
  _Alignas(8) unsigned char parent[64] = {0};

  reset_state();
  *(_QWORD *)(pdev + 8) = (_QWORD)(uintptr_t)parent;
  suspend_result = 23;

  REQUIRE(tpd_goodix_ts_suspend(pdev) == 23);
  REQUIRE(suspend_calls == 1);
  REQUIRE(last_suspend_device == (struct device *)(parent + 16));
  return true;
}

static bool test_all_partition_names(void)
{
  static const char *const expected[23] = {
    "APP_CODE", "APP_CODE_COPRO", "APP_CONFIG", "DISPLAY", "BOOT_CODE",
    "BOOT_CONFIG", "APP_PROD_TEST", "F35_APP_CODE", "FORCE", "GAMMA",
    "TEMPERATURE_GAMM", "LCM", "LOOKUP", "OEM", "OPEN_SHORT", "OTP",
    "PPDT", "ROMBOOT_APP_CODE", "TOOL_BOOT_CONFIG", "JSON_CONFIG_AREA",
    "CUSTOM_CS_AREA", "CUSTOM_LOCKDOWN_AREA", "CUSTOM_MTP_AREA",
  };
  unsigned int index;

  for (index = 0; index < 23; index++)
    REQUIRE(strcmp(syna_tcm_get_partition_id_string(
                       (enum flash_area)(index + 1)), expected[index]) == 0);
  return true;
}

static bool test_partition_lower_bound(void)
{
  REQUIRE(strcmp(syna_tcm_get_partition_id_string(FLASH_AREA_UNKNOWN), " ") == 0);
  return true;
}

static bool test_partition_upper_bound(void)
{
  REQUIRE(strcmp(syna_tcm_get_partition_id_string((enum flash_area)24), " ") == 0);
  REQUIRE(strcmp(syna_tcm_get_partition_id_string((enum flash_area)-1), " ") == 0);
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
    {"delayed_work_zero", test_delayed_work_zero},
    {"delayed_work_nonzero", test_delayed_work_nonzero},
    {"notifier_zero", test_notifier_zero},
    {"notifier_nonzero", test_notifier_nonzero},
    {"goodix_resume", test_goodix_resume},
    {"goodix_suspend", test_goodix_suspend},
    {"all_partition_names", test_all_partition_names},
    {"partition_lower_bound", test_partition_lower_bound},
    {"partition_upper_bound", test_partition_upper_bound},
  };
  size_t index;

  for (index = 0; index < sizeof(tests) / sizeof(tests[0]); index++) {
    if (!tests[index].run()) {
      printf("FAIL %s\n", tests[index].name);
      return 1;
    }
    printf("PASS %s\n", tests[index].name);
  }

  printf("SUMMARY 10/10 passed\n");
  return 0;
}
