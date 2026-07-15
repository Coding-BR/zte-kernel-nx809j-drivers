
int syna_tcm_rezero(long param_1,int param_2)

{
  code *pcVar1;
  int iVar2;
  int iVar3;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_rezero");
    iVar3 = -0xf1;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_2 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_2 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_rezero");
      }
      else {
        param_2 = 0;
      }
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x123854);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x27,0,0,0,param_2);
    iVar3 = 0;
    if (iVar2 < 0) {
      _printk(&DAT_0013a7db,"syna_tcm_rezero",0x27);
      iVar3 = iVar2;
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_rezero");
    iVar3 = -0xf1;
  }
  return iVar3;
}

