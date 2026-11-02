
void syna_tcm_get_app_info(long param_1,undefined8 param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_get_app_info");
  }
  if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001692c2,"syna_tcm_get_app_info");
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_get_app_info");
    }
    param_3 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x148090);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x20,0,0,0,param_3);
  if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f482,"syna_tcm_get_app_info",0x20);
  }
  if (*(char *)(param_1 + 0x188) == '\0') {
                    /* WARNING: Subroutine does not return */
    mutex_lock(param_1 + 0x158);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016da90,"syna_tcm_buf_lock");
}

