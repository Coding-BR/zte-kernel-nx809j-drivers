
ulong syna_sysfs_fw_update_store(long param_1,undefined8 param_2,undefined8 param_3,ulong param_4)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  ulong uVar4;
  long *plVar5;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  plVar5 = *(long **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  if ((*(byte *)((long)plVar5 + 0x582) & 1) == 0) {
    _printk(&DAT_001366bd,"syna_sysfs_fw_update_store");
  }
  else {
    iVar3 = kstrtouint(param_3,10,&local_2c);
    if (iVar3 == 0) {
      uVar4 = syna_dev_do_reflash(plVar5,1);
      if ((int)uVar4 < 0) {
        param_4 = uVar4 & 0xffffffff;
        _printk(&DAT_00132c76,"syna_sysfs_fw_update_store");
      }
      else if (*(char *)(*plVar5 + 9) == '\x01') {
        if (*(int *)((code *)plVar5[0xd7] + -4) != -0x51dfb8e4) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x11b44c);
          (*pcVar2)();
        }
        (*(code *)plVar5[0xd7])(plVar5);
      }
      param_4 = (ulong)(int)param_4;
    }
    else {
      param_4 = 0xffffffffffffffea;
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

