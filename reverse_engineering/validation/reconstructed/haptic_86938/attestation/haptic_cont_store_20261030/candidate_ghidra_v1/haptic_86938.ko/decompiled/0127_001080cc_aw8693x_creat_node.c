
int aw8693x_creat_node(long param_1)

{
  int iVar1;
  
  iVar1 = sysfs_create_group(*(undefined8 *)(param_1 + 0xf8),&aw8693x_vibrator_attribute_group);
  if (iVar1 < 0) {
    _printk(&DAT_00109226,"haptic_hv",0x91a,"aw8693x_creat_node");
  }
  else {
    iVar1 = 0;
  }
  return iVar1;
}

