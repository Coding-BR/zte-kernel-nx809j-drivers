
undefined8 syna_tcm_enable_predict_reading(long param_1,byte param_2)

{
  char *pcVar1;
  undefined8 uVar2;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_enable_predict_reading");
    uVar2 = 0xffffff0f;
  }
  else {
    *(byte *)(param_1 + 0x37a) = param_2 & 1;
    *(undefined4 *)(param_1 + 0x37c) = 0;
    pcVar1 = "enabled";
    if ((param_2 & 1) == 0) {
      pcVar1 = "disabled";
    }
    _printk(&DAT_00136165,"syna_tcm_enable_predict_reading",pcVar1);
    uVar2 = 0;
  }
  return uVar2;
}

