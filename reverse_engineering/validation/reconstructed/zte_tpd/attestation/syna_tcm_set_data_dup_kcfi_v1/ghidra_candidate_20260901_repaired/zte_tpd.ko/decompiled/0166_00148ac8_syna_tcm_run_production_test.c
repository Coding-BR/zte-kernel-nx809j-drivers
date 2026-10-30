
void syna_tcm_run_production_test(long param_1,undefined1 param_2,long param_3,int param_4)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  undefined8 uVar4;
  undefined1 local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00168a84,"syna_tcm_run_production_test");
    return;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    _printk(&DAT_00169282,"syna_tcm_run_production_test");
    return;
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      _printk(&DAT_00171524,"syna_tcm_run_production_test");
      return;
    }
    param_4 = 0;
  }
  local_3c[0] = param_2;
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x148b54);
    (*pcVar2)();
  }
  uVar4 = (**(code **)(param_1 + 0x398))(param_1,0x2a,local_3c,1,0,param_4);
  if ((int)uVar4 < 0) {
    _printk(&DAT_0016f91c,"syna_tcm_run_production_test",local_3c[0],0x2a);
    return;
  }
  if (param_3 != 0) {
    iVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x148);
    if (iVar3 < 0) {
      _printk(&DAT_0016c960,"syna_tcm_run_production_test");
      return;
    }
    uVar4 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}

