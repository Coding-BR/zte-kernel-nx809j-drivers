
undefined8 syna_tcm_testing_0001_check_device_id(long param_1,char *param_2,uint param_3)

{
  char cVar1;
  int iVar2;
  int iVar3;
  
  if ((param_1 != 0) && (param_2 != (char *)0x0)) {
    if (-1 < (int)(0x10 - param_3)) {
      cVar1 = *param_2;
      iVar3 = 0;
      do {
        if ((*(char *)(param_1 + iVar3) == cVar1) &&
           (iVar2 = strncmp((char *)(param_1 + iVar3),param_2,(ulong)param_3), iVar2 == 0)) {
          return 1;
        }
        iVar3 = iVar3 + 1;
      } while (iVar3 <= (int)(0x10 - param_3));
    }
    _printk(&DAT_0013db40,"syna_tcm_testing_0001_check_device_id",param_1,param_2);
  }
  return 0;
}

