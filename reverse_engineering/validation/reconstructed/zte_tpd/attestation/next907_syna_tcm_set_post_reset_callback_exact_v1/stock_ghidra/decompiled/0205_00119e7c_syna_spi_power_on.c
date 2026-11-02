
int syna_spi_power_on(long param_1,ulong param_2)

{
  char *pcVar1;
  undefined4 uVar2;
  int iVar3;
  undefined8 uVar4;
  undefined *puVar5;
  
  pcVar1 = "enable";
  if ((param_2 & 1) == 0) {
    pcVar1 = "disable";
  }
  _printk(&DAT_001346e5,"syna_spi_power_on",pcVar1);
  if ((param_2 & 1) == 0) {
    if (0 < *(int *)(param_1 + 0x100)) {
      if (*(int *)(param_1 + 0x100) == 1) {
        regulator_disable(*(undefined8 *)(param_1 + 0x110));
      }
      else if (0 < *(int *)(param_1 + 0x118)) {
        iVar3 = *(int *)(param_1 + 0x150);
        uVar4 = gpio_to_desc();
        gpiod_set_raw_value(uVar4,iVar3 == 0);
      }
      if (0 < *(int *)(param_1 + 0x124)) {
        msleep();
      }
    }
    if (0 < *(int *)(param_1 + 0x128)) {
      if (*(int *)(param_1 + 0x128) == 1) {
        regulator_disable(*(undefined8 *)(param_1 + 0x138));
      }
      else if (0 < *(int *)(param_1 + 0x140)) {
        iVar3 = *(int *)(param_1 + 0x150);
        uVar4 = gpio_to_desc();
        gpiod_set_raw_value(uVar4,iVar3 == 0);
      }
      if (0 < *(int *)(param_1 + 0x14c)) {
        msleep();
      }
    }
    uVar4 = gpio_to_desc(*(undefined4 *)(param_1 + 0xf0));
    gpiod_direction_output_raw(uVar4,0);
    usleep_range_state(10000,11000,2);
    _printk(&DAT_0013ab8c,"syna_spi_power_on");
    iVar3 = 0;
    puVar5 = &DAT_00139b6e;
  }
  else {
    if (*(int *)(param_1 + 0x128) < 1) {
      iVar3 = 0;
    }
    else {
      if (*(int *)(param_1 + 0x128) == 1) {
        if (0xfffffffffffff000 < *(ulong *)(param_1 + 0x138)) {
          _printk(&DAT_00138f62,"syna_spi_power_on");
          return 0;
        }
        iVar3 = regulator_enable();
        if (iVar3 < 0) {
          puVar5 = &DAT_00132e3e;
          goto LAB_0011a090;
        }
      }
      else {
        if (0 < *(int *)(param_1 + 0x140)) {
          uVar2 = *(undefined4 *)(param_1 + 0x150);
          uVar4 = gpio_to_desc();
          gpiod_set_raw_value(uVar4,uVar2);
        }
        iVar3 = 0;
      }
      if (0 < *(int *)(param_1 + 0x148)) {
        msleep();
      }
    }
    if (0 < *(int *)(param_1 + 0x100)) {
      if (*(int *)(param_1 + 0x100) == 1) {
        if (0xfffffffffffff000 < *(ulong *)(param_1 + 0x110)) {
          puVar5 = &DAT_0013b1d8;
LAB_0011a090:
          _printk(puVar5,"syna_spi_power_on");
          return iVar3;
        }
        iVar3 = regulator_enable();
        if (iVar3 < 0) {
          puVar5 = &DAT_0013a712;
          goto LAB_0011a090;
        }
      }
      else if (0 < *(int *)(param_1 + 0x118)) {
        uVar2 = *(undefined4 *)(param_1 + 0x150);
        uVar4 = gpio_to_desc();
        gpiod_set_raw_value(uVar4,uVar2);
      }
      if (0 < *(int *)(param_1 + 0x120)) {
        msleep();
      }
    }
    puVar5 = &DAT_00137c89;
  }
  _printk(&DAT_00136dbb,"syna_spi_power_on",puVar5);
  return iVar3;
}

