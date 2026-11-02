
undefined8
store_efs_recovery(undefined8 param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  long lVar1;
  int local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = 0;
  _printk(&DAT_00100ecb,"store_efs_recovery");
  if (ftm_sysdev_priv_data_2 == 0) {
    param_4 = 0xfffffffffffffff2;
  }
  else {
    sscanf(param_3,"%d",&local_3c);
    _printk(&DAT_00100f42,"store_efs_recovery",local_3c);
    *(uint *)(ftm_sysdev_priv_data_2 + 4) = (uint)(local_3c != 0);
    DataSynchronizationBarrier(3,3,0);
    _printk(&DAT_00100e46,"store_efs_recovery");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

