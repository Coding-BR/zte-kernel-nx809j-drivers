
void syna_spi_hw_reset(long param_1)

{
  int iVar1;
  uint uVar2;
  undefined8 uVar3;
  
  if (*(int *)(param_1 + 0xf0) == 0) {
    return;
  }
  uVar2 = *(uint *)(param_1 + 0xf4);
  uVar3 = gpio_to_desc(*(int *)(param_1 + 0xf0));
  gpiod_set_raw_value(uVar3,uVar2 & 1);
  if (0 < *(int *)(param_1 + 0xfc)) {
    msleep();
  }
  iVar1 = *(int *)(param_1 + 0xf4);
  uVar3 = gpio_to_desc(*(undefined4 *)(param_1 + 0xf0));
  gpiod_set_raw_value(uVar3,iVar1 == 0);
  msleep(0x50);
  _printk(&DAT_0016701a,"syna_spi_hw_reset");
  return;
}

