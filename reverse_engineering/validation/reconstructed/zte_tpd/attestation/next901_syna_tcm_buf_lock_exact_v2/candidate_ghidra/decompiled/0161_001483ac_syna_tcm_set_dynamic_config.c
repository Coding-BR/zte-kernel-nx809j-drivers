
void syna_tcm_set_dynamic_config(long param_1,undefined1 param_2,uint param_3,int param_4)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  undefined1 local_3c;
  undefined1 local_3b;
  undefined1 local_3a;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00168a84,"syna_tcm_set_dynamic_config");
    return;
  }
  local_3a = (undefined1)(param_3 >> 8);
  if (*(char *)(param_1 + 9) != '\x01') {
    _printk(&DAT_00169282,"syna_tcm_set_dynamic_config");
    return;
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      _printk(&DAT_00171524,"syna_tcm_set_dynamic_config");
      return;
    }
    param_4 = 0;
  }
  local_3b = (undefined1)param_3;
  local_3c = param_2;
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8229,0x148440);
    (*pcVar2)();
  }
  iVar3 = (**(code **)(param_1 + 0x398))(param_1,0x24,&local_3c,3,0,param_4);
  if (iVar3 < 0) {
    _printk(&DAT_00172958,"syna_tcm_set_dynamic_config",0x24,param_3 & 0xffff,param_2);
    return;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}

