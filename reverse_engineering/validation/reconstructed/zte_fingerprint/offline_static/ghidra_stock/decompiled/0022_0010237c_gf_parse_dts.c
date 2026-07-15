
int gf_parse_dts(long param_1)

{
  int iVar1;
  undefined *puVar2;
  ulong uVar3;
  int iVar4;
  undefined8 uVar5;
  long lVar6;
  
  lVar6 = *(long *)(param_1 + 0x18);
  uVar5 = *(undefined8 *)(lVar6 + 0x2f8);
  iVar1 = zte_goodix_pinctrl_init();
  if ((iVar1 == 0) && (*(long *)(param_1 + 0x80) != 0)) {
    _printk(&DAT_00102d0e,"zte_goodix_pinctrl_select",0);
    if ((*(ulong *)(param_1 + 0x90) == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x90))) {
      _dev_err(*(long *)(param_1 + 0x18) + 0x10,"not a valid \'%s\' pinstate\n","goodix_suspend");
      iVar1 = -0x16;
LAB_001024cc:
      puVar2 = &DAT_00102df1;
LAB_001024d4:
      _printk(puVar2,"gf_parse_dts");
    }
    else {
      iVar1 = pinctrl_select_state(*(undefined8 *)(param_1 + 0x80));
      if (iVar1 != 0) {
        _dev_err(*(long *)(param_1 + 0x18) + 0x10,"can not set %s pins\n","goodix_suspend");
        if (iVar1 < 0) goto LAB_001024cc;
      }
      _printk(&DAT_00102d25,"gf_parse_dts");
      usleep_range_state(10000,0x2774,2);
      uVar3 = devm_regulator_get(lVar6 + 0x10,&DAT_001035e0);
      *(ulong *)(param_1 + 0x98) = uVar3;
      if (uVar3 < 0xfffffffffffff001) {
        iVar1 = regulator_enable();
        if (iVar1 == 0) {
          iVar1 = of_get_named_gpio(uVar5,"fp-gpio-reset",0);
          *(int *)(param_1 + 0x40) = iVar1;
          if (iVar1 < 0) {
            _printk(&DAT_00103dfc,"gf_parse_dts");
            iVar1 = -1;
          }
          else {
            _printk(&DAT_00103656,iVar1);
            iVar1 = devm_gpio_request(lVar6 + 0x10,*(undefined4 *)(param_1 + 0x40),"goodix_reset");
            if (iVar1 == 0) {
              _printk(&DAT_00103656,*(undefined4 *)(param_1 + 0x40));
              iVar1 = of_get_named_gpio(uVar5,"fp-gpio-irq",0);
              *(int *)(param_1 + 0x3c) = iVar1;
              if (iVar1 < 0) {
                _printk(&DAT_001032db,"gf_parse_dts");
                iVar1 = -1;
              }
              else {
                _printk(&DAT_00103829,iVar1);
                iVar1 = devm_gpio_request(lVar6 + 0x10,*(undefined4 *)(param_1 + 0x3c),"goodix_irq")
                ;
                if (iVar1 == 0) {
                  gpio_to_desc(*(undefined4 *)(param_1 + 0x3c));
                  gpiod_direction_input();
                  puVar2 = &DAT_00103677;
                  iVar4 = 0;
                  goto LAB_001023dc;
                }
                _printk(&DAT_00104057,"gf_parse_dts",iVar1);
                if (*(long *)(param_1 + 0x78) != 0) {
                  zlog_client_record(*(long *)(param_1 + 0x78),
                                     "Failed to request goodixfp irq gpio\n");
                  zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x100);
                }
              }
              _printk(&DAT_00103956,"gf_parse_dts");
            }
            else {
              _printk(&DAT_0010355e,"gf_parse_dts",iVar1);
              if (*(long *)(param_1 + 0x78) != 0) {
                zlog_client_record(*(long *)(param_1 + 0x78),"Failed to request goodixfp rst gpio\n"
                                  );
                zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x101);
              }
            }
          }
          puVar2 = &DAT_00103bc8;
          goto LAB_001024d4;
        }
        _printk(&DAT_001039fe,"gf_parse_dts");
        if (*(long *)(param_1 + 0x78) != 0) {
          zlog_client_record(*(long *)(param_1 + 0x78),"Failed to request goodixfp pwr gpio\n");
          zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x102);
        }
      }
      else {
        _printk(&DAT_00102e1f,"gf_parse_dts");
        iVar1 = *(int *)(param_1 + 0x98);
      }
    }
  }
  else {
    _printk(&DAT_001035bb,"gf_parse_dts",iVar1);
  }
  puVar2 = &DAT_00102ef4;
  iVar4 = iVar1;
LAB_001023dc:
  _printk(puVar2,"gf_parse_dts",iVar4);
  return iVar1;
}

