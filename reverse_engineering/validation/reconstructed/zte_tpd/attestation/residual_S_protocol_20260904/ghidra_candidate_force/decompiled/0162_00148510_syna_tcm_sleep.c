
undefined8 syna_tcm_sleep(long param_1,ulong param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  undefined4 uVar3;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168a84,"syna_tcm_sleep");
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171524,"syna_tcm_sleep");
    }
    param_3 = 0;
  }
  uVar3 = 0x2c;
  if ((param_2 & 1) == 0) {
    uVar3 = 0x2d;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8229,0x14857c);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,uVar3,0,0,0,param_3);
  if (-1 < iVar2) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00171ccc,"syna_tcm_sleep",uVar3);
}

