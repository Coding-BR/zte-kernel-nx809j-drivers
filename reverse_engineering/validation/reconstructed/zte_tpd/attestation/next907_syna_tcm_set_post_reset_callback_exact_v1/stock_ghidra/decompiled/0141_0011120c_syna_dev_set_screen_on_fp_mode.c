
int syna_dev_set_screen_on_fp_mode(undefined8 *param_1,undefined4 param_2)

{
  int iVar1;
  
  _printk(&DAT_001375c2,"syna_dev_set_screen_on_fp_mode");
  if (param_1 == (undefined8 *)0x0) {
    iVar1 = -0x16;
  }
  else {
    iVar1 = syna_tcm_set_dynamic_config(*param_1,0xd4,3,param_2);
    if (iVar1 < 0) {
      _printk(&DAT_0013be12,"syna_dev_set_screen_on_fp_mode");
    }
    else {
      iVar1 = 0;
    }
  }
  return iVar1;
}

