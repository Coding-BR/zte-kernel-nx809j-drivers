
int syna_tcm_sleep(long param_1,ulong param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_sleep");
    iVar4 = -0xf1;
  }
  else {
    if (param_3 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_3 = *(int *)(param_1 + 0x20c);
        param_2 = param_2 & 0xffffffff;
        _printk(&DAT_0013c851,"syna_tcm_sleep");
      }
      else {
        param_3 = 0;
      }
    }
    uVar3 = 0x2c;
    if ((param_2 & 1) == 0) {
      uVar3 = 0x2d;
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8229,0x123968);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,uVar3,0,0,0,param_3);
    iVar4 = 0;
    if (iVar2 < 0) {
      _printk(&DAT_0013cfe1,"syna_tcm_sleep",uVar3);
      iVar4 = iVar2;
    }
  }
  return iVar4;
}

