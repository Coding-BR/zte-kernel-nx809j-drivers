
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
    _printk(&fp_goodix_exact_rodata_01ee,"zte_goodix_pinctrl_select",0);
    if ((*(ulong *)(param_1 + 0x90) == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x90))) {
      _dev_err(*(long *)(param_1 + 0x18) + 0x10,"not a valid \'%s\' pinstate\n","goodix_suspend");
      iVar1 = -0x16;
LAB_00102524:
      puVar2 = &fp_goodix_exact_rodata_02b6;
LAB_0010252c:
      _printk(puVar2,"gf_parse_dts");
    }
    else {
      iVar1 = pinctrl_select_state(*(undefined8 *)(param_1 + 0x80));
      if (iVar1 != 0) {
        _dev_err(*(long *)(param_1 + 0x18) + 0x10,"can not set %s pins\n","goodix_suspend");
        if (iVar1 < 0) goto LAB_00102524;
      }
      _printk(&fp_goodix_exact_rodata_0205,"gf_parse_dts");
      usleep_range_state(10000,0x2774,2);
      uVar3 = devm_regulator_get(lVar6 + 0x10,&fp_goodix_exact_rodata_09a7);
      *(ulong *)(param_1 + 0x98) = uVar3;
      if (uVar3 < 0xfffffffffffff001) {
        iVar1 = regulator_enable();
        if (iVar1 == 0) {
          iVar1 = of_get_named_gpio(uVar5,"fp-gpio-reset",0);
          *(int *)(param_1 + 0x40) = iVar1;
          if (iVar1 < 0) {
            _printk(&fp_goodix_exact_rodata_1131,"gf_parse_dts");
            iVar1 = -1;
          }
          else {
            _printk(&fp_goodix_exact_rodata_0a33,iVar1);
            iVar1 = devm_gpio_request(lVar6 + 0x10,*(undefined4 *)(param_1 + 0x40),"goodix_reset");
            if (iVar1 == 0) {
              _printk(&fp_goodix_exact_rodata_0a33,*(undefined4 *)(param_1 + 0x40));
              iVar1 = of_get_named_gpio(uVar5,fp_goodix_exact_rodata_0e6b,0);
              *(int *)(param_1 + 0x3c) = iVar1;
              if (iVar1 < 0) {
                _printk(&fp_goodix_exact_rodata_077c,"gf_parse_dts");
                iVar1 = -1;
              }
              else {
                _printk(&fp_goodix_exact_rodata_0b75,iVar1);
                iVar1 = devm_gpio_request(lVar6 + 0x10,*(undefined4 *)(param_1 + 0x3c),"goodix_irq")
                ;
                if (iVar1 == 0) {
                  gpio_to_desc(*(undefined4 *)(param_1 + 0x3c));
                  gpiod_direction_input();
                  puVar2 = &fp_goodix_exact_rodata_0a54;
                  iVar4 = 0;
                  goto LAB_00102434;
                }
                _printk(&fp_goodix_exact_rodata_1375,"gf_parse_dts",iVar1);
                if (*(long *)(param_1 + 0x78) != 0) {
                  zlog_client_record(*(long *)(param_1 + 0x78),
                                     "Failed to request goodixfp irq gpio\n");
                  zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x100);
                }
              }
              _printk(&fp_goodix_exact_rodata_0d0b,"gf_parse_dts");
            }
            else {
              _printk(&fp_goodix_exact_rodata_08b8,"gf_parse_dts",iVar1);
              if (*(long *)(param_1 + 0x78) != 0) {
                zlog_client_record(*(long *)(param_1 + 0x78),"Failed to request goodixfp rst gpio\n"
                                  );
                zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x101);
              }
            }
          }
          puVar2 = &fp_goodix_exact_rodata_0f9f;
          goto LAB_0010252c;
        }
        _printk(&fp_goodix_exact_rodata_0d91,"gf_parse_dts");
        if (*(long *)(param_1 + 0x78) != 0) {
          zlog_client_record(*(long *)(param_1 + 0x78),"Failed to request goodixfp pwr gpio\n");
          zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x102);
        }
      }
      else {
        _printk(&fp_goodix_exact_rodata_02e4,"gf_parse_dts");
        iVar1 = *(int *)(param_1 + 0x98);
      }
    }
  }
  else {
    _printk(&fp_goodix_exact_rodata_0982,"gf_parse_dts",iVar1);
  }
  puVar2 = &fp_goodix_exact_rodata_03d3;
  iVar4 = iVar1;
LAB_00102434:
  _printk(puVar2,"gf_parse_dts",iVar4);
  return iVar1;
}

