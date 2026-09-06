
undefined8 syna_tcm_set_post_reset_callback(long param_1,undefined8 param_2,undefined8 param_3)

{
  undefined8 uVar1;
  
  if (param_1 != 0) {
    *(undefined8 *)(param_1 + 0x23e0) = param_2;
    *(undefined8 *)(param_1 + 0x23d8) = param_3;
    return 0;
  }
  uVar1 = _printk(&DAT_00168a84,"syna_tcm_set_post_reset_callback");
  return uVar1;
}

