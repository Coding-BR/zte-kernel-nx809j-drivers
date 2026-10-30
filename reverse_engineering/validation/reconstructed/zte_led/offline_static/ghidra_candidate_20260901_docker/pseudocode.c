/* 001011a8 aw22xxx_led_imax_cfg */

undefined8 aw22xxx_led_imax_cfg(long param_1)

{
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,0xb,7);
  *(undefined4 *)(param_1 + 0x2f0) = 7;
  _printk(&DAT_0010647a,"aw22xxx_led_imax_cfg");
  return 0;
}



/* 00101208 aw22xxx_i2c_write */

void aw22xxx_i2c_write(undefined8 *param_1,undefined1 param_2,undefined1 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined1 local_2c;
  undefined1 local_2b;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  uVar3 = *param_1;
  local_2c = param_2;
  local_2b = param_3;
  iVar2 = i2c_transfer_buffer_flags(uVar3,&local_2c,2,0);
  if (iVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
    gpiod_get_raw_value();
    _printk(&DAT_001071b6,"aw22xxx_i2c_write");
    msleep(1);
    iVar2 = i2c_transfer_buffer_flags(uVar3,&local_2c,2,0);
    if (iVar2 < 0) {
      gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
      gpiod_get_raw_value();
      _printk(&DAT_00106da9,"aw22xxx_i2c_write");
      uVar3 = gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
      gpiod_direction_output_raw(uVar3,1);
      _printk(&DAT_0010690e,"aw22xxx_i2c_write");
      msleep(1);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101310 aw22xxx_i2c_probe */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int aw22xxx_i2c_probe(long param_1)

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
  _printk(&DAT_0010729b,"aw22xxx_i2c_probe");
  pcVar9 = *(code **)(*(long *)(*(long *)(param_1 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar9 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10136c);
    (*pcVar9)();
  }
  uVar3 = (*pcVar9)();
  if ((uVar3 & 1) == 0) {
    _dev_err(lVar7,"i2c functionality check failed\n");
    return -5;
  }
  plVar4 = (long *)devm_kmalloc(lVar7,0x358,0xdc0);
  if (plVar4 == (long *)0x0) {
    return -0xc;
  }
  *plVar4 = param_1;
  plVar4[1] = lVar7;
  *(long **)(param_1 + 0xb8) = plVar4;
  __mutex_init(plVar4 + 0x56,"&aw22xxx->cfg_lock",&aw22xxx_i2c_probe___key);
  *(undefined1 *)((long)plVar4 + 0x304) = 1;
  uVar3 = devm_pinctrl_get(lVar7);
  plVar4[0x66] = uVar3;
  if ((uVar3 == 0) || (0xfffffffffffff000 < uVar3)) {
    _printk(&DAT_001062f0);
    iVar1 = -0x16;
    goto LAB_001014c8;
  }
  lVar5 = pinctrl_lookup_state(uVar3,"aw22xxx_led_default");
  plVar4[0x67] = lVar5;
  uVar3 = pinctrl_lookup_state(plVar4[0x66],"aw22xxx_led_sleep");
  plVar4[0x68] = uVar3;
  if ((((plVar4[0x67] == 0) || (0xfffffffffffff000 < (ulong)plVar4[0x67])) || (uVar3 == 0)) ||
     (0xfffffffffffff000 < uVar3)) {
    _printk(&DAT_001071e4);
    iVar1 = -0x16;
  }
  else {
    iVar1 = pinctrl_select_state(plVar4[0x66]);
    if (iVar1 == 0) {
      _printk(&DAT_001067c9);
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
              _printk(&DAT_001079ad,"aw22xxx_i2c_probe",multicolor_led);
              if (multicolor_led - 1U < 2) {
                uVar6 = gpio_to_desc((int)plVar4[0x5c]);
                gpiod_set_raw_value_cansleep(uVar6,0);
                devm_gpio_request_one(lVar7,*(undefined4 *)((long)plVar4 + 0x2e4),0,"aw22xxx_int");
                if (g_custom_en == 0) {
                  g_cfgarray_count = 0x1194;
                  multicolor_led = 0;
                  return 0;
                }
                g_cfgarray_count = 0xb;
                multicolor_led = 0;
                return 0;
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
                    _printk(&DAT_001067e4);
                    pcVar9 = aw22xxx_irq_v15;
                  }
                  gpio_to_desc(*(undefined4 *)((long)plVar4 + 0x2e4));
                  uVar2 = gpiod_to_irq();
                  iVar1 = devm_request_threaded_irq(lVar7,uVar2,0,pcVar9,0x2002,"aw22xxx",plVar4);
                  if (iVar1 != 0) {
                    gpio_to_desc(*(undefined4 *)((long)plVar4 + 0x2e4));
                    uVar2 = gpiod_to_irq();
                    _dev_err(lVar7,"failed to request IRQ %d: %d\n",uVar2,iVar1);
                    goto LAB_001014b8;
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
                    _aw22xxx_fw_name = 0x78787832327761;
                    builtin_strncpy(s__fw_bin_0010016f,"_fw.bin",8);
                    aw22xxx_fw_init(plVar4);
                    _printk(&DAT_001061b0,"aw22xxx_i2c_probe");
                    uVar6 = gpio_to_desc((int)plVar4[0x5c]);
                    iVar1 = gpiod_direction_output_raw(uVar6,0);
                    if (iVar1 != 0) {
                      _printk(&DAT_001078a2);
                    }
                    lVar7 = zlog_register_client(zlog_aw22xxx_dev);
                    plVar4[0x6a] = lVar7;
                    if (lVar7 == 0) {
                      _printk(&DAT_00106a5c);
                    }
                    _printk(&DAT_00106490);
                    aw22xxx_create_proc_entry();
                    return 0;
                  }
                  pcVar8 = "failed to allocate configuration names\n";
                }
              }
              _dev_err(lVar7,pcVar8);
            }
            else {
              _dev_err(lVar7,"%s: gpio request failed\n","aw22xxx_i2c_probe");
            }
            goto LAB_001014b8;
          }
          pcVar8 = "irq-gpio missing or invalid\n";
        }
        _dev_err(lVar7,pcVar8);
        iVar1 = -0x16;
      }
    }
    else {
      _printk(&DAT_00106fc9);
    }
  }
LAB_001014b8:
  devm_pinctrl_put(plVar4[0x66]);
  plVar4[0x66] = 0;
LAB_001014c8:
  devm_kfree(lVar7,plVar4);
  return iVar1;
}



/* 001018dc aw22xxx_i2c_remove */

void aw22xxx_i2c_remove(long param_1)

{
  undefined4 uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xb8);
  _printk(&DAT_00107424,"aw22xxx_i2c_remove");
  remove_proc_entry("driver/colorleds_id",0);
  _printk(&DAT_00106f39);
  sysfs_remove_group(*(undefined8 *)(lVar2 + 0x60),aw22xxx_attribute_group);
  led_classdev_unregister(lVar2 + 0x10);
  gpio_to_desc(*(undefined4 *)(lVar2 + 0x2e4));
  uVar1 = gpiod_to_irq();
  devm_free_irq(param_1 + 0x20,uVar1,lVar2);
  devm_kfree(param_1 + 0x20,lVar2);
  g_cfgarray_count = 0x1194;
  if (g_custom_en != 0) {
    g_cfgarray_count = 0xb;
  }
  return;
}



/* 00101994 aw22xxx_hw_reset */

void aw22xxx_hw_reset(long param_1)

{
  undefined8 uVar1;
  
  _printk(&DAT_00107424,"aw22xxx_hw_reset");
  if ((param_1 == 0) || (*(int *)(param_1 + 0x2e0) < 0)) {
    _dev_err(*(undefined8 *)(param_1 + 8),"%s: reset_gpio invalid\n","aw22xxx_hw_reset");
  }
  else {
    uVar1 = gpio_to_desc();
    gpiod_set_raw_value_cansleep(uVar1,0);
    usleep_range_state(1000,0x5dc,2);
    uVar1 = gpio_to_desc(*(undefined4 *)(param_1 + 0x2e0));
    gpiod_set_raw_value_cansleep(uVar1,1);
    usleep_range_state(1000,0x5dc,2);
  }
  return;
}



/* 00101a30 aw22xxx_read_chipid */

void aw22xxx_read_chipid(long param_1)

