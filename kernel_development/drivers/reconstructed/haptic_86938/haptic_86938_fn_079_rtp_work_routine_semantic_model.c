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


void rtp_work_routine(long param_1)

{
  uint uVar1;
  uint uVar2;
  code *pcVar3;
  bool bVar4;
  char cVar5;
  int iVar6;
  long lVar7;
  undefined *puVar8;
  uint uVar9;
  undefined8 uVar10;
  size_t sVar11;
  long lVar12;
  long lVar13;
  uint *puVar14;
  size_t *local_70;
  long local_68;

  lVar7 = sp_el0;
  lVar12 = param_1 + -0x30;
  local_68 = *(long *)(lVar7 + 0x710);
  local_70 = (size_t *)0x0;
  mutex_lock(lVar12);
  puVar14 = (uint *)(param_1 + -0x310);
  *(undefined1 *)(param_1 + -899) = 1;
  if (5 < *puVar14) {
LAB_0010a260:
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x10a264);
    (*pcVar3)();
  }
  iVar6 = request_firmware(&local_70,aw_rtp_name + (ulong)*puVar14 * 0x40,
                           *(undefined8 *)(param_1 + -0x80));
  lVar7 = lVar12;
  if (iVar6 < 0) {
    if (5 < *puVar14) goto LAB_0010a260;
    _printk(&DAT_0010fb9e,"haptic_hv",0x46d,"rtp_work_routine",aw_rtp_name + (ulong)*puVar14 * 0x40)
    ;
  }
  else {
    *(undefined1 *)(param_1 + -0x39b) = 0;
    vfree(aw_rtp);
    sVar11 = *local_70;
    aw_rtp = (uint *)vmalloc_noprof(sVar11 + 4);
    if (aw_rtp == (uint *)0x0) {
      release_firmware(local_70);
      _printk(&DAT_001103d2,"haptic_hv",0x477,"rtp_work_routine");
    }
    else {
      if (sVar11 + 4 < 4) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(1,0x10a268);
        (*pcVar3)();
      }
      uVar9 = *puVar14;
      *aw_rtp = (uint)*local_70;
      if (5 < uVar9) goto LAB_0010a260;
      lVar13 = param_1 + -0x3a0;
      _printk(&DAT_00111227,"haptic_hv",0x47e,"rtp_work_routine",aw_rtp_name + (ulong)uVar9 * 0x40);
      memcpy(aw_rtp + 1,(void *)local_70[1],*local_70);
      mutex_unlock(lVar12);
      release_firmware(local_70);
      lVar7 = param_1 + -0xb0;
      mutex_lock();
      *(undefined1 *)(param_1 + -0x39b) = 1;
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x118);
      if (*(int *)(pcVar3 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109e0c);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13,2);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x110);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109e38);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13,0);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0xf0);
      if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109e60);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x38);
      if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109e88);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x88);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109eb8);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13,*(undefined4 *)(param_1 + -0x36c));
      _printk(&DAT_0010faf2,"haptic_hv",0x299,"ram_vbat_comp");
      uVar9 = (uint)*(byte *)(param_1 + 0xf8);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0xa0);
      if (*(byte *)(param_1 + 0xc1) <= (byte)(*(byte *)(param_1 + 0xf8) - 1)) {
        uVar9 = *(uint *)(param_1 + -0x370);
      }
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109f18);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13,uVar9);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x98);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109f44);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13,2);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x60);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109f70);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13,1);
      usleep_range_state(2000,0x9c4,2);
      iVar6 = -200;
      do {
        pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x160);
        if (*(int *)(pcVar3 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
          pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109fac);
          (*pcVar3)();
        }
        uVar9 = (*pcVar3)(lVar13);
        if ((uVar9 & 0xf) == 8) {
          _printk(&DAT_0010fc53,"haptic_hv",0x49c,"rtp_work_routine");
          usleep_range_state(2000,0x9c4,2);
          cpu_latency_qos_add_request(aw_pm_qos_req_vb,0);
          puVar14 = (uint *)(param_1 + -0x32c);
          *puVar14 = 0;
          mutex_lock(lVar12);
          goto LAB_0010a074;
        }
        usleep_range_state(2000,0x9c4,2);
        bVar4 = iVar6 != -1;
        iVar6 = iVar6 + 1;
      } while (bVar4);
      pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x38);
      if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x109ff8);
        (*pcVar3)();
      }
      (*pcVar3)(lVar13);
      _printk(&DAT_001100af,"haptic_hv",0x4a8,"rtp_work_routine");
    }
  }
  goto LAB_0010a220;
  while( true ) {
    uVar9 = *(uint *)(param_1 + 0xb8);
    uVar2 = *puVar14;
    if (uVar9 <= uVar2) {
      uVar9 = uVar9 >> 2;
    }
    pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0xd0);
    uVar1 = *aw_rtp - uVar2;
    if (uVar9 <= *aw_rtp - uVar2) {
      uVar1 = uVar9;
    }
    if (*(int *)(pcVar3 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x822c,0x10a10c);
      (*pcVar3)();
    }
    (*pcVar3)(lVar13,(long)aw_rtp + (ulong)uVar2 + 4,uVar1);
    *puVar14 = *puVar14 + uVar1;
    pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x160);
    if (*(int *)(pcVar3 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a140);
      (*pcVar3)();
    }
    uVar9 = (*pcVar3)(lVar13);
    if ((*puVar14 == *aw_rtp) || ((uVar9 & 0xf) == 0)) break;
LAB_0010a074:
    pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x170);
    if (*(int *)(pcVar3 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a098);
      (*pcVar3)();
    }
    cVar5 = (*pcVar3)(lVar13);
    if (cVar5 != '\0') goto LAB_0010a1d0;
    if (*(char *)(param_1 + -0x389) != '\x02') goto LAB_0010a208;
    if (aw_rtp == (uint *)0x0) {
      _printk(&DAT_001109d7,"haptic_hv",0x423,"rtp_play");
      goto LAB_0010a1d0;
    }
  }
  if (*puVar14 == *aw_rtp) {
    puVar8 = &DAT_00111941;
    uVar10 = 0x44d;
  }
  else {
    puVar8 = &DAT_00110cd1;
    uVar10 = 1099;
  }
  _printk(puVar8,"haptic_hv",uVar10,"rtp_play");
  *puVar14 = 0;
LAB_0010a1d0:
  if (*(char *)(param_1 + -0x389) == '\x02') {
    pcVar3 = *(code **)(*(long *)(param_1 + 0x228) + 0x110);
    if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a204);
      (*pcVar3)();
    }
    (*pcVar3)(lVar13,1);
  }
LAB_0010a208:
  mutex_unlock(lVar12);
  cpu_latency_qos_remove_request(aw_pm_qos_req_vb);
LAB_0010a220:
  *(undefined1 *)(param_1 + -899) = 0;
  mutex_unlock(lVar7);
  lVar7 = sp_el0;
  if (*(long *)(lVar7 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}
