
ulong aw22xxx_i2c_probe(long param_1)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  ulong uVar4;
  long *plVar5;
  long lVar6;
  undefined8 uVar7;
  long lVar8;
  char *pcVar9;
  code *pcVar10;
  long lVar11;
  
  lVar11 = *(long *)(param_1 + 0x308);
  lVar8 = param_1 + 0x20;
  _printk(&DAT_00109621,"aw22xxx_i2c_probe");
  pcVar10 = *(code **)(*(long *)(*(long *)(param_1 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar10 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x102990);
    (*pcVar10)();
  }
  uVar4 = (*pcVar10)();
  if ((uVar4 & 1) == 0) {
    _dev_err(lVar8,"i2c functionality check failed\n");
    return 0xfffffffb;
  }
  plVar5 = (long *)devm_kmalloc(lVar8,0x358,0xdc0);
  if (plVar5 == (long *)0x0) {
    return 0xfffffff4;
  }
  *plVar5 = param_1;
  plVar5[1] = lVar8;
  *(long **)(param_1 + 0xb8) = plVar5;
  __mutex_init(plVar5 + 0x56,"&aw22xxx->cfg_lock",&aw22xxx_i2c_probe___key);
  *(undefined1 *)((long)plVar5 + 0x304) = 1;
  uVar4 = devm_pinctrl_get(lVar8);
  plVar5[0x66] = uVar4;
  if ((uVar4 == 0) || (0xfffffffffffff000 < uVar4)) {
    _printk(&DAT_001088cd);
    uVar4 = 0xffffffea;
    goto FUN_00102aec;
  }
  lVar6 = pinctrl_lookup_state(uVar4,"aw22xxx_led_default");
  plVar5[0x67] = lVar6;
  uVar4 = pinctrl_lookup_state(plVar5[0x66],"aw22xxx_led_sleep");
  plVar5[0x68] = uVar4;
  if ((((plVar5[0x67] == 0) || (0xfffffffffffff000 < (ulong)plVar5[0x67])) || (uVar4 == 0)) ||
     (0xfffffffffffff000 < uVar4)) {
    _printk(&DAT_00109545);
    uVar4 = 0xffffffea;
  }
  else {
    uVar1 = pinctrl_select_state(plVar5[0x66]);
    if (uVar1 == 0) {
      _printk(&DAT_00108cea);
      if (lVar11 == 0) {
        _dev_err(lVar8,"%s: failed to parse device tree node\n","aw22xxx_i2c_probe");
        uVar4 = 0xffffffea;
        *(undefined4 *)(plVar5 + 0x5c) = 0xffffffff;
      }
      else {
        iVar2 = of_property_read_variable_u32_array(lVar11,"aw_drv_ver",&g_ver_var,1,0);
        if (iVar2 < 0) {
          g_ver_var = 0xb;
        }
        _dev_info(lVar8,"aw drv ver=%d\n",g_ver_var);
        iVar2 = of_get_named_gpio(lVar11,"reset-gpio",0);
        *(int *)(plVar5 + 0x5c) = iVar2;
        if (iVar2 < 0) {
          pcVar9 = "reset-gpio missing or invalid\n";
        }
        else {
          uVar7 = gpio_to_desc();
          iVar2 = gpiod_direction_output_raw(uVar7,1);
          if (iVar2 == 0) {
            _dev_info(lVar8,"reset gpio not enabled, gpio=%u\n",(int)plVar5[0x5c]);
          }
          _dev_info(lVar8,"reset gpio provided, gpio=%u\n",(int)plVar5[0x5c]);
          iVar2 = of_get_named_gpio(lVar11,"irq-gpio",0);
          *(int *)((long)plVar5 + 0x2e4) = iVar2;
          if (-1 < iVar2) {
            _dev_info(lVar8,"irq gpio provided, gpio=%u\n",iVar2);
            iVar2 = of_get_named_gpio(lVar11,"nubia_ver-gpio",0);
            *(int *)(plVar5 + 0x5d) = iVar2;
            if (-1 < iVar2) {
              _dev_info(lVar8,"nubia version gpio=%u\n",iVar2);
              uVar4 = FUN_00102c4c();
              return uVar4;
            }
            _dev_info(lVar8,"nubia version gpio unavailable\n");
            iVar2 = of_property_read_variable_u32_array(lVar11,"cfg_custom_en",&g_custom_en,1,0);
            if (iVar2 < 0) {
              g_custom_en = 0;
            }
            uVar1 = devm_gpio_request_one(lVar8,(int)plVar5[0x5c],0,"aw22xxx_rst");
            if ((uVar1 == 0) &&
               (uVar1 = devm_gpio_request_one
                                  (lVar8,*(undefined4 *)((long)plVar5 + 0x2e4),1,"aw22xxx_int"),
               uVar1 == 0)) {
              aw22xxx_hw_reset(plVar5);
              _printk(&DAT_00109c1a,"aw22xxx_i2c_probe",multicolor_led);
              if (multicolor_led - 1U < 2) {
                uVar7 = gpio_to_desc((int)plVar5[0x5c]);
                gpiod_set_raw_value_cansleep(uVar7,0);
                devm_gpio_request_one(lVar8,*(undefined4 *)((long)plVar5 + 0x2e4),0,"aw22xxx_int");
                if (g_custom_en == 0) {
                  g_cfgarray_count = 0x1194;
                  multicolor_led = 0;
                  return 0;
                }
                g_cfgarray_count = 0xb;
                multicolor_led = 0;
                return 0;
              }
              uVar1 = aw22xxx_read_chipid(plVar5);
              if ((int)uVar1 < 0) {
                uVar4 = (ulong)uVar1;
                pcVar9 = "read_chipid failed\n";
              }
              else {
                if ((*(int *)((long)plVar5 + 0x2e4) < 0) || (*(byte *)((long)plVar5 + 0x2ec) != 0))
                {
                  *(byte *)((long)plVar5 + 0x2ec) = *(byte *)((long)plVar5 + 0x2ec) | 1;
                }
                else {
                  aw22xxx_interrupt_setup(plVar5);
                  if (g_ver_var < 0xc) {
                    pcVar10 = aw22xxx_irq;
                  }
                  else {
                    _printk(&DAT_00108d05);
                    pcVar10 = aw22xxx_irq_v15;
                  }
                  gpio_to_desc(*(undefined4 *)((long)plVar5 + 0x2e4));
                  uVar3 = gpiod_to_irq();
                  uVar1 = devm_request_threaded_irq(lVar8,uVar3,0,pcVar10,0x2002,"aw22xxx",plVar5);
                  if (uVar1 != 0) {
                    uVar4 = (ulong)uVar1;
                    gpio_to_desc(*(undefined4 *)((long)plVar5 + 0x2e4));
                    uVar3 = gpiod_to_irq();
                    _dev_err(lVar8,"failed to request IRQ %d: %d\n",uVar3,uVar4);
                    goto LAB_00102adc;
                  }
                }
                *(long **)(param_1 + 0xb8) = plVar5;
                uVar1 = aw22xxx_parse_led_cdev(plVar5,lVar11);
                if ((int)uVar1 < 0) {
                  uVar4 = (ulong)uVar1;
                  pcVar9 = "failed to create LED class device\n";
                }
                else {
                  uVar1 = aw22xxx_alloc_name_array();
                  if (-1 < (int)uVar1) {
                    aw22xxx_fw_name._0_7_ = 0x78787832327761;
                    aw22xxx_fw_name._7_1_ = 0x5f;
                    uRam000000000010ff80 = 0x6e69622e7766;
                    aw22xxx_fw_init(plVar5);
                    _printk(&DAT_00108798,"aw22xxx_i2c_probe");
                    uVar7 = gpio_to_desc((int)plVar5[0x5c]);
                    iVar2 = gpiod_direction_output_raw(uVar7,0);
                    if (iVar2 != 0) {
                      _printk(&DAT_00109b38);
                    }
                    lVar8 = zlog_register_client(zlog_aw22xxx_dev);
                    plVar5[0x6a] = lVar8;
                    if (lVar8 == 0) {
                      _printk(&DAT_00108f07);
                    }
                    _printk(&DAT_00108a25);
                    aw22xxx_create_proc_entry();
                    return 0;
                  }
                  uVar4 = (ulong)uVar1;
                  pcVar9 = "failed to allocate configuration names\n";
                }
              }
              _dev_err(lVar8,pcVar9);
            }
            else {
              uVar4 = (ulong)uVar1;
              _dev_err(lVar8,"%s: gpio request failed\n","aw22xxx_i2c_probe");
            }
            goto LAB_00102adc;
          }
          pcVar9 = "irq-gpio missing or invalid\n";
        }
        _dev_err(lVar8,pcVar9);
        uVar4 = 0xffffffea;
      }
    }
    else {
      uVar4 = (ulong)uVar1;
      _printk(&DAT_0010938c);
    }
  }
LAB_00102adc:
  devm_pinctrl_put(plVar5[0x66]);
  plVar5[0x66] = 0;
FUN_00102aec:
  devm_kfree(lVar8,plVar5);
  return uVar4;
}

