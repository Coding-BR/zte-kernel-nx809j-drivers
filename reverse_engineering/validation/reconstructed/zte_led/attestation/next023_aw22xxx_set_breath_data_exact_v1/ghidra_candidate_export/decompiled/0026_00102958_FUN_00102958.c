
ulong FUN_00102958(void)

{
  uint uVar1;
  int iVar2;
  ulong uVar3;
  long *plVar4;
  long lVar5;
  undefined8 uVar6;
  code *pcVar7;
  long unaff_x19;
  long unaff_x21;
  long unaff_x22;
  
  _printk(&DAT_00109621,"aw22xxx_i2c_probe");
  pcVar7 = *(code **)(*(long *)(*(long *)(unaff_x21 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar7 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x102990);
    (*pcVar7)();
  }
  uVar3 = (*pcVar7)();
  if ((uVar3 & 1) == 0) {
    _dev_err();
    return 0xfffffffb;
  }
  plVar4 = (long *)devm_kmalloc();
  if (plVar4 == (long *)0x0) {
    return 0xfffffff4;
  }
  *plVar4 = unaff_x21;
  plVar4[1] = unaff_x19;
  *(long **)(unaff_x21 + 0xb8) = plVar4;
  __mutex_init(plVar4 + 0x56,"&aw22xxx->cfg_lock",&aw22xxx_i2c_probe___key);
  *(undefined1 *)((long)plVar4 + 0x304) = 1;
  uVar3 = devm_pinctrl_get();
  plVar4[0x66] = uVar3;
  if ((uVar3 == 0) || (0xfffffffffffff000 < uVar3)) {
    _printk(&DAT_001088cd);
    uVar3 = 0xffffffea;
    goto FUN_00102aec;
  }
  lVar5 = pinctrl_lookup_state(uVar3,"aw22xxx_led_default");
  plVar4[0x67] = lVar5;
  uVar3 = pinctrl_lookup_state(plVar4[0x66],"aw22xxx_led_sleep");
  plVar4[0x68] = uVar3;
  if ((((plVar4[0x67] == 0) || (0xfffffffffffff000 < (ulong)plVar4[0x67])) || (uVar3 == 0)) ||
     (0xfffffffffffff000 < uVar3)) {
    _printk(&DAT_00109545);
    uVar3 = 0xffffffea;
  }
  else {
    uVar1 = pinctrl_select_state(plVar4[0x66]);
    if (uVar1 == 0) {
      _printk(&DAT_00108cea);
      if (unaff_x22 == 0) {
        _dev_err();
        uVar3 = 0xffffffea;
        *(undefined4 *)(plVar4 + 0x5c) = 0xffffffff;
      }
      else {
        iVar2 = of_property_read_variable_u32_array();
        if (iVar2 < 0) {
          g_ver_var = 0xb;
        }
        _dev_info();
        iVar2 = of_get_named_gpio();
        *(int *)(plVar4 + 0x5c) = iVar2;
        if (-1 < iVar2) {
          uVar6 = gpio_to_desc();
          iVar2 = gpiod_direction_output_raw(uVar6,1);
          if (iVar2 == 0) {
            _dev_info();
          }
          _dev_info();
          iVar2 = of_get_named_gpio();
          *(int *)((long)plVar4 + 0x2e4) = iVar2;
          if (-1 < iVar2) {
            _dev_info();
            iVar2 = of_get_named_gpio();
            *(int *)(plVar4 + 0x5d) = iVar2;
            if (-1 < iVar2) {
              _dev_info();
              uVar3 = FUN_00102c4c();
              return uVar3;
            }
            _dev_info();
            iVar2 = of_property_read_variable_u32_array();
            if (iVar2 < 0) {
              g_custom_en = 0;
            }
            uVar1 = devm_gpio_request_one();
            if ((uVar1 == 0) && (uVar1 = devm_gpio_request_one(), uVar1 == 0)) {
              aw22xxx_hw_reset(plVar4);
              _printk(&DAT_00109c1a,"aw22xxx_i2c_probe",multicolor_led);
              if (multicolor_led - 1U < 2) {
                uVar6 = gpio_to_desc((int)plVar4[0x5c]);
                gpiod_set_raw_value_cansleep(uVar6,0);
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
              uVar1 = aw22xxx_read_chipid(plVar4);
              if ((int)uVar1 < 0) {
                uVar3 = (ulong)uVar1;
              }
              else {
                if ((*(int *)((long)plVar4 + 0x2e4) < 0) || (*(byte *)((long)plVar4 + 0x2ec) != 0))
                {
                  *(byte *)((long)plVar4 + 0x2ec) = *(byte *)((long)plVar4 + 0x2ec) | 1;
                }
                else {
                  aw22xxx_interrupt_setup(plVar4);
                  if (0xb < g_ver_var) {
                    _printk(&DAT_00108d05);
                  }
                  gpio_to_desc(*(undefined4 *)((long)plVar4 + 0x2e4));
                  gpiod_to_irq();
                  uVar1 = devm_request_threaded_irq();
                  if (uVar1 != 0) {
                    uVar3 = (ulong)uVar1;
                    gpio_to_desc(*(undefined4 *)((long)plVar4 + 0x2e4));
                    gpiod_to_irq();
                    _dev_err();
                    goto LAB_00102adc;
                  }
                }
                *(long **)(unaff_x21 + 0xb8) = plVar4;
                uVar1 = aw22xxx_parse_led_cdev(plVar4);
                if ((int)uVar1 < 0) {
                  uVar3 = (ulong)uVar1;
                }
                else {
                  uVar1 = aw22xxx_alloc_name_array();
                  if (-1 < (int)uVar1) {
                    aw22xxx_fw_name._0_7_ = 0x78787832327761;
                    aw22xxx_fw_name._7_1_ = 0x5f;
                    uRam000000000010ff80 = 0x6e69622e7766;
                    aw22xxx_fw_init(plVar4);
                    _printk(&DAT_00108798,"aw22xxx_i2c_probe");
                    uVar6 = gpio_to_desc((int)plVar4[0x5c]);
                    iVar2 = gpiod_direction_output_raw(uVar6,0);
                    if (iVar2 != 0) {
                      _printk(&DAT_00109b38);
                    }
                    lVar5 = zlog_register_client(zlog_aw22xxx_dev);
                    plVar4[0x6a] = lVar5;
                    if (lVar5 == 0) {
                      _printk(&DAT_00108f07);
                    }
                    _printk(&DAT_00108a25);
                    aw22xxx_create_proc_entry();
                    return 0;
                  }
                  uVar3 = (ulong)uVar1;
                }
              }
              _dev_err();
            }
            else {
              uVar3 = (ulong)uVar1;
              _dev_err();
            }
            goto LAB_00102adc;
          }
        }
        _dev_err();
        uVar3 = 0xffffffea;
      }
    }
    else {
      uVar3 = (ulong)uVar1;
      _printk(&DAT_0010938c);
    }
  }
LAB_00102adc:
  devm_pinctrl_put(plVar4[0x66]);
  plVar4[0x66] = 0;
FUN_00102aec:
  devm_kfree();
  return uVar3;
}

