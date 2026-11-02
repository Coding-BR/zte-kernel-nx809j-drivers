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


void rtp_osc_cali(long param_1)

{
  undefined4 uVar1;
  uint uVar2;
  uint uVar3;
  ulong uVar4;
  char cVar5;
  int iVar6;
  long lVar7;
  undefined *puVar8;
  undefined8 uVar9;
  char *pcVar10;
  code *pcVar11;
  size_t sVar12;
  uint *puVar13;
  uint uVar14;
  size_t *local_50;
  long local_48;

  lVar7 = sp_el0;
  local_48 = *(long *)(lVar7 + 0x710);
  *(undefined4 *)(param_1 + 0x74) = 0;
  *(undefined4 *)(param_1 + 0x94) = 1;
  local_50 = (size_t *)0x0;
  iVar6 = request_firmware(&local_50,aw_rtp_name,*(undefined8 *)(param_1 + 800));
  if (iVar6 < 0) {
    puVar8 = &DAT_0010fb9e;
    pcVar10 = aw_rtp_name;
    uVar9 = 0x2f9;
  }
  else {
    pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x38);
    if (*(int *)(pcVar11 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x10c890);
      (*pcVar11)();
    }
    (*pcVar11)(param_1);
    *(undefined1 *)(param_1 + 5) = 0;
    mutex_lock(param_1 + 0x370);
    vfree(aw_rtp);
    sVar12 = *local_50;
    aw_rtp = (uint *)vmalloc_noprof(sVar12 + 4);
    if (aw_rtp == (uint *)0x0) {
      release_firmware(local_50);
      mutex_unlock(param_1 + 0x370);
      _printk(&DAT_001103d2,"haptic_hv",0x305,"rtp_osc_cali");
      goto LAB_0010cc30;
    }
    if (sVar12 + 4 < 4) {
                    /* WARNING: Does not return */
      pcVar11 = (code *)SoftwareBreakpoint(1,0x10cc64);
      (*pcVar11)();
    }
    *aw_rtp = (uint)*local_50;
    *(int *)(param_1 + 0x78) = (int)*local_50;
    _printk(&DAT_00111227,"haptic_hv",0x30a,"rtp_osc_cali",aw_rtp_name);
    memcpy(aw_rtp + 1,(void *)local_50[1],*local_50);
    release_firmware(local_50);
    mutex_unlock(param_1 + 0x370);
    pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x88);
    if (*(int *)(pcVar11 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x10c994);
      (*pcVar11)();
    }
    (*pcVar11)(param_1,*(undefined4 *)(param_1 + 0x34));
    _printk(&DAT_0010faf2,"haptic_hv",0x299,"ram_vbat_comp");
    pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x98);
    if (*(int *)(pcVar11 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x10c9dc);
      (*pcVar11)();
    }
    (*pcVar11)(param_1,2);
    pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x128);
    if (*(int *)(pcVar11 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x10ca08);
      (*pcVar11)();
    }
    (*pcVar11)(param_1,0);
    gpio_to_desc(*(undefined4 *)(param_1 + 0x50));
    gpiod_to_irq();
    disable_irq();
    pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x60);
    if (*(int *)(pcVar11 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x10ca44);
      (*pcVar11)();
    }
    (*pcVar11)(param_1,1);
    cpu_latency_qos_add_request(aw_pm_qos_req_vb,0);
    do {
      pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x170);
      if (*(int *)(pcVar11 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
        pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x10ca94);
        (*pcVar11)();
      }
      cVar5 = (*pcVar11)(param_1);
      if (cVar5 == '\0') {
        mutex_lock(param_1 + 0x370);
        uVar14 = *(uint *)(param_1 + 0x74);
        uVar2 = *(uint *)(param_1 + 0x458) >> 2;
        uVar3 = *aw_rtp - uVar14;
        if (uVar2 <= uVar3) {
          uVar3 = uVar2;
        }
        if (*aw_rtp != uVar14) {
          puVar13 = aw_rtp;
          if (*(int *)(param_1 + 0x94) == 1) {
            uVar9 = ktime_get();
            puVar13 = aw_rtp;
            uVar14 = *(uint *)(param_1 + 0x74);
            *(undefined8 *)(param_1 + 0x270) = uVar9;
            *(undefined4 *)(param_1 + 0x94) = 0;
          }
          pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xd0);
          if (*(int *)(pcVar11 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
            pcVar11 = (code *)SoftwareBreakpoint(0x822a,0x10cb20);
            (*pcVar11)();
          }
          (*pcVar11)(param_1,(long)puVar13 + (ulong)uVar14 + 4,uVar3);
          *(uint *)(param_1 + 0x74) = *(int *)(param_1 + 0x74) + uVar3;
        }
        mutex_unlock(param_1 + 0x370);
      }
      pcVar11 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x168);
      if (*(int *)(pcVar11 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
        pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x10cb5c);
        (*pcVar11)();
      }
      cVar5 = (*pcVar11)(param_1);
      lVar7 = ktime_get();
      *(long *)(param_1 + 0x268) = lVar7;
      if (cVar5 != '\0') {
        uVar1 = *(undefined4 *)(param_1 + 0x74);
        puVar8 = &DAT_00110040;
        uVar9 = 0x338;
        goto LAB_0010cbd4;
      }
      uVar4 = (lVar7 - *(long *)(param_1 + 0x270)) / 1000;
      *(ulong *)(param_1 + 0xa0) = uVar4;
    } while (uVar4 < 0x4dd1e1);
    uVar1 = *(undefined4 *)(param_1 + 0x74);
    puVar8 = &DAT_001103fb;
    uVar9 = 0x340;
LAB_0010cbd4:
    _printk(puVar8,"haptic_hv",uVar9,"rtp_osc_cali",uVar1);
    cpu_latency_qos_remove_request(aw_pm_qos_req_vb);
    gpio_to_desc(*(undefined4 *)(param_1 + 0x50));
    gpiod_to_irq();
    enable_irq();
    puVar8 = &DAT_00110435;
    uVar9 = 0x34a;
    pcVar10 = (char *)((*(long *)(param_1 + 0x268) - *(long *)(param_1 + 0x270)) / 1000);
    *(char **)(param_1 + 0xa0) = pcVar10;
  }
  _printk(puVar8,"haptic_hv",uVar9,"rtp_osc_cali",pcVar10);
LAB_0010cc30:
  lVar7 = sp_el0;
  if (*(long *)(lVar7 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}
