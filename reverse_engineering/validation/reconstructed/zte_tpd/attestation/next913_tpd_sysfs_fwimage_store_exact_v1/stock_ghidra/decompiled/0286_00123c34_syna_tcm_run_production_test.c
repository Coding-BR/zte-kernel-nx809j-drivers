
void syna_tcm_run_production_test(long param_1,undefined1 param_2,long param_3,int param_4)

{
  long lVar1;
  code *pcVar2;
  uint uVar3;
  ulong uVar4;
  undefined1 local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_run_production_test");
    uVar4 = 0xffffff0f;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_4 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_4 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_run_production_test");
      }
      else {
        param_4 = 0;
      }
    }
    local_3c[0] = param_2;
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x123cc0);
      (*pcVar2)();
    }
    uVar4 = (**(code **)(param_1 + 0x398))(param_1,0x2a,local_3c,1,0,param_4);
    if ((int)uVar4 < 0) {
      uVar4 = uVar4 & 0xffffffff;
      _printk(&DAT_0013aca3,"syna_tcm_run_production_test",local_3c[0],0x2a);
    }
    else if (param_3 != 0) {
      uVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x148);
      if ((int)uVar3 < 0) {
        uVar4 = (ulong)uVar3;
        _printk(&DAT_00137dcb,"syna_tcm_run_production_test");
      }
      else {
        uVar4 = 0;
      }
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_run_production_test");
    uVar4 = 0xffffff0f;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar4);
  }
  return;
}

