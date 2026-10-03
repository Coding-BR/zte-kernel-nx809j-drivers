
long syna_sysfs_reset_store(long param_1,undefined8 param_2,undefined8 param_3,int param_4)

{
  long lVar1;
  int iVar2;
  code *pcVar3;
  long *plVar4;
  long lVar5;
  undefined1 local_40 [4];
  int local_3c;
  long local_38;
  
  lVar5 = sp_el0;
  local_38 = *(long *)(lVar5 + 0x710);
  local_3c = 0;
  local_40[0] = 0;
  plVar4 = *(long **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  lVar5 = plVar4[0x4e];
  iVar2 = kstrtouint(param_3,10,&local_3c);
  if (iVar2 == 0) {
    if ((*(byte *)((long)plVar4 + 0x582) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017fb4c,"syna_sysfs_reset_store");
    }
    if (*(int *)((long)plVar4 + 0x57c) == 3 || local_3c == 2) {
      pcVar3 = *(code **)(plVar4[0x4e] + 0x188);
      if (pcVar3 == (code *)0x0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00181e47,"syna_sysfs_reset_store");
      }
      if (*(int *)(pcVar3 + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x1534dc);
        (*pcVar3)();
      }
      (*pcVar3)();
      if ((*(byte *)(lVar5 + 0xbc) & 1) == 0) {
        syna_tcm_get_event_data(*plVar4,local_40,0);
      }
    }
    else {
      if (local_3c != 1) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017ec8f,"syna_sysfs_reset_store");
      }
      iVar2 = syna_tcm_reset(*plVar4,*(undefined4 *)(*plVar4 + 0x20c));
      if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00181a01,"syna_sysfs_reset_store");
      }
    }
    lVar5 = (long)param_4;
  }
  else {
    lVar5 = -0x16;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return lVar5;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

