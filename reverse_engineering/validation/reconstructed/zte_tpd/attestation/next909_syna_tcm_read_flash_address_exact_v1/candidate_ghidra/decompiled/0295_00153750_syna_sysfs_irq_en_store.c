
long syna_sysfs_irq_en_store(long param_1,undefined8 param_2,undefined8 param_3,int param_4)

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
  if (iVar2 == 0) {
    lVar1 = lVar6 + 8;
    if ((lVar1 == 0) || (pcVar4 = *(code **)(lVar6 + 0x40), pcVar4 == (code *)0x0)) {
      lVar5 = 0;
    }
    else {
      if ((*(byte *)(lVar5 + 0x582) & 1) == 0) {
        lVar5 = _printk(&DAT_0017fb4c,"syna_sysfs_irq_en_store");
        return lVar5;
      }
      if (*(int *)(lVar5 + 0x57c) == 3) {
        lVar5 = _printk(&DAT_00180eb1,"syna_sysfs_irq_en_store");
        return lVar5;
      }
      if (local_3c == 1) {
        if (*(int *)(pcVar4 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x153838);
          (*pcVar4)();
        }
        iVar2 = (*pcVar4)(lVar1,1);
        if (iVar2 < 0) {
          puVar3 = &DAT_0017ef0c;
          goto LAB_001538d0;
        }
      }
      else {
        if (local_3c != 0) {
          lVar5 = _printk(&DAT_0017e1ac,"syna_sysfs_irq_en_store");
          return lVar5;
        }
        if (*(int *)(pcVar4 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x1537fc);
          (*pcVar4)();
        }
        iVar2 = (*pcVar4)(lVar1,0);
        if (iVar2 < 0) {
          puVar3 = &DAT_0017e9fd;
LAB_001538d0:
          lVar5 = _printk(puVar3,"syna_sysfs_irq_en_store");
          return lVar5;
        }
      }
      lVar5 = (long)param_4;
    }
  }
  else {
    lVar5 = -0x16;
  }
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) == local_38) {
    return lVar5;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

