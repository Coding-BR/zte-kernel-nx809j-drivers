
undefined8 syna_tcm_set_static_config(long param_1,undefined8 param_2,uint param_3,int param_4)

{
  code *pcVar1;
  int iVar2;
  undefined8 uVar3;
  
  if (param_1 == 0) {
    uVar3 = _printk(&DAT_00168a84,"syna_tcm_set_static_config");
    return uVar3;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    uVar3 = _printk(&DAT_00169282,"syna_tcm_set_static_config");
    return uVar3;
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar3 = _printk(&DAT_00171524,"syna_tcm_set_static_config");
      return uVar3;
    }
    param_4 = 0;
  }
  if (*(ushort *)(param_1 + 0xb4) == param_3) {
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x148fa8);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x22,param_2,param_3,0,param_4);
    if (-1 < iVar2) {
      return 0;
    }
    uVar3 = _printk(&DAT_0016f442,"syna_tcm_set_static_config",0x22);
    return uVar3;
  }
  uVar3 = _printk(&DAT_0016a5ca,"syna_tcm_set_static_config",param_3);
  return uVar3;
}

