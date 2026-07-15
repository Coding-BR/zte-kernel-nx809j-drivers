
undefined4 gf_hw_reset(long param_1,uint param_2)

{
  undefined8 uVar1;
  undefined *puVar2;
  undefined4 uVar3;
  ulong uVar4;
  
  if (param_1 == 0) {
    puVar2 = &DAT_00103abf;
    uVar3 = 0xffffffed;
  }
  else {
    if (-1 < *(int *)(param_1 + 0x40)) {
      _printk(&DAT_00103591);
      uVar1 = gpio_to_desc(*(undefined4 *)(param_1 + 0x40));
      gpiod_set_raw_value(uVar1,0);
      usleep_range_state(10000,0x2774,2);
      uVar1 = gpio_to_desc(*(undefined4 *)(param_1 + 0x40));
      gpiod_set_raw_value(uVar1,1);
      if (param_2 == 0) {
        return 0;
      }
      uVar4 = (ulong)param_2;
      do {
        uVar4 = uVar4 - 1;
        __const_udelay(0x418958);
      } while (uVar4 != 0);
      return 0;
    }
    puVar2 = &DAT_001038a9;
    uVar3 = 0;
  }
  _printk(puVar2);
  return uVar3;
}

