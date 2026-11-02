
undefined8 syna_tcm_testing_0002_check_config_id(long param_1,long param_2,int param_3)

{
  undefined8 uVar1;
  int iVar2;
  
  if ((param_1 != 0) && (param_2 != 0)) {
    if (-1 < param_3) {
      iVar2 = 0;
      do {
        if (*(char *)(param_1 + iVar2) != *(char *)(param_2 + iVar2)) {
          uVar1 = _printk(&DAT_0018198b,"syna_tcm_testing_0002_check_config_id",param_1);
          return uVar1;
        }
        iVar2 = iVar2 + 1;
      } while (iVar2 <= param_3);
    }
    return 1;
  }
  return 0;
}

