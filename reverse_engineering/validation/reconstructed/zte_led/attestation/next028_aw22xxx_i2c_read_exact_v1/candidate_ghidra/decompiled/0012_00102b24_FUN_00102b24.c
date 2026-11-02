
undefined8 FUN_00102b24(long param_1)

{
  int iVar1;
  undefined4 uVar2;
  ulong uVar3;
  long *plVar4;
  long lVar5;
  undefined8 uVar6;
  long lVar7;
  char *pcVar8;
  code *pcVar9;
  long lVar10;
  
  lVar10 = *(long *)(param_1 + 0x308);
  lVar7 = param_1 + 0x20;
  _printk(&DAT_00109394,"aw22xxx_i2c_probe");
  pcVar9 = *(code **)(*(long *)(*(long *)(param_1 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar9 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x102b6c);
    (*pcVar9)();
  }
  uVar3 = (*pcVar9)();
  if ((uVar3 & 1) == 0) {
    _dev_err(lVar7,"i2c functionality check failed\n");
    uVar6 = FUN_00102b8c(0xfffffffb);
    return uVar6;
  }
  plVar4 = (long *)devm_kmalloc(lVar7,0x358,0xdc0);
  if (plVar4 == (long *)0x0) {
    return 0xfffffff4;
  }
  *plVar4 = param_1;
  plVar4[1] = lVar7;
  *(long **)(param_1 + 0xb8) = plVar4;
  __mutex_init(plVar4 + 0x56,"&aw22xxx->cfg_lock",&aw22xxx_i2c_probe___key);
  *(undefined1 *)((long)plVar4 + 0x304) = 1;
  uVar3 = devm_pinctrl_get(lVar7);
  plVar4[0x66] = uVar3;
  if ((uVar3 == 0) || (0xfffffffffffff000 < uVar3)) {
    _printk(&DAT_00108798);
    iVar1 = -0x16;
    goto LAB_00102cc8;
  }
  lVar5 = pinctrl_lookup_state(uVar3,"aw22xxx_led_default");
  plVar4[0x67] = lVar5;
  uVar3 = pinctrl_lookup_state(plVar4[0x66],"aw22xxx_led_sleep");
  plVar4[0x68] = uVar3;
  if ((((plVar4[0x67] == 0) || (0xfffffffffffff000 < (ulong)plVar4[0x67])) || (uVar3 == 0)) ||
     (0xfffffffffffff000 < uVar3)) {
    _printk(&UNK_001092dd);
    iVar1 = -0x16;
  }
  else {
    iVar1 = pinctrl_select_state(plVar4[0x66]);
    if (iVar1 == 0) {
      _printk(&UNK_00108b8e);
      if (lVar10 == 0) {
        _dev_err(lVar7,"%s: failed to parse device tree node\n","aw22xxx_i2c_probe");
        iVar1 = -0x16;
        *(undefined4 *)(plVar4 + 0x5c) = 0xffffffff;
      }
      else {
        iVar1 = of_property_read_variable_u32_array(lVar10,"aw_drv_ver",&g_ver_var,1,0);
        if (iVar1 < 0) {
          g_ver_var = 0xb;
        }
        _dev_info(lVar7,"aw drv ver=%d\n",g_ver_var);
        iVar1 = of_get_named_gpio(lVar10,"reset-gpio",0);
        *(int *)(plVar4 + 0x5c) = iVar1;
        if (iVar1 < 0) {
          pcVar8 = "reset-gpio missing or invalid\n";
        }
        else {
          uVar6 = gpio_to_desc();
          iVar1 = gpiod_direction_output_raw(uVar6,1);
          if (iVar1 == 0) {
            _dev_info(lVar7,"reset gpio not enabled, gpio=%u\n",(int)plVar4[0x5c]);
          }
          _dev_info(lVar7,"reset gpio provided, gpio=%u\n",(int)plVar4[0x5c]);
          iVar1 = of_get_named_gpio(lVar10,"irq-gpio",0);
          *(int *)((long)plVar4 + 0x2e4) = iVar1;
          if (-1 < iVar1) {
            _dev_info(lVar7,"irq gpio provided, gpio=%u\n",iVar1);
            iVar1 = of_get_named_gpio(lVar10,"nubia_ver-gpio",0);
            *(int *)(plVar4 + 0x5d) = iVar1;
            if (iVar1 < 0) {
              _dev_info(lVar7,"nubia version gpio unavailable\n");
            }
            else {
              _dev_info(lVar7,"nubia version gpio=%u\n",iVar1);
            }
            iVar1 = of_property_read_variable_u32_array(lVar10,"cfg_custom_en",&g_custom_en,1,0);
            if (iVar1 < 0) {
              g_custom_en = 0;
            }
            iVar1 = devm_gpio_request_one(lVar7,(int)plVar4[0x5c],0,"aw22xxx_rst");
            if ((iVar1 == 0) &&
               (iVar1 = devm_gpio_request_one
                                  (lVar7,*(undefined4 *)((long)plVar4 + 0x2e4),1,"aw22xxx_int"),
               iVar1 == 0)) {
              aw22xxx_hw_reset(plVar4);
              _printk(&DAT_0010996f,"aw22xxx_i2c_probe",multicolor_led);
              if (multicolor_led - 1U < 2) {
                uVar6 = gpio_to_desc((int)plVar4[0x5c]);
                gpiod_set_raw_value_cansleep(uVar6,0);
                devm_gpio_request_one(lVar7,*(undefined4 *)((long)plVar4 + 0x2e4),0,"aw22xxx_int");
                multicolor_led = 0;
                g_cfgarray_count = 0x1194;
                if (g_custom_en != 0) {
                  g_cfgarray_count = 0xb;
                }
                uVar6 = FUN_00102b8c(0);
                return uVar6;
              }
              iVar1 = aw22xxx_read_chipid(plVar4);
              if (iVar1 < 0) {
                pcVar8 = "read_chipid failed\n";
              }
              else {
                if ((*(int *)((long)plVar4 + 0x2e4) < 0) || (*(byte *)((long)plVar4 + 0x2ec) != 0))
                {
                  *(byte *)((long)plVar4 + 0x2ec) = *(byte *)((long)plVar4 + 0x2ec) | 1;
                }
                else {
                  aw22xxx_interrupt_setup(plVar4);
                  if (g_ver_var < 0xc) {
                    pcVar9 = aw22xxx_irq;
                  }
                  else {
                    _printk(&DAT_00108ba9);
                    pcVar9 = aw22xxx_irq_v15;
                  }
                  gpio_to_desc(*(undefined4 *)((long)plVar4 + 0x2e4));
                  uVar2 = gpiod_to_irq();
                  iVar1 = devm_request_threaded_irq(lVar7,uVar2,0,pcVar9,0x2002,"aw22xxx",plVar4);
                  if (iVar1 != 0) {
                    gpio_to_desc(*(undefined4 *)((long)plVar4 + 0x2e4));
                    uVar2 = gpiod_to_irq();
                    _dev_err(lVar7,"failed to request IRQ %d: %d\n",uVar2,iVar1);
                    goto LAB_00102cb8;
                  }
                }
                *(long **)(param_1 + 0xb8) = plVar4;
                iVar1 = aw22xxx_parse_led_cdev(plVar4,lVar10);
                if (iVar1 < 0) {
                  pcVar8 = "failed to create LED class device\n";
                }
                else {
                  iVar1 = aw22xxx_alloc_name_array();
                  if (-1 < iVar1) {
                    aw22xxx_fw_name._0_7_ = 0x78787832327761;
                    aw22xxx_fw_name._7_1_ = 0x5f;
                    uRam000000000010fcd8 = 0x6e69622e7766;
                    aw22xxx_fw_init(plVar4);
                    _printk(&DAT_00108663,"aw22xxx_i2c_probe");
                    uVar6 = gpio_to_desc((int)plVar4[0x5c]);
                    iVar1 = gpiod_direction_output_raw(uVar6,0);
                    if (iVar1 != 0) {
                      _printk(&DAT_0010988d);
                    }
                    lVar7 = zlog_register_client(zlog_aw22xxx_dev);
                    plVar4[0x6a] = lVar7;
                    if (lVar7 == 0) {
                      _printk(&DAT_00108d69);
                    }
                    _printk(&DAT_001088c9);
                    aw22xxx_create_proc_entry();
                    uVar6 = FUN_00102b8c(0);
                    return uVar6;
                  }
                  pcVar8 = "failed to allocate configuration names\n";
                }
              }
              _dev_err(lVar7,pcVar8);
            }
            else {
              _dev_err(lVar7,"%s: gpio request failed\n","aw22xxx_i2c_probe");
            }
            goto LAB_00102cb8;
          }
          pcVar8 = "irq-gpio missing or invalid\n";
        }
        _dev_err(lVar7,pcVar8);
        iVar1 = -0x16;
      }
    }
    else {
      _printk(&DAT_00109152);
    }
  }
LAB_00102cb8:
  devm_pinctrl_put(plVar4[0x66]);
  plVar4[0x66] = 0;
LAB_00102cc8:
  devm_kfree(lVar7,plVar4);
  uVar6 = FUN_00102b8c(iVar1);
  return uVar6;
}

