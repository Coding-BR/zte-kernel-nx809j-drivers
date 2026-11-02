
undefined8 syna_tcm_testing_0002_check_config_id(long param_1,long param_2,int param_3)

{
  int iVar1;
  
  if ((param_1 != 0) && (param_2 != 0)) {
    if (-1 < param_3) {
      iVar1 = 0;
      do {
        if (*(char *)(param_1 + iVar1) != *(char *)(param_2 + iVar1)) {
          _printk(&DAT_0013a78c,"syna_tcm_testing_0002_check_config_id",param_1);
          return 0;
        }
        iVar1 = iVar1 + 1;
      } while (iVar1 <= param_3);
    }
    return 1;
  }
  return 0;
}

