
long syna_sysfs_pwr_store(long param_1,undefined8 param_2,char *param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  long lVar4;
  
  lVar3 = *(long *)(*(long *)(param_1 + 0x18) + 0x18);
  lVar4 = *(long *)(lVar3 + 0x98);
  if ((*(byte *)(lVar4 + 0x582) & 1) == 0) {
    _printk(&DAT_00165eda,"syna_sysfs_pwr_store");
  }
  else {
    iVar1 = strncmp(param_3,"resume",6);
    if (iVar1 == 0) {
      pcVar2 = *(code **)(lVar4 + 0x6c0);
    }
    else {
      iVar1 = strncmp(param_3,"suspend",7);
      if (iVar1 != 0) {
        _printk(&DAT_0016460a,"syna_sysfs_pwr_store",param_3);
        return -0x16;
      }
      pcVar2 = *(code **)(lVar4 + 0x6c8);
    }
    if (pcVar2 != (code *)0x0) {
      if (*(int *)(pcVar2 + -4) != 0x2a703c0b) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x14aa10);
        (*pcVar2)();
      }
      (*pcVar2)(lVar3);
    }
    param_4 = (long)(int)param_4;
  }
  return param_4;
}

