
int syna_testing_create_dir(long param_1)

{
  int iVar1;
  long lVar2;
  
  lVar2 = kobject_create_and_add("testing",*(undefined8 *)(param_1 + 0x398));
  *(long *)(param_1 + 0x3a8) = lVar2;
  if (lVar2 == 0) {
    _printk(&DAT_0013969e,"syna_testing_create_dir");
    iVar1 = -0x16;
  }
  else {
    iVar1 = sysfs_create_group(lVar2,&attr_testing_group);
    if (iVar1 < 0) {
      _printk(&DAT_001353b3,"syna_testing_create_dir");
      kobject_put(*(undefined8 *)(param_1 + 0x3a8));
    }
    else {
      iVar1 = 0;
    }
  }
  return iVar1;
}

