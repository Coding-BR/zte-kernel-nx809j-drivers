
undefined8 syna_testing_create_dir(long param_1)

{
  int iVar1;
  long lVar2;
  
  lVar2 = kobject_create_and_add("testing",*(undefined8 *)(param_1 + 0x398));
  *(long *)(param_1 + 0x3a8) = lVar2;
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181086,"syna_testing_create_dir");
  }
  iVar1 = sysfs_create_group(lVar2,attr_testing_group);
  if (-1 < iVar1) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017f375,"syna_testing_create_dir");
}

