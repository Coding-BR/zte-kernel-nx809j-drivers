
void cleanup_module(void)

{
  sysfs_remove_group(hw_version_kobj,&nubia_hw_version_attr_group);
  kobject_put(hw_version_kobj);
  return;
}

