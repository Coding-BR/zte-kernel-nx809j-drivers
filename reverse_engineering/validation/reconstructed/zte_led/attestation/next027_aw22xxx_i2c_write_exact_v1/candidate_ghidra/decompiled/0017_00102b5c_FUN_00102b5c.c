
int FUN_00102b5c(code *param_1)

{
  code *pcVar1;
  int iVar2;
  ulong uVar3;
  long *plVar4;
  long lVar5;
  undefined8 uVar6;
  int in_w16;
  int in_w17;
  long unaff_x19;
  long unaff_x21;
  long unaff_x22;
  
  if (in_w16 != in_w17) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x102b68);
    (*pcVar1)();
  }
  uVar3 = (*param_1)();
  if ((uVar3 & 1) == 0) {
    _dev_err();
    return -5;
  }
  plVar4 = (long *)devm_kmalloc();
  if (plVar4 == (long *)0x0) {
    return -0xc;
  }
  *plVar4 = unaff_x21;
  plVar4[1] = unaff_x19;
  *(long **)(unaff_x21 + 0xb8) = plVar4;
  __mutex_init(plVar4 + 0x56,&UNK_001099bb,&aw22xxx_i2c_probe___key);
  *(undefined1 *)((long)plVar4 + 0x304) = 1;
  uVar3 = devm_pinctrl_get();
  plVar4[0x66] = uVar3;
  if ((uVar3 == 0) || (0xfffffffffffff000 < uVar3)) {
    _printk(&DAT_00108798);
    iVar2 = -0x16;
    goto LAB_00102cc4;
  }
  lVar5 = pinctrl_lookup_state(uVar3,"aw22xxx_led_default");
  plVar4[0x67] = lVar5;
  uVar3 = pinctrl_lookup_state(plVar4[0x66],"aw22xxx_led_sleep");
  plVar4[0x68] = uVar3;
  if ((((plVar4[0x67] == 0) || (0xfffffffffffff000 < (ulong)plVar4[0x67])) || (uVar3 == 0)) ||
     (0xfffffffffffff000 < uVar3)) {
    _printk(&DAT_00109317);
    iVar2 = -0x16;
  }
  else {
    iVar2 = pinctrl_select_state(plVar4[0x66]);
    if (iVar2 == 0) {
      _printk(&DAT_00108b9f);
      if (unaff_x22 == 0) {
        _dev_err();
        iVar2 = -0x16;
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
            if (iVar2 < 0) {
              _dev_info();
            }
            else {
              _dev_info();
            }
            iVar2 = of_property_read_variable_u32_array();
            if (iVar2 < 0) {
              g_custom_en = 0;
            }
            iVar2 = devm_gpio_request_one();
            if ((iVar2 == 0) && (iVar2 = devm_gpio_request_one(), iVar2 == 0)) {
              aw22xxx_hw_reset(plVar4);
              _printk(&DAT_001099ce,"aw22xxx_i2c_probe",multicolor_led);
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
              iVar2 = aw22xxx_read_chipid(plVar4);
              if (-1 < iVar2) {
                if ((*(int *)((long)plVar4 + 0x2e4) < 0) || (*(byte *)((long)plVar4 + 0x2ec) != 0))
                {
                  *(byte *)((long)plVar4 + 0x2ec) = *(byte *)((long)plVar4 + 0x2ec) | 1;
                }
                else {
                  aw22xxx_interrupt_setup(plVar4);
                  if (0xb < g_ver_var) {
                    _printk(&DAT_00108bba);
                  }
                  gpio_to_desc(*(undefined4 *)((long)plVar4 + 0x2e4));
                  gpiod_to_irq();
                  iVar2 = devm_request_threaded_irq();
                  if (iVar2 != 0) {
                    gpio_to_desc(*(undefined4 *)((long)plVar4 + 0x2e4));
                    gpiod_to_irq();
                    _dev_err();
                    goto LAB_00102cb4;
                  }
                }
                *(long **)(unaff_x21 + 0xb8) = plVar4;
                iVar2 = aw22xxx_parse_led_cdev(plVar4);
                if ((-1 < iVar2) && (iVar2 = aw22xxx_alloc_name_array(), -1 < iVar2)) {
                  aw22xxx_fw_name._0_7_ = 0x78787832327761;
                  aw22xxx_fw_name._7_1_ = 0x5f;
                  uRam000000000010fd38 = 0x6e69622e7766;
                  aw22xxx_fw_init(plVar4);
                  _printk(&DAT_00108663,"aw22xxx_i2c_probe");
                  uVar6 = gpio_to_desc((int)plVar4[0x5c]);
                  iVar2 = gpiod_direction_output_raw(uVar6,0);
                  if (iVar2 != 0) {
                    _printk(&DAT_001098ec);
                  }
                  lVar5 = zlog_register_client(zlog_aw22xxx_dev);
                  plVar4[0x6a] = lVar5;
                  if (lVar5 == 0) {
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
        iVar2 = -0x16;
      }
    }
    else {
      _printk(&UNK_0010918c);
    }
  }
LAB_00102cb4:
  devm_pinctrl_put(plVar4[0x66]);
  plVar4[0x66] = 0;
LAB_00102cc4:
  devm_kfree();
  return iVar2;
}