{
  long lVar1;
  undefined8 uVar2;
  undefined *puVar3;
  undefined1 auVar4 [16];
  char local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = '\0';
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  auVar4 = aw22xxx_i2c_read(param_1,1,local_2c);
  if (-1 < auVar4._0_4_) {
    if (local_2c[0] == 'v') {
LAB_00101ac0:
      aw22xxx_i2c_read(param_1,0,local_2c);
      if (local_2c[0] == '\'') {
        *(undefined1 *)(param_1 + 0x2ed) = 2;
        puVar3 = &DAT_001072f9;
        g_chip_id = 0x37323132327761;
      }
      else {
        if (local_2c[0] != '\x18') {
          _printk(&DAT_00106806);
          _printk(&DAT_001079ca,"aw22xxx_read_chipid");
          goto LAB_00101bb0;
        }
        puVar3 = &DAT_00106c53;
        *(undefined1 *)(param_1 + 0x2ed) = 1;
        g_chip_id = 0x38313132327761;
      }
      _printk(puVar3);
      uVar2 = 0;
      goto LAB_00101bb4;
    }
    _printk(&DAT_00106a81,auVar4._8_8_,auVar4._0_8_ & 0xffffffff);
    msleep(1);
    auVar4 = aw22xxx_i2c_read(param_1,1,local_2c);
    if (-1 < auVar4._0_4_) {
      if (local_2c[0] == 'v') goto LAB_00101ac0;
      _printk(&DAT_00106ff6,auVar4._8_8_,auVar4._0_8_ & 0xffffffff);
      msleep(1);
LAB_00101bb0:
      uVar2 = 0xffffffea;
      goto LAB_00101bb4;
    }
  }
  _dev_err(*(undefined8 *)(param_1 + 8),"aw22xxx: failed to read AW22XXX_REG_ID: %d\n");
  uVar2 = 0xfffffffb;
LAB_00101bb4:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00101be0 aw22xxx_interrupt_setup */

void aw22xxx_interrupt_setup(undefined8 param_1)

{
  long lVar1;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  _printk(&DAT_00107424,"aw22xxx_interrupt_setup");
  _printk(&DAT_00106e78);
  aw22xxx_i2c_read(param_1,10,local_2c);
  _printk(&DAT_001070d6,local_2c[0]);
  aw22xxx_i2c_read(param_1,9,local_2c);
  aw22xxx_i2c_write(param_1,9,local_2c[0] | 1);
  aw22xxx_i2c_read(param_1,9,local_2c);
  aw22xxx_i2c_write(param_1,9,local_2c[0] | 0x10);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101cc0 aw22xxx_irq */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_irq(undefined8 param_1,long param_2)

{
  long lVar1;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  _printk(&DAT_00107211,"aw22xxx_irq");
  aw22xxx_i2c_read(param_2,10,local_2c);
  _printk(&DAT_00106aa6,"aw22xxx_irq",local_2c[0]);
  if ((local_2c[0] >> 4 & 1) != 0) {
    queue_work_on(0x20,_system_wq,param_2 + 0x250);
    _printk(&DAT_001063ac,*(undefined4 *)(param_2 + 0x2f8));
    zlog_client_record(*(undefined8 *)(param_2 + 0x350),
                       "LED WATCHDOG recover cfg warnning,count:%d\n",
                       *(undefined4 *)(param_2 + 0x2f8));
    zlog_client_notify(*(undefined8 *)(param_2 + 0x350),0x400259);
  }
  _printk(&DAT_0010762a,"aw22xxx_irq");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101dbc aw22xxx_irq_v15 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_irq_v15(undefined8 param_1,long param_2)

{
  long lVar1;
  byte local_30 [4];
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  local_30[0] = 0;
  aw22xxx_i2c_read(param_2,10,local_2c);
  _printk(&DAT_00106aa6,"aw22xxx_irq_v15",local_2c[0]);
  if ((local_2c[0] & 1) != 0) {
    _printk(&DAT_0010763e,"aw22xxx_irq_v15");
    aw22xxx_i2c_write(param_2,0xff,0);
    aw22xxx_i2c_read(param_2,4,local_30);
    aw22xxx_i2c_write(param_2,4,local_30[0] & 0xfd);
    aw22xxx_i2c_read(param_2,4,local_30);
    aw22xxx_i2c_write(param_2,4,local_30[0] & 0xfe);
    _printk(&DAT_00106f67);
    aw22xxx_i2c_read(param_2,2,local_30);
    aw22xxx_i2c_write(param_2,2,local_30[0] & 0xfe);
    usleep_range_state(2000,3000,2);
    _printk(&DAT_001061cf,"aw22xxx_irq_v15");
  }
  if ((local_2c[0] >> 4 & 1) != 0) {
    _printk(&DAT_00107774,"aw22xxx_irq_v15");
    aw22xxx_i2c_write(param_2,0xff,0);
    aw22xxx_i2c_read(param_2,4,local_30);
    aw22xxx_i2c_write(param_2,4,local_30[0] & 0xfd);
    aw22xxx_i2c_read(param_2,4,local_30);
    aw22xxx_i2c_write(param_2,4,local_30[0] | 2);
    aw22xxx_i2c_read(param_2,4,local_30);
    aw22xxx_i2c_write(param_2,4,local_30[0] | 1);
    if (*(int *)(param_2 + 0x300) != 0) {
      queue_work_on(0x20,_system_wq,param_2 + 0x230);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101fc4 aw22xxx_parse_led_cdev */

ulong aw22xxx_parse_led_cdev(long param_1,undefined8 param_2)

{
  uint uVar1;
  long lVar2;
  ulong uVar3;
  
  _printk(&DAT_00107424,"aw22xxx_parse_led_cdev");
  lVar2 = of_get_next_child(param_2,0);
  while( true ) {
    if (lVar2 == 0) {
      *(undefined8 *)(param_1 + 0x1d0) = 0xfffffffe00000;
      *(long *)(param_1 + 0x1d8) = param_1 + 0x1d8;
      *(long *)(param_1 + 0x1e0) = param_1 + 0x1d8;
      *(code **)(param_1 + 0x1e8) = aw22xxx_brightness_work;
      *(undefined8 *)(param_1 + 0x1f0) = 0xfffffffe00000;
      *(long *)(param_1 + 0x1f8) = param_1 + 0x1f8;
      *(long *)(param_1 + 0x200) = param_1 + 0x1f8;
      *(code **)(param_1 + 0x208) = aw22xxx_task_work;
      *(code **)(param_1 + 0x30) = aw22xxx_set_brightness;
      uVar1 = led_classdev_register_ext(*(undefined8 *)(param_1 + 8),param_1 + 0x10,0);
      if (uVar1 == 0) {
        uVar3 = sysfs_create_group(*(undefined8 *)(param_1 + 0x60),aw22xxx_attribute_group);
        if ((int)uVar3 != 0) {
          uVar3 = uVar3 & 0xffffffff;
          _dev_err(*(undefined8 *)(param_1 + 8),"led sysfs ret: %d\n",uVar3);
          led_classdev_unregister(param_1 + 0x10);
        }
      }
      else {
        uVar3 = (ulong)uVar1;
        _dev_err(*(undefined8 *)(param_1 + 8),"unable to register led ret=%d\n",uVar3);
      }
      return uVar3;
    }
    uVar1 = of_property_read_string(lVar2,"aw22xxx,name",param_1 + 0x10);
    if ((int)uVar1 < 0) {
      _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading led name, ret = %d\n",(ulong)uVar1);
      return (ulong)uVar1;
    }
    uVar1 = of_property_read_variable_u32_array(lVar2,"aw22xxx,imax",param_1 + 0x2f0,1,0);
    if ((int)uVar1 < 0) {
      _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading imax, ret = %d\n",(ulong)uVar1);
      return (ulong)uVar1;
    }
    uVar1 = of_property_read_variable_u32_array(lVar2,"aw22xxx,brightness",param_1 + 0x18,1,0);
    if ((int)uVar1 < 0) break;
    uVar1 = of_property_read_variable_u32_array(lVar2,"aw22xxx,max_brightness",param_1 + 0x1c,1,0);
    if ((int)uVar1 < 0) {
      _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading max brightness, ret = %d\n",
               (ulong)uVar1);
      return (ulong)uVar1;
    }
    lVar2 = of_get_next_child(param_2,lVar2);
  }
  _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading brightness, ret = %d\n",(ulong)uVar1);
  return (ulong)uVar1;
}



/* 0010222c aw22xxx_alloc_name_array */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_alloc_name_array(void)

{
  uint uVar1;
  long lVar2;
  undefined8 *puVar3;
  undefined8 uVar4;
  long lVar5;
  ulong uVar6;
  
  _printk(&DAT_00107424,"aw22xxx_alloc_name_array");
  aw22xxx_cfg_name = (undefined8 *)__kmalloc_cache_noprof(___kmalloc_cache_noprof,0xcc0,0x58);
  if (aw22xxx_cfg_name == (undefined8 *)0x0) {
LAB_00102318:
    uVar4 = 0xfffffff4;
  }
  else {
    lVar5 = 0;
    uVar4 = sp_el0;
    do {
      lVar2 = __kmalloc_cache_noprof(_snprintf,0xcc0,0x40);
      puVar3 = aw22xxx_cfg_name;
      aw22xxx_cfg_name[lVar5] = lVar2;
      if (lVar2 == 0) {
        if ((int)lVar5 != 0) {
          uVar6 = lVar5 + 1;
          do {
            kfree(aw22xxx_cfg_name[(int)uVar6 - 2]);
            uVar1 = (int)uVar6 - 1;
            uVar6 = (ulong)uVar1;
            puVar3 = aw22xxx_cfg_name;
          } while (1 < (int)uVar1);
        }
        kfree(puVar3);
        aw22xxx_cfg_name = (undefined8 *)0x0;
        goto LAB_00102318;
      }
      lVar5 = lVar5 + 1;
    } while (lVar5 != 0xb);
    builtin_strncpy((char *)*puVar3,"m_led_off.bin",0xe);
    puVar3 = aw22xxx_cfg_name;
    builtin_strncpy((char *)aw22xxx_cfg_name[1],"fan_led_on.bin",0xf);
    builtin_strncpy((char *)puVar3[2],"fan_led_off.bin",0x10);
    puVar3 = aw22xxx_cfg_name;
    builtin_strncpy((char *)aw22xxx_cfg_name[3],"touch_led_off.bin",0x12);
    builtin_strncpy((char *)puVar3[4],"lamps_init.bin",0xf);
    puVar3 = aw22xxx_cfg_name;
    builtin_strncpy((char *)aw22xxx_cfg_name[5],"nubia_all_rgb_red.bin",0x16);
    builtin_strncpy((char *)puVar3[6],"nubia_all_rgb_green.bin",0x18);
    puVar3 = aw22xxx_cfg_name;
    builtin_strncpy((char *)aw22xxx_cfg_name[7],"nubia_all_rgb_blue.bin",0x17);
    builtin_strncpy((char *)puVar3[8],"nubia_all_rgb_red.bin",0x16);
    puVar3 = aw22xxx_cfg_name;
    builtin_strncpy((char *)aw22xxx_cfg_name[9],"nubia_all_rgb_green.bin",0x18);
    builtin_strncpy((char *)puVar3[10],"nubia_all_rgb_blue.bin",0x17);
    _printk(&DAT_00105f3d,"aw22xxx_alloc_name_array");
    uVar4 = 0;
  }
  return uVar4;
}



/* 00102490 aw22xxx_fw_init */

void aw22xxx_fw_init(long param_1)

{
  bool bVar1;
  
  hrtimer_init(param_1 + 0x270,1,1);
  *(code **)(param_1 + 0x298) = aw22xxx_fw_timer_func;
  *(undefined8 *)(param_1 + 0x210) = 0xfffffffe00000;
  *(long *)(param_1 + 0x218) = param_1 + 0x218;
  *(long *)(param_1 + 0x220) = param_1 + 0x218;
  *(code **)(param_1 + 0x228) = aw22xxx_fw_work_routine;
  *(undefined8 *)(param_1 + 0x230) = 0xfffffffe00000;
  *(long *)(param_1 + 0x238) = param_1 + 0x238;
  *(long *)(param_1 + 0x240) = param_1 + 0x238;
  bVar1 = g_ver_var == 0xb;
  *(code **)(param_1 + 0x248) = aw22xxx_cfg_work_routine;
  if (bVar1) {
    *(undefined8 *)(param_1 + 0x250) = 0xfffffffe00000;
    *(long *)(param_1 + 600) = param_1 + 600;
    *(long *)(param_1 + 0x260) = param_1 + 600;
    *(code **)(param_1 + 0x268) = aw22xxx_recover_work_routine;
  }
  _printk(&DAT_00106068,"aw22xxx_fw_init");
  hrtimer_start_range_ns(param_1 + 0x270,1000000000,0,1);
  return;
}



/* 00102564 aw22xxx_create_proc_entry */

void aw22xxx_create_proc_entry(void)

{
  undefined *puVar1;
  long lVar2;
  
  _printk(&DAT_00107424,"aw22xxx_create_proc_entry");
  lVar2 = proc_create("driver/colorleds_id",0x124,0,proc_ops_awid);
  puVar1 = &DAT_001068d7;
  if (lVar2 != 0) {
    puVar1 = &DAT_00106d76;
  }
  _printk(puVar1);
  return;
}



/* 001025c8 aw22xxx_i2c_read */

void aw22xxx_i2c_read(undefined8 *param_1,undefined1 param_2,undefined1 *param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  uVar3 = *param_1;
  local_2c[0] = param_2;
  iVar2 = i2c_transfer_buffer_flags(uVar3,local_2c,1,0);
  if (iVar2 < 0) {
    _printk(&DAT_00106c75,"aw22xxx_i2c_read");
    msleep(1);
    iVar2 = i2c_transfer_buffer_flags(uVar3,local_2c,1,0);
    if (iVar2 < 0) goto LAB_00102624;
  }
  iVar2 = i2c_transfer_buffer_flags(uVar3,param_3,1,1);
  if (iVar2 < 0) {
    *param_3 = (char)iVar2;
    _printk(&DAT_0010731b,"aw22xxx_i2c_read");
    msleep(1);
    i2c_transfer_buffer_flags(uVar3,param_3,1,1);
  }
LAB_00102624:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}



/* 001026c4 aw22xxx_brightness_work */

void aw22xxx_brightness_work(long param_1)

{
  uint uVar1;
  long lVar2;
  byte local_3c [4];
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = param_1 + -0x1d0;
  local_3c[0] = 0;
  _printk(&DAT_00107424,"aw22xxx_brightness_work");
  _printk(&DAT_00106e94,"aw22xxx_brightness_work");
  aw22xxx_i2c_write(lVar2,5,0xff);
  aw22xxx_i2c_read(lVar2,4,local_3c);
  local_3c[0] = local_3c[0] & 0xfd;
  aw22xxx_i2c_write(lVar2,4);
  aw22xxx_i2c_read(lVar2,2,local_3c);
  local_3c[0] = local_3c[0] & 0xfe;
  aw22xxx_i2c_write(lVar2,2);
  usleep_range_state(2000,3000,2);
  if (*(int *)(param_1 + -0x1b8) != 0) {
    _printk(&DAT_0010701d,"aw22xxx_brightness_work");
    aw22xxx_i2c_read(lVar2,2,local_3c);
    local_3c[0] = local_3c[0] | 1;
    aw22xxx_i2c_write(lVar2,2);
    usleep_range_state(2000,3000,2);
    aw22xxx_i2c_read(lVar2,4,local_3c);
    local_3c[0] = local_3c[0] | 1;
    aw22xxx_i2c_write(lVar2,4);
    uVar1 = 0xf;
    if (*(uint *)(param_1 + 0x120) < 0xf) {
      uVar1 = *(uint *)(param_1 + 0x120);
    }
    aw22xxx_i2c_write(lVar2,0xff,0);
    aw22xxx_i2c_write(lVar2,0xb,uVar1);
    aw22xxx_i2c_write(lVar2,0x21,0xe1);
    aw22xxx_i2c_write(lVar2,0x22,0);
    aw22xxx_i2c_write(lVar2,0x20,2);
    aw22xxx_i2c_write(lVar2,0x23,0x3d);
    aw22xxx_i2c_write(lVar2,0x20,0);
    aw22xxx_i2c_write(lVar2,5,0x82);
    aw22xxx_i2c_read(lVar2,4,local_3c);
    local_3c[0] = local_3c[0] | 2;
    aw22xxx_i2c_write(lVar2,4);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001028fc aw22xxx_task_work */

void aw22xxx_task_work(long param_1)

{
  uint uVar1;
  long lVar2;
  byte local_3c [4];
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = param_1 + -0x1f0;
  local_3c[0] = 0;
  _printk(&DAT_00107424,"aw22xxx_task_work");
  _printk(&DAT_00106e94,"aw22xxx_task_work");
  aw22xxx_i2c_write(lVar2,5,0xff);
  aw22xxx_i2c_read(lVar2,4,local_3c);
  local_3c[0] = local_3c[0] & 0xfd;
  aw22xxx_i2c_write(lVar2,4);
  aw22xxx_i2c_read(lVar2,2,local_3c);
  local_3c[0] = local_3c[0] & 0xfe;
  aw22xxx_i2c_write(lVar2,2);
  usleep_range_state(2000,3000,2);
  if (*(char *)(param_1 + 0x10c) != '\0') {
    _printk(&DAT_00106582,"aw22xxx_task_work");
    aw22xxx_i2c_read(lVar2,2,local_3c);
    local_3c[0] = local_3c[0] | 1;
    aw22xxx_i2c_write(lVar2,2);
    usleep_range_state(2000,3000,2);
    aw22xxx_i2c_read(lVar2,4,local_3c);
    local_3c[0] = local_3c[0] | 1;
    aw22xxx_i2c_write(lVar2,4);
    uVar1 = 0xf;
    if (*(uint *)(param_1 + 0x100) < 0xf) {
      uVar1 = *(uint *)(param_1 + 0x100);
    }
    aw22xxx_i2c_write(lVar2,0xff,0);
    aw22xxx_i2c_write(lVar2,0xb,uVar1);
    aw22xxx_i2c_write(lVar2,0x21,0xe1);
    aw22xxx_i2c_write(lVar2,0x22,0);
    aw22xxx_i2c_write(lVar2,0x20,2);
    aw22xxx_i2c_write(lVar2,0x23,0x3d);
    aw22xxx_i2c_write(lVar2,0x20,0);
    aw22xxx_i2c_write(lVar2,5,*(undefined1 *)(param_1 + 0x10c));
    aw22xxx_i2c_write(lVar2,6,*(undefined1 *)(param_1 + 0x10d));
    aw22xxx_i2c_read(lVar2,4,local_3c);
    local_3c[0] = local_3c[0] | 2;
    aw22xxx_i2c_write(lVar2,4);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00102b40 aw22xxx_set_brightness */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw22xxx_set_brightness(long param_1,undefined4 param_2)

{
  *(undefined4 *)(param_1 + 8) = param_2;
  queue_work_on(0x20,_system_wq,param_1 + 0x1c0);
  return;
}



/* 00102b78 aw22xxx_cfg_show */

size_t aw22xxx_cfg_show(long param_1,undefined8 param_2,char *param_3)

{
  uint uVar1;
  size_t sVar2;
  
  uVar1 = *(uint *)(*(long *)(param_1 + 0x98) + 0x2f0);
  if (uVar1 < 0xb) {
    uVar1 = snprintf(param_3,0x1000,"current cfg = %s\n",
                     *(undefined8 *)(aw22xxx_cfg_name + (ulong)uVar1 * 8));
    if (0xfff < uVar1) {
      return 0xfffffffffffffff2;
    }
  }
  else {
    _printk(&DAT_00105f0c);
  }
  sVar2 = strlen(param_3);
  return sVar2;
}



/* 00102bf4 aw22xxx_cfg_store */

undefined8 aw22xxx_cfg_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%u",&local_2c);
  if (iVar1 == 1) {
    *(byte *)(lVar2 + 0x2f4) = (byte)local_2c & 0xf;
    _printk(&DAT_001063d3,"aw22xxx_cfg_store");
  }
  else {
    _printk(&DAT_001066c8,"aw22xxx_cfg_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00102cb0 aw22xxx_effect_show */

long aw22xxx_effect_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"effect = 0x%02x\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2f0));
  return (long)iVar1;
}



/* 00102cec aw22xxx_effect_store */

undefined8 aw22xxx_effect_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  long lVar3;
  byte local_50 [4];
  uint local_4c;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_4c = 0;
  local_50[0] = 0;
  iVar1 = sscanf(param_3,"%x",&local_4c);
  if (iVar1 == 1) {
    lVar2 = lVar3 + -0x10;
    _printk(&DAT_0010744f,"aw22xxx_effect_store",local_4c);
    mutex_lock(lVar3 + 0x2a0);
    if ((local_4c - 8 < 3) && (init_flag != 0)) {
      _printk(&DAT_001066e4,"aw22xxx_effect_store");
      *(undefined4 *)(lVar3 + 0x2f0) = 4;
      aw22xxx_get_fwname(4);
      aw22xxx_cfg_update_wait_from_dyn_name(lVar2);
      aw22xxx_set_cfg_run_state(*(undefined4 *)(lVar3 + 0x2f0));
      if (g_cfg_cur_state == '\0') {
        _printk(&DAT_00107046,"aw22xxx_effect_store");
        aw22xxx_i2c_read(lVar2,2,local_50);
        local_50[0] = local_50[0] & 0xfe;
        aw22xxx_i2c_write(lVar2,2);
        usleep_range_state(2000,3000,2);
        g_init_flg = 0;
      }
      init_flag = 0;
      _printk(&DAT_001078e5,"aw22xxx_effect_store");
    }
    *(uint *)(lVar3 + 0x2f0) = local_4c;
    _printk(&DAT_001074ec,"aw22xxx_effect_store");
    if (((local_4c < 4) && (local_4c != 1)) && ((init_flag & 1) == 0)) {
      init_flag = 1;
      _printk(&DAT_0010790b,"aw22xxx_effect_store");
    }
    aw22xxx_get_fwname(*(undefined4 *)(lVar3 + 0x2f0));
    aw22xxx_cfg_update_wait_from_dyn_name(lVar2);
    iVar1 = *(int *)(lVar3 + 0x2f0);
    if (iVar1 == 0) {
      msleep(100);
      iVar1 = *(int *)(lVar3 + 0x2f0);
    }
    aw22xxx_set_cfg_run_state(iVar1);
    if (g_cfg_cur_state == '\0') {
      _printk(&DAT_00107276,"aw22xxx_effect_store");
      aw22xxx_i2c_read(lVar2,2,local_50);
      local_50[0] = local_50[0] & 0xfe;
      aw22xxx_i2c_write(lVar2,2);
      usleep_range_state(2000,3000,2);
      g_init_flg = 0;
    }
    _printk(&DAT_00105f3d,"aw22xxx_effect_store");
    mutex_unlock(lVar3 + 0x2a0);
  }
  else {
    _printk(&DAT_001066c8,"aw22xxx_effect_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_48) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00102f78 aw22xxx_get_fwname */

void aw22xxx_get_fwname(ulong param_1)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  byte bVar4;
  int iVar5;
  size_t sVar6;
  long lVar7;
  char *__s;
  ulong uVar8;
  undefined8 uStack_70;
  long lStack_68;
  undefined1 *puStack_60;
  code *pcStack_58;
  char *pcStack_50;
  
  uVar8 = param_1 >> 0x18 & 0xff;
  uVar2 = (uint)param_1 >> 0xc & 0xfff;
  uVar1 = (uint)param_1 & 0xfff;
  _printk(&DAT_00106ac3,"aw22xxx_get_fwname",uVar8);
  _printk(&DAT_00106b91,"aw22xxx_get_fwname",uVar2);
  _printk(&DAT_0010671d,"aw22xxx_get_fwname",uVar1);
  iVar5 = (int)uVar8;
  if (iVar5 == 3) {
    sprintf(aw22xxx_dyn_name,"aw_fan%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
LAB_0010309c:
    _printk(&DAT_00106842,"aw22xxx_get_fwname",aw22xxx_dyn_name);
    return;
  }
  if (iVar5 == 2) {
    sprintf(aw22xxx_dyn_name,"aw_touch%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
    goto LAB_0010309c;
  }
  if (iVar5 == 1) {
    sprintf(aw22xxx_dyn_name,"aw_cfg%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
    goto LAB_0010309c;
  }
  if (((iVar5 != 0) || (10 < uVar1)) || (aw22xxx_cfg_name == 0)) {
    _printk(&DAT_001077b5,"aw22xxx_get_fwname");
    return;
  }
  __s = *(char **)(aw22xxx_cfg_name + (param_1 & 0xffffffff) * 8);
  sVar6 = strlen(__s);
  if (sVar6 + 1 < 0x41) {
    memcpy(aw22xxx_dyn_name,__s,sVar6 + 1);
    goto LAB_0010309c;
  }
  lVar7 = __fortify_panic(0x11,0x40);
  pcStack_58 = aw22xxx_cfg_update_wait_from_dyn_name;
  lVar3 = sp_el0;
  lStack_68 = *(long *)(lVar3 + 0x710);
  uStack_70 = 0;
  puStack_60 = &stack0xffffffffffffffc0;
  pcStack_50 = __s;
  _printk(&DAT_00107424,"aw22xxx_cfg_update_wait_from_dyn_name");
  bVar4 = g_init_flg;
  if (*(char *)(lVar7 + 0x2ef) == '\x02') {
    if (*(int *)(lVar7 + 0x300) == 2) {
      *(undefined1 *)(lVar7 + 0x348) = 0;
    }
    else {
      *(undefined1 *)(lVar7 + 0x348) = 1;
    }
    if ((bVar4 & 1) == 0) {
      g_init_flg = 1;
      aw22xxx_init_cfg_update_array(lVar7);
    }
    iVar5 = request_firmware(&uStack_70,aw22xxx_dyn_name,*(undefined8 *)(lVar7 + 8));
    if (iVar5 == 0) {
      aw22xxx_cfg_loaded(uStack_70,lVar7);
      msleep(0x14);
      goto LAB_001031a8;
    }
  }
  else {
    iVar5 = -0x16;
  }
  _printk(&DAT_0010601c,"aw22xxx_cfg_update_wait_from_dyn_name",iVar5);
LAB_001031a8:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) != lStack_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}



/* 001030f4 aw22xxx_cfg_update_wait_from_dyn_name */

void aw22xxx_cfg_update_wait_from_dyn_name(long param_1)

{
  long lVar1;
  byte bVar2;
  int iVar3;
  undefined8 local_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_30 = 0;
  _printk(&DAT_00107424,"aw22xxx_cfg_update_wait_from_dyn_name");
  bVar2 = g_init_flg;
  if (*(char *)(param_1 + 0x2ef) == '\x02') {
    if (*(int *)(param_1 + 0x300) == 2) {
      *(undefined1 *)(param_1 + 0x348) = 0;
    }
    else {
      *(undefined1 *)(param_1 + 0x348) = 1;
    }
    if ((bVar2 & 1) == 0) {
      g_init_flg = 1;
      aw22xxx_init_cfg_update_array(param_1);
    }
    iVar3 = request_firmware(&local_30,aw22xxx_dyn_name,*(undefined8 *)(param_1 + 8));
    if (iVar3 == 0) {
      aw22xxx_cfg_loaded(local_30,param_1);
      msleep(0x14);
      goto LAB_001031a8;
    }
  }
  else {
    iVar3 = -0x16;
  }
  _printk(&DAT_0010601c,"aw22xxx_cfg_update_wait_from_dyn_name",iVar3);
LAB_001031a8:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001031f8 aw22xxx_set_cfg_run_state */

void aw22xxx_set_cfg_run_state(ulong param_1)

{
  uint uVar1;
  byte bVar2;
  int iVar3;
  ulong uVar4;
  
  uVar4 = param_1 >> 0x18 & 0xff;
  uVar1 = (uint)param_1 >> 0xc & 0xfff;
  _printk(&DAT_00106edc,"aw22xxx_set_cfg_run_state",uVar4);
  _printk(&DAT_00106513,"aw22xxx_set_cfg_run_state",uVar1);
  _printk(&DAT_0010685d,"aw22xxx_set_cfg_run_state",param_1 & 0xffffffff);
  iVar3 = (int)uVar4;
  if ((iVar3 == 1) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0x7d;
  }
  else if ((iVar3 == 3) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0x7e;
  }
  else if ((iVar3 == 3) && (uVar1 == 2)) {
    g_cfg_cur_state = g_cfg_cur_state | 1;
  }
  else if ((iVar3 == 2) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0x7b;
  }
  else if ((iVar3 == 2) && (uVar1 - 0x101 < 4)) {
    g_cfg_cur_state = g_cfg_cur_state | 4;
  }
  else {
    bVar2 = 1;
    if (iVar3 != 3) {
      bVar2 = 2;
    }
    g_cfg_cur_state = g_cfg_cur_state | bVar2;
  }
  return;
}



/* 00103314 aw22xxx_init_cfg_update_array */

void aw22xxx_init_cfg_update_array(undefined8 param_1)

{
  long lVar1;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  _printk(&DAT_00107424,"aw22xxx_init_cfg_update_array");
  _printk(&DAT_0010662c,"aw22xxx_init_cfg_update_array");
  aw22xxx_i2c_read(param_1,2,local_2c);
  local_2c[0] = local_2c[0] | 1;
  aw22xxx_i2c_write(param_1,2);
  usleep_range_state(2000,3000,2);
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,2,1);
  aw22xxx_i2c_write(param_1,0xc,0);
  aw22xxx_i2c_write(param_1,0xb,5);
  aw22xxx_i2c_write(param_1,5,1);
  aw22xxx_i2c_write(param_1,4,1);
  aw22xxx_i2c_write(param_1,9,1);
  aw22xxx_i2c_write(param_1,4,3);
  aw22xxx_i2c_write(param_1,5,0x41);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010345c aw22xxx_cfg_loaded */

void aw22xxx_cfg_loaded(ulong *param_1,long param_2)

{
  ulong uVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  uint uVar5;
  uint uVar6;
  byte bVar7;
  long lVar8;
  
  _printk(&DAT_00107424,"aw22xxx_cfg_loaded");
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_001064f5);
    release_firmware(0);
  }
  else {
    _printk(&DAT_0010753a,"aw22xxx_cfg_loaded",*(undefined4 *)(param_2 + 0x300),*param_1);
    if (1 < *param_1) {
      lVar8 = 0;
      bVar7 = 0;
      do {
        bVar3 = *(byte *)(param_1[1] + lVar8);
        bVar4 = ((byte *)(param_1[1] + lVar8))[1];
        uVar6 = (uint)bVar4;
        bVar2 = bVar4;
        if (bVar3 != 0xff) {
          bVar2 = bVar7;
        }
        uVar5 = (uint)bVar3;
        if ((*(char *)(param_2 + 0x304) == '\x01') || (bVar2 != 1)) {
          aw22xxx_i2c_write(param_2,uVar5,bVar4);
          if ((uVar5 == 2) && ((bVar2 == 0 && ((bVar4 & 1) != 0)))) {
            usleep_range_state(2000,0x9c4,2);
          }
        }
        else {
          if (bVar3 - 0x10 < 0x1b) {
            uVar6 = *(uint *)(param_2 + 0x30c + ((ulong)(uVar5 - 0x10) / 3) * 4) >>
                    (ulong)(((uVar5 - 0x10) % 3) * -8 + 0x10 & 0x1f);
          }
          aw22xxx_i2c_write(param_2,bVar3,uVar6);
        }
        uVar1 = lVar8 + 3;
        lVar8 = lVar8 + 2;
        bVar7 = bVar2;
      } while (uVar1 < *param_1);
    }
    release_firmware(param_1);
    if (*(uint *)(param_2 + 0x2f0) < 0xd) {
      bVar7 = aw22xxx_imax_code[*(uint *)(param_2 + 0x2f0)];
      if (0xe < bVar7) {
        bVar7 = 0xf;
      }
      aw22xxx_i2c_write(param_2,0xff,0);
      aw22xxx_i2c_write(param_2,0xb,bVar7);
      _printk(&DAT_00105f3d,"aw22xxx_cfg_loaded");
    }
  }
  return;
}



/* 0010363c aw22xxx_fw_show */

long aw22xxx_fw_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"firmware name = %s\n",&aw22xxx_fw_name);
  return (long)iVar1;
}



/* 00103678 aw22xxx_fw_store */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_fw_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  int local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if ((iVar1 == 1) && (*(char *)(lVar2 + 0x2de) = (char)local_2c, local_2c == 1)) {
    queue_work_on(0x20,_system_wq,lVar2 + 0x200);
  }
  g_init_flg = 0;
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103724 aw22xxx_hwen_show */

long aw22xxx_hwen_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  ulong uVar2;
  
  gpio_to_desc(*(undefined4 *)(*(long *)(param_1 + 0x98) + 0x2d0));
  uVar2 = gpiod_get_raw_value();
  iVar1 = snprintf(param_3,0x1000,"hwen=%d\n",uVar2 & 0xffffffff);
  return (long)iVar1;
}



/* 00103778 aw22xxx_hwen_store */

undefined8 aw22xxx_hwen_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  uint local_2c;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    if (local_2c < 2) {
      if (local_2c == 1) {
        aw22xxx_hw_reset(lVar3 + -0x10);
      }
      else {
        _printk(&DAT_00106ba9);
        if (*(int *)(lVar3 + 0x2d0) < 0) {
          _dev_err(*(undefined8 *)(lVar3 + -8),"aw22xxx_hw_off failed\n");
        }
        else {
          uVar2 = gpio_to_desc();
          gpiod_set_raw_value_cansleep(uVar2,0);
          usleep_range_state(1000,0x5dc,2);
        }
      }
      goto LAB_001037e0;
    }
  }
  _printk(&DAT_001077de,"aw22xxx_hwen_store");
  param_4 = 0xffffffffffffffea;
LAB_001037e0:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103878 aw22xxx_imax_show */

long aw22xxx_imax_show(long param_1,undefined8 param_2,char *param_3)

{
  uint uVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  
  lVar3 = *(long *)(param_1 + 0x98);
  iVar2 = snprintf(param_3,0x1000,"imax[%x] = %s\n",0,"AW22XXX_IMAX_2mA");
  lVar4 = (long)iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",1,"AW22XXX_IMAX_3mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",2,"AW22XXX_IMAX_4mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",3,"AW22XXX_IMAX_6mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",4,"AW22XXX_IMAX_9mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",5,"AW22XXX_IMAX_10mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",6,"AW22XXX_IMAX_15mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",7,"AW22XXX_IMAX_20mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",8,"AW22XXX_IMAX_30mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",9,"AW22XXX_IMAX_40mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",10,"AW22XXX_IMAX_45mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",0xb,"AW22XXX_IMAX_60mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",0xc,"AW22XXX_IMAX_75mA");
  uVar1 = *(uint *)(lVar3 + 0x2e0);
  lVar4 = lVar4 + iVar2;
  if (uVar1 < 0xd) {
    iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"current id = 0x%02x, imax = %s\n",(ulong)uVar1,
                     *(undefined8 *)(aw22xxx_imax_name + (ulong)uVar1 * 8));
    lVar4 = lVar4 + iVar2;
  }
  return lVar4;
}



/* 00103a98 aw22xxx_imax_store */

undefined8 aw22xxx_imax_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  uint uVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  uint local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar2 = sscanf(param_3,"%x",&local_3c);
  uVar1 = local_3c;
  if ((iVar2 == 1) && (local_3c < 0xd)) {
    lVar3 = lVar4 + -0x10;
    *(uint *)(lVar4 + 0x2e0) = local_3c;
    aw22xxx_i2c_write(lVar3,0xff,0);
    aw22xxx_i2c_write(lVar3,0xb,aw22xxx_imax_code[uVar1]);
  }
  else {
    _printk(&DAT_00106047,"aw22xxx_imax_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103b78 aw22xxx_para_show */

long aw22xxx_para_show(undefined8 param_1,undefined8 param_2,long param_3)

{
  code *pcVar1;
  int iVar2;
  long lVar3;
  ulong uVar4;
  
  if (write_idx == 0) {
    lVar3 = 0;
  }
  else {
    if (write_idx * 0x19 < 1) {
      lVar3 = 0;
    }
    else {
      uVar4 = 0;
      lVar3 = 0;
      do {
        if ((uVar4 != 0) && ((int)uVar4 + (int)((uVar4 & 0xffffffff) / 0x19) * -0x19 == 0)) {
          iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"\r\n");
          lVar3 = lVar3 + iVar2;
        }
        if (uVar4 == 25000) {
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x103ca0);
          (*pcVar1)();
        }
        if (uVar4 == 25000) {
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(1,0x103ca4);
          (*pcVar1)();
        }
        iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"%d  ",
                         (ulong)(uint)(&user_para_data)[uVar4]);
        uVar4 = uVar4 + 1;
        lVar3 = lVar3 + iVar2;
      } while ((long)uVar4 < (long)(write_idx * 0x19));
    }
    iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"\r\n");
    lVar3 = lVar3 + iVar2;
  }
  return lVar3;
}



/* 00103ca8 aw22xxx_para_store */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8
aw22xxx_para_store(undefined8 param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  undefined4 *puVar1;
  ulong uVar2;
  uint uVar3;
  ulong uVar4;
  ulong uVar5;
  undefined4 uVar6;
  int iVar7;
  code *pcVar8;
  int iVar9;
  long lVar10;
  ulong uVar11;
  ulong uVar12;
  long lVar13;
  long lVar14;
  undefined4 *puVar15;
  undefined4 *puVar16;
  
  _printk(&DAT_00107424,"aw22xxx_para_store");
  lVar10 = __kmalloc_cache_noprof(_strlen,0xcc0,100);
  if (lVar10 == 0) {
    _printk(&DAT_001063fa,"aw22xxx_para_store");
    param_4 = 0xfffffffffffffff2;
  }
  else {
    iVar9 = sscanf(param_3,
                   "%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d",
                   lVar10,lVar10 + 4,lVar10 + 8,lVar10 + 0xc,lVar10 + 0x10,lVar10 + 0x14,
                   lVar10 + 0x18,lVar10 + 0x1c,lVar10 + 0x20,lVar10 + 0x24,lVar10 + 0x28,
                   lVar10 + 0x2c,lVar10 + 0x30,lVar10 + 0x34,lVar10 + 0x38,lVar10 + 0x3c,
                   lVar10 + 0x40,lVar10 + 0x44,lVar10 + 0x48,lVar10 + 0x4c,lVar10 + 0x50,
                   lVar10 + 0x54,lVar10 + 0x58,lVar10 + 0x5c,lVar10 + 0x60);
    iVar7 = write_idx;
    if (iVar9 == 0x19) {
      if (write_idx < 1000) {
        lVar13 = 0;
        uVar11 = (ulong)(uint)(write_idx * 0x19);
        uVar3 = 0;
        if ((uint)(write_idx * 0x19) < 0x61a9) {
          uVar3 = write_idx * -0x19 + 25000;
        }
        uVar12 = (ulong)uVar3;
        uVar2 = 0;
        if (uVar11 * 4 < 0x186a1) {
          uVar2 = uVar11 * -4 + 100000;
        }
        uVar4 = uVar2 >> 2;
        if (uVar12 <= uVar2 >> 2) {
          uVar4 = uVar12;
        }
        if (1 < uVar4) {
          if (0x17 < uVar4) {
            uVar4 = 0x18;
          }
          puVar15 = &DAT_00107c98 + uVar11;
          uVar2 = uVar4 + 1 & 1;
          uVar5 = 2;
          if (uVar2 != 0) {
            uVar5 = uVar2;
          }
          lVar13 = (uVar4 + 1) - uVar5;
          puVar16 = (undefined4 *)(lVar10 + 4);
          lVar14 = ~uVar4 + uVar5;
          do {
            puVar1 = puVar16 + -1;
            uVar6 = *puVar16;
            lVar14 = lVar14 + 2;
            puVar16 = puVar16 + 2;
            puVar15[-1] = *puVar1;
            *puVar15 = uVar6;
            puVar15 = puVar15 + 2;
          } while (lVar14 != 0);
        }
        uVar11 = (lVar13 + uVar11) * 4;
        lVar14 = -lVar13;
        puVar15 = (undefined4 *)(lVar10 + lVar13 * 4);
        do {
          if (-lVar14 == uVar12) {
                    /* WARNING: Does not return */
            pcVar8 = (code *)SoftwareBreakpoint(0x5512,0x103f58);
            (*pcVar8)();
          }
          if (0xc34 < uVar11 >> 5) {
                    /* WARNING: Does not return */
            pcVar8 = (code *)SoftwareBreakpoint(1,0x103f5c);
            (*pcVar8)();
          }
          lVar14 = lVar14 + -1;
          *(undefined4 *)((long)&user_para_data + uVar11) = *puVar15;
          uVar11 = uVar11 + 4;
          puVar15 = puVar15 + 1;
        } while (lVar14 != -0x19);
        write_idx = iVar7 + 1;
        _printk(&DAT_00106735,"aw22xxx_para_store");
      }
      else {
        _printk(&DAT_00106975,"aw22xxx_para_store");
        param_4 = 0xffffffffffffffe4;
      }
    }
    else {
      _printk(&DAT_00106126,"aw22xxx_para_store");
      param_4 = 0xffffffffffffffea;
    }
    kfree(lVar10);
  }
  return param_4;
}



/* 00103f60 aw22xxx_multi_breath_pattern_show */

long aw22xxx_multi_breath_pattern_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000," pattern_status = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2f8));
  return (long)iVar1;
}



/* 00103f9c aw22xxx_multi_breath_pattern_store */

undefined8
aw22xxx_multi_breath_pattern_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  long lVar3;
  int local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if (iVar1 == 1) {
    lVar2 = lVar3 + -0x10;
    *(int *)(lVar3 + 0x2f8) = local_3c;
    if (local_3c == 0) {
      read_idx = 0;
      write_idx = 0;
      if (kthread_status == 1) {
        kthread_status = 0;
      }
      aw22xxx_i2c_write(lVar2,0xff,0);
      aw22xxx_i2c_write(lVar2,5,0);
      aw22xxx_i2c_write(lVar2,4,1);
      aw22xxx_i2c_write(lVar2,2,0);
    }
    else if (((local_3c == 1) && (read_idx = 0, (kthread_status & 1) == 0)) && (write_idx != 0)) {
      cfg_update_kthread = kthread_create_on_node(aw22xxx_play,lVar2,0xffffffff,"aw22xxx_play");
      if (cfg_update_kthread < 0xfffffffffffff001) {
        wake_up_process();
        kthread_status = 1;
        _printk(&DAT_0010632c);
      }
      else {
        kthread_status = 0;
        _printk(&DAT_00107684);
      }
    }
  }
  else {
    param_4 = 0xffffffffffffffea;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104124 aw22xxx_play */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_play(long param_1)

{
  uint uVar1;
  code *pcVar2;
  
  _printk(&DAT_001069a0,"aw22xxx_play");
  aw22xxx_init_cfg_update_array(param_1);
  aw22xxx_set_breath_data(param_1,&user_para_data);
  if (kthread_status == 1) {
    do {
      msleep(duration / 0x1e);
      if (read_idx == write_idx) {
        kthread_status = 0;
        read_idx = 0;
        write_idx = 0;
        queue_work_on(0x20,_system_wq,param_1 + 0x230);
        _printk(&DAT_00106fa0,"aw22xxx_play");
LAB_00104230:
        if ((kthread_status & 1) != 0) {
          return 0;
        }
        break;
      }
      uVar1 = read_idx * 0x19;
      if (24999 < (int)uVar1) goto LAB_00104230;
      if (25000 < uVar1) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x1042a0);
        (*pcVar2)();
      }
      aw22xxx_set_breath_data(param_1,&user_para_data + uVar1);
      read_idx = read_idx + 1;
    } while ((kthread_status & 1) != 0);
  }
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,5,0);
  aw22xxx_i2c_write(param_1,4,1);
  aw22xxx_i2c_write(param_1,2,0);
  return 0;
}



/* 001042a0 aw22xxx_set_breath_data */

void aw22xxx_set_breath_data(undefined8 param_1,long param_2)

{
  bool bVar1;
  ulong uVar2;
  
  DAT_00100325 = *(undefined1 *)(param_2 + 8);
  uVar2 = 0;
  DAT_0010032b = *(undefined1 *)(param_2 + 9);
  DAT_00100331 = *(undefined1 *)(param_2 + 10);
  DAT_00100337 = *(undefined1 *)(param_2 + 0xb);
  DAT_0010033d = *(undefined1 *)(param_2 + 0xc);
  DAT_00100343 = *(undefined1 *)(param_2 + 0xd);
  DAT_00100349 = *(undefined1 *)(param_2 + 0xe);
  DAT_0010034f = *(undefined1 *)(param_2 + 0xf);
  DAT_00100355 = *(undefined1 *)(param_2 + 0x10);
  DAT_0010035b = *(undefined1 *)(param_2 + 0x11);
  DAT_00100361 = *(undefined1 *)(param_2 + 0x12);
  DAT_00100367 = *(undefined1 *)(param_2 + 0x13);
  DAT_0010036d = *(undefined1 *)(param_2 + 0x14);
  DAT_0010037f = *(undefined1 *)(param_2 + 0x15);
  DAT_00100391 = *(undefined1 *)(param_2 + 0x16);
  DAT_001003a3 = *(undefined1 *)(param_2 + 0x17);
  duration = *(undefined1 *)(param_2 + 0x18);
  DAT_00100373 = DAT_0010036d;
  DAT_00100379 = DAT_0010036d;
  DAT_00100385 = DAT_0010037f;
  DAT_0010038b = DAT_0010037f;
  DAT_00100397 = DAT_00100391;
  DAT_0010039d = DAT_00100391;
  DAT_001003a9 = DAT_001003a3;
  DAT_001003af = DAT_001003a3;
  do {
    aw22xxx_i2c_write(param_1,(&aw22xxx_blink_cfg)[uVar2],(&DAT_00100321)[uVar2]);
    bVar1 = uVar2 < 0x98;
    uVar2 = uVar2 + 2;
  } while (bVar1);
  return;
}



/* 001043b0 aw22xxx_reg_show */

long aw22xxx_reg_show(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  size_t sVar2;
  long lVar3;
  long lVar4;
  ulong uVar5;
  ulong __maxlen;
  byte local_60 [4];
  char local_5c [4];
  long local_58;
  
  lVar3 = sp_el0;
  local_58 = *(long *)(lVar3 + 0x710);
  local_5c[0] = '\0';
  local_60[0] = 0;
  lVar4 = *(long *)(param_1 + 0x98) + -0x10;
  aw22xxx_i2c_read(lVar4,0xff,local_5c);
  uVar5 = 0;
  lVar3 = 0;
  do {
    if ((local_5c[0] != '\0') || (((&aw22xxx_reg_access)[uVar5] & 1) != 0)) {
      aw22xxx_i2c_read(lVar4,uVar5 & 0xffffffff,local_60);
      __maxlen = 0x1000 - lVar3;
      if (__maxlen < 0x21) goto LAB_00104488;
      iVar1 = snprintf((char *)(param_3 + lVar3),__maxlen,"reg:0x%02x=0x%02x \n",uVar5 & 0xffffffff,
                       (ulong)local_60[0]);
      if (__maxlen <= (ulong)(long)iVar1) {
        lVar3 = -0xe;
        goto LAB_00104488;
      }
      sVar2 = strlen((char *)(param_3 + lVar3));
      lVar3 = sVar2 + lVar3;
    }
    uVar5 = uVar5 + 1;
    if (uVar5 == 0x100) {
LAB_00104488:
      lVar4 = sp_el0;
      if (*(long *)(lVar4 + 0x710) == local_58) {
        return lVar3;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
  } while( true );
}



/* 001044c8 aw22xxx_reg_store */

undefined8 aw22xxx_reg_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",(long)&local_30 + 4,&local_30);
  if ((iVar1 == 2) && (local_30._4_4_ < 0x100)) {
    aw22xxx_i2c_write(lVar2 + -0x10,local_30._4_4_,local_30 & 0xffffffff);
  }
  else {
    _printk(&DAT_0010718e,"aw22xxx_reg_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104580 aw22xxx_rgb_show */

long aw22xxx_rgb_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  
  lVar2 = *(long *)(param_1 + 0x98);
  iVar1 = snprintf(param_3,0x1000,"rgb[%d] = 0x%06x\n",0,(ulong)*(uint *)(lVar2 + 0x2fc));
  lVar3 = (long)iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",1,
                   (ulong)*(uint *)(lVar2 + 0x300));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",2,
                   (ulong)*(uint *)(lVar2 + 0x304));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",3,
                   (ulong)*(uint *)(lVar2 + 0x308));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",4,
                   (ulong)*(uint *)(lVar2 + 0x30c));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",5,
                   (ulong)*(uint *)(lVar2 + 0x310));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",6,
                   (ulong)*(uint *)(lVar2 + 0x314));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",7,
                   (ulong)*(uint *)(lVar2 + 0x318));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",8,
                   (ulong)*(uint *)(lVar2 + 0x31c));
  return lVar3 + iVar1;
}



