/* 00100784 ftm_remove */

void ftm_remove(void)

{
  _printk(&DAT_00100eb2,"ftm_remove");
  _printk(&DAT_00100e2d,"ftm_remove");
  return;
}



/* 001007d0 show_secboot_status */

long show_secboot_status(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  ulong uVar2;
  
  uVar2 = is_secboot_device();
  iVar1 = snprintf(param_3,0x1000,"%d\n",uVar2 & 0xffffffff);
  return (long)iVar1;
}



/* 00100818 show_simlock_status */

long show_simlock_status(undefined8 param_1,undefined8 param_2,char *param_3)

{
  long lVar1;
  int iVar2;
  ulong uVar3;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  ulong local_40;
  long local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  uStack_90 = 0x58030;
  local_38 = 0;
  uStack_30 = 0;
  local_48 = 0;
  local_40 = 0;
  local_58 = 0;
  uStack_50 = 0;
  if (ftm_sysdev_priv_data_0 == '\0') {
    uStack_90 = 0x30;
  }
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 2;
  iVar2 = qcom_scm_qseecom_call(0x2000807,&local_98,1);
  if (iVar2 == 0) {
    uVar3 = local_40 & 0xffffffff | local_38 << 0x20;
  }
  else {
    _printk(&DAT_00100f7d,6,iVar2);
    uVar3 = 0;
  }
  _printk(&DAT_00100f05,"show_simlock_status",uVar3);
  iVar2 = snprintf(param_3,0x1000,"%d\n",(ulong)((~(uint)uVar3 & 0xc0000000) == 0));
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return (long)iVar2;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00100928 show_permission_status */

long show_permission_status(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  _printk(&DAT_00100dd5);
  iVar1 = snprintf(param_3,0x1000,"%d\n",0);
  return (long)iVar1;
}



/* 00100978 show_efs_recovery */

long show_efs_recovery(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  _printk(&DAT_00100eb2,"show_efs_recovery");
  if (ftm_sysdev_priv_data_2 == 0) {
    lVar2 = -0xe;
  }
  else {
    iVar1 = snprintf(param_3,0x1000,"%d\n",(ulong)*(uint *)(ftm_sysdev_priv_data_2 + 4));
    lVar2 = (long)iVar1;
  }
  return lVar2;
}



/* 001009e4 store_efs_recovery */

undefined8
store_efs_recovery(undefined8 param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  long lVar1;
  int local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = 0;
  _printk(&DAT_00100eb2,"store_efs_recovery");
  if (ftm_sysdev_priv_data_2 == 0) {
    param_4 = 0xfffffffffffffff2;
  }
  else {
    sscanf(param_3,"%d",&local_3c);
    _printk(&DAT_00100f29,"store_efs_recovery",local_3c);
    *(uint *)(ftm_sysdev_priv_data_2 + 4) = (uint)(local_3c != 0);
    DataSynchronizationBarrier(3,3,0);
    _printk(&DAT_00100e2d,"store_efs_recovery");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00100acc init_module */

int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_00100eb2,"ftm_init");
  iVar1 = platform_device_register(0x100000);
  if (iVar1 == 0) {
    iVar1 = __platform_driver_probe(ftm_driver,ftm_probe,&__this_module);
    if (iVar1 == 0) {
      _printk(&DAT_00100e2d,"ftm_init");
    }
    else {
      _printk(&DAT_00100ec6,iVar1);
    }
  }
  else {
    _printk(&DAT_00100f48,iVar1);
    iVar1 = -0x13;
  }
  return iVar1;
}



/* 00100b7c ftm_probe */

int ftm_probe(long param_1)

{
  int iVar1;
  long lVar2;
  undefined *puVar3;
  undefined8 uVar4;
  
  _printk(&DAT_00100eb2,"ftm_probe");
  lVar2 = of_find_compatible_node(0,0,"qcom,msm-imem-efs-golden-copy");
  if (lVar2 == 0) {
    puVar3 = &DAT_00100faf;
  }
  else {
    ftm_sysdev_priv_data_2 = of_iomap(lVar2,0);
    if (ftm_sysdev_priv_data_2 != 0) goto LAB_00100be8;
    puVar3 = &DAT_00100e42;
  }
  _printk(puVar3);
LAB_00100be8:
  uVar4 = 0x68000000000f13;
  ftm_sysdev_priv_data_0 = 1;
  if (arm64_use_ng_mappings == '\0') {
    uVar4 = 0x68000000000713;
  }
  ftm_sysdev_priv_data_1 = ioremap_prot(0x58000,0x1000,uVar4);
  if (ftm_sysdev_priv_data_1 == 0) {
    _printk(&DAT_00100e11,"ftm_probe");
    iVar1 = -0xc;
  }
  else {
    iVar1 = sysfs_create_group(param_1 + 0x10,ftm_attr_grp);
    if (iVar1 == 0) {
      _printk(&DAT_00100e2d,"ftm_probe");
    }
    else {
      _printk(&DAT_00100e73,iVar1);
    }
  }
  return iVar1;
}



/* 00100ca0 cleanup_module */

void cleanup_module(void)

{
  platform_driver_unregister(ftm_driver);
  platform_device_unregister(0x100000);
  return;
}



