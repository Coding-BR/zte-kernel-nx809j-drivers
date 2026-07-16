
undefined8 nubia_gpio_ctrl1(long param_1)

{
  undefined8 uVar1;
  undefined8 *puVar2;
  
  puVar2 = *(undefined8 **)(param_1 + 0xa8);
  if (puVar2 == (undefined8 *)0x0) {
    _dev_err(param_1 + 0x10,"Cannot get hw gpio info\n");
    uVar1 = 0xffffffea;
  }
  else if (puVar2[2] == 0) {
    _printk(&DAT_00101849);
    uVar1 = 0xffffffea;
  }
  else {
    uVar1 = pinctrl_select_state(*puVar2);
  }
  return uVar1;
}