/* 001046c4 aw22xxx_rgb_store */

void aw22xxx_rgb_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",(long)&local_30 + 4,&local_30);
  uVar2 = 0xffffffffffffffea;
  if ((iVar1 == 2) && (local_30._4_4_ < 9)) {
    *(undefined4 *)(lVar3 + (ulong)local_30._4_4_ * 4 + 0x2fc) = (undefined4)local_30;
    _printk(&DAT_00105f6c);
    uVar2 = param_4;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00104774 aw22xxx_task0_show */

long aw22xxx_task0_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task0 = 0x%02x\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x2ec));
  return (long)iVar1;
}



/* 001047b0 aw22xxx_task0_store */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_task0_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    *(char *)(lVar2 + 0x2ec) = (char)local_2c;
    _printk(&DAT_00105f94,"aw22xxx_task0_store");
    queue_work_on(0x20,_system_wq,lVar2 + 0x1e0);
  }
  else {
    _printk(&DAT_001066c8,"aw22xxx_task0_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010487c aw22xxx_task1_show */

long aw22xxx_task1_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task1 = 0x%02x\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x2ed));
  return (long)iVar1;
}



/* 001048b8 aw22xxx_task1_store */

undefined8 aw22xxx_task1_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    *(char *)(lVar2 + 0x2ed) = (char)local_2c;
    _printk(&DAT_001069b5,"aw22xxx_task1_store");
  }
  else {
    _printk(&DAT_001066c8,"aw22xxx_task1_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104970 aw22xxx_task_irq_show */

long aw22xxx_task_irq_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task_irq = %u\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2e8));
  return (long)iVar1;
}



