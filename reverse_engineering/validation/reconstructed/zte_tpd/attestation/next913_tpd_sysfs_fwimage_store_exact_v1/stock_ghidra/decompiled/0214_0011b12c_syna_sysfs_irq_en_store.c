
long syna_sysfs_irq_en_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  code *pcVar4;
  long lVar5;
  long lVar6;
  int local_3c;
  long local_38;
  
  lVar5 = sp_el0;
  local_38 = *(long *)(lVar5 + 0x710);
  local_3c = 0;
  lVar5 = *(long *)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  lVar6 = *(long *)(lVar5 + 0x270);
  iVar2 = kstrtouint(param_3,10,&local_3c);
  if (iVar2 != 0) {
    param_4 = -0x16;
    goto LAB_0011b224;
  }
  lVar1 = lVar6 + 8;
  if ((lVar1 == 0) || (pcVar4 = *(code **)(lVar6 + 0x40), pcVar4 == (code *)0x0)) {
    param_4 = 0;
    goto LAB_0011b224;
  }
  if ((*(byte *)(lVar5 + 0x582) & 1) == 0) {
    _printk(&DAT_001366bd,"syna_sysfs_irq_en_store");
    goto LAB_0011b224;
  }
  if (*(int *)(lVar5 + 0x57c) == 3) {
    _printk(&DAT_00138eb9,"syna_sysfs_irq_en_store");
LAB_0011b21c:
    iVar2 = (int)param_4;
  }
  else {
    if (local_3c == 1) {
      if (*(int *)(pcVar4 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x11b214);
        (*pcVar4)();
      }
      iVar2 = (*pcVar4)(lVar1,1);
      if (-1 < iVar2) goto LAB_0011b21c;
      puVar3 = &DAT_00134666;
    }
    else {
      if (local_3c != 0) {
        _printk(&DAT_00132e8c,"syna_sysfs_irq_en_store");
        iVar2 = -0x16;
        goto LAB_0011b220;
      }
      if (*(int *)(pcVar4 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x11b1d8);
        (*pcVar4)();
      }
      iVar2 = (*pcVar4)(lVar1,0);
      if (-1 < iVar2) goto LAB_0011b21c;
      puVar3 = &DAT_0013397d;
    }
    _printk(puVar3,"syna_sysfs_irq_en_store");
  }
LAB_0011b220:
  param_4 = (long)iVar2;
LAB_0011b224:
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

