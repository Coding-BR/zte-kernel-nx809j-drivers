
int gf_parse_dts(long param_1)

{
  int iVar1;
  ulong uVar2;
  undefined *puVar3;
  long lVar4;
  
  if ((param_1 == 0) || (*(long *)(param_1 + 0x18) == 0)) {
    return -0x16;
  }
  lVar4 = *(long *)(*(long *)(param_1 + 0x18) + 0x2f8);
  if (lVar4 == 0) {
    return -0x13;
  }
  iVar1 = zte_goodix_pinctrl_init();
  if (iVar1 != 0) {
    _printk(&DAT_001035cf,"gf_parse_dts",iVar1);
  }
  if (*(long *)(param_1 + 0x80) != 0) {
    if ((*(ulong *)(param_1 + 0x90) == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x90))) {
      _dev_err(*(long *)(param_1 + 0x18) + 0x10,"not a valid \'goodix_suspend\' pinstate\n");
      return -0x16;
    }
    iVar1 = pinctrl_select_state();
    if (iVar1 != 0) {
      _dev_err(*(long *)(param_1 + 0x18) + 0x10,"can not set goodix_suspend pins\n");
      return iVar1;
    }
    _printk(&DAT_00102d9c,"gf_parse_dts");
  }
  usleep_range_state(10000,0x2774,2);
  uVar2 = devm_regulator_get(*(long *)(param_1 + 0x18) + 0x10,&DAT_00103233);
  *(ulong *)(param_1 + 0x98) = uVar2;
  if (0xfffffffffffff000 < uVar2) {
    _printk(&DAT_00103905,"gf_parse_dts");
    return *(int *)(param_1 + 0x98);
  }
  _printk(&DAT_00103925,"gf_parse_dts");
  iVar1 = regulator_enable(*(undefined8 *)(param_1 + 0x98));
  if (iVar1 == 0) {
    _printk(&DAT_0010339d,"gf_parse_dts");
    iVar1 = of_get_named_gpio(lVar4,"fp-gpio-reset",0);
    *(int *)(param_1 + 0x40) = iVar1;
    if (iVar1 < 0) {
      puVar3 = &DAT_001037d6;
LAB_00101b48:
      _printk(puVar3,"gf_parse_dts");
      return -0x16;
    }
    _printk(&DAT_001039cf,"gf_parse_dts",iVar1);
    iVar1 = devm_gpio_request(*(long *)(param_1 + 0x18) + 0x10,*(undefined4 *)(param_1 + 0x40),
                              "goodix_reset");
    if (iVar1 == 0) {
      _printk(&DAT_0010311b,"gf_parse_dts");
      iVar1 = of_get_named_gpio(lVar4,"fp-gpio-irq",0);
      *(int *)(param_1 + 0x3c) = iVar1;
      if (iVar1 < 0) {
        puVar3 = &DAT_00102e6d;
        goto LAB_00101b48;
      }
      _printk(&DAT_001038b7,"gf_parse_dts",iVar1);
      iVar1 = devm_gpio_request(*(long *)(param_1 + 0x18) + 0x10,*(undefined4 *)(param_1 + 0x3c),
                                "goodix_irq");
      if (iVar1 == 0) {
        _printk(&DAT_00102bd1,"gf_parse_dts");
        gpio_to_desc(*(undefined4 *)(param_1 + 0x3c));
        gpiod_direction_input();
        _printk(&DAT_00102cae,"gf_parse_dts");
        return 0;
      }
      _printk(&DAT_00102c8c,"gf_parse_dts");
      if (*(long *)(param_1 + 0x78) == 0) {
        return iVar1;
      }
      zlog_client_record(*(long *)(param_1 + 0x78),"Failed to request goodixfp irq gpio\n");
      zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x100);
      puVar3 = &DAT_00102b55;
    }
    else {
      _printk(&DAT_00102f93,"gf_parse_dts");
      if (*(long *)(param_1 + 0x78) == 0) {
        return iVar1;
      }
      zlog_client_record(*(long *)(param_1 + 0x78),"Failed to request goodixfp rst gpio\n");
      zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x101);
      puVar3 = &DAT_00103a63;
    }
  }
  else {
    _printk(&DAT_0010337b,"gf_parse_dts");
    if (*(long *)(param_1 + 0x78) == 0) {
      return iVar1;
    }
    zlog_client_record(*(long *)(param_1 + 0x78),"Failed to request goodixfp pwr gpio\n");
    zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x102);
    puVar3 = &DAT_00102ed4;
  }
  _printk(puVar3,"gf_parse_dts");
  return iVar1;
}

