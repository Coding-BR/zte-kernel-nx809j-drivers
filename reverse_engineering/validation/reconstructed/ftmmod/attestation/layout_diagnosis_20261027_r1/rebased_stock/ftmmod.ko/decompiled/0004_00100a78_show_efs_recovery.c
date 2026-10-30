
long show_efs_recovery(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  _printk(&DAT_00100fb2,"show_efs_recovery");
  if (ftm_sysdev_priv_data_2 == 0) {
    lVar2 = -0xe;
  }
  else {
    iVar1 = snprintf(param_3,0x1000,"%d\n",(ulong)*(uint *)(ftm_sysdev_priv_data_2 + 4));
    lVar2 = (long)iVar1;
  }
  return lVar2;
}

