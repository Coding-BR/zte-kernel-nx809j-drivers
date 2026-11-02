
int FUN_00102694(void)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  long unaff_x19;
  long unaff_x21;
  long unaff_x24;
  
  _dev_info();
  iVar1 = of_get_named_gpio();
  *(int *)(unaff_x19 + 0x2e4) = iVar1;
  if (iVar1 < 0) {
    _dev_err();
    _dev_err();
    iVar1 = -0x16;
  }
  else {
    _dev_info();
    iVar1 = of_get_named_gpio();
    *(int *)(unaff_x19 + 0x2e8) = iVar1;
    if (iVar1 < 0) {
      _dev_info();
    }
    else {
      _dev_info();
    }
    iVar1 = of_property_read_variable_u32_array();
    if (iVar1 < 0) {
      DAT_0010eb94 = 0;
    }
    if (((*(int *)(unaff_x19 + 0x2e0) < 0) || (iVar1 = devm_gpio_request_one(), iVar1 == 0)) &&
       ((*(int *)(unaff_x19 + 0x2e4) < 0 || (iVar1 = devm_gpio_request_one(), iVar1 == 0)))) {
      aw22xxx_hw_reset();
      _printk(&DAT_00107ef5,"aw22xxx_i2c_probe",0xa1b,multicolor_led);
      if (multicolor_led - 1U < 2) {
        uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
        gpiod_set_raw_value_cansleep(uVar2,0);
        devm_gpio_request_one();
        if (DAT_0010eb94 == 0) {
          DAT_0010ec28 = 0x1194;
          multicolor_led = 0;
          return 0;
        }
        DAT_0010ec28 = 0xb;
        multicolor_led = 0;
        return 0;
      }
      iVar1 = aw22xxx_read_chipid();
      if (iVar1 < 0) {
        _dev_err();
      }
      else {
        if ((*(int *)(unaff_x19 + 0x2e4) < 0) || ((*(byte *)(unaff_x19 + 0x2ec) & 1) != 0)) {
          *(byte *)(unaff_x19 + 0x2ec) = *(byte *)(unaff_x19 + 0x2ec) | 1;
LAB_00102934:
          *(long *)(unaff_x21 + 0xb8) = unaff_x19;
          aw22xxx_parse_led_cdev();
          aw22xxx_alloc_name_array();
          DAT_0010ebd7 = 0;
          DAT_0010ebcf = 0;
          DAT_0010ebc7 = 0;
          DAT_0010ebbf = 0;
          DAT_0010ebb7 = 0;
          DAT_0010ebaf = 0;
          DAT_0010eba7 = 0;
          aw22xxx_fw_name._0_7_ = 0x78787832327761;
          aw22xxx_fw_name._7_1_ = 0x5f;
          uRam000000000010eba0 = 0x6e69622e7766;
          _printk(&DAT_00106c1d,"aw22xxx_load_nubia_fw_name",0x5de,
                  *(undefined4 *)(unaff_x19 + 0x2e8),0);
          aw22xxx_fw_init();
          _printk(&DAT_00107f24,"aw22xxx_i2c_probe",0xa56);
          uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e0));
          iVar1 = gpiod_direction_output_raw(uVar2,0);
          if (iVar1 != 0) {
            _printk(&DAT_00106ac3,"aw22xxx_i2c_probe",0xa5b);
          }
          lVar3 = zlog_register_client(&zlog_aw22xxx_dev);
          *(long *)(unaff_x19 + 0x350) = lVar3;
          if (lVar3 == 0) {
            _printk(&DAT_00107503,"aw22xxx_i2c_probe",0xa61,"aw22xxx_i2c_probe");
          }
          aw22xxx_create_proc_entry();
          return 0;
        }
        aw22xxx_interrupt_setup();
        if (0xb < *(uint *)(unaff_x24 + 0x380)) {
          _printk(&DAT_001066d8);
        }
        gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e4));
        gpiod_to_irq();
        iVar1 = devm_request_threaded_irq();
        if (iVar1 == 0) goto LAB_00102934;
        gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x2e4));
        gpiod_to_irq();
        _dev_err();
      }
      devm_pinctrl_put(*(undefined8 *)(unaff_x19 + 0x330));
      *(undefined8 *)(unaff_x19 + 0x330) = 0;
    }
    else {
      _dev_err();
    }
  }
  devm_kfree();
  return iVar1;
}

