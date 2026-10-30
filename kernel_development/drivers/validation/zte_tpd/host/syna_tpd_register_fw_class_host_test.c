#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define ZTE_TPD_AARCH64_INPUT 1
#include "../../../reconstructed/zte_tpd/syna_tpd_register_fw_class.c"

static int alloc_should_fail;
static int notifier_calls;
static int timer_calls;
static __int64 next_workqueue = 0x12345000;

__int64 syna_get_charger_status_batt_psy;
unsigned char syna_usb_detect_flag;
__int64 tpd_cdev;

const char unk_390F2[] = "%s";
const char unk_364AC[] = "%s";
const char unk_3A676[] = "%s %d";
const char unk_37409[] = "%s %lld";
const char unk_3D4B9[] = "%s %lld";
const char unk_3AECC[] = "%s";

int printk(const char *format, ...)
{
  (void)format;
  return 0;
}

__int64 alloc_workqueue(const char *name, unsigned int flags,
                       int max_active, const char *key)
{
  assert(name != NULL);
  assert(flags == 393226U);
  assert(max_active == 1);
  assert(key != NULL);
  return alloc_should_fail ? 0 : next_workqueue;
}

__int64 power_supply_get_by_name(const char *name)
{
  assert(strcmp(name, "battery") == 0);
  return 0;
}

void power_supply_reg_notifier(void *notifier)
{
  assert(notifier != NULL);
  notifier_calls++;
}

void init_timer_key(void *timer, void *function, unsigned int flags,
                    void *name, void *key)
{
  assert(timer != NULL);
  assert(function != NULL);
  assert(flags == 0x200000U);
  assert(name == NULL);
  assert(key == NULL);
  timer_calls++;
}

#define DEFINE_CALLBACK(name) void name(void) {}
DEFINE_CALLBACK(syna_work_charger_detect_work)
DEFINE_CALLBACK(syna_charger_notify_call)
DEFINE_CALLBACK(tpd_init_tpinfo)
DEFINE_CALLBACK(tpd_get_wakegesture)
DEFINE_CALLBACK(tpd_enable_wakegesture)
DEFINE_CALLBACK(tpd_get_singlegamegesture)
DEFINE_CALLBACK(tpd_set_singlegamegesture)
DEFINE_CALLBACK(tpd_get_singleaodgesture)
DEFINE_CALLBACK(tpd_set_singleaodgesture)
DEFINE_CALLBACK(tpd_get_singlefpgesture)
DEFINE_CALLBACK(tpd_set_singlefpgesture)
DEFINE_CALLBACK(tpd_set_one_key)
DEFINE_CALLBACK(tpd_get_one_key)
DEFINE_CALLBACK(tpd_test_cmd_store)
DEFINE_CALLBACK(tpd_test_cmd_show)
DEFINE_CALLBACK(tpd_get_tp_report_rate)
DEFINE_CALLBACK(tpd_set_tp_report_rate)
DEFINE_CALLBACK(tpd_get_sensibility_level)
DEFINE_CALLBACK(tpd_set_sensibility_level)
DEFINE_CALLBACK(tpd_get_follow_hand_level)
DEFINE_CALLBACK(tpd_set_follow_hand_level)
DEFINE_CALLBACK(tpd_get_stability_level)
DEFINE_CALLBACK(tpd_set_stability_level)
DEFINE_CALLBACK(tpd_get_rotation_limit_level)
DEFINE_CALLBACK(tpd_set_rotation_limit_level)
DEFINE_CALLBACK(tpd_set_display_rotation)
DEFINE_CALLBACK(tpd_get_play_game)
DEFINE_CALLBACK(tpd_set_play_game)
DEFINE_CALLBACK(tpd_set_game_partition)
DEFINE_CALLBACK(tpd_get_frame_data)
DEFINE_CALLBACK(tpd_set_frame_data)
DEFINE_CALLBACK(tpd_get_palm_mode)
DEFINE_CALLBACK(tpd_set_palm_mode)
DEFINE_CALLBACK(syna_ghost_check_reset)
DEFINE_CALLBACK(tpd_set_fake_sleep)
DEFINE_CALLBACK(tpd_get_fake_sleep)
DEFINE_CALLBACK(tpd_set_screen_off_awake)
DEFINE_CALLBACK(tpd_get_screen_off_awake)
DEFINE_CALLBACK(delayed_work_timer_fn)
#undef DEFINE_CALLBACK

static uint64_t load64(const unsigned char *base, size_t offset)
{
  uint64_t value;
  memcpy(&value, base + offset, sizeof(value));
  return value;
}

static uint16_t load16(const unsigned char *base, size_t offset)
{
  uint16_t value;
  memcpy(&value, base + offset, sizeof(value));
  return value;
}

static void assert_registration(unsigned char *tcm, unsigned char *cdev)
{
  assert(load64(tcm, 0x688) == (uint64_t)next_workqueue);
  assert(load64(tcm, 0x620) == 0xfffffffe00000ULL);
  assert(load64(tcm, 0x628) == (uint64_t)(uintptr_t)(tcm + 0x628));
  assert(load64(tcm, 0x630) == (uint64_t)(uintptr_t)(tcm + 0x628));
  assert(load64(tcm, 0x638) == (uint64_t)(uintptr_t)syna_work_charger_detect_work);
  assert(load64(tcm, 0x690) == (uint64_t)(uintptr_t)syna_charger_notify_call);
  assert(load64(cdev, 0xdb8) == (uint64_t)(uintptr_t)tcm);
  assert(load16(cdev, 0x442) == 0x1234);
  assert(load16(cdev, 0x444) == 0x5678);
  assert(notifier_calls == 1);
  assert(timer_calls == 1);
}

int main(void)
{
  unsigned char tcm[4096];
  unsigned char cdev[8192];
  uint32_t width = 0x1234;
  uint32_t height = 0x5678;

  memset(tcm, 0, sizeof(tcm));
  memset(cdev, 0, sizeof(cdev));
  memcpy(tcm + 0x3b8, &width, sizeof(width));
  memcpy(tcm + 0x3bc, &height, sizeof(height));
  tpd_cdev = (__int64)(uintptr_t)cdev;
  alloc_should_fail = 0;
  syna_tpd_register_fw_class((struct syna_tcm *)(void *)tcm);
  assert_registration(tcm, cdev);

  memset(tcm, 0, sizeof(tcm));
  memset(cdev, 0, sizeof(cdev));
  notifier_calls = 0;
  timer_calls = 0;
  alloc_should_fail = 1;
  syna_tpd_register_fw_class((struct syna_tcm *)(void *)tcm);
  assert(load64(tcm, 0x688) == 0);
  assert(load64(cdev, 0xdb8) == (uint64_t)(uintptr_t)tcm);
  assert(notifier_calls == 0);
  assert(timer_calls == 0);
  puts("syna_tpd_register_fw_class host contract: PASS");
  return 0;
}
