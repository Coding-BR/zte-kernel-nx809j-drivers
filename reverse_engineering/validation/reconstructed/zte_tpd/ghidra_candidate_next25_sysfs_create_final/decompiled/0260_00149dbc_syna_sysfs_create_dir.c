
int syna_sysfs_create_dir(long param_1,long param_2)

{
  int iVar1;
  long lVar2;
  
  lVar2 = kobject_create_and_add("sysfs",param_2 + 0x10);
  *(long *)(param_1 + 0x398) = lVar2;
  if (lVar2 == 0) {
    _printk(&DAT_00168bd1,"syna_sysfs_create_dir");
    iVar1 = -0x14;
  }
  else {
    iVar1 = sysfs_create_group(lVar2,attr_group);
    if (iVar1 < 0) {
      _printk(&DAT_0016547e,"syna_sysfs_create_dir");
    }
    else {
      iVar1 = syna_testing_create_dir(param_1);
      if (-1 < iVar1) {
        return 0;
      }
      _printk(&DAT_00168129,"syna_sysfs_create_dir");
      sysfs_remove_group(*(undefined8 *)(param_1 + 0x398),attr_group);
    }
    kobject_put(*(undefined8 *)(param_1 + 0x398));
  }
  return iVar1;
}

