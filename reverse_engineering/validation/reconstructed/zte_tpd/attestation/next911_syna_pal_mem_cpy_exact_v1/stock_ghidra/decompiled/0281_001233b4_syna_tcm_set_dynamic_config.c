
void syna_tcm_set_dynamic_config(long param_1,undefined1 param_2,uint param_3,int param_4)

{
  long lVar1;
  undefined1 uVar2;
  code *pcVar3;
  int iVar4;
  undefined1 local_3c;
  undefined1 local_3b;
  undefined1 local_3a;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_set_dynamic_config");
    iVar4 = -0xf1;
  }
  else {
    uVar2 = (undefined1)(param_3 >> 8);
    if (*(char *)(param_1 + 9) == '\x01') {
      if (param_4 == 0) {
        if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
          param_4 = *(int *)(param_1 + 0x20c);
          _printk(&DAT_0013c851,"syna_tcm_set_dynamic_config");
        }
        else {
          param_4 = 0;
        }
      }
      local_3b = (undefined1)param_3;
      local_3c = param_2;
      local_3a = uVar2;
      if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8229,0x123448);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(param_1 + 0x398))(param_1,0x24,&local_3c,3,0,param_4);
      if (iVar4 < 0) {
        _printk(&DAT_0013dc40,"syna_tcm_set_dynamic_config",0x24,param_3 & 0xffff,param_2);
      }
      else {
        iVar4 = 0;
      }
    }
    else {
      _printk(&DAT_001347b2,"syna_tcm_set_dynamic_config");
      iVar4 = -0xf1;
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar4);
}

