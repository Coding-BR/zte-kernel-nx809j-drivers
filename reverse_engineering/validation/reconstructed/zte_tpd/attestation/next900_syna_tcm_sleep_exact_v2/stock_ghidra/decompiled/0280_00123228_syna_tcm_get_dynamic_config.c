
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
    _printk(&DAT_00133fd6,"syna_tcm_get_dynamic_config");
    iVar3 = -0xf1;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_4 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_4 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_get_dynamic_config");
      }
      else {
        param_4 = 0;
      }
    }
    local_3c[0] = param_2;
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1232b8);
      (*pcVar2)();
    }
    iVar3 = (**(code **)(param_1 + 0x398))(param_1,0x23,local_3c,1,0,param_4);
    if (iVar3 < 0) {
      _printk(&DAT_001322cb,"syna_tcm_get_dynamic_config",0x23,param_2);
    }
    else if (*(uint *)(param_1 + 0x154) < 2) {
      _printk(&DAT_00137da1,"syna_tcm_get_dynamic_config");
    }
    else {
      iVar3 = 0;
      *param_3 = **(undefined2 **)(param_1 + 0x148);
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_get_dynamic_config");
    iVar3 = -0xf1;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar3);
}

