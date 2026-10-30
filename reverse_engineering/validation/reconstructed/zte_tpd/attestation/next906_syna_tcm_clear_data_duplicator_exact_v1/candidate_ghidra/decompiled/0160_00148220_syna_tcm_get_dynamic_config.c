
void syna_tcm_get_dynamic_config(long param_1,undefined1 param_2,undefined2 *param_3,int param_4)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  undefined1 local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00168a84,"syna_tcm_get_dynamic_config");
    return;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    _printk(&DAT_00169282,"syna_tcm_get_dynamic_config");
    return;
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      _printk(&DAT_00171524,"syna_tcm_get_dynamic_config");
      return;
    }
    param_4 = 0;
  }
  local_3c[0] = param_2;
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1482b0);
    (*pcVar2)();
  }
  iVar3 = (**(code **)(param_1 + 0x398))(param_1,0x23,local_3c,1,0,param_4);
  if (iVar3 < 0) {
    _printk(&DAT_00166d16,"syna_tcm_get_dynamic_config",0x23,param_2);
    return;
  }
  if (1 < *(uint *)(param_1 + 0x154)) {
    *param_3 = **(undefined2 **)(param_1 + 0x148);
    lVar1 = sp_el0;
    if (*(long *)(lVar1 + 0x710) == local_38) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(0);
  }
  _printk(&DAT_0016c936,"syna_tcm_get_dynamic_config");
  return;
}

