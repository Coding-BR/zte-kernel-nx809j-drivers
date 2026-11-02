
undefined8 syna_tcm_rezero(long param_1,int param_2)

{
  code *pcVar1;
  int iVar2;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_rezero");
  }
  if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001692c2,"syna_tcm_rezero");
  }
  if (param_2 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_rezero");
    }
    param_2 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x14894c);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x27,0,0,0,param_2);
  if (-1 < iVar2) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016f482,"syna_tcm_rezero",0x27);
}

