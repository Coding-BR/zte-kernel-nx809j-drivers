
int FUN_00102bbc(void)

{
  int iVar1;
  long *plVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  long unaff_x19;
  long unaff_x21;
  long unaff_x22;
  
  plVar2 = (long *)devm_kmalloc();
  if (plVar2 == (long *)0x0) {
    return -0xc;
  }
  *plVar2 = unaff_x21;
  plVar2[1] = unaff_x19;
  *(long **)(unaff_x21 + 0xb8) = plVar2;
  __mutex_init(plVar2 + 0x56,"&aw22xxx->cfg_lock",&aw22xxx_i2c_probe___key);
  *(undefined1 *)((long)plVar2 + 0x304) = 1;
  uVar3 = devm_pinctrl_get();
  plVar2[0x66] = uVar3;
  if ((uVar3 == 0) || (0xfffffffffffff000 < uVar3)) {
    _printk(&DAT_001087d5);
    iVar1 = -0x16;
    goto LAB_00102d04;
  }
  lVar4 = pinctrl_lookup_state(uVar3,"aw22xxx_led_default");
  plVar2[0x67] = lVar4;
  uVar3 = pinctrl_lookup_state(plVar2[0x66],"aw22xxx_led_sleep");
  plVar2[0x68] = uVar3;
  if ((((plVar2[0x67] == 0) || (0xfffffffffffff000 < (ulong)plVar2[0x67])) || (uVar3 == 0)) ||
     (0xfffffffffffff000 < uVar3)) {
    _printk(&DAT_0010940f);
    iVar1 = -0x16;
  }
  else {
    iVar1 = pinctrl_select_state(plVar2[0x66]);
    if (iVar1 == 0) {
      _printk(&DAT_00108bf2);
      if (unaff_x22 == 0) {
        _dev_err();
        iVar1 = -0x16;
        *(undefined4 *)(plVar2 + 0x5c) = 0xffffffff;
      }
      else {
        iVar1 = of_property_read_variable_u32_array();
        if (iVar1 < 0) {
          g_ver_var = 0xb;
        }
        _dev_info();
        iVar1 = of_get_named_gpio();
        *(int *)(plVar2 + 0x5c) = iVar1;
        if (-1 < iVar1) {
          uVar5 = gpio_to_desc();
          iVar1 = gpiod_direction_output_raw(uVar5,1);
          if (iVar1 == 0) {
            _dev_info();
          }
          _dev_info();
          iVar1 = of_get_named_gpio();
          *(int *)((long)plVar2 + 0x2e4) = iVar1;
          if (-1 < iVar1) {
            _dev_info();
            iVar1 = of_get_named_gpio();
            *(int *)(plVar2 + 0x5d) = iVar1;
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
              aw22xxx_hw_reset(plVar2);
              _printk(&DAT_00109ac6,"aw22xxx_i2c_probe",multicolor_led);
              if (multicolor_led - 1U < 2) {
                uVar5 = gpio_to_desc((int)plVar2[0x5c]);
                gpiod_set_raw_value_cansleep(uVar5,0);
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
              iVar1 = aw22xxx_read_chipid(plVar2);
              if (-1 < iVar1) {
                if ((*(int *)((long)plVar2 + 0x2e4) < 0) || (*(byte *)((long)plVar2 + 0x2ec) != 0))
                {
                  *(byte *)((long)plVar2 + 0x2ec) = *(byte *)((long)plVar2 + 0x2ec) | 1;
                }
                else {
                  aw22xxx_interrupt_setup(plVar2);
                  if (0xb < g_ver_var) {
                    _printk(&DAT_00108c0d);
                  }
                  gpio_to_desc(*(undefined4 *)((long)plVar2 + 0x2e4));
                  gpiod_to_irq();
                  iVar1 = devm_request_threaded_irq();
                  if (iVar1 != 0) {
                    gpio_to_desc(*(undefined4 *)((long)plVar2 + 0x2e4));
                    gpiod_to_irq();
                    _dev_err();
                    goto LAB_00102cf4;
                  }
                }
                *(long **)(unaff_x21 + 0xb8) = plVar2;
                iVar1 = aw22xxx_parse_led_cdev(plVar2);
                if ((-1 < iVar1) && (iVar1 = aw22xxx_alloc_name_array(), -1 < iVar1)) {
                  aw22xxx_fw_name._0_7_ = 0x78787832327761;
                  aw22xxx_fw_name._7_1_ = 0x5f;
                  uRam000000000010fe30 = 0x6e69622e7766;
                  aw22xxx_fw_init(plVar2);
                  _printk(&DAT_001086a0,"aw22xxx_i2c_probe");
                  uVar5 = gpio_to_desc((int)plVar2[0x5c]);
                  iVar1 = gpiod_direction_output_raw(uVar5,0);
                  if (iVar1 != 0) {
                    _printk(&DAT_001099e4);
                  }
                  lVar4 = zlog_register_client(zlog_aw22xxx_dev);
                  plVar2[0x6a] = lVar4;
                  if (lVar4 == 0) {
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
      }
    }
    else {
      _printk(&DAT_00109256);
    }
  }
LAB_00102cf4:
  devm_pinctrl_put(plVar2[0x66]);
  plVar2[0x66] = 0;
LAB_00102d04:
  devm_kfree();
  return iVar1;
}

