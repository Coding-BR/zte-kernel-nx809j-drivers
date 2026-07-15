
uint syna_dev_set_charger_mode(undefined8 *param_1,undefined4 param_2,undefined4 param_3)

{
  uint uVar1;
  
  _printk(&DAT_00136a10,"syna_dev_set_charger_mode",param_2);
  if (param_1 == (undefined8 *)0x0) {
    uVar1 = 0xffffffea;
  }
  else {
    uVar1 = syna_tcm_set_dynamic_config(*param_1,7,param_2,param_3);
    uVar1 = uVar1 & (int)uVar1 >> 0x1f;
  }
  return uVar1;
}

