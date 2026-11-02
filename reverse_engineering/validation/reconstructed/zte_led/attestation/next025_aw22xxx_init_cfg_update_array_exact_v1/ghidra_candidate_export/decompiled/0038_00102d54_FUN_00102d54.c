
int FUN_00102d54(void)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  long unaff_x20;
  long unaff_x21;
  long unaff_x24;
  
  _dev_info();
  iVar1 = of_get_named_gpio();
  *(int *)(unaff_x20 + 0x2e0) = iVar1;
  if (-1 < iVar1) {
    uVar2 = gpio_to_desc();
    iVar1 = gpiod_direction_output_raw(uVar2,1);
    if (iVar1 == 0) {
      _dev_info();
    }
    _dev_info();
    iVar1 = of_get_named_gpio();
    *(int *)(unaff_x20 + 0x2e4) = iVar1;
    if (-1 < iVar1) {
      _dev_info();
      iVar1 = of_get_named_gpio();
      *(int *)(unaff_x20 + 0x2e8) = iVar1;
      if (iVar1 < 0) {
        _dev_info();
      }
      else {
        _dev_info();
      }
      iVar1 = of_property_read_variable_u32_array();
      if (iVar1 < 0) {
        g_custom_en = 0;
      }
      iVar1 = devm_gpio_request_one();
      if ((iVar1 == 0) && (iVar1 = devm_gpio_request_one(), iVar1 == 0)) {
        aw22xxx_hw_reset();
        _printk(&DAT_00109ac6,"aw22xxx_i2c_probe",multicolor_led);
        if (multicolor_led - 1U < 2) {
          uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x20 + 0x2e0));
          gpiod_set_raw_value_cansleep(uVar2,0);
          devm_gpio_request_one();
          if (g_custom_en == 0) {
            g_cfgarray_count = 0x1194;
            multicolor_led = 0;
            return 0;
          }
          g_cfgarray_count = 0xb;
          multicolor_led = 0;
          return 0;
        }
        iVar1 = aw22xxx_read_chipid();
        if (-1 < iVar1) {
          if ((*(int *)(unaff_x20 + 0x2e4) < 0) || (*(byte *)(unaff_x20 + 0x2ec) != 0)) {
            *(byte *)(unaff_x20 + 0x2ec) = *(byte *)(unaff_x20 + 0x2ec) | 1;
          }
          else {
            aw22xxx_interrupt_setup();
            if (0xb < *(uint *)(unaff_x24 + 0x3a0)) {
              _printk(&DAT_00108c0d);
            }
            gpio_to_desc(*(undefined4 *)(unaff_x20 + 0x2e4));
            gpiod_to_irq();
            iVar1 = devm_request_threaded_irq();
            if (iVar1 != 0) {
              gpio_to_desc(*(undefined4 *)(unaff_x20 + 0x2e4));
              gpiod_to_irq();
              _dev_err();
              goto LAB_00102cf4;
            }
          }
          *(long *)(unaff_x21 + 0xb8) = unaff_x20;
          iVar1 = aw22xxx_parse_led_cdev();
          if ((-1 < iVar1) && (iVar1 = aw22xxx_alloc_name_array(), -1 < iVar1)) {
            aw22xxx_fw_name._0_7_ = 0x78787832327761;
            aw22xxx_fw_name._7_1_ = 0x5f;
            uRam000000000010fe30 = 0x6e69622e7766;
            aw22xxx_fw_init();
            _printk(&DAT_001086a0,"aw22xxx_i2c_probe");
            uVar2 = gpio_to_desc(*(undefined4 *)(unaff_x20 + 0x2e0));
            iVar1 = gpiod_direction_output_raw(uVar2,0);
            if (iVar1 != 0) {
              _printk(&DAT_001099e4);
            }
            lVar3 = zlog_register_client(zlog_aw22xxx_dev);
            *(long *)(unaff_x20 + 0x350) = lVar3;
            if (lVar3 == 0) {
              _printk(&DAT_00108dfa);
            }
            _printk(&DAT_0010892d);
            aw22xxx_create_proc_entry();
            return 0;
          }
        }
        _dev_err();
      }
      else {
        _dev_err();
      }
      goto LAB_00102cf4;
    }
  }
  _dev_err();
  iVar1 = -0x16;
LAB_00102cf4:
  devm_pinctrl_put(*(undefined8 *)(unaff_x20 + 0x330));
  *(undefined8 *)(unaff_x20 + 0x330) = 0;
  devm_kfree();
  return iVar1;
}

