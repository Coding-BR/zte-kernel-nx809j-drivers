
undefined8 gf_irq_num(long param_1)

{
  undefined8 uVar1;
  
  if (param_1 == 0) {
    _printk(&DAT_00103abf);
    uVar1 = 0xffffffed;
  }
  else {
    gpio_to_desc(*(undefined4 *)(param_1 + 0x3c));
    uVar1 = gpiod_to_irq();
  }
  return uVar1;
}

