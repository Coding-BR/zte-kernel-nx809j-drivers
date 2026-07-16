
int init_module(void)

{
  int iVar1;
  
  if (debug_value == 1) {
    _printk(&DAT_00101a25);
  }
  __platform_driver_register(hardware_ver_driver,&__this_module);
  hw_version_kobj = kobject_create_and_add("nubia_hw_version",0);
  if (hw_version_kobj == 0) {
    _printk(&DAT_001016be,"nubia_hw_version_init");
    iVar1 = -0xc;
  }
  else {
    iVar1 = sysfs_create_group(hw_version_kobj,&nubia_hw_version_attr_group);
    if (iVar1 != 0) {
      _printk(&DAT_00101aa2,"nubia_hw_version_init");
    }
    if (debug_value == 1) {
      _printk(&DAT_001018f5);
    }
  }
  return iVar1;
}

