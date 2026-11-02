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


long aw_rtp_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  long lVar4;
  uint local_3c;
  long local_38;

  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    _printk(&DAT_001110f7,"haptic_hv",0xa36,"aw_rtp_store");
    param_4 = (long)iVar1;
  }
  else {
    lVar3 = lVar4 + -0xa8;
    mutex_lock(lVar4 + 0x248);
    pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x38);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10afdc);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3);
    pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x110);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10b008);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3,0);
    pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0xf0);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10b030);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3);
    if (local_3c - 1 < 4) {
      *(uint *)(lVar4 + -0x18) = local_3c;
      _printk(&DAT_0010fa3c,"haptic_hv",0xa43,"aw_rtp_store",(ulong)local_3c,
              aw_rtp_name + (ulong)local_3c * 0x40);
      queue_work_on(0x20,*(undefined8 *)(lVar4 + 0x3a0),lVar4 + 0x2f8);
    }
    else {
      _printk(&DAT_001106bc,"haptic_hv",0xa47,"aw_rtp_store");
    }
    mutex_unlock(lVar4 + 0x248);
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}
