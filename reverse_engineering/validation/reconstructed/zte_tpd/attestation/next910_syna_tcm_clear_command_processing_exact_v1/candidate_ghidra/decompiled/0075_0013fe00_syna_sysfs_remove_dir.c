
void syna_sysfs_remove_dir(long param_1)

{
  if (param_1 != 0) {
    if (*(long *)(param_1 + 0x398) != 0) {
      syna_testing_remove_dir(param_1);
      if (*(long *)(param_1 + 0x3a0) != 0) {
        sysfs_remove_group(*(long *)(param_1 + 0x3a0),attr_debug_group);
        kobject_put(*(undefined8 *)(param_1 + 0x3a0));
      }
      sysfs_remove_group(*(undefined8 *)(param_1 + 0x398),attr_group);
      kobject_put(*(undefined8 *)(param_1 + 0x398));
    }
    return;
  }
  _printk(&DAT_0017eb2d,"syna_sysfs_remove_dir");
  return;
}

