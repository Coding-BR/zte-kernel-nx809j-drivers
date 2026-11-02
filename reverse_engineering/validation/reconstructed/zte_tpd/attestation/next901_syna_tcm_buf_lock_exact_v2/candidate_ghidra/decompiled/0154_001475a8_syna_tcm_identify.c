
void syna_tcm_identify(long param_1,undefined8 param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  
  if (param_1 == 0) {
    _printk(&DAT_00168a84,"syna_tcm_identify");
    return;
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      _printk(&DAT_00171524,"syna_tcm_identify");
      return;
    }
    param_3 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x14764c);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,2,0,0,0,param_3);
  if (iVar2 < 0) {
    _printk(&DAT_0016f442,"syna_tcm_identify",2);
    return;
  }
  *(undefined1 *)(param_1 + 9) = *(undefined1 *)(param_1 + 0x81);
  _printk(&DAT_00171c44,"syna_tcm_identify",*(undefined1 *)(param_1 + 0x81),
          *(undefined1 *)(param_1 + 0x80));
  return;
}

