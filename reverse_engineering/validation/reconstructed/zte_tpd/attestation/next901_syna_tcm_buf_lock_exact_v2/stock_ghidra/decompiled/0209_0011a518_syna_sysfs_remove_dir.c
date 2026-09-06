
void syna_sysfs_remove_dir(long param_1)

{
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_sysfs_remove_dir");
  }
  else if (*(long *)(param_1 + 0x398) != 0) {
    syna_testing_remove_dir(param_1);
    if (*(long *)(param_1 + 0x3a0) != 0) {
      sysfs_remove_group(*(long *)(param_1 + 0x3a0),attr_debug_group);
      kobject_put(*(undefined8 *)(param_1 + 0x3a0));
    }
    sysfs_remove_group(*(undefined8 *)(param_1 + 0x398),&attr_group);
    kobject_put(*(undefined8 *)(param_1 + 0x398));
  }
  return;
}

