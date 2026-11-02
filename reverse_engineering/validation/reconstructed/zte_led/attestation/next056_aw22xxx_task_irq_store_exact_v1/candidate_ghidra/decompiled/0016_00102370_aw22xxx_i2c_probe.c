
ulong aw22xxx_i2c_probe(long param_1)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  ulong uVar4;
  long *plVar5;
  undefined *puVar6;
  undefined8 uVar7;
  long lVar8;
  char *pcVar9;
  code *pcVar10;
  long lVar11;
  
  lVar11 = *(long *)(param_1 + 0x308);
  lVar8 = param_1 + 0x20;
  _printk(&DAT_0010748f,"aw22xxx_i2c_probe",0x9d9);
  pcVar10 = *(code **)(*(long *)(*(long *)(param_1 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar10 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x1023d4);
    (*pcVar10)();
  }
  uVar4 = (*pcVar10)();
  if ((uVar4 & 1) == 0) {
    _dev_err(lVar8,"check_functionality failed\n");
    uVar1 = 0xfffffffb;
    goto LAB_00102558;
  }
  plVar5 = (long *)devm_kmalloc(lVar8,0x358,0xdc0);
  if (plVar5 == (long *)0x0) {
    uVar1 = 0xfffffff4;
    goto LAB_00102558;
  }
  *plVar5 = param_1;
  plVar5[1] = lVar8;
  *(long **)(param_1 + 0xb8) = plVar5;
  __mutex_init(plVar5 + 0x56,"&aw22xxx->cfg_lock",&DAT_0010eaf8);
  *(undefined1 *)((long)plVar5 + 0x304) = 1;
  uVar4 = devm_pinctrl_get(lVar8);
  puVar6 = &DAT_001075a9;
  plVar5[0x66] = uVar4;
  if ((uVar4 == 0) || (0xfffffffffffff000 < uVar4)) {
LAB_001024cc:
    _printk(puVar6,"aw22xxx_pinctrl_init");
    _printk(&aw22xxx_exact_rodata_str_base,"aw22xxx_i2c_probe");
    uVar1 = 0xffffffea;
LAB_00102548:
    plVar5[0x66] = 0;
  }
  else {
    uVar4 = pinctrl_lookup_state(uVar4,"aw22xxx_led_default");
    puVar6 = &DAT_0010727e;
    plVar5[0x67] = uVar4;
    if ((uVar4 == 0) || (0xfffffffffffff000 < uVar4)) goto LAB_001024cc;
    uVar4 = pinctrl_lookup_state(plVar5[0x66],"aw22xxx_led_sleep");
    puVar6 = &DAT_00106e73;
    plVar5[0x68] = uVar4;
    if ((uVar4 == 0) || (0xfffffffffffff000 < uVar4)) goto LAB_001024cc;
    if ((plVar5[0x66] == 0) || (plVar5[0x67] == 0)) {
      _printk(&UNK_0010775a,"aw22xxx_pinctrl_set_state");
      uVar4 = FUN_0010252c();
      return uVar4;
    }
    uVar1 = pinctrl_select_state();
    if (uVar1 != 0) {
      _printk(&DAT_00106d28,"aw22xxx_i2c_probe");
      goto LAB_00102540;
    }
    if (lVar11 != 0) {
      iVar2 = of_property_read_variable_u32_array(lVar11,"aw_drv_ver",&g_ver_var,1,0);
      if (iVar2 < 0) {
        g_ver_var = 0xb;
      }
      _dev_info(lVar8,"%s: aw drv ver=%d\n","aw22xxx_parse_dt",g_ver_var);
      iVar2 = of_get_named_gpio(lVar11,"reset-gpio",0);
      *(int *)(plVar5 + 0x5c) = iVar2;
      if (iVar2 < 0) {
        pcVar9 = "%s: no reset gpio provided, will not HW reset device\n";
FUN_0010265c:
        _dev_err(lVar8,pcVar9,"aw22xxx_parse_dt");
        _dev_err(lVar8,"%s: failed to parse device tree node\n","aw22xxx_i2c_probe");
        uVar1 = 0xffffffea;
        goto LAB_0010254c;
      }
      uVar7 = gpio_to_desc();
      iVar2 = gpiod_direction_output_raw(uVar7,1);
      if (iVar2 == 0) {
        _dev_info(lVar8,"%s: not enable gpio, aw22xxx->reset_gpio=%d\n","aw22xxx_parse_dt",
                  (int)plVar5[0x5c]);
      }
      _dev_info(lVar8,"%s: reset gpio provided ok, aw22xxx->reset_gpio=%d\n","aw22xxx_parse_dt",
                (int)plVar5[0x5c]);
      iVar2 = of_get_named_gpio(lVar11,"irq-gpio",0);
      *(int *)((long)plVar5 + 0x2e4) = iVar2;
      if (iVar2 < 0) {
        pcVar9 = "%s: no irq gpio provided, will not suppport intterrupt\n";
        goto FUN_0010265c;
      }
      _dev_info(lVar8,"%s: irq gpio provided ok, aw22xxx->irq_gpio=%d\n","aw22xxx_parse_dt",iVar2);
      iVar2 = of_get_named_gpio(lVar11,"nubia_ver-gpio",0);
      *(int *)(plVar5 + 0x5d) = iVar2;
      if (iVar2 < 0) {
        _dev_info(lVar8,"%s: not suppport nubia_ver_gpio, regard as normal version\n",
                  "aw22xxx_parse_dt");
      }
      else {
        _dev_info(lVar8,"%s: nubia_ver_gpio provided ok, aw22xxx->nubia_ver_gpio=%d\n",
                  "aw22xxx_parse_dt",iVar2);
      }
      iVar2 = of_property_read_variable_u32_array(lVar11,"cfg_custom_en",&DAT_0010eafc,1,0);
      if (iVar2 < 0) {
        DAT_0010eafc = 0;
      }
      if ((-1 < (int)plVar5[0x5c]) &&
         (uVar1 = devm_gpio_request_one(lVar8,(int)plVar5[0x5c],0,"aw22xxx_rst"), uVar1 != 0)) {
        pcVar9 = "%s: rst request failed\n";
LAB_0010280c:
        _dev_err(lVar8,pcVar9,"aw22xxx_i2c_probe");
        goto LAB_0010254c;
      }
      if ((-1 < *(int *)((long)plVar5 + 0x2e4)) &&
         (uVar1 = devm_gpio_request_one(lVar8,*(int *)((long)plVar5 + 0x2e4),1,"aw22xxx_int"),
         uVar1 != 0)) {
        pcVar9 = "%s: int request failed\n";
        goto LAB_0010280c;
      }
      aw22xxx_hw_reset(plVar5);
      _printk(&DAT_00107e9d,"aw22xxx_i2c_probe",0xa1b,multicolor_led);
      if (multicolor_led - 1U < 2) {
        uVar7 = gpio_to_desc((int)plVar5[0x5c]);
        gpiod_set_raw_value_cansleep(uVar7,0);
        devm_gpio_request_one(lVar8,*(undefined4 *)((long)plVar5 + 0x2e4),0,"aw22xxx_int");
        uVar1 = 0;
        multicolor_led = 0;
        DAT_0010eb90 = 0x1194;
        if (DAT_0010eafc != 0) {
          DAT_0010eb90 = 0xb;
        }
        goto LAB_00102558;
      }
      uVar1 = aw22xxx_read_chipid(plVar5);
      if (-1 < (int)uVar1) {
        if ((*(int *)((long)plVar5 + 0x2e4) < 0) || ((*(byte *)((long)plVar5 + 0x2ec) & 1) != 0)) {
          *(byte *)((long)plVar5 + 0x2ec) = *(byte *)((long)plVar5 + 0x2ec) | 1;
        }
        else {
          aw22xxx_interrupt_setup(plVar5);
          if (g_ver_var < 0xc) {
            pcVar10 = aw22xxx_irq;
          }
          else {
            _printk(&DAT_00106680);
            pcVar10 = aw22xxx_irq_v15;
          }
          gpio_to_desc(*(undefined4 *)((long)plVar5 + 0x2e4));
          uVar3 = gpiod_to_irq();
          uVar1 = devm_request_threaded_irq(lVar8,uVar3,0,pcVar10,0x2002,"aw22xxx",plVar5);
          if (uVar1 != 0) {
            gpio_to_desc(*(undefined4 *)((long)plVar5 + 0x2e4));
            uVar3 = gpiod_to_irq();
            _dev_err(lVar8,"%s: failed to request IRQ %d: %d\n","aw22xxx_i2c_probe",uVar3,uVar1);
            goto LAB_00102540;
          }
        }
        *(long **)(param_1 + 0xb8) = plVar5;
        aw22xxx_parse_led_cdev(plVar5,lVar11);
        aw22xxx_alloc_name_array();
        DAT_0010eb3f = 0;
        DAT_0010eb37 = 0;
        DAT_0010eb2f = 0;
        DAT_0010eb27 = 0;
        DAT_0010eb1f = 0;
        DAT_0010eb17 = 0;
        DAT_0010eb0f = 0;
        aw22xxx_fw_name._0_7_ = 0x78787832327761;
        aw22xxx_fw_name._7_1_ = 0x5f;
        uRam000000000010eb08 = 0x6e69622e7766;
        _printk(&DAT_00106bc5,"aw22xxx_load_nubia_fw_name",0x5de,(int)plVar5[0x5d],0);
        aw22xxx_fw_init(plVar5);
        _printk(&DAT_00107ecc,"aw22xxx_i2c_probe",0xa56);
        uVar7 = gpio_to_desc((int)plVar5[0x5c]);
        iVar2 = gpiod_direction_output_raw(uVar7,0);
        if (iVar2 != 0) {
          _printk(&DAT_00106a6b,"aw22xxx_i2c_probe",0xa5b);
        }
        lVar8 = zlog_register_client(&zlog_aw22xxx_dev);
        plVar5[0x6a] = lVar8;
        if (lVar8 == 0) {
          _printk(&DAT_001074ab,"aw22xxx_i2c_probe",0xa61,"aw22xxx_i2c_probe");
        }
        aw22xxx_create_proc_entry();
        uVar1 = 0;
        goto LAB_00102558;
      }
      _dev_err(lVar8,"%s: aw22xxx_read_chipid failed ret=%d\n","aw22xxx_i2c_probe",uVar1);
LAB_00102540:
      devm_pinctrl_put(plVar5[0x66]);
      goto LAB_00102548;
    }
    uVar1 = 0;
    plVar5[0x5c] = -1;
  }
LAB_0010254c:
  devm_kfree(lVar8,plVar5);
LAB_00102558:
  return (ulong)uVar1;
}

