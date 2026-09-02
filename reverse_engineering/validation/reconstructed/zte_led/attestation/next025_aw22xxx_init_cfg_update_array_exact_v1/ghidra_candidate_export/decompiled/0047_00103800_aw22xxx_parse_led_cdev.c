
ulong aw22xxx_parse_led_cdev(long param_1,undefined8 param_2)

{
  uint uVar1;
  long lVar2;
  ulong uVar3;
  
  _printk(&DAT_001095b8,"aw22xxx_parse_led_cdev");
  lVar2 = of_get_next_child(param_2,0);
  while( true ) {
    if (lVar2 == 0) {
      *(undefined8 *)(param_1 + 0x1d0) = 0xfffffffe00000;
      *(long *)(param_1 + 0x1d8) = param_1 + 0x1d8;
      *(long *)(param_1 + 0x1e0) = param_1 + 0x1d8;
      *(code **)(param_1 + 0x1e8) = aw22xxx_brightness_work;
      *(undefined8 *)(param_1 + 0x1f0) = 0xfffffffe00000;
      *(long *)(param_1 + 0x1f8) = param_1 + 0x1f8;
      *(long *)(param_1 + 0x200) = param_1 + 0x1f8;
      *(code **)(param_1 + 0x208) = aw22xxx_task_work;
      *(code **)(param_1 + 0x30) = aw22xxx_set_brightness;
      uVar1 = led_classdev_register_ext(*(undefined8 *)(param_1 + 8),param_1 + 0x10,0);
      if (uVar1 == 0) {
        uVar3 = sysfs_create_group(*(undefined8 *)(param_1 + 0x60),aw22xxx_attribute_group);
        if ((int)uVar3 != 0) {
          uVar3 = uVar3 & 0xffffffff;
          _dev_err(*(undefined8 *)(param_1 + 8),"led sysfs ret: %d\n",uVar3);
          led_classdev_unregister(param_1 + 0x10);
        }
      }
      else {
        uVar3 = (ulong)uVar1;
        _dev_err(*(undefined8 *)(param_1 + 8),"unable to register led ret=%d\n",uVar3);
      }
      return uVar3;
    }
    uVar1 = of_property_read_string(lVar2,"aw22xxx,name",param_1 + 0x10);
    if ((int)uVar1 < 0) {
      _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading led name, ret = %d\n",(ulong)uVar1);
      return (ulong)uVar1;
    }
    uVar1 = of_property_read_variable_u32_array(lVar2,"aw22xxx,imax",param_1 + 0x2f0,1,0);
    if ((int)uVar1 < 0) {
      _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading imax, ret = %d\n",(ulong)uVar1);
      return (ulong)uVar1;
    }
    uVar1 = of_property_read_variable_u32_array(lVar2,"aw22xxx,brightness",param_1 + 0x18,1,0);
    if ((int)uVar1 < 0) break;
    uVar1 = of_property_read_variable_u32_array(lVar2,"aw22xxx,max_brightness",param_1 + 0x1c,1,0);
    if ((int)uVar1 < 0) {
      _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading max brightness, ret = %d\n",
               (ulong)uVar1);
      return (ulong)uVar1;
    }
    lVar2 = of_get_next_child(param_2,lVar2);
  }
  _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading brightness, ret = %d\n",(ulong)uVar1);
  return (ulong)uVar1;
}

