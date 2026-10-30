
int syna_spi_get_gpio(undefined4 param_1,int param_2,undefined4 param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 uVar2;
  undefined *puVar3;
  
  iVar1 = scnprintf(param_4,0x10,"tcm_gpio_%d\n",param_1);
  if (iVar1 < 0) {
    _printk(&DAT_0013bfbd,"syna_spi_get_gpio");
  }
  else {
    iVar1 = gpio_request(param_1,param_4);
    if (iVar1 < 0) {
      puVar3 = &DAT_0013d462;
    }
    else {
      uVar2 = gpio_to_desc(param_1);
      if (param_2 == 0) {
        iVar1 = gpiod_direction_input();
      }
      else {
        iVar1 = gpiod_direction_output_raw(uVar2,param_3);
      }
      if (-1 < iVar1) {
        return 0;
      }
      puVar3 = &DAT_00138fbe;
    }
    _printk(puVar3,"syna_spi_get_gpio",param_1);
  }
  return iVar1;
}

