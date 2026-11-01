// SPDX-License-Identifier: GPL-2.0
/* Joern-only semantic model from stock Ghidra output. Kbuild uses the exact .S body. */
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


long activate_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  undefined4 local_3c;
  long local_38;

  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    _printk(&DAT_0010eea3,"haptic_hv",0x8e3,"activate_store",local_3c);
    if ((*(byte *)(lVar3 + -0xa2) & 1) == 0) {
      _printk(&DAT_00111793,"haptic_hv",0x8e5,"activate_store");
    }
    else {
      mutex_lock(lVar3 + 0x248);
      pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x80);
      if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10a50c);
        (*pcVar2)();
      }
      (*pcVar2)(lVar3 + -0xa8,1);
      hrtimer_cancel(lVar3 + 0x288);
      *(undefined4 *)(lVar3 + -0x68) = local_3c;
      mutex_unlock(lVar3 + 0x248);
      queue_work_on(0x20,*(undefined8 *)(lVar3 + 0x3a0),lVar3 + 0x380);
    }
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}