/* 001049ac aw22xxx_task_irq_store */

undefined8 aw22xxx_task_irq_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%u",&local_2c);
  if (iVar1 == 1) {
    *(undefined4 *)(lVar2 + 0x2e8) = local_2c;
    _printk(&DAT_00107846,"aw22xxx_task_irq_store");
  }
  else {
    _printk(&DAT_001066c8,"aw22xxx_task_irq_store");
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104a64 aw22xxx_fw_timer_func */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_fw_timer_func(long param_1)

{
  _printk(&DAT_00107424,"aw22xxx_fw_timer_func");
  queue_work_on(0x20,_system_wq,param_1 + -0x60);
  return 0;
}



/* 00104ab8 aw22xxx_fw_work_routine */

void aw22xxx_fw_work_routine(long param_1)

{
  _printk(&DAT_00107424,"aw22xxx_fw_work_routine");
  _printk(&DAT_001065b7);
  *(undefined1 *)(param_1 + 0xdf) = 1;
  request_firmware_nowait
            (&__this_module,1,&aw22xxx_fw_name,*(undefined8 *)(param_1 + -0x208),0xcc0,
             param_1 + -0x210,aw22xxx_fw_loaded);
  return;
}



/* 00104b3c aw22xxx_cfg_work_routine */

void aw22xxx_cfg_work_routine(long param_1)

{
  _printk(&DAT_00107424,"aw22xxx_cfg_work_routine");
  _printk(&DAT_00106a21);
  if (*(char *)(param_1 + 0xbf) == '\x02') {
    *(bool *)(param_1 + 0x118) = *(int *)(param_1 + 0xd0) != 2;
    if ((g_init_flg & 1) == 0) {
      g_init_flg = 1;
      aw22xxx_init_cfg_update_array(param_1 + -0x230);
    }
    request_firmware_nowait
              (&__this_module,1,aw22xxx_dyn_name,*(undefined8 *)(param_1 + -0x228),0xcc0,
               param_1 + -0x230,aw22xxx_cfg_loaded);
  }
  else {
    _printk(&DAT_0010796c);
  }
  return;
}



/* 00104c00 aw22xxx_recover_work_routine */

void aw22xxx_recover_work_routine(long param_1)

{
  long lVar1;
  byte local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  lVar1 = param_1 + -0x250;
  local_3c[0] = 0;
  _printk(&DAT_00107424,"aw22xxx_recover_work_routine");
  aw22xxx_i2c_write(lVar1,0xff,0);
  aw22xxx_i2c_read(lVar1,4,local_3c);
  aw22xxx_i2c_write(lVar1,4,local_3c[0] & 0xfd);
  aw22xxx_i2c_read(lVar1,4,local_3c);
  aw22xxx_i2c_write(lVar1,4,local_3c[0] & 0xfe);
  _printk(&DAT_00106f67);
  aw22xxx_i2c_read(lVar1,2,local_3c);
  aw22xxx_i2c_write(lVar1,2,local_3c[0] & 0xfe);
  usleep_range_state(2000,3000,2);
  _printk(&DAT_00106d33,"aw22xxx_recover_work_routine");
  aw22xxx_i2c_write(lVar1,0xff,0);
  aw22xxx_i2c_write(lVar1,2,1);
  aw22xxx_i2c_write(lVar1,0xc,0);
  aw22xxx_i2c_write(lVar1,5,1);
  aw22xxx_i2c_write(lVar1,4,1);
  aw22xxx_i2c_write(lVar1,9,0x11);
  aw22xxx_i2c_write(lVar1,4,3);
  aw22xxx_i2c_write(lVar1,5,0x41);
  msleep(200);
  _printk(&DAT_00107861,"aw22xxx_recover_work_routine");
  *(undefined4 *)(param_1 + 0xb0) = lamp_effect;
  aw22xxx_cfg_recover_update_wait(lVar1);
  msleep(200);
  *(undefined4 *)(param_1 + 0xb0) = fan_effect;
  aw22xxx_cfg_recover_update_wait(lVar1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104dec aw22xxx_fw_loaded */

void aw22xxx_fw_loaded(ulong *param_1,undefined8 *param_2)

{
  undefined8 uVar1;
  code *pcVar2;
  bool bVar3;
  int iVar4;
  uint *puVar5;
  undefined *puVar6;
  undefined1 *puVar7;
  ulong extraout_x1;
  ulong extraout_x1_00;
  undefined1 uVar8;
  long lVar9;
  ulong uVar10;
  ulong uVar11;
  ulong uVar12;
  ulong uVar13;
  ushort *puVar14;
  short sVar15;
  short sVar16;
  ushort *puVar17;
  ushort uVar18;
  uint uVar19;
  uint uVar20;
  ulong uVar21;
  ulong unaff_x27;
  undefined1 local_7c [4];
  undefined1 local_78 [4];
  undefined1 local_74 [4];
  undefined1 local_70 [4];
  byte local_6c [4];
  long local_68;
  
  lVar9 = sp_el0;
  local_68 = *(long *)(lVar9 + 0x710);
  local_6c[0] = 0;
  _printk(&DAT_00107424,"aw22xxx_fw_loaded");
  _printk(&DAT_001070b0);
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_00106086);
    release_firmware(0);
  }
  else {
    uVar21 = *param_1;
    _printk(&DAT_0010738b,uVar21);
    puVar17 = (ushort *)param_1[1];
    if (uVar21 < 4) {
      uVar18 = 0;
    }
    else {
      uVar13 = (uVar21 >> 1) - 1;
      if (uVar13 < 2) {
        uVar18 = 0;
        uVar12 = 1;
      }
      else {
        sVar15 = 0;
        sVar16 = 0;
        uVar12 = uVar13 | 1;
        uVar10 = uVar13 & 0xfffffffffffffffe;
        puVar14 = puVar17;
        do {
          uVar18 = puVar14[2];
          uVar10 = uVar10 - 2;
          sVar15 = sVar15 + (puVar14[1] >> 8 | puVar14[1] << 8);
          sVar16 = sVar16 + (uVar18 >> 8 | uVar18 << 8);
          puVar14 = puVar14 + 2;
        } while (uVar10 != 0);
        uVar18 = sVar16 + sVar15;
        if (uVar13 == (uVar13 & 0xfffffffffffffffe)) goto LAB_00104f08;
      }
      lVar9 = (uVar21 >> 1) - uVar12;
      puVar14 = puVar17 + uVar12;
      do {
        lVar9 = lVar9 + -1;
        uVar18 = uVar18 + (*puVar14 >> 8 | *puVar14 << 8);
        puVar14 = puVar14 + 1;
      } while (lVar9 != 0);
    }
LAB_00104f08:
    _printk(&DAT_00107943);
    if (uVar18 == (ushort)(*puVar17 >> 8 | *puVar17 << 8)) {
      _printk(&DAT_00106e43);
      uVar13 = uVar21 + 0x10;
      _printk(&DAT_0010643d);
      puVar5 = (uint *)__kmalloc_noprof(uVar13,0xdc0);
      if (puVar5 == (uint *)0x0) {
        release_firmware(param_1);
        puVar6 = &DAT_00107a4e;
      }
      else {
        if ((((uVar13 < 4) || ((uVar21 & 0xfffffffffffffffc) == 0xfffffffffffffff4)) ||
            (uVar20 = (*(uint *)(param_1[1] + 0x1b) & 0xff00ff00) >> 8 |
                      (*(uint *)(param_1[1] + 0x1b) & 0xff00ff) << 8,
            puVar5[1] = uVar20 >> 0x10 | uVar20 << 0x10, uVar13 < 8)) ||
           (((uVar21 & 0xfffffffffffffffc) == 0xfffffffffffffff8 ||
            (puVar5[2] = (uint)(*(ushort *)(param_1[1] + 0x22) >> 8) |
                         (*(ushort *)(param_1[1] + 0x22) & 0xff00ff) << 8,
            0xffffffffffffffef < uVar21)))) goto LAB_0010587c;
        uVar10 = param_1[1];
        puVar5[3] = (uint)*(byte *)(uVar10 + 0x24);
        if (uVar13 < 4) goto LAB_0010587c;
        uVar18 = *(ushort *)(uVar10 + 0x26);
        *puVar5 = (uint)(uVar18 >> 8) | (uVar18 & 0xff00ff) << 8;
        _printk(&DAT_00106f10);
        if (uVar21 < *puVar5) {
          __fortify_panic(0x11,uVar21);
          uVar10 = extraout_x1;
LAB_0010588c:
          __fortify_panic(0x11,uVar10,unaff_x27);
          uVar10 = extraout_x1_00;
LAB_00105898:
          __fortify_panic(0x10,uVar10,unaff_x27);
          goto LAB_001058a4;
        }
        memcpy(puVar5 + 4,(void *)(param_1[1] + 0x28),(ulong)*puVar5);
        _printk(&DAT_00106540);
        release_firmware(param_1);
        _printk(&DAT_00106ada);
        aw22xxx_i2c_write(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        aw22xxx_i2c_read(param_2,2,local_6c);
        local_6c[0] = local_6c[0] | 1;
        aw22xxx_i2c_write(param_2,2);
        usleep_range_state(2000,3000,2);
        aw22xxx_i2c_read(param_2,4,local_6c);
        local_6c[0] = local_6c[0] | 1;
        aw22xxx_i2c_write(param_2,4);
        aw22xxx_i2c_write(param_2,0x22,*puVar5 + 0xffff >> 8);
        aw22xxx_i2c_write(param_2,0x21,(byte)*puVar5 - 1);
        aw22xxx_i2c_write(param_2,0x24,7);
        usleep_range_state(5000,0x1964,2);
        aw22xxx_i2c_read(param_2,0x24,local_6c);
        if (local_6c[0] == 5) {
          _printk(&DAT_00107469);
          local_70[0] = 0;
          local_74[0] = 0;
          aw22xxx_i2c_read(param_2,0x25,local_70);
          aw22xxx_i2c_read(param_2,0x26,local_74);
          if ((uVar13 < 8) || ((uVar21 & 0xfffffffffffffffc) == 0xfffffffffffffff8))
          goto LAB_0010587c;
          if ((uint)CONCAT11(local_74[0],local_70[0]) == puVar5[2]) {
            _printk(&DAT_00106201);
            if (*(char *)((long)param_2 + 0x2ee) == '\0') {
              _printk(&DAT_0010677d);
              kfree(puVar5);
              aw22xxx_i2c_write(param_2,0x24,0);
              aw22xxx_led_init(param_2);
              *(undefined1 *)((long)param_2 + 0x2ef) = 2;
              goto LAB_00105844;
            }
          }
          else {
            _printk(&DAT_00105fc4);
          }
        }
        else {
          _printk(&DAT_001069e7);
        }
        aw22xxx_i2c_write(param_2,0x24,0);
        _printk(&DAT_0010688a);
        aw22xxx_i2c_write(param_2,0xff,0);
        aw22xxx_i2c_write(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        aw22xxx_i2c_read(param_2,2,local_6c);
        local_6c[0] = local_6c[0] | 1;
        aw22xxx_i2c_write(param_2,2);
        usleep_range_state(2000,3000,2);
        aw22xxx_i2c_read(param_2,4,local_6c);
        local_6c[0] = local_6c[0] | 1;
        aw22xxx_i2c_write(param_2,4);
        aw22xxx_i2c_write(param_2,0x80,0xec);
        aw22xxx_i2c_write(param_2,0x35,0x29);
        if (uVar13 < 0xc) {
LAB_0010587c:
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(1,0x105880);
          (*pcVar2)();
        }
        aw22xxx_i2c_write(param_2,0x38,puVar5[3]);
        aw22xxx_i2c_write(param_2,0x22,0);
        aw22xxx_i2c_write(param_2,0x21,0);
        aw22xxx_i2c_write(param_2,0x20,3);
        aw22xxx_i2c_write(param_2,0x30,3);
        aw22xxx_i2c_write(param_2,0x23,0);
        _printk(&DAT_001073a9);
        if (g_ver_var < 0xc) {
          msleep(0x28);
        }
        else {
          usleep_range_state(4000,0x1194,2);
        }
        aw22xxx_i2c_write(param_2,0x30,0);
        aw22xxx_i2c_write(param_2,0x22,0x40);
        aw22xxx_i2c_write(param_2,0x21,0);
        aw22xxx_i2c_write(param_2,0x30,2);
        aw22xxx_i2c_write(param_2,0x23,0);
        usleep_range_state(6000,0x1964,2);
        aw22xxx_i2c_write(param_2,0x30,0);
        aw22xxx_i2c_write(param_2,0x22,0x42);
        aw22xxx_i2c_write(param_2,0x21,0);
        aw22xxx_i2c_write(param_2,0x30,2);
        aw22xxx_i2c_write(param_2,0x23,0);
        usleep_range_state(6000,0x1964,2);
        aw22xxx_i2c_write(param_2,0x30,0);
        aw22xxx_i2c_write(param_2,0x22,0x44);
        aw22xxx_i2c_write(param_2,0x21,0);
        aw22xxx_i2c_write(param_2,0x30,2);
        aw22xxx_i2c_write(param_2,0x23,0);
        usleep_range_state(6000,0x1964,2);
        aw22xxx_i2c_write(param_2,0x30,0);
        aw22xxx_i2c_write(param_2,0x20,0);
        aw22xxx_i2c_write(param_2,0x20,3);
        if (*puVar5 != 0) {
          _printk(&DAT_001065dd);
          uVar20 = 0;
          uVar1 = sp_el0;
          do {
            aw22xxx_i2c_write(param_2,0x22,uVar20 >> 8);
            aw22xxx_i2c_write(param_2,0x21,uVar20);
            aw22xxx_i2c_write(param_2,0x11,1);
            aw22xxx_i2c_write(param_2,0x30,4);
            uVar19 = *puVar5 - uVar20;
            if (0x7f < uVar19) {
              uVar19 = 0x80;
            }
            unaff_x27 = (ulong)uVar19;
            puVar7 = (undefined1 *)__kmalloc_noprof((ulong)(uVar19 + 1),0xcc0);
            if (puVar7 != (undefined1 *)0x0) {
              _printk(&DAT_001068b4);
              uVar11 = (ulong)uVar20;
              uVar10 = (ulong)(uVar19 + 1) - 1;
              uVar12 = 0;
              if (uVar11 + 0x10 <= uVar13) {
                uVar12 = uVar21 - uVar11;
              }
              *puVar7 = 0x23;
              if (uVar10 < unaff_x27) goto LAB_0010588c;
              if (uVar12 < unaff_x27) goto LAB_00105898;
              memcpy(puVar7 + 1,(void *)((long)(puVar5 + 4) + uVar11),unaff_x27);
              iVar4 = i2c_transfer_buffer_flags(*param_2,puVar7,uVar19 + 1,0);
              if (iVar4 < 0) {
                _printk(&DAT_0010748d);
              }
              kfree(puVar7);
            }
            aw22xxx_i2c_write(param_2,0x11,0);
            aw22xxx_i2c_write(param_2,0x30,0);
            uVar20 = uVar19 + uVar20;
          } while (uVar20 < *puVar5);
        }
        aw22xxx_i2c_write(param_2,0x20,0);
        aw22xxx_i2c_write(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        aw22xxx_i2c_read(param_2,2,local_6c);
        local_6c[0] = local_6c[0] | 1;
        aw22xxx_i2c_write(param_2,2);
        usleep_range_state(2000,3000,2);
        aw22xxx_i2c_read(param_2,4,local_6c);
        local_6c[0] = local_6c[0] | 1;
        aw22xxx_i2c_write(param_2,4);
        aw22xxx_i2c_write(param_2,0x22,*puVar5 + 0xffff >> 8);
        aw22xxx_i2c_write(param_2,0x21,(byte)*puVar5 - 1);
        aw22xxx_i2c_write(param_2,0x24,7);
        usleep_range_state(5000,0x1964,2);
        _printk(&DAT_00106cdf);
        aw22xxx_i2c_read(param_2,0x24,local_6c);
        if (local_6c[0] == 5) {
          local_78[0] = 0;
          local_7c[0] = 0;
          aw22xxx_i2c_read(param_2,0x25,local_78);
          aw22xxx_i2c_read(param_2,0x26,local_7c);
          if ((uVar21 & 0xfffffffffffffffc) == 0xfffffffffffffff8) goto LAB_0010587c;
          bVar3 = (uint)CONCAT11(local_7c[0],local_78[0]) != puVar5[2];
          puVar6 = &DAT_00106d09;
          if (bVar3) {
            puVar6 = &DAT_00106be3;
          }
          uVar8 = 2;
          if (bVar3) {
            uVar8 = 3;
          }
          _printk(puVar6);
          *(undefined1 *)((long)param_2 + 0x2ef) = uVar8;
        }
        else {
          _printk(&DAT_00105fe9);
          *(undefined1 *)((long)param_2 + 0x2ef) = 3;
        }
        aw22xxx_i2c_write(param_2,0x24,0);
        kfree(puVar5);
        *(undefined1 *)((long)param_2 + 0x2ee) = 0;
        aw22xxx_led_init(param_2);
        _printk(&DAT_00106159);
        puVar6 = &DAT_0010617e;
      }
    }
    else {
      _printk(&DAT_0010759e);
      release_firmware(param_1);
      puVar6 = &DAT_0010641f;
    }
    _printk(puVar6);
  }
LAB_00105844:
  lVar9 = sp_el0;
  if (*(long *)(lVar9 + 0x710) == local_68) {
    return;
  }
LAB_001058a4:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001058a8 aw22xxx_led_init */

void aw22xxx_led_init(long param_1)

{
  uint uVar1;
  long lVar2;
  byte local_3c [4];
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_3c[0] = 0;
  _printk(&DAT_00107424,"aw22xxx_led_init");
  _printk(&DAT_0010662c,"aw22xxx_led_init");
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  aw22xxx_i2c_read(param_1,2,local_3c);
  local_3c[0] = local_3c[0] | 1;
  aw22xxx_i2c_write(param_1,2);
  usleep_range_state(2000,3000,2);
  uVar1 = *(uint *)(param_1 + 0x2f0);
  if (uVar1 < 0xd) {
    aw22xxx_i2c_write(param_1,0xff,0);
    aw22xxx_i2c_write(param_1,0xb,aw22xxx_imax_code[uVar1]);
    _printk(&DAT_0010773a,"aw22xxx_led_init");
    aw22xxx_i2c_read(param_1,2,local_3c);
    local_3c[0] = local_3c[0] & 0xfe;
    aw22xxx_i2c_write(param_1,2);
    usleep_range_state(2000,3000,2);
    _printk(&DAT_00105f3d,"aw22xxx_led_init");
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105a1c aw22xxx_cfg_recover_update_wait */

void aw22xxx_cfg_recover_update_wait(long param_1)

{
  ulong uVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  int iVar5;
  size_t sVar6;
  undefined *puVar7;
  uint uVar8;
  char *__s;
  uint uVar9;
  byte bVar10;
  long lVar11;
  ulong *local_60;
  long local_58;
  
  lVar11 = sp_el0;
  local_58 = *(long *)(lVar11 + 0x710);
  local_60 = (ulong *)0x0;
  _printk(&DAT_00107424,"aw22xxx_cfg_recover_update_wait");
  _printk(&DAT_00106564,*(undefined1 *)(param_1 + 0x2ef));
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 4) {
    lamp_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_001076be,"aw22xxx_cfg_recover_update_wait",lamp_effect);
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 2) {
    fan_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_00106606,"aw22xxx_cfg_recover_update_wait",fan_effect);
  if ((*(uint *)(param_1 + 0x300) < g_cfgarray_count) && (aw22xxx_cfg_name != 0)) {
    __s = *(char **)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8);
    _printk(&DAT_00106e61,"aw22xxx_cfg_recover_update_wait",__s);
    sVar6 = strlen(__s);
    bVar10 = g_init_flg;
    if (sVar6 < 5) {
      puVar7 = &DAT_00106d53;
    }
    else {
      if (*(char *)(param_1 + 0x2ef) == '\x02') {
        *(bool *)(param_1 + 0x348) = *(int *)(param_1 + 0x300) != 2;
        if ((bVar10 & 1) == 0) {
          g_init_flg = 1;
          aw22xxx_init_cfg_update_array(param_1);
        }
        iVar5 = request_firmware(&local_60,__s,*(undefined8 *)(param_1 + 8));
        if (iVar5 == 0) {
          _printk(&DAT_00107a99);
          if (local_60 == (ulong *)0x0) {
            _printk(&DAT_001067a4);
            release_firmware(local_60);
          }
          else {
            _printk(&DAT_001075bf,*local_60);
            if (1 < *local_60) {
              lVar11 = 0;
              bVar10 = 0;
              do {
                bVar3 = *(byte *)(local_60[1] + lVar11);
                bVar4 = ((byte *)(local_60[1] + lVar11))[1];
                uVar9 = (uint)bVar4;
                bVar2 = bVar4;
                if (bVar3 != 0xff) {
                  bVar2 = bVar10;
                }
                uVar8 = (uint)bVar3;
                if ((*(char *)(param_1 + 0x304) == '\x01') || (bVar2 != 1)) {
                  aw22xxx_i2c_write(param_1,uVar8,bVar4);
                  if ((uVar8 == 2) && ((bVar2 == 0 && ((bVar4 & 1) != 0)))) {
                    usleep_range_state(2000,0x9c4,2);
                  }
                }
                else {
                  if (bVar3 - 0x10 < 0x1b) {
                    uVar9 = *(uint *)(param_1 + 0x30c + ((ulong)(uVar8 - 0x10) / 3) * 4) >>
                            (ulong)(((uVar8 - 0x10) % 3) * -8 + 0x10 & 0x1f);
                  }
                  aw22xxx_i2c_write(param_1,bVar3,uVar9);
                }
                uVar1 = lVar11 + 3;
                lVar11 = lVar11 + 2;
                bVar10 = bVar2;
              } while (uVar1 < *local_60);
            }
            release_firmware();
            if (*(uint *)(param_1 + 0x2f0) < 0xd) {
              bVar10 = aw22xxx_imax_code[*(uint *)(param_1 + 0x2f0)];
              if (0xe < bVar10) {
                bVar10 = 0xf;
              }
              aw22xxx_i2c_write(param_1,0xff,0);
              aw22xxx_i2c_write(param_1,0xb,bVar10);
            }
            *(int *)(param_1 + 0x2f8) = *(int *)(param_1 + 0x2f8) + 1;
            _printk(&DAT_00105f3d,"aw22xxx_cfg_recover_update_wait");
            _printk(&DAT_00107a23,*(undefined4 *)(param_1 + 0x2f8));
            msleep(0x14);
          }
        }
        else {
          _printk(&DAT_0010621f,"aw22xxx_cfg_recover_update_wait",iVar5);
        }
        goto LAB_00105b50;
      }
      puVar7 = &DAT_00107a76;
    }
  }
  else {
    puVar7 = &DAT_00106657;
  }
  _printk(puVar7,"aw22xxx_cfg_recover_update_wait");
LAB_00105b50:
  lVar11 = sp_el0;
  if (*(long *)(lVar11 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}



/* 00105dac get_aw22xxx_id */

/* WARNING: Control flow encountered bad instruction data */

undefined8 get_aw22xxx_id(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  size_t sVar1;
  undefined8 uVar2;
  
  if (*param_4 != 0) {
    return 0;
  }
  _printk(&DAT_00107424,"get_aw22xxx_id");
  sVar1 = strnlen((char *)&g_chip_id,0x20);
  if (sVar1 < 0x21) {
    if (sVar1 < 0x21) {
      uVar2 = simple_read_from_buffer(param_2,param_3,param_4,&g_chip_id);
      return uVar2;
    }
    __fortify_panic(4,0x20,sVar1);
  }
  __fortify_panic(2,0x20,sVar1 + 1);
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* 00105e70 init_module */

int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_00107880);
  msleep(500);
  _printk(&DAT_00106b15);
  iVar1 = i2c_register_driver(&__this_module,&aw22xxx_i2c_driver);
  if (iVar1 != 0) {
    _printk(&DAT_001062c8,iVar1);
  }
  return iVar1;
}



/* 00105ee8 cleanup_module */

void cleanup_module(void)

{
  i2c_del_driver(&aw22xxx_i2c_driver);
  return;
}



