
long syna_sysfs_reset_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long *plVar3;
  long lVar4;
  undefined1 local_40 [4];
  int local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  local_3c = 0;
  local_40[0] = 0;
  plVar3 = *(long **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  lVar4 = plVar3[0x4e];
  iVar1 = kstrtouint(param_3,10,&local_3c);
  if (iVar1 != 0) {
    param_4 = -0x16;
    goto LAB_0011b088;
  }
  if ((*(byte *)((long)plVar3 + 0x582) & 1) == 0) {
    _printk(&DAT_001366bd,"syna_sysfs_reset_store");
    goto LAB_0011b088;
  }
  if (*(int *)((long)plVar3 + 0x57c) == 3 || local_3c == 2) {
    pcVar2 = *(code **)(plVar3[0x4e] + 0x188);
    if (pcVar2 == (code *)0x0) {
      _printk(&DAT_0013b16f,"syna_sysfs_reset_store");
      iVar1 = 0;
    }
    else {
      if (*(int *)(pcVar2 + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x11b048);
        (*pcVar2)();
      }
      (*pcVar2)();
      if ((*(byte *)(lVar4 + 0xbc) & 1) == 0) {
        syna_tcm_get_event_data(*plVar3,local_40,0);
      }
LAB_0011b080:
      iVar1 = (int)param_4;
    }
  }
  else if (local_3c == 1) {
    iVar1 = syna_tcm_reset(*plVar3,*(undefined4 *)(*plVar3 + 0x20c));
    if (-1 < iVar1) goto LAB_0011b080;
    _printk(&DAT_0013a66c,"syna_sysfs_reset_store");
  }
  else {
    _printk(&DAT_00134152,"syna_sysfs_reset_store");
    iVar1 = -0x16;
  }
  param_4 = (long)iVar1;
LAB_0011b088:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

