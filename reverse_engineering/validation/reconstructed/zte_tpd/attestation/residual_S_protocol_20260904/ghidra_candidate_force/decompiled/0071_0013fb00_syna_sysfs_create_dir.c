
undefined8 syna_sysfs_create_dir(long param_1,long param_2)

{
  int iVar1;
  long lVar2;
  
  lVar2 = kobject_create_and_add("sysfs",param_2 + 0x10);
  *(long *)(param_1 + 0x398) = lVar2;
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00182ded,"syna_sysfs_create_dir");
  }
  iVar1 = sysfs_create_group(lVar2,attr_group);
  if (-1 < iVar1) {
    iVar1 = syna_testing_create_dir(param_1);
    if (-1 < iVar1) {
      return 0;
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0018233f,"syna_sysfs_create_dir");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017f375,"syna_sysfs_create_dir");
}

