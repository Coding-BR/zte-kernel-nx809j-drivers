#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define ZTE_TPD_HOST_TEST 1
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
struct work_struct;
struct syna_tcm;
#define _ReadStatusReg(reg) ((void)0)
#define __break(value) abort()

__int64 syna_get_charger_status_batt_psy;
int syna_work_charger_detect_work_status;
int syna_usb_detect_flag;
const char unk_35219[] = "%s";
const char unk_3A676[] = "%s %d";

static int power_status = -1;
static int set_mode_calls;
static int last_mode;
static unsigned int last_delay;

static int fake_get_property(__int64 power_supply, int property, __int64 *value)
{
  assert(power_supply != 0);
  assert(property == 0);
  assert(value != NULL);
  *value = power_status;
  return 0;
}

__int64 power_supply_get_by_name(const char *name)
{
  static __int64 descriptor[6];
  static __int64 power_supply[1];
  assert(strcmp(name, "battery") == 0);
  if (power_status == -1)
    return 0;
  descriptor[5] = (__int64)(uintptr_t)fake_get_property;
  power_supply[0] = (__int64)(uintptr_t)descriptor;
  return (__int64)(uintptr_t)power_supply;
}

int printk(const char *format, ...)
{
  (void)format;
  return 0;
}

int syna_dev_set_charger_mode(struct syna_tcm *tcm, int value,
                               unsigned int delay_ms)
{
  assert(tcm != NULL);
  set_mode_calls++;
  last_mode = value;
  last_delay = delay_ms;
  return 0;
}

#include "../../../reconstructed/zte_tpd/syna_work_charger_detect_work.c"

static void setup_memory(unsigned char *tcm, unsigned char *state,
                         unsigned char *config, int sensing_state,
                         int device_mode)
{
  memset(tcm, 0, 2048);
  memset(state, 0, 256);
  memset(config, 0, 1024);
  memcpy(tcm, &config, sizeof(config));
  memcpy(tcm + 624, &state, sizeof(state));
  memcpy(tcm + 1404, &device_mode, sizeof(device_mode));
  memcpy(config + 524, &sensing_state, sizeof(sensing_state));
}

static void run_case(int status, int device_mode, int previous, int expected_usb,
                     int expected_calls, int expected_mode)
{
  unsigned char tcm[2048];
  unsigned char state[256];
  unsigned char config[1024];
  setup_memory(tcm, state, config, 77, device_mode);
  power_status = status;
  syna_get_charger_status_batt_psy = 0;
  syna_work_charger_detect_work_status = previous;
  syna_usb_detect_flag = 99;
  set_mode_calls = 0;
  last_mode = -1;
  last_delay = 0;
  syna_work_charger_detect_work((struct work_struct *)(void *)(tcm + 1568));
  assert(syna_usb_detect_flag == expected_usb);
  assert(set_mode_calls == expected_calls);
  if (expected_calls) {
    assert(last_mode == expected_mode);
    assert(last_delay == 77U);
  }
}

int main(void)
{
  run_case(-1, 0, 0, 0, 0, 0);
  run_case(1, 0, 0, 1, 0, 0);
  run_case(4, 0, 1, 1, 0, 0);
  run_case(0, 1, 1, 0, 1, 0);
  run_case(1, 1, 0, 1, 1, 1);
  puts("syna_work_charger_detect_work host contract: PASS");
  return 0;
}
