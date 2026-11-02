
void gf_hw_reset(long param_1)

{
  undefined8 uVar1;
  undefined *puVar2;
  
  if (param_1 == 0) {
    puVar2 = &DAT_001037c0;
  }
  else {
    if (-1 < *(int *)(param_1 + 0x40)) {
      _printk(&DAT_00102bb0,"gf_hw_reset");
      uVar1 = gpio_to_desc(*(undefined4 *)(param_1 + 0x40));
      gpiod_set_raw_value(uVar1,0);
      usleep_range_state(10000,0x2774,2);
      uVar1 = gpio_to_desc(*(undefined4 *)(param_1 + 0x40));
      gpiod_set_raw_value(uVar1,1);
      __const_udelay(0x147aeb8);
      return;
    }
    puVar2 = &DAT_0010301a;
  }
  _printk(puVar2,"gf_hw_reset");
  return;
}

