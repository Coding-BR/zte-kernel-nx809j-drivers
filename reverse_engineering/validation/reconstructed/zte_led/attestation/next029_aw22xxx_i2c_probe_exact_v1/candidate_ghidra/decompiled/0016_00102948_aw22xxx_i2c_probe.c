
/* WARNING: Possible PIC construction at 0x00102afc: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x00102afc) */

int aw22xxx_i2c_probe(long param_1)

{
  int iVar1;
  undefined4 uVar2;
  ulong uVar3;
  long *plVar4;
  undefined *puVar5;
  undefined8 uVar6;
  long lVar7;
  char *pcVar8;
  code *pcVar9;
  long lVar10;
  
  lVar10 = *(long *)(param_1 + 0x308);
  lVar7 = param_1 + 0x20;
  _printk(&DAT_00107a17,"aw22xxx_i2c_probe",0x9d9);
  pcVar9 = *(code **)(*(long *)(*(long *)(param_1 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar9 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x1029ac);
    (*pcVar9)();
  }
  uVar3 = (*pcVar9)();
  if ((uVar3 & 1) == 0) {
    _dev_err(lVar7,"check_functionality failed\n");
    return -5;
  }
  plVar4 = (long *)devm_kmalloc(lVar7,0x358,0xdc0);
  if (plVar4 == (long *)0x0) {
    return -0xc;
  }
  *plVar4 = param_1;
  plVar4[1] = lVar7;
  *(long **)(param_1 + 0xb8) = plVar4;
  __mutex_init(plVar4 + 0x56,"&aw22xxx->cfg_lock",&DAT_0010f978);
  *(undefined1 *)((long)plVar4 + 0x304) = 1;
  uVar3 = devm_pinctrl_get(lVar7);
  puVar5 = &DAT_00107b31;
  plVar4[0x66] = uVar3;
  if ((uVar3 == 0) || (0xfffffffffffff000 < uVar3)) {
LAB_00102aa4:
    _printk(puVar5,"aw22xxx_pinctrl_init");
    _printk(&aw22xxx_exact_rodata_str_base,"aw22xxx_i2c_probe");
    iVar1 = -0x16;
  }
  else {
    uVar3 = pinctrl_lookup_state(uVar3,"aw22xxx_led_default");
    puVar5 = &DAT_00107806;
    plVar4[0x67] = uVar3;
    if ((uVar3 == 0) || (0xfffffffffffff000 < uVar3)) goto LAB_00102aa4;
    uVar3 = pinctrl_lookup_state(plVar4[0x66],"aw22xxx_led_sleep");
    puVar5 = &DAT_001073fb;
    plVar4[0x68] = uVar3;
    if ((uVar3 == 0) || (0xfffffffffffff000 < uVar3)) goto LAB_00102aa4;
    if ((plVar4[0x66] == 0) || (plVar4[0x67] == 0)) {
      _printk(&UNK_00107ce2,"aw22xxx_pinctrl_set_state");
      iVar1 = -0x16;
SUB_00102b04:
      _printk(&DAT_001072b0,"aw22xxx_i2c_probe");
    }
    else {
      iVar1 = pinctrl_select_state();
      if (iVar1 != 0) goto SUB_00102b04;
      if (lVar10 == 0) {
        iVar1 = 0;
        plVar4[0x5c] = -1;
        goto LAB_00102b24;
      }
      iVar1 = of_property_read_variable_u32_array(lVar10,"aw_drv_ver",&g_ver_var,1,0);
      if (iVar1 < 0) {
        g_ver_var = 0xb;
      }
      _dev_info(lVar7,"%s: aw drv ver=%d\n","aw22xxx_parse_dt",g_ver_var);
      iVar1 = of_get_named_gpio(lVar10,"reset-gpio",0);
      *(int *)(plVar4 + 0x5c) = iVar1;
      if (iVar1 < 0) {
        pcVar8 = "%s: no reset gpio provided, will not HW reset device\n";
LAB_00102c34:
        _dev_err(lVar7,pcVar8,"aw22xxx_parse_dt");
        _dev_err(lVar7,"%s: failed to parse device tree node\n","aw22xxx_i2c_probe");
        iVar1 = -0x16;
        goto LAB_00102b24;
      }
      uVar6 = gpio_to_desc();
      iVar1 = gpiod_direction_output_raw(uVar6,1);
      if (iVar1 == 0) {
        _dev_info(lVar7,"%s: not enable gpio, aw22xxx->reset_gpio=%d\n","aw22xxx_parse_dt",
                  (int)plVar4[0x5c]);
      }
      _dev_info(lVar7,"%s: reset gpio provided ok, aw22xxx->reset_gpio=%d\n","aw22xxx_parse_dt",
                (int)plVar4[0x5c]);
      iVar1 = of_get_named_gpio(lVar10,"irq-gpio",0);
      *(int *)((long)plVar4 + 0x2e4) = iVar1;
      if (iVar1 < 0) {
        pcVar8 = "%s: no irq gpio provided, will not suppport intterrupt\n";
        goto LAB_00102c34;
      }
      _dev_info(lVar7,"%s: irq gpio provided ok, aw22xxx->irq_gpio=%d\n","aw22xxx_parse_dt",iVar1);
      iVar1 = of_get_named_gpio(lVar10,"nubia_ver-gpio",0);
      *(int *)(plVar4 + 0x5d) = iVar1;
      if (iVar1 < 0) {
        _dev_info(lVar7,"%s: not suppport nubia_ver_gpio, regard as normal version\n",
                  "aw22xxx_parse_dt");
      }
      else {
        _dev_info(lVar7,"%s: nubia_ver_gpio provided ok, aw22xxx->nubia_ver_gpio=%d\n",
                  "aw22xxx_parse_dt",iVar1);
      }
      iVar1 = of_property_read_variable_u32_array(lVar10,"cfg_custom_en",&DAT_0010f97c,1,0);
      if (iVar1 < 0) {
        DAT_0010f97c = 0;
      }
      if ((-1 < (int)plVar4[0x5c]) &&
         (iVar1 = devm_gpio_request_one(lVar7,(int)plVar4[0x5c],0,"aw22xxx_rst"), iVar1 != 0)) {
        pcVar8 = "%s: rst request failed\n";
LAB_00102de4:
        _dev_err(lVar7,pcVar8,"aw22xxx_i2c_probe");
        goto LAB_00102b24;
      }
      if ((-1 < *(int *)((long)plVar4 + 0x2e4)) &&
         (iVar1 = devm_gpio_request_one(lVar7,*(int *)((long)plVar4 + 0x2e4),1,"aw22xxx_int"),
         iVar1 != 0)) {
        pcVar8 = "%s: int request failed\n";
        goto LAB_00102de4;
      }
      aw22xxx_hw_reset(plVar4);
      _printk(&DAT_00108425,"aw22xxx_i2c_probe",0xa1b,multicolor_led);
      if (multicolor_led - 1U < 2) {
        uVar6 = gpio_to_desc((int)plVar4[0x5c]);
        gpiod_set_raw_value_cansleep(uVar6,0);
        devm_gpio_request_one(lVar7,*(undefined4 *)((long)plVar4 + 0x2e4),0,"aw22xxx_int");
        if (DAT_0010f97c == 0) {
          DAT_0010fa10 = 0x1194;
          multicolor_led = 0;
          return 0;
        }
        DAT_0010fa10 = 0xb;
        multicolor_led = 0;
        return 0;
      }
      iVar1 = aw22xxx_read_chipid(plVar4);
      if (iVar1 < 0) {
        _dev_err(lVar7,"%s: aw22xxx_read_chipid failed ret=%d\n","aw22xxx_i2c_probe",iVar1);
      }
      else {
        if ((*(int *)((long)plVar4 + 0x2e4) < 0) || ((*(byte *)((long)plVar4 + 0x2ec) & 1) != 0)) {
          *(byte *)((long)plVar4 + 0x2ec) = *(byte *)((long)plVar4 + 0x2ec) | 1;
LAB_00102eac:
          *(long **)(param_1 + 0xb8) = plVar4;
          aw22xxx_parse_led_cdev(plVar4,lVar10);
          aw22xxx_alloc_name_array();
          DAT_0010f9bf = 0;
          DAT_0010f9b7 = 0;
          DAT_0010f9af = 0;
          DAT_0010f9a7 = 0;
          DAT_0010f99f = 0;
          DAT_0010f997 = 0;
          DAT_0010f98f = 0;
          aw22xxx_fw_name._0_7_ = 0x78787832327761;
          aw22xxx_fw_name._7_1_ = 0x5f;
          uRam000000000010f988 = 0x6e69622e7766;
          _printk(&DAT_0010714d,"aw22xxx_load_nubia_fw_name",0x5de,(int)plVar4[0x5d],0);
          aw22xxx_fw_init(plVar4);
          _printk(&DAT_00108454,"aw22xxx_i2c_probe",0xa56);
          uVar6 = gpio_to_desc((int)plVar4[0x5c]);
          iVar1 = gpiod_direction_output_raw(uVar6,0);
          if (iVar1 != 0) {
            _printk(&DAT_00106ff3,"aw22xxx_i2c_probe",0xa5b);
          }
          lVar7 = zlog_register_client(&zlog_aw22xxx_dev);
          plVar4[0x6a] = lVar7;
          if (lVar7 == 0) {
            _printk(&DAT_00107a33,"aw22xxx_i2c_probe",0xa61,"aw22xxx_i2c_probe");
          }
          aw22xxx_create_proc_entry();
          return 0;
        }
        aw22xxx_interrupt_setup(plVar4);
        if (g_ver_var < 0xc) {
          pcVar9 = aw22xxx_irq;
        }
        else {
          _printk(&DAT_00106c08);
          pcVar9 = aw22xxx_irq_v15;
        }
        gpio_to_desc(*(undefined4 *)((long)plVar4 + 0x2e4));
        uVar2 = gpiod_to_irq();
        iVar1 = devm_request_threaded_irq(lVar7,uVar2,0,pcVar9,0x2002,"aw22xxx",plVar4);
        if (iVar1 == 0) goto LAB_00102eac;
        gpio_to_desc(*(undefined4 *)((long)plVar4 + 0x2e4));
        uVar2 = gpiod_to_irq();
        _dev_err(lVar7,"%s: failed to request IRQ %d: %d\n","aw22xxx_i2c_probe",uVar2,iVar1);
      }
    }
    devm_pinctrl_put(plVar4[0x66]);
  }
  plVar4[0x66] = 0;
LAB_00102b24:
  devm_kfree(lVar7,plVar4);
  return iVar1;
}

