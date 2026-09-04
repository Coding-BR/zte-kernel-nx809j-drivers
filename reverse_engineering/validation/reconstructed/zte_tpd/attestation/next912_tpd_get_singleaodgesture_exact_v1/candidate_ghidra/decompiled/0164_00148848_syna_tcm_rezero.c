
undefined8 syna_tcm_rezero(long param_1,int param_2)

{
  code *pcVar1;
  int iVar2;
  undefined8 uVar3;
  
  if (param_1 == 0) {
    uVar3 = _printk(&DAT_00168a84,"syna_tcm_rezero");
    return uVar3;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    uVar3 = _printk(&DAT_00169282,"syna_tcm_rezero");
    return uVar3;
  }
  if (param_2 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar3 = _printk(&DAT_00171524,"syna_tcm_rezero");
      return uVar3;
    }
    param_2 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1488b0);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x27,0,0,0,param_2);
  if (-1 < iVar2) {
    return 0;
  }
  uVar3 = _printk(&DAT_0016f442,"syna_tcm_rezero",0x27);
  return uVar3;
}

