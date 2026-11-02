// SPDX-License-Identifier: GPL-2.0
/* Joern-only semantic model from the stock Ghidra decompilation.
 * Kbuild compiles the matching exact .S function instead.
 */
#include <stdbool.h>
typedef unsigned char undefined;
typedef unsigned char undefined1;
typedef unsigned short undefined2;
typedef unsigned int undefined4;
typedef unsigned long long undefined8;
typedef unsigned long ulong;
typedef unsigned int uint;
typedef unsigned short ushort;
typedef long code(void);
extern long sp_el0;


void vibrator_init(long param_1)

{
  int iVar1;

  _printk(&DAT_0010f834,"haptic_hv",0xfa8,"vibrator_init");
  _printk(&DAT_0011023d,"haptic_hv",0xfc5,"vibrator_init");
  *(undefined8 *)(param_1 + 0xa8) = "zte_vibrator";
  *(code **)(param_1 + 0xd8) = brightness_get;
  *(code **)(param_1 + 200) = brightness_set;
  iVar1 = devm_led_classdev_register_ext
                    (*(long *)(param_1 + 0x328) + 0x20,(undefined8 *)(param_1 + 0xa8),0);
  if (iVar1 < 0) {
    _printk(&DAT_0010f3c2,"haptic_hv",0xfd5,"vibrator_init");
  }
  iVar1 = sysfs_create_group(*(undefined8 *)(param_1 + 0xf8),vibrator_attribute_group);
  if (iVar1 < 0) {
    _printk(&DAT_0010ef6e,"haptic_hv",0xfdb,"vibrator_init");
  }
  hrtimer_init(param_1 + 0x330,1,1);
  *(code **)(param_1 + 0x358) = vibrator_timer_func;
  *(undefined8 *)(param_1 + 0x428) = 0xfffffffe00000;
  *(long *)(param_1 + 0x430) = param_1 + 0x430;
  *(long *)(param_1 + 0x438) = param_1 + 0x430;
  *(undefined8 *)(param_1 + 0x3a0) = 0xfffffffe00000;
  *(code **)(param_1 + 0x440) = vibrator_work_routine;
  *(long *)(param_1 + 0x3a8) = param_1 + 0x3a8;
  *(long *)(param_1 + 0x3b0) = param_1 + 0x3a8;
  *(code **)(param_1 + 0x3b8) = rtp_work_routine;
  __mutex_init(param_1 + 0x2f0,"&aw_haptic->lock",&vibrator_init___key_89);
  __mutex_init(param_1 + 0x370,"&aw_haptic->rtp_lock",&vibrator_init___key_91);
  *(undefined8 *)(param_1 + 0x6c8) = 0x100000000;
  *(long *)(param_1 + 0x6d0) = param_1 + 0x6d0;
  *(long *)(param_1 + 0x6d8) = param_1 + 0x6d0;
  return;
}
