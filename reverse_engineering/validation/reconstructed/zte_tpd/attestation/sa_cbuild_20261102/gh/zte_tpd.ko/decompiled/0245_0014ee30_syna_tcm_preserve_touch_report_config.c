
void syna_tcm_preserve_touch_report_config(long param_1,int param_2)

{
  code *pcVar1;
  int iVar2;
  undefined *puVar3;
  uint uVar4;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_preserve_touch_report_config");
  }
  uVar4 = (uint)*(byte *)(param_1 + 9);
  if (*(byte *)(param_1 + 9) == 1) {
    if (param_2 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171564,"syna_tcm_preserve_touch_report_config");
      }
      param_2 = 0;
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x14eea4);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x25,0,0,0,param_2);
    if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00168e70,"syna_tcm_preserve_touch_report_config");
    }
    if (*(long *)(param_1 + 0x148) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171750,"syna_tcm_preserve_touch_report_config",*(int *)(param_1 + 0x150),
              *(undefined4 *)(param_1 + 0x154));
    }
    if (*(int *)(param_1 + 0x150) != 0) {
      if (*(char *)(param_1 + 0x188) == '\0') {
                    /* WARNING: Subroutine does not return */
        mutex_lock(param_1 + 0x158);
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016da90,"syna_tcm_buf_lock");
    }
    uVar4 = *(uint *)(param_1 + 0x154);
    puVar3 = &DAT_0016a10a;
  }
  else {
    puVar3 = &DAT_0016c4ce;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"syna_tcm_preserve_touch_report_config",uVar4);
}

