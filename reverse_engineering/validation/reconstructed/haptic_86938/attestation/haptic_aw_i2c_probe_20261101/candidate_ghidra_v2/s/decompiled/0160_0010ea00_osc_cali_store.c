
long osc_cali_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  ulong uVar5;
  undefined8 uVar6;
  uint uVar7;
  code *pcVar8;
  long lVar9;
  long lVar10;
  int local_5c;
  long local_58;
  
  lVar10 = sp_el0;
  local_58 = *(long *)(lVar10 + 0x710);
  lVar10 = *(long *)(param_1 + 0x98);
  local_5c = 0;
  iVar3 = kstrtouint(param_3,0,&local_5c);
  if (iVar3 < 0) {
    param_4 = (long)iVar3;
    goto LAB_0010eb44;
  }
  lVar9 = lVar10 + -0xa8;
  mutex_lock(lVar10 + 0x248);
  if (local_5c == 2) {
    pcVar8 = *(code **)(*(long *)(lVar10 + 0x520) + 0x118);
    if (*(int *)(pcVar8 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
      pcVar8 = (code *)SoftwareBreakpoint(0x8228,0x10eb30);
      (*pcVar8)();
    }
    (*pcVar8)(lVar9,2);
    func_0x0010f5f0(lVar9);
  }
  else if (local_5c == 1) {
    pcVar8 = *(code **)(*(long *)(lVar10 + 0x520) + 0x118);
    if (*(int *)(pcVar8 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
      pcVar8 = (code *)SoftwareBreakpoint(0x8228,0x10ea98);
      (*pcVar8)();
    }
    (*pcVar8)(lVar9,0);
    func_0x0010f5f0(lVar9);
    uVar1 = *(uint *)(lVar10 + -8);
    pcVar8 = *(code **)(*(long *)(lVar10 + 0x520) + 0x188);
    if (*(int *)(pcVar8 + -4) != 0x9a385f3) {
                    /* WARNING: Does not return */
      pcVar8 = (code *)SoftwareBreakpoint(0x8228,0x10eacc);
      (*pcVar8)();
    }
    uVar5 = (*pcVar8)(lVar9);
    uVar4 = (uint)uVar5;
    if (uVar4 == uVar1) {
      _printk(&DAT_0011306c,"haptic_hv",0x365,"rtp_trim_lra_cali",uVar1);
    }
    else if (uVar4 < uVar1) {
      uVar7 = uVar1 - uVar4;
      if ((uint)((uVar5 & 0xffffffff) / 0x32) < uVar7) {
        _printk(&DAT_00111b1e,"haptic_hv",0x36a,"rtp_trim_lra_cali");
      }
      else {
        if ((uVar4 * 10) / 10000 <= uVar7) {
          uVar2 = 0;
          if (uVar4 * 0x18 != 0) {
            uVar2 = (uVar7 * 100000) / (uVar4 * 0x18);
          }
          uVar7 = (uint)*(byte *)(lVar10 + 0x64b);
          uVar4 = uVar2 / 10 + (uint)*(byte *)(lVar10 + 0x64b);
          if (4 < uVar2 % 10) {
            uVar4 = uVar4 + 1;
          }
          goto LAB_0010ed5c;
        }
        uVar6 = 0x371;
LAB_0010eca0:
        _printk(&DAT_00113a94,"haptic_hv",uVar6,"rtp_trim_lra_cali",uVar1,uVar5);
      }
    }
    else {
      uVar7 = uVar4 - uVar1;
      if (uVar4 < uVar1 || uVar7 == 0) {
        uVar7 = (uint)*(byte *)(lVar10 + 0x64b);
        uVar4 = 0;
      }
      else {
        if ((uint)((uVar5 & 0xffffffff) / 0x32) < uVar7) {
          _printk(&DAT_001124d8,"haptic_hv",0x37c,"rtp_trim_lra_cali");
          goto LAB_0010eb3c;
        }
        if (uVar7 < (uVar4 * 10) / 10000) {
          uVar6 = 0x382;
          goto LAB_0010eca0;
        }
        uVar2 = 0;
        if (uVar4 / 100000 != 0) {
          uVar2 = uVar7 / (uVar4 / 100000);
        }
        uVar7 = (uint)*(byte *)(lVar10 + 0x64b);
        uVar4 = ((uint)*(byte *)(lVar10 + 0x64b) - uVar2 / 0xf0) -
                (uint)(4 < uVar2 / 0x18 + (uVar2 / 0xf0) * -10);
      }
LAB_0010ed5c:
      uVar2 = -uVar7;
      if (uVar4 < uVar7) {
        uVar2 = uVar7;
      }
      *(uint *)(lVar10 + -0x10) = uVar2 + uVar4;
      pcVar8 = *(code **)(*(long *)(lVar10 + 0x520) + 0x118);
      if (*(int *)(pcVar8 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
        pcVar8 = (code *)SoftwareBreakpoint(0x8228,0x10ed94);
        (*pcVar8)();
      }
      (*pcVar8)(lVar9,2);
      _printk(&DAT_001118bc,"haptic_hv",0x3a8,"rtp_trim_lra_cali",uVar1,uVar5 & 0xffffffff);
      _printk(&DAT_00112962,"haptic_hv",0x3a9,"rtp_trim_lra_cali",uVar4,uVar2 + uVar4);
    }
  }
LAB_0010eb3c:
  mutex_unlock(lVar10 + 0x248);
LAB_0010eb44:
  lVar10 = sp_el0;
  if (*(long *)(lVar10 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return param_4;
}

