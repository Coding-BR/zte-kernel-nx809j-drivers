
undefined8
syna_tcm_set_data_duplicator(long param_1,byte param_2,undefined8 param_3,undefined8 param_4)

{
  undefined8 uVar1;
  
  if (param_1 != 0) {
    param_1 = param_1 + (ulong)param_2 * 0x10;
    *(undefined8 *)(param_1 + 0x13e0) = param_3;
    *(undefined8 *)(param_1 + 0x13d8) = param_4;
    return 0;
  }
  uVar1 = _printk(&DAT_00168a84,"syna_tcm_set_data_duplicator");
  return uVar1;
}

