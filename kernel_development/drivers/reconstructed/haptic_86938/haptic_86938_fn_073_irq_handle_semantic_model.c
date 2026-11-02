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


undefined8 irq_handle(undefined8 param_1,long param_2)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  char cVar4;
  int iVar5;
  uint uVar6;
  undefined *puVar7;
  undefined8 uVar8;
  code *pcVar9;

  _printk(&DAT_0010f834,"haptic_hv",0x665,"irq_handle");
  iVar2 = *(int *)(param_2 + 0x6bc);
  pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x18);
  if (*(int *)(pcVar9 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
    pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x1090f0);
    (*pcVar9)();
  }
  iVar5 = (*pcVar9)(param_2);
  if (iVar2 == 1) {
    if (iVar5 == 0) {
      _printk(&DAT_00111628,"haptic_hv",0x66a,"irq_handle","irq_handle");
      uVar6 = *(uint *)(param_2 + 0x458) >> 1;
      while( true ) {
        richtap_update_fifo_data(param_2,uVar6);
        pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x180);
        if (*(int *)(pcVar9 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x1092fc);
          (*pcVar9)();
        }
        cVar4 = (*pcVar9)(param_2);
        if (((cVar4 != '\0') || (*(int *)(param_2 + 0x6bc) == 0)) ||
           (**(char **)(param_2 + 0x620) != 'U')) break;
        uVar6 = *(uint *)(param_2 + 0x458) >> 2;
      }
    }
    if (**(char **)(param_2 + 0x620) == -1) {
      _printk(&DAT_00110371,"haptic_hv",0x675,"irq_handle");
      pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x110);
      if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x109158);
        (*pcVar9)();
      }
      (*pcVar9)(param_2,0);
      *(undefined4 *)(param_2 + 0x6bc) = 0;
    }
  }
  else {
    if (iVar5 == 0) {
      if (*(char *)(param_2 + 5) == '\x01') {
        pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x170);
        if (*(int *)(pcVar9 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x109198);
          (*pcVar9)();
        }
        cVar4 = (*pcVar9)(param_2);
        while( true ) {
          if ((cVar4 != '\0') || (*(char *)(param_2 + 0x17) != '\x02')) goto LAB_0010941c;
          mutex_lock(param_2 + 0x370);
          uVar6 = *(uint *)(param_2 + 0x74);
          if (uVar6 == 0) break;
          if (aw_rtp == (int *)0x0) {
            puVar7 = &DAT_001109d7;
            uVar8 = 0x68d;
            goto LAB_0010938c;
          }
          uVar3 = *(uint *)(param_2 + 0x458) >> 2;
          pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0xd0);
          uVar1 = *aw_rtp - uVar6;
          if (uVar3 <= *aw_rtp - uVar6) {
            uVar1 = uVar3;
          }
          if (*(int *)(pcVar9 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
            pcVar9 = (code *)SoftwareBreakpoint(0x822c,0x109214);
            (*pcVar9)();
          }
          (*pcVar9)(param_2,(long)aw_rtp + (ulong)uVar6 + 4,uVar1);
          *(uint *)(param_2 + 0x74) = *(int *)(param_2 + 0x74) + uVar1;
          pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x160);
          if (*(int *)(pcVar9 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
            pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x109248);
            (*pcVar9)();
          }
          uVar6 = (*pcVar9)(param_2);
          if ((*(int *)(param_2 + 0x74) == *aw_rtp) || ((uVar6 & 0xf) == 0)) {
            if (*(int *)(param_2 + 0x74) == *aw_rtp) {
              puVar7 = &DAT_00111941;
              uVar8 = 0x6a8;
            }
            else {
              puVar7 = &DAT_00110cd1;
              uVar8 = 0x6a5;
            }
            _printk(puVar7,"haptic_hv",uVar8,"irq_handle");
            *(undefined1 *)(param_2 + 0x1d) = 0;
            pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x110);
            if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
              pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x109408);
              (*pcVar9)();
            }
            (*pcVar9)(param_2,0);
            *(undefined4 *)(param_2 + 0x74) = 0;
            *(undefined1 *)(param_2 + 5) = 0;
            goto LAB_00109414;
          }
          mutex_unlock(param_2 + 0x370);
          pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x170);
          if (*(int *)(pcVar9 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
            pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x109294);
            (*pcVar9)();
          }
          cVar4 = (*pcVar9)(param_2);
        }
        puVar7 = &DAT_0011039f;
        uVar8 = 0x684;
LAB_0010938c:
        _printk(puVar7,"haptic_hv",uVar8,"irq_handle");
LAB_00109414:
        mutex_unlock(param_2 + 0x370);
      }
      else {
        _printk(&DAT_00111410,"haptic_hv",0x6b5,"irq_handle");
      }
    }
LAB_0010941c:
    if (*(char *)(param_2 + 0x17) != '\x02') {
      pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x110);
      if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x109450);
        (*pcVar9)();
      }
      (*pcVar9)(param_2,0);
    }
  }
  return 1;
}
