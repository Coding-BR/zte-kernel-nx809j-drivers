
undefined8 syna_tcm_clear_data_duplicator(long param_1)

{
  undefined8 uVar1;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_clear_data_duplicator");
    uVar1 = 0xffffff0f;
  }
  else {
    memset((void *)(param_1 + 0x13d8),0,0x1000);
    uVar1 = 0;
  }
  return uVar1;
}

