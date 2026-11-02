
undefined8 get_aw22xxx_id(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  undefined4 uVar1;
  size_t sVar2;
  undefined8 uVar3;
  long lVar4;
  long lVar5;
  undefined8 *unaff_x23;
  
  if (*param_4 != 0) {
    return 0;
  }
  _printk(&DAT_0010920d,"get_aw22xxx_id");
  sVar2 = strnlen((char *)&g_chip_id,0x20);
  if (sVar2 < 0x21) {
    if (sVar2 < 0x21) {
      uVar3 = simple_read_from_buffer(param_2,param_3,param_4,&g_chip_id);
      return uVar3;
    }
    __fortify_panic(4,0x20,sVar2);
  }
  lVar4 = __fortify_panic(2,0x20,sVar2 + 1);
  lVar5 = *(long *)(lVar4 + 0xb8);
  _printk(&DAT_0010920d,"aw22xxx_i2c_remove",*unaff_x23);
  remove_proc_entry("driver/colorleds_id",0);
  _printk(&DAT_00108f5e);
  sysfs_remove_group(*(undefined8 *)(lVar5 + 0x60),aw22xxx_attribute_group);
  led_classdev_unregister(lVar5 + 0x10);
  gpio_to_desc(*(undefined4 *)(lVar5 + 0x2e4));
  uVar1 = gpiod_to_irq();
  devm_free_irq(lVar4 + 0x20,uVar1,lVar5);
  uVar3 = devm_kfree(lVar4 + 0x20,lVar5);
  return uVar3;
}

