
undefined8 syna_tcm_testing_0001_check_device_id(long param_1,char *param_2,uint param_3)

{
  char cVar1;
  int iVar2;
  undefined8 uVar3;
  int iVar4;
  
  if ((param_1 == 0) || (param_2 == (char *)0x0)) {
    return 0;
  }
  if (-1 < (int)(0x10 - param_3)) {
    cVar1 = *param_2;
    iVar4 = 0;
    do {
      if ((*(char *)(param_1 + iVar4) == cVar1) &&
         (iVar2 = strncmp((char *)(param_1 + iVar4),param_2,(ulong)param_3), iVar2 == 0)) {
        return 1;
      }
      iVar4 = iVar4 + 1;
    } while (iVar4 <= (int)(0x10 - param_3));
  }
  uVar3 = _printk(&DAT_00172854,"syna_tcm_testing_0001_check_device_id",param_1,param_2);
  return uVar3;
}

