
undefined8 FUN_00102b34(void)

{
  int iVar1;
  ulong uVar2;
  long *plVar3;
  long lVar4;
  undefined8 uVar5;
  code *pcVar6;
  long unaff_x19;
  long unaff_x21;
  long unaff_x22;
  
  _printk(&DAT_00109394,"aw22xxx_i2c_probe");
  pcVar6 = *(code **)(*(long *)(*(long *)(unaff_x21 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar6 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x102b6c);
    (*pcVar6)();
  }
  uVar2 = (*pcVar6)();
  if ((uVar2 & 1) == 0) {
    _dev_err();
    uVar5 = FUN_00102b8c(0xfffffffb);
    return uVar5;
  }
  plVar3 = (long *)devm_kmalloc();
  if (plVar3 == (long *)0x0) {
    return 0xfffffff4;
  }
  *plVar3 = unaff_x21;
  plVar3[1] = unaff_x19;
  *(long **)(unaff_x21 + 0xb8) = plVar3;
  __mutex_init(plVar3 + 0x56,"&aw22xxx->cfg_lock",&aw22xxx_i2c_probe___key);
  *(undefined1 *)((long)plVar3 + 0x304) = 1;
  uVar2 = devm_pinctrl_get();
  plVar3[0x66] = uVar2;
  if ((uVar2 == 0) || (0xfffffffffffff000 < uVar2)) {
    _printk(&DAT_00108798);
    iVar1 = -0x16;
    goto LAB_00102cc8;
  }
  lVar4 = pinctrl_lookup_state(uVar2,"aw22xxx_led_default");
  plVar3[0x67] = lVar4;
  uVar2 = pinctrl_lookup_state(plVar3[0x66],"aw22xxx_led_sleep");
  plVar3[0x68] = uVar2;
  if ((((plVar3[0x67] == 0) || (0xfffffffffffff000 < (ulong)plVar3[0x67])) || (uVar2 == 0)) ||
     (0xfffffffffffff000 < uVar2)) {
    _printk(&UNK_001092dd);
    iVar1 = -0x16;
  }
  else {
    iVar1 = pinctrl_select_state(plVar3[0x66]);
    if (iVar1 == 0) {
      _printk(&UNK_00108b8e);
      if (unaff_x22 == 0) {
        _dev_err();
        iVar1 = -0x16;
        *(undefined4 *)(plVar3 + 0x5c) = 0xffffffff;
      }
      else {
        iVar1 = of_property_read_variable_u32_array();
        if (iVar1 < 0) {
          g_ver_var = 0xb;
        }
        _dev_info();
        iVar1 = of_get_named_gpio();
        *(int *)(plVar3 + 0x5c) = iVar1;
        if (-1 < iVar1) {
          uVar5 = gpio_to_desc();
          iVar1 = gpiod_direction_output_raw(uVar5,1);
          if (iVar1 == 0) {
            _dev_info();
          }
          _dev_info();
          iVar1 = of_get_named_gpio();
          *(int *)((long)plVar3 + 0x2e4) = iVar1;
          if (-1 < iVar1) {
            _dev_info();
            iVar1 = of_get_named_gpio();
            *(int *)(plVar3 + 0x5d) = iVar1;
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
              aw22xxx_hw_reset(plVar3);
              _printk(&DAT_0010996f,"aw22xxx_i2c_probe",multicolor_led);
              if (multicolor_led - 1U < 2) {
                uVar5 = gpio_to_desc((int)plVar3[0x5c]);
                gpiod_set_raw_value_cansleep(uVar5,0);
                devm_gpio_request_one();
                multicolor_led = 0;
                g_cfgarray_count = 0x1194;
                if (g_custom_en != 0) {
                  g_cfgarray_count = 0xb;
                }
                uVar5 = FUN_00102b8c(0);
                return uVar5;
              }
              iVar1 = aw22xxx_read_chipid(plVar3);
              if (-1 < iVar1) {
                if ((*(int *)((long)plVar3 + 0x2e4) < 0) || (*(byte *)((long)plVar3 + 0x2ec) != 0))
                {
                  *(byte *)((long)plVar3 + 0x2ec) = *(byte *)((long)plVar3 + 0x2ec) | 1;
                }
                else {
                  aw22xxx_interrupt_setup(plVar3);
                  if (0xb < g_ver_var) {
                    _printk(&DAT_00108ba9);
                  }
                  gpio_to_desc(*(undefined4 *)((long)plVar3 + 0x2e4));
                  gpiod_to_irq();
                  iVar1 = devm_request_threaded_irq();
                  if (iVar1 != 0) {
                    gpio_to_desc(*(undefined4 *)((long)plVar3 + 0x2e4));
                    gpiod_to_irq();
                    _dev_err();
                    goto LAB_00102cb8;
                  }
                }
                *(long **)(unaff_x21 + 0xb8) = plVar3;
                iVar1 = aw22xxx_parse_led_cdev(plVar3);
                if ((-1 < iVar1) && (iVar1 = aw22xxx_alloc_name_array(), -1 < iVar1)) {
                  aw22xxx_fw_name._0_7_ = 0x78787832327761;
                  aw22xxx_fw_name._7_1_ = 0x5f;
                  uRam000000000010fcd8 = 0x6e69622e7766;
                  aw22xxx_fw_init(plVar3);
                  _printk(&DAT_00108663,"aw22xxx_i2c_probe");
                  uVar5 = gpio_to_desc((int)plVar3[0x5c]);
                  iVar1 = gpiod_direction_output_raw(uVar5,0);
                  if (iVar1 != 0) {
                    _printk(&DAT_0010988d);
                  }
                  lVar4 = zlog_register_client(zlog_aw22xxx_dev);
                  plVar3[0x6a] = lVar4;
                  if (lVar4 == 0) {
                    _printk(&DAT_00108d69);
                  }
                  _printk(&DAT_001088c9);
                  aw22xxx_create_proc_entry();
                  uVar5 = FUN_00102b8c(0);
                  return uVar5;
                }
              }
              _dev_err();
            }
            else {
              _dev_err();
            }
            goto LAB_00102cb8;
          }
        }
        _dev_err();
        iVar1 = -0x16;
      }
    }
    else {
      _printk(&DAT_00109152);
    }
  }
LAB_00102cb8:
  devm_pinctrl_put(plVar3[0x66]);
  plVar3[0x66] = 0;
LAB_00102cc8:
  devm_kfree();
  uVar5 = FUN_00102b8c(iVar1);
  return uVar5;
}

