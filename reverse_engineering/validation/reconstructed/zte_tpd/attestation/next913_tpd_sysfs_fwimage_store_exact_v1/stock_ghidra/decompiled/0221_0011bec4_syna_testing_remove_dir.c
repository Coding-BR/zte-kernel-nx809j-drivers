
void syna_testing_remove_dir(long param_1)

{
  if (*(long *)(param_1 + 0x3a8) != 0) {
    sysfs_remove_group(*(long *)(param_1 + 0x3a8),&attr_testing_group);
    kobject_put(*(undefined8 *)(param_1 + 0x3a8));
  }
  return;
}

