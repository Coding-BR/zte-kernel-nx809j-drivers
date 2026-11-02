
void syna_tcm_enable_predict_reading(long param_1,byte param_2)

{
  char *pcVar1;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017eb2d,"syna_tcm_enable_predict_reading");
  }
  *(byte *)(param_1 + 0x37a) = param_2 & 1;
  *(undefined4 *)(param_1 + 0x37c) = 0;
  pcVar1 = "enabled";
  if ((param_2 & 1) == 0) {
    pcVar1 = "disabled";
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017f8f2,"syna_tcm_enable_predict_reading",pcVar1);
}

