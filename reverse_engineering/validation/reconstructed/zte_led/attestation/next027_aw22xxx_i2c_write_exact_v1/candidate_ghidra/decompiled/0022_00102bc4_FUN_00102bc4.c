
int FUN_00102bc4(long param_1,undefined8 param_2)

{
  int iVar1;
  ulong uVar2;
  undefined8 uVar3;
  long lVar4;
  long unaff_x21;
  long unaff_x22;
  
  *(long *)(unaff_x21 + 0xb8) = param_1;
  __mutex_init(param_1 + 0x2b0,param_2,&aw22xxx_i2c_probe___key);
  *(undefined1 *)(param_1 + 0x304) = 1;
  uVar2 = devm_pinctrl_get();
  *(ulong *)(param_1 + 0x330) = uVar2;
  if ((uVar2 == 0) || (0xfffffffffffff000 < uVar2)) {
    _printk(&DAT_00108798);
    iVar1 = -0x16;
    goto LAB_00102cc4;
  }
  uVar3 = pinctrl_lookup_state(uVar2,"aw22xxx_led_default");
  *(undefined8 *)(param_1 + 0x338) = uVar3;
  uVar2 = pinctrl_lookup_state(*(undefined8 *)(param_1 + 0x330),"aw22xxx_led_sleep");
  *(ulong *)(param_1 + 0x340) = uVar2;
  if ((((*(ulong *)(param_1 + 0x338) == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x338))) ||
      (uVar2 == 0)) || (0xfffffffffffff000 < uVar2)) {
    _printk(&DAT_00109317);
    iVar1 = -0x16;
  }
  else {
    iVar1 = pinctrl_select_state(*(undefined8 *)(param_1 + 0x330));
    if (iVar1 == 0) {
      _printk(&DAT_00108b9f);
      if (unaff_x22 == 0) {
        _dev_err();
        iVar1 = -0x16;
        *(undefined4 *)(param_1 + 0x2e0) = 0xffffffff;
      }
      else {
        iVar1 = of_property_read_variable_u32_array();
        if (iVar1 < 0) {
          g_ver_var = 0xb;
        }
        _dev_info();
        iVar1 = of_get_named_gpio();
        *(int *)(param_1 + 0x2e0) = iVar1;
        if (-1 < iVar1) {
          uVar3 = gpio_to_desc();
          iVar1 = gpiod_direction_output_raw(uVar3,1);
          if (iVar1 == 0) {
            _dev_info();
          }
          _dev_info();
          iVar1 = of_get_named_gpio();
          *(int *)(param_1 + 0x2e4) = iVar1;
          if (-1 < iVar1) {
            _dev_info();
            iVar1 = of_get_named_gpio();
            *(int *)(param_1 + 0x2e8) = iVar1;
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
              aw22xxx_hw_reset(param_1);
              _printk(&DAT_001099ce,"aw22xxx_i2c_probe",multicolor_led);
              if (multicolor_led - 1U < 2) {
                uVar3 = gpio_to_desc(*(undefined4 *)(param_1 + 0x2e0));
                gpiod_set_raw_value_cansleep(uVar3,0);
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
              iVar1 = aw22xxx_read_chipid(param_1);
              if (-1 < iVar1) {
                if ((*(int *)(param_1 + 0x2e4) < 0) || (*(byte *)(param_1 + 0x2ec) != 0)) {
                  *(byte *)(param_1 + 0x2ec) = *(byte *)(param_1 + 0x2ec) | 1;
                }
                else {
                  aw22xxx_interrupt_setup(param_1);
                  if (0xb < g_ver_var) {
                    _printk(&DAT_00108bba);
                  }
                  gpio_to_desc(*(undefined4 *)(param_1 + 0x2e4));
                  gpiod_to_irq();
                  iVar1 = devm_request_threaded_irq();
                  if (iVar1 != 0) {
                    gpio_to_desc(*(undefined4 *)(param_1 + 0x2e4));
                    gpiod_to_irq();
                    _dev_err();
                    goto LAB_00102cb4;
                  }
                }
                *(long *)(unaff_x21 + 0xb8) = param_1;
                iVar1 = aw22xxx_parse_led_cdev(param_1);
                if ((-1 < iVar1) && (iVar1 = aw22xxx_alloc_name_array(), -1 < iVar1)) {
                  aw22xxx_fw_name._0_7_ = 0x78787832327761;
                  aw22xxx_fw_name._7_1_ = 0x5f;
                  uRam000000000010fd38 = 0x6e69622e7766;
                  aw22xxx_fw_init(param_1);
                  _printk(&DAT_00108663,"aw22xxx_i2c_probe");
                  uVar3 = gpio_to_desc(*(undefined4 *)(param_1 + 0x2e0));
                  iVar1 = gpiod_direction_output_raw(uVar3,0);
                  if (iVar1 != 0) {
                    _printk(&DAT_001098ec);
                  }
                  lVar4 = zlog_register_client(zlog_aw22xxx_dev);
                  *(long *)(param_1 + 0x350) = lVar4;
                  if (lVar4 == 0) {
                    _printk(&DAT_00108d7a);
                  }
                  _printk(&DAT_001088da);
                  aw22xxx_create_proc_entry();
                  return 0;
                }
              }
              _dev_err();
            }
            else {
              _dev_err();
            }
            goto LAB_00102cb4;
          }
        }
        _dev_err();
        iVar1 = -0x16;
      }
    }
    else {
      _printk(&UNK_0010918c);
    }
  }
LAB_00102cb4:
  devm_pinctrl_put(*(undefined8 *)(param_1 + 0x330));
  *(undefined8 *)(param_1 + 0x330) = 0;
LAB_00102cc4:
  devm_kfree();
  return iVar1;
}

