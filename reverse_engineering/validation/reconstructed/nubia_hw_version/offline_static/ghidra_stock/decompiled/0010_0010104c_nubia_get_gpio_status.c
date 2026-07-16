
ulong nubia_get_gpio_status(undefined4 param_1)

{
  uint uVar1;
  ulong uVar2;
  
  gpio_to_desc();
  gpiod_direction_input();
  msleep(1);
  gpio_to_desc(param_1);
  uVar2 = gpiod_get_raw_value();
  if (debug_value == 1) {
    uVar1 = (uint)uVar2;
    uVar2 = uVar2 & 0xffffffff;
    _printk(&DAT_00101bf9,uVar1 & 0xff);
  }
  return uVar2;
}

