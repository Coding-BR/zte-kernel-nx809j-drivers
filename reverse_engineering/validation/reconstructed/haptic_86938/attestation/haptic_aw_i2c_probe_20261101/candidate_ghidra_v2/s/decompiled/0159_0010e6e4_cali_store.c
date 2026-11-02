
long cali_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  byte bVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  code *pcVar6;
  long lVar7;
  long lVar8;
  int local_4c;
  long local_48;
  
  lVar8 = sp_el0;
  local_48 = *(long *)(lVar8 + 0x710);
  lVar8 = *(long *)(param_1 + 0x98);
  local_4c = 0;
  iVar3 = kstrtouint(param_3,0,&local_4c);
  if (iVar3 < 0) {
    param_4 = (long)iVar3;
    goto LAB_0010e8b4;
  }
  if (local_4c == 0) goto LAB_0010e8b4;
  lVar7 = lVar8 + -0xa8;
  mutex_lock(lVar8 + 0x248);
  iVar3 = *(int *)(lVar8 + 0x3c0);
  bVar1 = *(byte *)(lVar8 + 0x3ba);
  pcVar6 = *(code **)(*(long *)(lVar8 + 0x520) + 0x118);
  if (*(int *)(pcVar6 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10e774);
    (*pcVar6)();
  }
  (*pcVar6)(lVar7,0);
  if (*(int *)((code *)**(undefined8 **)(lVar8 + 0x520) + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
    pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10e79c);
    (*pcVar6)();
  }
  iVar4 = (*(code *)**(undefined8 **)(lVar8 + 0x520))(lVar7);
  if (iVar4 == 0) {
    uVar2 = (bVar1 + 100) * iVar3;
    uVar5 = (100 - (uint)bVar1) * iVar3;
    iVar3 = *(int *)(lVar8 + -0x48);
    _printk(&DAT_0011262c,"haptic_hv",0x2b0,"f0_cali",*(undefined4 *)(lVar8 + 0x3c0),
            (ulong)uVar5 / 100,(ulong)uVar2 / 100,iVar3);
    if ((uVar5 / 100 <= *(uint *)(lVar8 + -0x48)) && (*(uint *)(lVar8 + -0x48) <= uVar2 / 100)) {
      _printk(&DAT_00114358,"haptic_hv",0x2b9,"f0_cali",iVar3);
      uVar2 = 0;
      if (iVar3 * 0x18 != 0) {
        uVar2 = ((iVar3 - *(int *)(lVar8 + 0x3c0)) * 100000) / (iVar3 * 0x18);
      }
      _printk(&DAT_00111aec,"haptic_hv",0x2be,"f0_cali",uVar2);
      if ((int)uVar2 < 0) {
        uVar2 = -uVar2;
        bVar1 = *(byte *)(lVar8 + 0x64b);
        uVar5 = -(uVar2 / 10);
        if (4 < uVar2 % 10) {
          uVar5 = ~(uVar2 / 10);
        }
        iVar3 = bVar1 + uVar5;
      }
      else {
        bVar1 = *(byte *)(lVar8 + 0x64b);
        iVar3 = uVar2 / 10 + (uint)bVar1;
        if (4 < uVar2 % 10) {
          iVar3 = iVar3 + 1;
        }
      }
      uVar5 = (uint)bVar1;
      uVar2 = -uVar5;
      if (iVar3 < (int)uVar5) {
        uVar2 = uVar5;
      }
      *(uint *)(lVar8 + -0x20) = uVar2 + iVar3 & 0xff;
      _printk(&DAT_001119c0,"haptic_hv",0x2d1,"f0_cali");
      goto LAB_0010e998;
    }
    _printk(&DAT_00113a5a,"haptic_hv",0x2b5,"f0_cali");
  }
  else {
    _printk(&DAT_00112498,"haptic_hv",0x2aa,"f0_cali");
LAB_0010e998:
    pcVar6 = *(code **)(*(long *)(lVar8 + 0x520) + 0x118);
    if (*(int *)(pcVar6 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10e9c0);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,1);
    pcVar6 = *(code **)(*(long *)(lVar8 + 0x520) + 0x38);
    if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10e9e8);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7);
  }
  mutex_unlock(lVar8 + 0x248);
LAB_0010e8b4:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return param_4;
}

