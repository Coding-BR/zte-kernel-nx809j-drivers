
void aw22xxx_i2c_remove(long param_1)

{
  undefined4 uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xb8);
  _printk(&DAT_0010d681,"aw22xxx_i2c_remove");
  remove_proc_entry("driver/colorleds_id",0);
  _printk(&DAT_0010d744,"aw22xxx_proc_deinit",0x9ca);
  sysfs_remove_group(*(undefined8 *)(lVar2 + 0x60),aw22xxx_attribute_group);
  led_classdev_unregister(lVar2 + 0x10);
  gpio_to_desc(*(undefined4 *)(lVar2 + 0x2e4));
  uVar1 = gpiod_to_irq();
  devm_free_irq(param_1 + 0x20,uVar1,lVar2);
  devm_kfree(param_1 + 0x20,lVar2);
  g_cfgarray_count = 0x1194;
  if (g_custom_en != 0) {
    g_cfgarray_count = 0xb;
  }
  return;
}

