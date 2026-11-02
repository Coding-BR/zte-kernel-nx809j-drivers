
void syna_tcm_enable_report(long param_1,undefined1 param_2,ulong param_3,int param_4)

{
  char *pcVar1;
  long lVar2;
  code *pcVar3;
  ulong uVar4;
  undefined4 uVar5;
  undefined1 local_3c [4];
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_3c[0] = param_2;
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_enable_report");
    uVar4 = 0xffffff0f;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_4 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_4 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_enable_report");
      }
      else {
        param_4 = 0;
      }
    }
    uVar5 = 5;
    if ((param_3 & 1) == 0) {
      uVar5 = 6;
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8229,0x1223ac);
      (*pcVar3)();
    }
    uVar4 = (**(code **)(param_1 + 0x398))(param_1,uVar5,local_3c,1,0,param_4);
    if ((int)uVar4 < 0) {
      pcVar1 = "enable";
      if ((param_3 & 1) == 0) {
        pcVar1 = "disable";
      }
      uVar4 = uVar4 & 0xffffffff;
      _printk(&DAT_0013ac2b,"syna_tcm_enable_report",uVar5,pcVar1,local_3c[0]);
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_enable_report");
    uVar4 = 0xffffff0f;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}

