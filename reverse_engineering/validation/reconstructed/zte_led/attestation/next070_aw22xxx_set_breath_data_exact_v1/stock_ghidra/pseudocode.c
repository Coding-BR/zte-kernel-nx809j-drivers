/* 001014e4 aw22xxx_set_breath_data */

void aw22xxx_set_breath_data(undefined8 param_1,long param_2)

{
  bool bVar1;
  ulong uVar2;
  
  DAT_0010008f = *(undefined1 *)(param_2 + 8);
  uVar2 = 0;
  DAT_00100095 = *(undefined1 *)(param_2 + 9);
  DAT_0010009b = *(undefined1 *)(param_2 + 10);
  DAT_001000a1 = *(undefined1 *)(param_2 + 0xb);
  DAT_001000a7 = *(undefined1 *)(param_2 + 0xc);
  DAT_001000ad = *(undefined1 *)(param_2 + 0xd);
  DAT_001000b3 = *(undefined1 *)(param_2 + 0xe);
  DAT_001000b9 = *(undefined1 *)(param_2 + 0xf);
  DAT_001000bf = *(undefined1 *)(param_2 + 0x10);
  DAT_001000c5 = *(undefined1 *)(param_2 + 0x11);
  DAT_001000cb = *(undefined1 *)(param_2 + 0x12);
  DAT_001000d1 = *(undefined1 *)(param_2 + 0x13);
  DAT_001000d7 = *(undefined1 *)(param_2 + 0x14);
  DAT_001000e9 = *(undefined1 *)(param_2 + 0x15);
  DAT_001000fb = *(undefined1 *)(param_2 + 0x16);
  DAT_0010010d = *(undefined1 *)(param_2 + 0x17);
  duration = *(undefined1 *)(param_2 + 0x18);
  DAT_001000dd = DAT_001000d7;
  DAT_001000e3 = DAT_001000d7;
  DAT_001000ef = DAT_001000e9;
  DAT_001000f5 = DAT_001000e9;
  DAT_00100101 = DAT_001000fb;
  DAT_00100107 = DAT_001000fb;
  DAT_00100113 = DAT_0010010d;
  DAT_00100119 = DAT_0010010d;
  do {
    aw22xxx_i2c_write(param_1,(&aw22xxx_blink_cfg)[uVar2],(&DAT_00100089)[uVar2]);
    bVar1 = uVar2 < 0x92;
    uVar2 = uVar2 + 2;
  } while (bVar1);
  return;
}



/* 001015f4 aw22xxx_play */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw22xxx_play(long param_1)

{
  code *pcVar1;
  
  aw22xxx_init_cfg_update_array();
  aw22xxx_set_breath_data(param_1,&user_para_data);
  while( true ) {
    msleep(duration / 0x1e);
    if (read_idx == write_idx) {
      kthread_status = 0;
      read_idx = 0;
      write_idx = 0;
      queue_work_on(0x20,_system_wq,param_1 + 0x230);
      _printk(&DAT_0010dc42,"aw22xxx_play");
    }
    if ((kthread_status & 1) == 0) {
      aw22xxx_i2c_write(param_1,0xff,0);
      aw22xxx_i2c_write(param_1,5,0);
      aw22xxx_i2c_write(param_1,4,1);
      aw22xxx_i2c_write(param_1,2,0);
      _printk(&DAT_0010d897,"aw22xxx_play");
    }
    if (25000 < (uint)(read_idx * 0x19)) break;
    aw22xxx_set_breath_data(param_1,&user_para_data + (uint)(read_idx * 0x19));
    read_idx = read_idx + 1;
  }
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x101738);
  (*pcVar1)();
}



/* 00101738 aw22xxx_init_cfg_update_array */

void aw22xxx_init_cfg_update_array(undefined8 param_1)

{
  long lVar1;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_0010d5b2,"aw22xxx_init_cfg_update_array",0x1ca);
  _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,1);
  local_2c[0] = 0;
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



/* 0010188c aw22xxx_led_imax_cfg */

void aw22xxx_led_imax_cfg(long param_1)

{
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,0xb,7);
  *(undefined4 *)(param_1 + 0x2f0) = 7;
  _printk(&DAT_0010d498,"aw22xxx_led_imax_cfg",
          *(undefined8 *)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8),7);
  return;
}



/* 001018fc aw22xxx_i2c_write */

void aw22xxx_i2c_write(undefined8 *param_1,undefined1 param_2,undefined1 param_3)

{
  long lVar1;
  int iVar2;
  undefined4 uVar3;
  undefined8 uVar4;
  undefined1 local_3c;
  undefined1 local_3b;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = param_2;
  local_3b = param_3;
  iVar2 = i2c_transfer_buffer_flags(*param_1,&local_3c,2,0);
  if (iVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
    uVar3 = gpiod_get_raw_value();
    _printk(&DAT_0010d027,"aw22xxx_i2c_write",0,iVar2,uVar3);
    msleep(1);
    iVar2 = i2c_transfer_buffer_flags(*param_1,&local_3c,2,0);
    if (iVar2 < 0) {
      gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
      uVar3 = gpiod_get_raw_value();
      _printk(&DAT_0010d027,"aw22xxx_i2c_write",1,iVar2,uVar3);
      uVar4 = gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
      gpiod_direction_output_raw(uVar4,1);
      _printk(&DAT_0010cf4f,"aw22xxx_i2c_write");
      msleep(1);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101a2c aw22xxx_i2c_read */

void aw22xxx_i2c_read(undefined8 *param_1,undefined1 param_2,undefined1 *param_3)

{
  long lVar1;
  uint uVar2;
  ulong uVar3;
  undefined *puVar4;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = param_2;
  uVar2 = i2c_transfer_buffer_flags(*param_1,local_2c,1,0);
  if ((int)uVar2 < 0) {
    uVar3 = (ulong)uVar2;
    puVar4 = &DAT_0010df0c;
  }
  else {
    uVar3 = i2c_transfer_buffer_flags(*param_1,param_3,1,1);
    if (-1 < (int)uVar3) goto LAB_00101a88;
    puVar4 = &DAT_0010d4bb;
    *param_3 = (char)uVar3;
    uVar3 = uVar3 & 0xffffffff;
  }
  _printk(puVar4,"aw22xxx_i2c_read",uVar3);
  msleep(1);
  uVar3 = i2c_transfer_buffer_flags(*param_1,local_2c,1,0);
  if ((int)uVar3 < 0) {
    puVar4 = &DAT_0010df0c;
  }
  else {
    uVar3 = i2c_transfer_buffer_flags(*param_1,param_3,1,1);
    if (-1 < (int)uVar3) goto LAB_00101a88;
    *param_3 = (char)uVar3;
    puVar4 = &DAT_0010d4bb;
  }
  uVar3 = uVar3 & 0xffffffff;
  _printk(puVar4,"aw22xxx_i2c_read",uVar3);
  msleep(1);
LAB_00101a88:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 00101b68 aw22xxx_i2c_probe */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

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
  _printk(&DAT_0010dc63,"aw22xxx_i2c_probe",0x9d9);
  pcVar9 = *(code **)(*(long *)(*(long *)(param_1 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar9 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x101bcc);
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
  __mutex_init(plVar4 + 0x56,"&aw22xxx->cfg_lock",&aw22xxx_i2c_probe___key);
  *(undefined1 *)((long)plVar4 + 0x304) = 1;
  uVar3 = devm_pinctrl_get(lVar7);
  puVar5 = &DAT_0010dd7d;
  plVar4[0x66] = uVar3;
  if ((uVar3 == 0) || (0xfffffffffffff000 < uVar3)) {
LAB_00101cc4:
    _printk(puVar5,"aw22xxx_pinctrl_init");
    _printk(&DAT_0010cda4,"aw22xxx_i2c_probe");
    iVar1 = -0x16;
  }
  else {
    uVar3 = pinctrl_lookup_state(uVar3,"aw22xxx_led_default");
    puVar5 = &DAT_0010da52;
    plVar4[0x67] = uVar3;
    if ((uVar3 == 0) || (0xfffffffffffff000 < uVar3)) goto LAB_00101cc4;
    uVar3 = pinctrl_lookup_state(plVar4[0x66],"aw22xxx_led_sleep");
    puVar5 = &DAT_0010d647;
    plVar4[0x68] = uVar3;
    if ((uVar3 == 0) || (0xfffffffffffff000 < uVar3)) goto LAB_00101cc4;
    if ((plVar4[0x66] == 0) || (plVar4[0x67] == 0)) {
      _printk(&DAT_0010df2e,"aw22xxx_pinctrl_set_state");
      iVar1 = -0x16;
LAB_00101d24:
      _printk(&DAT_0010d4fc,"aw22xxx_i2c_probe");
    }
    else {
      iVar1 = pinctrl_select_state();
      if (iVar1 != 0) goto LAB_00101d24;
      if (lVar10 == 0) {
        iVar1 = 0;
        plVar4[0x5c] = -1;
        goto LAB_00101d44;
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
LAB_00101e54:
        _dev_err(lVar7,pcVar8,"aw22xxx_parse_dt");
        _dev_err(lVar7,"%s: failed to parse device tree node\n","aw22xxx_i2c_probe");
        iVar1 = -0x16;
        goto LAB_00101d44;
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
        goto LAB_00101e54;
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
      iVar1 = of_property_read_variable_u32_array(lVar10,"cfg_custom_en",&g_custom_en,1,0);
      if (iVar1 < 0) {
        g_custom_en = 0;
      }
      if ((-1 < (int)plVar4[0x5c]) &&
         (iVar1 = devm_gpio_request_one(lVar7,(int)plVar4[0x5c],0,"aw22xxx_rst"), iVar1 != 0)) {
        pcVar8 = "%s: rst request failed\n";
LAB_00102004:
        _dev_err(lVar7,pcVar8,"aw22xxx_i2c_probe");
        goto LAB_00101d44;
      }
      if ((-1 < *(int *)((long)plVar4 + 0x2e4)) &&
         (iVar1 = devm_gpio_request_one(lVar7,*(int *)((long)plVar4 + 0x2e4),1,"aw22xxx_int"),
         iVar1 != 0)) {
        pcVar8 = "%s: int request failed\n";
        goto LAB_00102004;
      }
      aw22xxx_hw_reset(plVar4);
      _printk(&DAT_0010e671,"aw22xxx_i2c_probe",0xa1b,multicolor_led);
      if (multicolor_led - 1U < 2) {
        uVar6 = gpio_to_desc((int)plVar4[0x5c]);
        gpiod_set_raw_value_cansleep(uVar6,0);
        devm_gpio_request_one(lVar7,*(undefined4 *)((long)plVar4 + 0x2e4),0,"aw22xxx_int");
        if (g_custom_en == 0) {
          multicolor_led = 0;
          g_cfgarray_count = 0x1194;
          return 0;
        }
        multicolor_led = 0;
        g_cfgarray_count = 0xb;
        return 0;
      }
      iVar1 = aw22xxx_read_chipid(plVar4);
      if (iVar1 < 0) {
        _dev_err(lVar7,"%s: aw22xxx_read_chipid failed ret=%d\n","aw22xxx_i2c_probe",iVar1);
      }
      else {
        if ((*(int *)((long)plVar4 + 0x2e4) < 0) || ((*(byte *)((long)plVar4 + 0x2ec) & 1) != 0)) {
          *(byte *)((long)plVar4 + 0x2ec) = *(byte *)((long)plVar4 + 0x2ec) | 1;
LAB_001020cc:
          *(long **)(param_1 + 0xb8) = plVar4;
          aw22xxx_parse_led_cdev(plVar4,lVar10);
          aw22xxx_alloc_name_array();
          DAT_0010cd4f = 0;
          _DAT_0010cd47 = 0;
          _DAT_0010cd3f = 0;
          _DAT_0010cd37 = 0;
          _DAT_0010cd2f = 0;
          _DAT_0010cd27 = 0;
          _DAT_0010cd1f = 0;
          aw22xxx_fw_name._0_7_ = 0x78787832327761;
          aw22xxx_fw_name._7_1_ = 0x5f;
          uRam000000000010cd18 = 0x6e69622e7766;
          _printk(&DAT_0010d399,"aw22xxx_load_nubia_fw_name",0x5de,(int)plVar4[0x5d],0);
          aw22xxx_fw_init(plVar4);
          _printk(&DAT_0010e6a0,"aw22xxx_i2c_probe",0xa56);
          uVar6 = gpio_to_desc((int)plVar4[0x5c]);
          iVar1 = gpiod_direction_output_raw(uVar6,0);
          if (iVar1 != 0) {
            _printk(&DAT_0010d23f,"aw22xxx_i2c_probe",0xa5b);
          }
          lVar7 = zlog_register_client(zlog_aw22xxx_dev);
          plVar4[0x6a] = lVar7;
          if (lVar7 == 0) {
            _printk(&DAT_0010dc7f,"aw22xxx_i2c_probe",0xa61,"aw22xxx_i2c_probe");
          }
          aw22xxx_create_proc_entry();
          return 0;
        }
        aw22xxx_interrupt_setup(plVar4);
        if (g_ver_var < 0xc) {
          pcVar9 = aw22xxx_irq;
        }
        else {
          _printk(&DAT_0010ce54);
          pcVar9 = aw22xxx_irq_v15;
        }
        gpio_to_desc(*(undefined4 *)((long)plVar4 + 0x2e4));
        uVar2 = gpiod_to_irq();
        iVar1 = devm_request_threaded_irq(lVar7,uVar2,0,pcVar9,0x2002,"aw22xxx",plVar4);
        if (iVar1 == 0) goto LAB_001020cc;
        gpio_to_desc(*(undefined4 *)((long)plVar4 + 0x2e4));
        uVar2 = gpiod_to_irq();
        _dev_err(lVar7,"%s: failed to request IRQ %d: %d\n","aw22xxx_i2c_probe",uVar2,iVar1);
      }
    }
    devm_pinctrl_put(plVar4[0x66]);
  }
  plVar4[0x66] = 0;
LAB_00101d44:
  devm_kfree(lVar7,plVar4);
  return iVar1;
}



/* 00102204 aw22xxx_i2c_remove */

void aw22xxx_i2c_remove(long param_1)

{
  undefined4 uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xb8);
  _printk(&DAT_0010d681,"aw22xxx_i2c_remove");
  remove_proc_entry("driver/colorleds_id",0);
  _printk(&DAT_0010d744,"aw22xxx_proc_deinit",0x9ca);
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



/* 001022c8 aw22xxx_hw_reset */

void aw22xxx_hw_reset(long param_1)

{
  undefined8 uVar1;
  
  _printk(&DAT_0010d681,"aw22xxx_hw_reset");
  if ((param_1 == 0) || (*(int *)(param_1 + 0x2e0) < 0)) {
    _dev_err(*(undefined8 *)(param_1 + 8),"%s:  failed\n","aw22xxx_hw_reset");
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



/* 00102364 aw22xxx_read_chipid */

void aw22xxx_read_chipid(long param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined1 uVar4;
  char local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = '\0';
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  iVar2 = aw22xxx_i2c_read(param_1,1,local_2c);
  if (-1 < iVar2) {
    if (local_2c[0] == 'v') {
LAB_001023fc:
      _printk(&DAT_0010d98d,"aw22xxx_read_chipid",local_2c[0],iVar2);
      aw22xxx_i2c_read(param_1,0,local_2c);
      if (local_2c[0] == '\x18') {
        uVar4 = 1;
        g_chip_id = 0x38313132327761;
      }
      else {
        if (local_2c[0] != '\'') {
          _printk(&DAT_0010d053,"aw22xxx_read_chipid");
          goto LAB_00102500;
        }
        uVar4 = 2;
        g_chip_id = 0x37323132327761;
      }
      *(undefined1 *)(param_1 + 0x2ed) = uVar4;
      _printk(&DAT_0010dda4,"aw22xxx_read_chipid");
      uVar3 = 0;
      goto LAB_00102504;
    }
    _printk(&DAT_0010e54b,"aw22xxx_read_chipid",local_2c[0],iVar2);
    msleep(1);
    iVar2 = aw22xxx_i2c_read(param_1,1,local_2c);
    if (-1 < iVar2) {
      if (local_2c[0] == 'v') goto LAB_001023fc;
      _printk(&DAT_0010e54b,"aw22xxx_read_chipid",local_2c[0],iVar2);
      msleep(1);
LAB_00102500:
      uVar3 = 0xffffffea;
      goto LAB_00102504;
    }
  }
  _dev_err(*(undefined8 *)(param_1 + 8),"%s: failed to read register AW22XXX_REG_ID: %d\n",
           "aw22xxx_read_chipid");
  uVar3 = 0xfffffffb;
LAB_00102504:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 00102530 aw22xxx_interrupt_setup */

void aw22xxx_interrupt_setup(undefined8 param_1)

{
  long lVar1;
  undefined1 local_44 [4];
  byte local_40 [4];
  byte local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_0010d681,"aw22xxx_interrupt_setup");
  local_44[0] = 0;
  _printk(&DAT_0010d681,"aw22xxx_interrupt_clear");
  aw22xxx_i2c_read(param_1,10,local_44);
  _printk(&DAT_0010d12b,"aw22xxx_interrupt_clear",local_44[0]);
  local_40[0] = 0;
  aw22xxx_i2c_read(param_1,9,local_40);
  local_40[0] = local_40[0] | 1;
  aw22xxx_i2c_write(param_1,9);
  local_3c[0] = 0;
  aw22xxx_i2c_read(param_1,9,local_3c);
  local_3c[0] = local_3c[0] | 0x10;
  aw22xxx_i2c_write(param_1,9);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00102638 aw22xxx_irq_v15 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_irq_v15(undefined8 param_1,long param_2)

{
  long lVar1;
  byte local_44 [4];
  byte local_40 [4];
  byte local_3c [4];
  byte local_38 [4];
  byte local_34 [4];
  byte local_30 [4];
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_44[0] = 0;
  aw22xxx_i2c_read(param_2,10,local_44);
  _printk(&DAT_0010d12b,"aw22xxx_irq_v15",local_44[0]);
  if ((local_44[0] & 1) != 0) {
    _printk(&DAT_0010d34a,"aw22xxx_irq_v15");
    aw22xxx_i2c_write(param_2,0xff,0);
    local_40[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_40);
    local_40[0] = local_40[0] & 0xfd;
    aw22xxx_i2c_write(param_2,4);
    local_3c[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_3c);
    local_3c[0] = local_3c[0] & 0xfe;
    aw22xxx_i2c_write(param_2,4);
    _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,0);
    local_38[0] = 0;
    aw22xxx_i2c_read(param_2,2,local_38);
    local_38[0] = local_38[0] & 0xfe;
    aw22xxx_i2c_write(param_2,2);
    usleep_range_state(2000,3000,2);
    _printk(&DAT_0010d555,"aw22xxx_irq_v15");
  }
  if ((local_44[0] >> 4 & 1) != 0) {
    _printk(&DAT_0010d68e,"aw22xxx_irq_v15");
    aw22xxx_i2c_write(param_2,0xff,0);
    local_34[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_34);
    local_34[0] = local_34[0] & 0xfd;
    aw22xxx_i2c_write(param_2,4);
    local_30[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_30);
    local_30[0] = local_30[0] | 2;
    aw22xxx_i2c_write(param_2,4);
    local_2c[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_2c);
    local_2c[0] = local_2c[0] | 1;
    aw22xxx_i2c_write(param_2,4);
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



/* 00102880 aw22xxx_irq */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_irq(undefined8 param_1,long param_2)

{
  long lVar1;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  _printk(&DAT_0010d681,"aw22xxx_irq");
  aw22xxx_i2c_read(param_2,10,local_2c);
  _printk(&DAT_0010d12b,"aw22xxx_irq",local_2c[0]);
  if ((local_2c[0] >> 4 & 1) != 0) {
    queue_work_on(0x20,_system_wq,param_2 + 0x250);
    _printk(&DAT_0010d26c,"aw22xxx_irq",0x625,*(undefined4 *)(param_2 + 0x2f8));
    zlog_client_record(*(undefined8 *)(param_2 + 0x350),
                       "LED WATCHDOG recover cfg warnning,count:%d\n",
                       *(undefined4 *)(param_2 + 0x2f8));
    zlog_client_notify(*(undefined8 *)(param_2 + 0x350),0x400259);
  }
  _printk(&DAT_0010e1c7,"aw22xxx_irq");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00102984 aw22xxx_parse_led_cdev */

void aw22xxx_parse_led_cdev(long param_1,undefined8 param_2)

{
  int iVar1;
  long lVar2;
  
  _printk(&DAT_0010d681,"aw22xxx_parse_led_cdev");
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
      iVar1 = led_classdev_register_ext(*(undefined8 *)(param_1 + 8),param_1 + 0x10,0);
      if (iVar1 == 0) {
        iVar1 = sysfs_create_group(*(undefined8 *)(param_1 + 0x60),aw22xxx_attribute_group);
        if (iVar1 != 0) {
          _dev_err(*(undefined8 *)(param_1 + 8),"led sysfs ret: %d\n",iVar1);
          led_classdev_unregister(param_1 + 0x10);
        }
      }
      else {
        _dev_err(*(undefined8 *)(param_1 + 8),"unable to register led ret=%d\n",iVar1);
      }
      return;
    }
    iVar1 = of_property_read_string(lVar2,"aw22xxx,name",param_1 + 0x10);
    if (iVar1 < 0) {
      _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading led name, ret = %d\n",iVar1);
      return;
    }
    iVar1 = of_property_read_variable_u32_array(lVar2,"aw22xxx,imax",param_1 + 0x2f0,1,0);
    if (iVar1 < 0) {
      _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading imax, ret = %d\n",iVar1);
      return;
    }
    iVar1 = of_property_read_variable_u32_array(lVar2,"aw22xxx,brightness",param_1 + 0x18,1,0);
    if (iVar1 < 0) break;
    iVar1 = of_property_read_variable_u32_array(lVar2,"aw22xxx,max_brightness",param_1 + 0x1c,1,0);
    if (iVar1 < 0) {
      _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading max brightness, ret = %d\n",iVar1);
      return;
    }
    lVar2 = of_get_next_child(param_2,lVar2);
  }
  _dev_err(*(undefined8 *)(param_1 + 8),"Failure reading brightness, ret = %d\n",iVar1);
  return;
}



/* 00102b8c aw22xxx_alloc_name_array */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw22xxx_alloc_name_array(void)

{
  undefined8 uVar1;
  long lVar2;
  undefined8 *puVar3;
  long lVar4;
  
  aw22xxx_cfg_name = (undefined8 *)__kmalloc_cache_noprof(___kmalloc_cache_noprof,0xcc0,0x58);
  if (aw22xxx_cfg_name == (undefined8 *)0x0) {
    _printk(&DAT_0010d087,"aw22xxx_alloc_name_array",0x687);
  }
  else {
    lVar4 = 0;
    uVar1 = sp_el0;
    do {
      lVar2 = __kmalloc_cache_noprof(_snprintf,0xcc0,0x40);
      puVar3 = aw22xxx_cfg_name;
      aw22xxx_cfg_name[lVar4] = lVar2;
      if (lVar2 == 0) {
        if (lVar4 != 0) {
          lVar4 = lVar4 + 1;
          do {
            kfree(aw22xxx_cfg_name[(int)lVar4 - 2]);
            lVar4 = lVar4 + -1;
            puVar3 = aw22xxx_cfg_name;
          } while (1 < lVar4);
        }
        kfree(puVar3);
        _printk(&DAT_0010d087,"aw22xxx_alloc_name_array",0x692);
        return;
      }
      lVar4 = lVar4 + 1;
    } while (lVar4 != 0xb);
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
  }
  return;
}



/* 00102df0 aw22xxx_fw_init */

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
  _printk(&DAT_0010d1d0,"aw22xxx_fw_init");
  hrtimer_start_range_ns(param_1 + 0x270,1000000000,0,1);
  return;
}



/* 00102ec4 aw22xxx_create_proc_entry */

void aw22xxx_create_proc_entry(void)

{
  long lVar1;
  
  lVar1 = proc_create("driver/colorleds_id",0x124,0,proc_ops_awid);
  if (lVar1 == 0) {
    _printk(&DAT_0010da2e);
  }
  else {
    _printk(&DAT_0010e33a,"aw22xxx_create_proc_entry",0x9c3);
  }
  return;
}



/* 00102f28 aw22xxx_brightness_work */

void aw22xxx_brightness_work(long param_1)

{
  long lVar1;
  byte bVar2;
  long lVar3;
  byte local_3c [4];
  byte local_38 [4];
  byte local_34 [4];
  byte local_30 [4];
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  lVar3 = param_1 + -0x1d0;
  local_28 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_0010d681,"aw22xxx_brightness_work");
  aw22xxx_i2c_write(lVar3,5,0xff);
  local_3c[0] = 0;
  aw22xxx_i2c_read(lVar3,4,local_3c);
  local_3c[0] = local_3c[0] & 0xfd;
  aw22xxx_i2c_write(lVar3,4);
  _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,0);
  local_38[0] = 0;
  aw22xxx_i2c_read(lVar3,2,local_38);
  local_38[0] = local_38[0] & 0xfe;
  aw22xxx_i2c_write(lVar3,2);
  usleep_range_state(2000,3000,2);
  if (*(int *)(param_1 + -0x1b8) != 0) {
    _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,1);
    local_34[0] = 0;
    aw22xxx_i2c_read(lVar3,2,local_34);
    local_34[0] = local_34[0] | 1;
    aw22xxx_i2c_write(lVar3,2);
    usleep_range_state(2000,3000,2);
    local_30[0] = 0;
    aw22xxx_i2c_read(lVar3,4,local_30);
    local_30[0] = local_30[0] | 1;
    aw22xxx_i2c_write(lVar3,4);
    bVar2 = *(byte *)(param_1 + 0x120);
    if (0xe < bVar2) {
      bVar2 = 0xf;
    }
    aw22xxx_i2c_write(lVar3,0xff,0);
    aw22xxx_i2c_write(lVar3,0xb,bVar2);
    aw22xxx_i2c_write(lVar3,0x21,0xe1);
    aw22xxx_i2c_write(lVar3,0x22,0);
    aw22xxx_i2c_write(lVar3,0x20,2);
    aw22xxx_i2c_write(lVar3,0x23,0x3d);
    aw22xxx_i2c_write(lVar3,0x20,0);
    aw22xxx_i2c_write(lVar3,5,0x82);
    local_2c[0] = 0;
    aw22xxx_i2c_read(lVar3,4,local_2c);
    local_2c[0] = local_2c[0] | 2;
    aw22xxx_i2c_write(lVar3,4);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103178 aw22xxx_task_work */

void aw22xxx_task_work(long param_1)

{
  long lVar1;
  byte bVar2;
  long lVar3;
  byte local_4c [4];
  byte local_48 [4];
  byte local_44 [4];
  byte local_40 [4];
  byte local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  lVar3 = param_1 + -0x1f0;
  local_38 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_0010d681,"aw22xxx_task_work");
  aw22xxx_i2c_write(lVar3,5,0xff);
  local_4c[0] = 0;
  aw22xxx_i2c_read(lVar3,4,local_4c);
  local_4c[0] = local_4c[0] & 0xfd;
  aw22xxx_i2c_write(lVar3,4);
  _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,0);
  local_48[0] = 0;
  aw22xxx_i2c_read(lVar3,2,local_48);
  local_48[0] = local_48[0] & 0xfe;
  aw22xxx_i2c_write(lVar3,2);
  usleep_range_state(2000,3000,2);
  if (*(char *)(param_1 + 0x10c) != '\0') {
    _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,1);
    local_44[0] = 0;
    aw22xxx_i2c_read(lVar3,2,local_44);
    local_44[0] = local_44[0] | 1;
    aw22xxx_i2c_write(lVar3,2);
    usleep_range_state(2000,3000,2);
    local_40[0] = 0;
    aw22xxx_i2c_read(lVar3,4,local_40);
    local_40[0] = local_40[0] | 1;
    aw22xxx_i2c_write(lVar3,4);
    bVar2 = *(byte *)(param_1 + 0x100);
    if (0xe < bVar2) {
      bVar2 = 0xf;
    }
    aw22xxx_i2c_write(lVar3,0xff,0);
    aw22xxx_i2c_write(lVar3,0xb,bVar2);
    aw22xxx_i2c_write(lVar3,0x21,0xe1);
    aw22xxx_i2c_write(lVar3,0x22,0);
    aw22xxx_i2c_write(lVar3,0x20,2);
    aw22xxx_i2c_write(lVar3,0x23,0x3d);
    aw22xxx_i2c_write(lVar3,0x20,0);
    aw22xxx_i2c_write(lVar3,5,*(undefined1 *)(param_1 + 0x10c));
    aw22xxx_i2c_write(lVar3,6,*(undefined1 *)(param_1 + 0x10d));
    local_3c[0] = 0;
    aw22xxx_i2c_read(lVar3,4,local_3c);
    local_3c[0] = local_3c[0] | 2;
    aw22xxx_i2c_write(lVar3,4);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001033dc aw22xxx_set_brightness */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw22xxx_set_brightness(long param_1,undefined4 param_2)

{
  *(undefined4 *)(param_1 + 8) = param_2;
  queue_work_on(0x20,_system_wq,param_1 + 0x1c0);
  return;
}



/* 00103414 aw22xxx_reg_show */

long aw22xxx_reg_show(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  size_t sVar2;
  long lVar3;
  long lVar4;
  ulong uVar5;
  char local_60 [4];
  byte local_5c [4];
  long local_58;
  
  lVar3 = sp_el0;
  local_58 = *(long *)(lVar3 + 0x710);
  local_5c[0] = 0;
  local_60[0] = '\0';
  lVar4 = *(long *)(param_1 + 0x98) + -0x10;
  aw22xxx_i2c_read(lVar4,0xff,local_60);
  uVar5 = 0;
  lVar3 = 0;
  do {
    if ((local_60[0] != '\0') || (((&aw22xxx_reg_access)[uVar5] & 1) != 0)) {
      aw22xxx_i2c_read(lVar4,uVar5 & 0xffffffff,local_5c);
      iVar1 = snprintf((char *)(param_3 + lVar3),0x1000U - lVar3,"reg:0x%02x=0x%02x \n",
                       uVar5 & 0xffffffff,(ulong)local_5c[0]);
      if (0x1000U - lVar3 <= (ulong)(long)iVar1) {
        lVar3 = -0xe;
        break;
      }
      sVar2 = strlen((char *)(param_3 + lVar3));
      lVar3 = sVar2 + lVar3;
    }
    uVar5 = uVar5 + 1;
  } while (uVar5 != 0x100);
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_58) {
    return lVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103528 aw22xxx_reg_store */

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
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if ((iVar1 == 2) && ((uint)local_30 < 0x100)) {
    aw22xxx_i2c_write(lVar2 + -0x10,local_30 & 0xffffffff,local_30._4_4_);
  }
  else {
    _printk(&DAT_0010d2ac,"aw22xxx_reg_store",0x78b);
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001035e8 aw22xxx_hwen_show */

long aw22xxx_hwen_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  ulong uVar2;
  
  gpio_to_desc(*(undefined4 *)(*(long *)(param_1 + 0x98) + 0x2d0));
  uVar2 = gpiod_get_raw_value();
  iVar1 = snprintf(param_3,0x1000,"hwen=%d\n",uVar2 & 0xffffffff);
  return (long)iVar1;
}



/* 0010363c aw22xxx_hwen_store */

undefined8 aw22xxx_hwen_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  uint local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if (iVar1 == 1) {
    if (local_3c < 2) {
      if (local_3c == 1) {
        aw22xxx_hw_reset();
      }
      else {
        _printk(&DAT_0010d681,"aw22xxx_hw_off");
        if ((lVar3 == 0x10) || (*(int *)(lVar3 + 0x2d0) < 0)) {
          _dev_err(*(undefined8 *)(lVar3 + -8),"%s:  failed\n","aw22xxx_hw_off");
        }
        else {
          uVar2 = gpio_to_desc();
          gpiod_set_raw_value_cansleep(uVar2,0);
          usleep_range_state(1000,0x5dc,2);
        }
      }
      goto LAB_001036a8;
    }
  }
  _printk(&DAT_0010d2ac,"aw22xxx_hwen_store",0x7b9);
  param_4 = 0xffffffffffffffea;
LAB_001036a8:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103764 aw22xxx_fw_show */

long aw22xxx_fw_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"firmware name = %s\n",&aw22xxx_fw_name);
  return (long)iVar1;
}



/* 001037a0 aw22xxx_fw_store */

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



/* 0010384c aw22xxx_cfg_show */

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
    _printk(&DAT_0010ddba,"aw22xxx_cfg_show",0x812);
  }
  sVar2 = strlen(param_3);
  return sVar2;
}



/* 001038d4 aw22xxx_cfg_store */

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
    _printk(&DAT_0010d42a,"aw22xxx_cfg_store",0x7f6);
  }
  else {
    _printk(&DAT_0010dfd7,"aw22xxx_cfg_store",0x7f0);
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103998 aw22xxx_effect_show */

long aw22xxx_effect_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"effect = 0x%02x\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2f0));
  return (long)iVar1;
}



/* 001039d4 aw22xxx_effect_store */

undefined8 aw22xxx_effect_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  uint uVar2;
  long lVar3;
  long lVar4;
  uint local_54;
  byte local_50 [4];
  byte local_4c [4];
  long local_48;
  
  lVar4 = sp_el0;
  local_48 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  local_54 = 0;
  iVar1 = sscanf(param_3,"%x",&local_54);
  if (iVar1 == 1) {
    lVar3 = lVar4 + -0x10;
    mutex_lock(lVar4 + 0x2a0);
    if ((local_54 - 8 < 3) && (init_flag == 1)) {
      _printk(&DAT_0010d374,"aw22xxx_effect_store",0x857);
      *(undefined4 *)(lVar4 + 0x2f0) = 4;
      aw22xxx_get_fwname(4);
      aw22xxx_cfg_update_wait_from_dyn_name(lVar3);
      aw22xxx_set_cfg_run_state(*(undefined4 *)(lVar4 + 0x2f0));
      _printk(&DAT_0010dce4,"aw22xxx_effect_store",0x85c,g_cfg_cur_state);
      if (g_cfg_cur_state == 0) {
        _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,0);
        local_50[0] = 0;
        aw22xxx_i2c_read(lVar3,2,local_50);
        local_50[0] = local_50[0] & 0xfe;
        aw22xxx_i2c_write(lVar3,2);
        usleep_range_state(2000,3000,2);
        g_init_flg = 0;
      }
      init_flag = 0;
      _printk(&DAT_0010e453,"aw22xxx_effect_store",0x862,*(undefined4 *)(lVar4 + 0x2f0));
    }
    *(uint *)(lVar4 + 0x2f0) = local_54;
    uVar2 = local_54;
    if (((local_54 < 4) && (local_54 != 1)) && ((init_flag & 1) == 0)) {
      init_flag = 1;
      _printk(&DAT_0010dde4,"aw22xxx_effect_store",0x869);
      uVar2 = *(uint *)(lVar4 + 0x2f0);
    }
    _printk(&DAT_0010e6e6,"aw22xxx_effect_store",0x86c,uVar2);
    aw22xxx_get_fwname(*(undefined4 *)(lVar4 + 0x2f0));
    local_54 = 1;
    aw22xxx_cfg_update_wait_from_dyn_name(lVar3);
    iVar1 = *(int *)(lVar4 + 0x2f0);
    if (iVar1 == 0) {
      msleep(100);
      iVar1 = *(int *)(lVar4 + 0x2f0);
    }
    aw22xxx_set_cfg_run_state(iVar1);
    _printk(&DAT_0010dce4,"aw22xxx_effect_store",0x889,g_cfg_cur_state);
    if (g_cfg_cur_state == 0) {
      _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,0);
      local_4c[0] = 0;
      aw22xxx_i2c_read(lVar3,2,local_4c);
      local_4c[0] = local_4c[0] & 0xfe;
      aw22xxx_i2c_write(lVar3,2);
      usleep_range_state(2000,3000,2);
      g_init_flg = 0;
    }
    mutex_unlock(lVar4 + 0x2a0);
  }
  else {
    _printk(&DAT_0010d2ac,"aw22xxx_effect_store",0x850);
    param_4 = 0xffffffffffffffea;
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_48) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103ca8 aw22xxx_get_fwname */

void aw22xxx_get_fwname(ulong param_1)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  byte bVar4;
  int iVar5;
  size_t sVar6;
  long lVar7;
  undefined *puVar8;
  undefined8 uVar9;
  char *__s;
  uint uVar10;
  ulong uVar11;
  undefined8 uStack_70;
  long lStack_68;
  undefined1 *puStack_60;
  code *pcStack_58;
  char *pcStack_50;
  
  uVar11 = param_1 >> 0x18 & 0xff;
  _printk(&DAT_0010e52e,"aw22xxx_get_fwname",0x821,uVar11);
  uVar2 = (uint)param_1 >> 0xc & 0xfff;
  _printk(&DAT_0010cee1,"aw22xxx_get_fwname",0x823,uVar2);
  uVar1 = (uint)param_1 & 0xfff;
  _printk(&DAT_0010e3a5,"aw22xxx_get_fwname",0x825,uVar1);
  uVar10 = (uint)uVar11;
  if (uVar10 < 2) {
    if (uVar10 == 0) {
      if (uVar1 < 0xc) {
        __s = *(char **)(aw22xxx_cfg_name + (param_1 & 0xffffffff) * 8);
        sVar6 = strlen(__s);
        if (0x40 < sVar6 + 1) {
          lVar7 = __fortify_panic(0x1f,0x40);
          pcStack_58 = aw22xxx_cfg_update_wait_from_dyn_name;
          lVar3 = sp_el0;
          lStack_68 = *(long *)(lVar3 + 0x710);
          uStack_70 = 0;
          puStack_60 = &stack0xffffffffffffffc0;
          pcStack_50 = __s;
          _printk(&DAT_0010d681,"aw22xxx_cfg_update_wait_from_dyn_name");
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
              goto LAB_00103f58;
            }
            puVar8 = &DAT_0010e0fd;
          }
          else {
            puVar8 = &DAT_0010d466;
          }
          _printk(puVar8,"aw22xxx_cfg_update_wait_from_dyn_name");
LAB_00103f58:
          lVar3 = sp_el0;
          if (*(long *)(lVar3 + 0x710) == lStack_68) {
            return;
          }
                    /* WARNING: Subroutine does not return */
          __stack_chk_fail();
        }
        memcpy(aw22xxx_dyn_name,__s,sVar6 + 1);
        uVar9 = 0x82e;
        goto LAB_00103e2c;
      }
      uVar9 = 0x82a;
    }
    else {
      if (uVar10 == 1) {
        sprintf(aw22xxx_dyn_name,"aw_cfg%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
        uVar9 = 0x833;
        goto LAB_00103e2c;
      }
LAB_00103db4:
      uVar9 = 0x83e;
    }
    _printk(&DAT_0010daa6,"aw22xxx_get_fwname",uVar9,param_1 & 0xffffffff);
  }
  else {
    if (uVar10 == 2) {
      sprintf(aw22xxx_dyn_name,"aw_touch%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
      uVar9 = 0x837;
    }
    else {
      if (uVar10 != 3) goto LAB_00103db4;
      sprintf(aw22xxx_dyn_name,"aw_fan%x_%x.bin",(ulong)uVar2,(ulong)uVar1);
      uVar9 = 0x83b;
    }
LAB_00103e2c:
    _printk(&DAT_0010d446,"aw22xxx_get_fwname",uVar9,aw22xxx_dyn_name);
  }
  return;
}



/* 00103ea4 aw22xxx_cfg_update_wait_from_dyn_name */

void aw22xxx_cfg_update_wait_from_dyn_name(long param_1)

{
  long lVar1;
  byte bVar2;
  int iVar3;
  undefined *puVar4;
  undefined8 local_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_30 = 0;
  _printk(&DAT_0010d681,"aw22xxx_cfg_update_wait_from_dyn_name");
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
      goto LAB_00103f58;
    }
    puVar4 = &DAT_0010e0fd;
  }
  else {
    puVar4 = &DAT_0010d466;
  }
  _printk(puVar4,"aw22xxx_cfg_update_wait_from_dyn_name");
LAB_00103f58:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103fa8 aw22xxx_set_cfg_run_state */

void aw22xxx_set_cfg_run_state(ulong param_1)

{
  uint uVar1;
  int iVar2;
  ulong uVar3;
  
  uVar3 = param_1 >> 0x18 & 0xff;
  _printk(&DAT_0010d6c5,"aw22xxx_set_cfg_run_state",0x74d,uVar3);
  uVar1 = (uint)param_1 >> 0xc & 0xfff;
  _printk(&DAT_0010cfd0,"aw22xxx_set_cfg_run_state",0x74f,uVar1);
  _printk(&DAT_0010e709,"aw22xxx_set_cfg_run_state",0x751,(uint)param_1 & 0xfff);
  iVar2 = (int)uVar3;
  if ((iVar2 == 1) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0xfffffffd;
  }
  else if ((iVar2 == 3) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0xfffffffe;
  }
  else if ((iVar2 == 3) && (uVar1 == 2)) {
    g_cfg_cur_state = g_cfg_cur_state | 1;
  }
  else if ((iVar2 == 2) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0xfffffffb;
  }
  else if ((iVar2 == 2) && (uVar1 - 0x101 < 4)) {
    g_cfg_cur_state = g_cfg_cur_state | 4;
  }
  else {
    uVar1 = 1;
    if (iVar2 != 3) {
      uVar1 = 2;
    }
    g_cfg_cur_state = g_cfg_cur_state | uVar1;
  }
  return;
}



/* 001040cc aw22xxx_cfg_loaded */

void aw22xxx_cfg_loaded(ulong *param_1,long param_2)

{
  byte *pbVar1;
  byte bVar2;
  uint uVar3;
  code *pcVar4;
  uint uVar5;
  byte bVar6;
  int iVar7;
  ulong uVar8;
  
  _printk(&DAT_0010d681,"aw22xxx_cfg_loaded");
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_0010d158,"aw22xxx_cfg_loaded",*(undefined4 *)(param_2 + 0x300));
    release_firmware(0);
  }
  else {
    _printk(&DAT_0010d17c,"aw22xxx_cfg_loaded",*(undefined4 *)(param_2 + 0x300),*param_1);
    if (*param_1 != 0) {
      uVar8 = 0;
      bVar6 = 0;
      iVar7 = 2;
      do {
        pbVar1 = (byte *)(param_1[1] + uVar8);
        bVar2 = *pbVar1;
        if (bVar2 == 0xff) {
          bVar6 = pbVar1[1];
        }
        if ((*(char *)(param_2 + 0x304) == '\x01') || (bVar6 != 1)) {
          aw22xxx_i2c_write(param_2,bVar2,pbVar1[1]);
          if ((bVar6 == 0) &&
             ((*(char *)(param_1[1] + uVar8) == '\x02' &&
              ((((char *)(param_1[1] + uVar8))[1] & 1U) != 0)))) {
            usleep_range_state(2000,0x9c4,2);
          }
        }
        else {
          uVar5 = bVar2 - 0x10;
          if (uVar5 < 0x1b) {
            uVar3 = (uVar5 & 0xff) / 3;
            uVar5 = *(uint *)(param_2 + 0x30c + (ulong)uVar3 * 4) >>
                    (ulong)((uVar5 + uVar3 * -3 & 0x1f) * -8 + 0x10 & 0x1f);
          }
          else {
            uVar5 = (uint)pbVar1[1];
          }
          aw22xxx_i2c_write(param_2,bVar2,uVar5);
        }
        uVar8 = (ulong)iVar7;
        iVar7 = iVar7 + 2;
      } while (uVar8 < *param_1);
    }
    release_firmware(param_1);
    if (0xc < *(uint *)(param_2 + 0x2f0)) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x1042a8);
      (*pcVar4)();
    }
    bVar6 = aw22xxx_imax_code[*(uint *)(param_2 + 0x2f0)];
    if (0xe < bVar6) {
      bVar6 = 0xf;
    }
    aw22xxx_i2c_write(param_2,0xff,0);
    aw22xxx_i2c_write(param_2,0xb,bVar6);
    _printk(&DAT_0010d5f4,"aw22xxx_cfg_loaded");
  }
  return;
}



/* 001042ac aw22xxx_imax_show */

long aw22xxx_imax_show(long param_1,undefined8 param_2,char *param_3)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  long lVar4;
  long lVar5;
  
  lVar4 = *(long *)(param_1 + 0x98);
  iVar3 = snprintf(param_3,0x1000,"imax[%x] = %s\n",0,aw22xxx_imax_name);
  lVar5 = (long)iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",1,s_AW22XXX_IMAX_3mA_00100558);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",2,s_AW22XXX_IMAX_4mA_00100578);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",3,s_AW22XXX_IMAX_6mA_00100598);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",4,s_AW22XXX_IMAX_9mA_001005b8);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",5,s_AW22XXX_IMAX_10mA_001005d8);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",6,s_AW22XXX_IMAX_15mA_001005f8);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",7,s_AW22XXX_IMAX_20mA_00100618);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",8,s_AW22XXX_IMAX_30mA_00100638);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",9,s_AW22XXX_IMAX_40mA_00100658);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",10,s_AW22XXX_IMAX_45mA_00100678)
  ;
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",0xb,&DAT_00100698);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",0xc,&DAT_001006b8);
  uVar1 = *(uint *)(lVar4 + 0x2e0);
  if (uVar1 < 0xe) {
    lVar5 = lVar5 + iVar3;
    iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"current id = 0x%02x, imax = %s\n",(ulong)uVar1,
                     aw22xxx_imax_name + (ulong)uVar1 * 0x20);
    return lVar5 + iVar3;
  }
                    /* WARNING: Does not return */
  pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x104494);
  (*pcVar2)();
}



/* 00104498 aw22xxx_imax_store */

undefined8 aw22xxx_imax_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  byte bVar2;
  long lVar3;
  uint local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if ((iVar1 == 1) && (local_3c < 0xd)) {
    *(uint *)(lVar3 + 0x2e0) = local_3c;
    bVar2 = aw22xxx_imax_code[local_3c];
    lVar3 = lVar3 + -0x10;
    if (0xe < bVar2) {
      bVar2 = 0xf;
    }
    aw22xxx_i2c_write(lVar3,0xff,0);
    aw22xxx_i2c_write(lVar3,0xb,bVar2);
  }
  else {
    _printk(&DAT_0010d2ac,"aw22xxx_imax_store",0x8a7);
    param_4 = 0xffffffffffffffea;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010458c aw22xxx_rgb_show */

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



/* 001046d0 aw22xxx_rgb_store */

undefined8 aw22xxx_rgb_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if ((iVar1 == 2) && ((uint)local_30 < 9)) {
    *(undefined4 *)(lVar2 + (local_30 & 0xffffffff) * 4 + 0x2fc) = local_30._4_4_;
    _printk(&DAT_0010cff8,"aw22xxx_rgb_store",0x8d3);
  }
  else {
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104790 aw22xxx_task0_show */

long aw22xxx_task0_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task0 = 0x%02x\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x2ec));
  return (long)iVar1;
}



/* 001047cc aw22xxx_task0_store */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_task0_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    *(char *)(lVar2 + 0x2ec) = (char)local_2c;
    _printk(&DAT_0010d583,"aw22xxx_task0_store",0x8f4,local_2c & 0xff);
    queue_work_on(0x20,_system_wq,lVar2 + 0x1e0);
  }
  else {
    _printk(&DAT_0010ceff,"aw22xxx_task0_store",0x8ef);
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001048a4 aw22xxx_task1_show */

long aw22xxx_task1_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task1 = 0x%02x\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x2ed));
  return (long)iVar1;
}



/* 001048e0 aw22xxx_task1_store */

undefined8 aw22xxx_task1_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    *(char *)(lVar2 + 0x2ed) = (char)local_2c;
    _printk(&DAT_0010cdfd,"aw22xxx_task1_store",0x911,local_2c & 0xff);
  }
  else {
    _printk(&DAT_0010ceff,"aw22xxx_task1_store",0x90c);
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001049a4 aw22xxx_task_irq_show */

long aw22xxx_task_irq_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task_irq = %u\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2e8));
  return (long)iVar1;
}



/* 001049e0 aw22xxx_task_irq_store */

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
    _printk(&DAT_0010d8bc,"aw22xxx_task_irq_store",0x92c);
  }
  else {
    _printk(&DAT_0010ceff,"aw22xxx_task_irq_store",0x927);
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104aa0 aw22xxx_para_show */

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
    uVar4 = 0;
    lVar3 = 0;
    do {
      if (((uint)uVar4 & 0xffff) * -0x3d70a3d7 < 0xa3d70a4) {
        iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"\r\n");
        if (0xc34 < uVar4 >> 3) {
LAB_00104bb8:
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x104bbc);
          (*pcVar1)();
        }
        lVar3 = lVar3 + iVar2;
      }
      else if (0xc34 < uVar4 >> 3) goto LAB_00104bb8;
      iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"%d  ",
                       (ulong)(byte)(&user_para_data)[uVar4]);
      uVar4 = uVar4 + 1;
      lVar3 = lVar3 + iVar2;
    } while (uVar4 < (uint)(write_idx * 0x19));
    iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"\r\n");
    lVar3 = lVar3 + iVar2;
  }
  return lVar3;
}



/* 00104bc0 aw22xxx_para_store */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8
aw22xxx_para_store(undefined8 param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  undefined4 *puVar4;
  ulong uVar5;
  ulong uVar6;
  
  _printk(&DAT_0010d48c,"aw22xxx_para_store");
  puVar4 = (undefined4 *)__kmalloc_cache_noprof(_strlen,0xcc0,100);
  if (puVar4 == (undefined4 *)0x0) {
    _printk(&DAT_0010d7a0);
    param_4 = 0xfffffffffffffff2;
  }
  else {
    iVar3 = sscanf(param_3,
                   "%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d \n",
                   puVar4,puVar4 + 1,puVar4 + 2,puVar4 + 3,puVar4 + 4,puVar4 + 5,puVar4 + 6,
                   puVar4 + 7,puVar4 + 8,puVar4 + 9,puVar4 + 10,puVar4 + 0xb,puVar4 + 0xc,
                   puVar4 + 0xd,puVar4 + 0xe,puVar4 + 0xf,puVar4 + 0x10,puVar4 + 0x11,puVar4 + 0x12,
                   puVar4 + 0x13,puVar4 + 0x14,puVar4 + 0x15,puVar4 + 0x16,puVar4 + 0x17,
                   puVar4 + 0x18);
    if (iVar3 == 0x19) {
      _printk(&DAT_0010d7b7,"aw22xxx_para_store",0x19);
      uVar1 = write_idx;
      if (write_idx < 1000) {
        uVar5 = (ulong)write_idx * 0x19;
        iVar3 = (int)uVar5;
        (&user_para_data)[uVar5] = (char)*puVar4;
        if (iVar3 == 24999) {
LAB_00104fc8:
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(1,0x104fcc);
          (*pcVar2)();
        }
        uVar6 = uVar5 & 0xffffffff;
        (&DAT_00106b3e)[uVar5 & 0xffffffff] = (char)puVar4[1];
        if ((((iVar3 == 0x61a6) || (*(char *)(uVar6 + 0x106b3f) = (char)puVar4[2], iVar3 == 0x61a5))
            || (*(char *)(uVar6 + 0x106b40) = (char)puVar4[3], iVar3 == 0x61a4)) ||
           (((*(char *)(uVar6 + 0x106b41) = (char)puVar4[4], iVar3 == 0x61a3 ||
             (*(char *)(uVar6 + 0x106b42) = (char)puVar4[5], iVar3 == 0x61a2)) ||
            ((*(char *)(uVar6 + 0x106b43) = (char)puVar4[6], iVar3 == 0x61a1 ||
             (*(char *)(uVar6 + 0x106b44) = (char)puVar4[7], iVar3 == 0x61a0))))))
        goto LAB_00104fc8;
        *(char *)(uVar6 + 0x106b45) = (char)puVar4[8];
        if ((((iVar3 == 0x619f) || (*(char *)(uVar6 + 0x106b46) = (char)puVar4[9], iVar3 == 0x619e))
            || ((*(char *)(uVar6 + 0x106b47) = (char)puVar4[10], iVar3 == 0x619d ||
                (((((*(char *)(uVar6 + 0x106b48) = (char)puVar4[0xb], iVar3 == 0x619c ||
                    (*(char *)(uVar6 + 0x106b49) = (char)puVar4[0xc], iVar3 == 0x619b)) ||
                   (*(char *)(uVar6 + 0x106b4a) = (char)puVar4[0xd], iVar3 == 0x619a)) ||
                  (((*(char *)(uVar6 + 0x106b4b) = (char)puVar4[0xe], iVar3 == 0x6199 ||
                    (*(char *)(uVar6 + 0x106b4c) = (char)puVar4[0xf], iVar3 == 0x6198)) ||
                   ((*(char *)(uVar6 + 0x106b4d) = (char)puVar4[0x10], iVar3 == 0x6197 ||
                    ((*(char *)(uVar6 + 0x106b4e) = (char)puVar4[0x11], iVar3 == 0x6196 ||
                     (*(char *)(uVar6 + 0x106b4f) = (char)puVar4[0x12], iVar3 == 0x6195)))))))) ||
                 (*(char *)(uVar6 + 0x106b50) = (char)puVar4[0x13], iVar3 == 0x6194)))))) ||
           ((((*(char *)(uVar6 + 0x106b51) = (char)puVar4[0x14], iVar3 == 0x6193 ||
              (*(char *)(uVar6 + 0x106b52) = (char)puVar4[0x15], iVar3 == 0x6192)) ||
             (*(char *)(uVar6 + 0x106b53) = (char)puVar4[0x16], iVar3 == 0x6191)) ||
            (*(char *)(uVar6 + 0x106b54) = (char)puVar4[0x17], iVar3 == 0x6190))))
        goto LAB_00104fc8;
        write_idx = uVar1 + 1;
        *(char *)(uVar6 + 0x106b55) = (char)puVar4[0x18];
        _printk(&DAT_0010deda,"aw22xxx_para_store");
      }
      else {
        _printk(&DAT_0010dc18,"aw22xxx_para_store");
      }
    }
    kfree(puVar4);
  }
  return param_4;
}



/* 00105018 aw22xxx_multi_breath_pattern_show */

long aw22xxx_multi_breath_pattern_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000," pattern_status = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2f8));
  return (long)iVar1;
}



/* 00105054 aw22xxx_multi_breath_pattern_store */

undefined8
aw22xxx_multi_breath_pattern_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  int local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if (iVar1 == 1) {
    lVar3 = lVar4 + -0x10;
    *(int *)(lVar4 + 0x2f8) = local_3c;
    if (local_3c == 0) {
      read_idx = 0;
      write_idx = 0;
      if (kthread_status == 1) {
        kthread_status = 0;
      }
      aw22xxx_i2c_write(lVar3,0xff,0);
      aw22xxx_i2c_write(lVar3,5,0);
      aw22xxx_i2c_write(lVar3,4,1);
      aw22xxx_i2c_write(lVar3,2,0);
    }
    else if (((local_3c == 1) && (read_idx = 0, (kthread_status & 1) == 0)) && (write_idx != 0)) {
      uVar2 = kthread_create_on_node(aw22xxx_play,lVar3,0xffffffff,&DAT_0010d8e6,"aw22xxx_play");
      if (uVar2 < 0xfffffffffffff001) {
        wake_up_process();
        kthread_status = 1;
        cfg_update_kthread = uVar2;
        _printk("kthread_create done\n");
      }
      else {
        kthread_status = 0;
        cfg_update_kthread = uVar2;
        _printk("kthread_create error\n");
      }
    }
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001051e8 aw22xxx_fw_timer_func */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_fw_timer_func(long param_1)

{
  _printk(&DAT_0010d681,"aw22xxx_fw_timer_func");
  queue_work_on(0x20,_system_wq,param_1 + -0x60);
  return 0;
}



/* 0010523c aw22xxx_fw_work_routine */

void aw22xxx_fw_work_routine(long param_1)

{
  _printk(&DAT_0010d681,"aw22xxx_fw_work_routine");
  _printk(&DAT_0010d681,"aw22xxx_fw_update");
  *(undefined1 *)(param_1 + 0xdf) = 1;
  request_firmware_nowait
            (&__this_module,1,&aw22xxx_fw_name,*(undefined8 *)(param_1 + -0x208),0xcc0,
             param_1 + -0x210,aw22xxx_fw_loaded);
  return;
}



/* 001052d0 aw22xxx_cfg_work_routine */

void aw22xxx_cfg_work_routine(long param_1)

{
  _printk(&DAT_0010d681,"aw22xxx_cfg_work_routine");
  _printk(&DAT_0010d681,"aw22xxx_cfg_update_from_dyn_name");
  if (*(char *)(param_1 + 0xbf) == '\x02') {
    if (*(int *)(param_1 + 0xd0) == 2) {
      *(undefined1 *)(param_1 + 0x118) = 0;
    }
    else {
      *(undefined1 *)(param_1 + 0x118) = 1;
    }
    if ((g_init_flg & 1) == 0) {
      g_init_flg = 1;
      aw22xxx_init_cfg_update_array(param_1 + -0x230);
    }
    request_firmware_nowait
              (&__this_module,1,aw22xxx_dyn_name,*(undefined8 *)(param_1 + -0x228),0xcc0,
               param_1 + -0x230,aw22xxx_cfg_loaded);
  }
  else {
    _printk(&DAT_0010d466,"aw22xxx_cfg_update_from_dyn_name");
  }
  return;
}



/* 001053b8 aw22xxx_recover_work_routine */

void aw22xxx_recover_work_routine(long param_1)

{
  long lVar1;
  byte local_44 [4];
  byte local_40 [4];
  byte local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  lVar1 = param_1 + -0x250;
  _printk(&DAT_0010d908,"aw22xxx_recover_work_routine");
  aw22xxx_i2c_write(lVar1,0xff,0);
  local_44[0] = 0;
  aw22xxx_i2c_read(lVar1,4,local_44);
  local_44[0] = local_44[0] & 0xfd;
  aw22xxx_i2c_write(lVar1,4);
  local_40[0] = 0;
  aw22xxx_i2c_read(lVar1,4,local_40);
  local_40[0] = local_40[0] & 0xfe;
  aw22xxx_i2c_write(lVar1,4);
  _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,0);
  local_3c[0] = 0;
  aw22xxx_i2c_read(lVar1,2,local_3c);
  local_3c[0] = local_3c[0] & 0xfe;
  aw22xxx_i2c_write(lVar1,2);
  usleep_range_state(2000,3000,2);
  _printk(&DAT_0010d555,"aw22xxx_recover_work_routine");
  aw22xxx_i2c_write(lVar1,0xff,0);
  aw22xxx_i2c_write(lVar1,2,1);
  aw22xxx_i2c_write(lVar1,0xc,0);
  aw22xxx_i2c_write(lVar1,5,1);
  aw22xxx_i2c_write(lVar1,4,1);
  aw22xxx_i2c_write(lVar1,9,0x11);
  aw22xxx_i2c_write(lVar1,4,3);
  aw22xxx_i2c_write(lVar1,5,0x41);
  msleep(200);
  _printk(&DAT_0010def0,"aw22xxx_recover_work_routine");
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



/* 001055c8 aw22xxx_fw_loaded */

void aw22xxx_fw_loaded(ulong *param_1,undefined8 *param_2)

{
  ulong uVar1;
  ushort *puVar2;
  long lVar3;
  undefined8 uVar4;
  char cVar5;
  code *pcVar6;
  uint *puVar7;
  undefined1 *puVar8;
  undefined *puVar9;
  ulong extraout_x1;
  undefined1 uVar10;
  ulong uVar11;
  ushort uVar12;
  short sVar13;
  int iVar14;
  ulong uVar15;
  short sVar16;
  uint uVar17;
  ulong uVar18;
  byte *pbVar19;
  ulong uVar20;
  uint uVar21;
  char local_94 [4];
  char local_90 [4];
  byte local_8c [4];
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar3 = sp_el0;
  local_68 = *(long *)(lVar3 + 0x710);
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_94[0] = '\0';
  _printk(&DAT_0010d681,"aw22xxx_fw_loaded");
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_0010d3eb,"aw22xxx_fw_loaded",&aw22xxx_fw_name);
    release_firmware(0);
  }
  else {
    _printk(&DAT_0010d0c2,"aw22xxx_fw_loaded",&aw22xxx_fw_name,*param_1);
    uVar1 = *param_1;
    puVar2 = (ushort *)param_1[1];
    if (uVar1 < 3) {
      uVar12 = 0;
    }
    else {
      uVar15 = uVar1 - 2;
      if (uVar15 < 2) {
        uVar11 = 2;
        iVar14 = 2;
        uVar12 = 0;
      }
      else {
        iVar14 = 2;
        uVar17 = (uint)(uVar1 - 3);
        uVar11 = 2;
        uVar12 = 0;
        if (((uVar17 < 0x7ffffffe) && (uVar12 = 0, uVar17 < 0x7ffffffd)) && (uVar1 - 3 >> 0x20 == 0)
           ) {
          uVar18 = uVar15 & 0xfffffffffffffffe;
          sVar13 = 0;
          uVar11 = uVar18 + 2;
          iVar14 = (int)uVar18 + 2;
          sVar16 = 0;
          pbVar19 = (byte *)((long)puVar2 + 3);
          uVar20 = uVar18;
          do {
            uVar20 = uVar20 - 2;
            sVar13 = sVar13 + (ushort)pbVar19[-1];
            sVar16 = sVar16 + (ushort)*pbVar19;
            pbVar19 = pbVar19 + 2;
          } while (uVar20 != 0);
          uVar12 = sVar16 + sVar13;
          if (uVar15 == uVar18) goto LAB_001056b4;
        }
      }
      do {
        iVar14 = iVar14 + 1;
        pbVar19 = (byte *)((long)puVar2 + uVar11);
        uVar11 = (ulong)iVar14;
        uVar12 = uVar12 + *pbVar19;
      } while (uVar11 < uVar1);
    }
LAB_001056b4:
    if (uVar12 == (ushort)(*puVar2 >> 8 | *puVar2 << 8)) {
      _printk(&DAT_0010d708,"aw22xxx_fw_loaded");
      uVar15 = *param_1;
      uVar1 = uVar15 + 0x10;
      puVar7 = (uint *)__kmalloc_noprof(uVar1,0xdc0);
      if (puVar7 == (uint *)0x0) {
        release_firmware(param_1);
        puVar9 = &DAT_0010e2ea;
      }
      else {
        _printk(&DAT_0010dd35,"aw22xxx_fw_loaded",*(undefined1 *)(param_1[1] + 2));
        local_88 = *(undefined8 *)(param_1[1] + 3);
        uStack_80 = *(undefined8 *)(param_1[1] + 0xb);
        _printk(&DAT_0010d1eb,"aw22xxx_fw_loaded",&local_88);
        local_88 = *(undefined8 *)(param_1[1] + 0x13);
        _printk(&DAT_0010e12d,"aw22xxx_fw_loaded",&local_88);
        if ((uVar1 < 4) || ((uVar1 & 0xfffffffffffffffc) == 4)) goto LAB_001061f4;
        uVar17 = (*(uint *)(param_1[1] + 0x1b) & 0xff00ff00) >> 8 |
                 (*(uint *)(param_1[1] + 0x1b) & 0xff00ff) << 8;
        puVar7[1] = uVar17 >> 0x10 | uVar17 << 0x10;
        _printk(&DAT_0010e403,"aw22xxx_fw_loaded");
        if ((uVar1 < 8) || ((uVar1 & 0xfffffffffffffffc) == 8)) goto LAB_001061f4;
        puVar7[2] = (uint)(*(ushort *)(param_1[1] + 0x22) >> 8) |
                    (*(ushort *)(param_1[1] + 0x22) & 0xff00ff) << 8;
        _printk(&DAT_0010e04c,"aw22xxx_fw_loaded");
        if ((uVar1 < 0xc) || ((uVar1 & 0xfffffffffffffffc) == 0xc)) goto LAB_001061f4;
        puVar7[3] = (uint)*(byte *)(param_1[1] + 0x24);
        _printk(&DAT_0010e736,"aw22xxx_fw_loaded");
        *puVar7 = (uint)(*(ushort *)(param_1[1] + 0x26) >> 8) |
                  (*(ushort *)(param_1[1] + 0x26) & 0xff00ff) << 8;
        _printk(&DAT_0010e143,"aw22xxx_fw_loaded");
        uVar11 = 0;
        if (0xf < uVar1) {
          uVar11 = uVar15;
        }
        if (uVar11 < *puVar7) {
          __fortify_panic(0x11);
          goto LAB_00106200;
        }
        memcpy(puVar7 + 4,(void *)(param_1[1] + 0x28),(ulong)*puVar7);
        release_firmware(param_1);
        aw22xxx_i2c_write(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,1);
        local_8c[0] = 0;
        aw22xxx_i2c_read(param_2,2,local_8c);
        local_8c[0] = local_8c[0] | 1;
        aw22xxx_i2c_write(param_2,2);
        usleep_range_state(2000,3000,2);
        local_8c[0] = 0;
        aw22xxx_i2c_read(param_2,4,local_8c);
        local_8c[0] = local_8c[0] | 1;
        aw22xxx_i2c_write(param_2,4);
        aw22xxx_i2c_write(param_2,0x22,*puVar7 + 0xffff >> 8);
        aw22xxx_i2c_write(param_2,0x21,(byte)*puVar7 - 1);
        aw22xxx_i2c_write(param_2,0x24,7);
        usleep_range_state(5000,0x1964,2);
        aw22xxx_i2c_read(param_2,0x24,local_94);
        if (local_94[0] == '\x05') {
          aw22xxx_i2c_read(param_2,0x25,local_94);
          cVar5 = local_94[0];
          aw22xxx_i2c_read(param_2,0x26,local_94);
          if ((uVar1 < 8) || ((uVar1 & 0xfffffffffffffffc) == 8)) goto LAB_001061f4;
          if ((uint)CONCAT11(local_94[0],cVar5) == puVar7[2]) {
            _printk(&DAT_0010e1ee,"aw22xxx_fw_loaded",(uint)CONCAT11(local_94[0],cVar5));
            if (*(char *)((long)param_2 + 0x2ee) == '\0') {
              kfree(puVar7);
              aw22xxx_i2c_write(param_2,0x24,0);
              aw22xxx_led_init(param_2);
              *(undefined1 *)((long)param_2 + 0x2ef) = 2;
              goto LAB_00106188;
            }
            if ((uVar1 & 0xfffffffffffffffc) == 4) goto LAB_001061f4;
            uVar17 = puVar7[1];
            puVar9 = &DAT_0010d7c6;
          }
          else {
            _printk(&DAT_0010e064,"aw22xxx_fw_loaded");
            if ((uVar1 & 0xfffffffffffffffc) == 4) goto LAB_001061f4;
            uVar17 = puVar7[1];
            puVar9 = &DAT_0010db56;
          }
          _printk(puVar9,"aw22xxx_fw_loaded",uVar17);
        }
        else {
          _printk(&DAT_0010dd50,"aw22xxx_fw_loaded");
          _printk(&DAT_0010e15a,"aw22xxx_fw_loaded");
        }
        aw22xxx_i2c_write(param_2,0x24,0);
        local_90[0] = '\0';
        aw22xxx_i2c_write(param_2,0xff,0);
        aw22xxx_i2c_write(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,1);
        local_8c[0] = 0;
        aw22xxx_i2c_read(param_2,2,local_8c);
        local_8c[0] = local_8c[0] | 1;
        aw22xxx_i2c_write(param_2,2);
        usleep_range_state(2000,3000,2);
        local_8c[0] = 0;
        aw22xxx_i2c_read(param_2,4,local_8c);
        local_8c[0] = local_8c[0] | 1;
        aw22xxx_i2c_write(param_2,4);
        aw22xxx_i2c_write(param_2,0x80,0xec);
        aw22xxx_i2c_write(param_2,0x35,0x29);
        if ((uVar1 < 0xc) || ((uVar1 & 0xfffffffffffffffc) == 0xc)) {
LAB_001061f4:
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(1,0x1061f8);
          (*pcVar6)();
        }
        aw22xxx_i2c_write(param_2,0x38,puVar7[3]);
        aw22xxx_i2c_write(param_2,0x22,0);
        aw22xxx_i2c_write(param_2,0x21,0);
        aw22xxx_i2c_write(param_2,0x20,3);
        aw22xxx_i2c_write(param_2,0x30,3);
        aw22xxx_i2c_write(param_2,0x23,0);
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
        if (*puVar7 != 0) {
          uVar17 = 0;
          uVar4 = sp_el0;
          do {
            aw22xxx_i2c_write(param_2,0x22,uVar17 >> 8);
            aw22xxx_i2c_write(param_2,0x21,uVar17);
            aw22xxx_i2c_write(param_2,0x11,1);
            aw22xxx_i2c_write(param_2,0x30,4);
            uVar21 = *puVar7 - uVar17;
            if (0x7f < uVar21) {
              uVar21 = 0x80;
            }
            uVar15 = (ulong)uVar21;
            puVar8 = (undefined1 *)__kmalloc_noprof((ulong)(uVar21 + 1),0xcc0);
            if (puVar8 != (undefined1 *)0x0) {
              uVar11 = (ulong)(uVar21 + 1) - 1;
              *puVar8 = 0x23;
              if (uVar11 < uVar15) {
                __fortify_panic(0x11,uVar11,uVar15);
                uVar11 = extraout_x1;
              }
              else {
                uVar20 = (ulong)uVar17 + 0x10;
                uVar18 = 0;
                if (uVar20 <= uVar1) {
                  uVar18 = uVar1 - uVar20;
                }
                if (uVar15 <= uVar18) {
                  memcpy(puVar8 + 1,(void *)((long)(puVar7 + 4) + (ulong)uVar17),uVar15);
                  iVar14 = i2c_transfer_buffer_flags(*param_2,puVar8,uVar21 + 1,0);
                  if (iVar14 < 0) {
                    _printk(&DAT_0010d727,"aw22xxx_i2c_writes");
                  }
                  kfree(puVar8);
                  goto LAB_00105fac;
                }
              }
              __fortify_panic(0x10,uVar11,uVar15);
              goto LAB_001061f4;
            }
            _printk(&DAT_0010d8e9,"aw22xxx_i2c_writes");
LAB_00105fac:
            aw22xxx_i2c_write(param_2,0x11,0);
            aw22xxx_i2c_write(param_2,0x30,0);
            uVar17 = uVar21 + uVar17;
          } while (uVar17 < *puVar7);
        }
        aw22xxx_i2c_write(param_2,0x20,0);
        aw22xxx_i2c_write(param_2,1,0x55);
        usleep_range_state(2000,3000,2);
        _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,1);
        local_8c[0] = 0;
        aw22xxx_i2c_read(param_2,2,local_8c);
        local_8c[0] = local_8c[0] | 1;
        aw22xxx_i2c_write(param_2,2);
        usleep_range_state(2000,3000,2);
        local_8c[0] = 0;
        aw22xxx_i2c_read(param_2,4,local_8c);
        local_8c[0] = local_8c[0] | 1;
        aw22xxx_i2c_write(param_2,4);
        aw22xxx_i2c_write(param_2,0x22,*puVar7 + 0xffff >> 8);
        aw22xxx_i2c_write(param_2,0x21,(byte)*puVar7 - 1);
        aw22xxx_i2c_write(param_2,0x24,7);
        usleep_range_state(5000,0x1964,2);
        aw22xxx_i2c_read(param_2,0x24,local_90);
        if (local_90[0] == '\x05') {
          aw22xxx_i2c_read(param_2,0x25,local_90);
          cVar5 = local_90[0];
          aw22xxx_i2c_read(param_2,0x26,local_90);
          if ((uVar1 < 8) || ((uVar1 & 0xfffffffffffffffc) == 8)) goto LAB_001061f4;
          if ((uint)CONCAT11(local_90[0],cVar5) == puVar7[2]) {
            puVar9 = &DAT_0010e1ee;
            goto LAB_00106108;
          }
          _printk(&DAT_0010d202,"aw22xxx_container_update",puVar7[2]);
          _printk(&DAT_0010e170,"aw22xxx_container_update");
          uVar10 = 3;
        }
        else {
          puVar9 = &DAT_0010dd50;
LAB_00106108:
          _printk(puVar9,"aw22xxx_container_update");
          aw22xxx_i2c_write(param_2,0x24,0);
          uVar10 = 2;
        }
        *(undefined1 *)((long)param_2 + 0x2ef) = uVar10;
        kfree(puVar7);
        *(undefined1 *)((long)param_2 + 0x2ee) = 0;
        aw22xxx_led_init(param_2);
        puVar9 = &DAT_0010e309;
      }
      _printk(puVar9,"aw22xxx_fw_loaded");
    }
    else {
      _printk(&DAT_0010d2e9,"aw22xxx_fw_loaded");
      release_firmware(param_1);
    }
  }
LAB_00106188:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_68) {
    return;
  }
LAB_00106200:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106204 aw22xxx_led_init */

void aw22xxx_led_init(long param_1)

{
  long lVar1;
  code *pcVar2;
  byte bVar3;
  byte local_30 [4];
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_0010d681,"aw22xxx_led_init");
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,1);
  local_30[0] = 0;
  aw22xxx_i2c_read(param_1,2,local_30);
  local_30[0] = local_30[0] | 1;
  aw22xxx_i2c_write(param_1,2);
  usleep_range_state(2000,3000,2);
  if (0xc < *(uint *)(param_1 + 0x2f0)) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x106390);
    (*pcVar2)();
  }
  bVar3 = aw22xxx_imax_code[*(uint *)(param_1 + 0x2f0)];
  if (0xe < bVar3) {
    bVar3 = 0xf;
  }
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,0xb,bVar3);
  _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,0);
  local_2c[0] = 0;
  aw22xxx_i2c_read(param_1,2,local_2c);
  local_2c[0] = local_2c[0] & 0xfe;
  aw22xxx_i2c_write(param_1,2);
  usleep_range_state(2000,3000,2);
  _printk(&DAT_0010e309,"aw22xxx_led_init");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106394 aw22xxx_cfg_recover_update_wait */

void aw22xxx_cfg_recover_update_wait(long param_1)

{
  byte *pbVar1;
  byte bVar2;
  uint uVar3;
  ulong *puVar4;
  code *pcVar5;
  int iVar6;
  size_t sVar7;
  undefined *puVar8;
  uint uVar9;
  undefined8 uVar10;
  byte bVar11;
  ulong uVar12;
  long lVar13;
  ulong *local_60;
  long local_58;
  
  lVar13 = sp_el0;
  local_58 = *(long *)(lVar13 + 0x710);
  local_60 = (ulong *)0x0;
  _printk(&DAT_0010d681,"aw22xxx_cfg_recover_update_wait");
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 4) {
    lamp_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_0010e19c,"aw22xxx_cfg_recover_update_wait",lamp_effect);
  if ((*(uint *)(param_1 + 0x300) & 0xfffffffe) == 2) {
    fan_effect = *(uint *)(param_1 + 0x300);
  }
  _printk(&DAT_0010d923,"aw22xxx_cfg_recover_update_wait",fan_effect);
  if (g_cfgarray_count <= *(uint *)(param_1 + 0x300)) {
    _printk(&DAT_0010e315,"aw22xxx_cfg_recover_update_wait");
    goto LAB_00106644;
  }
  _printk(&DAT_0010e65e,"aw22xxx_cfg_recover_update_wait",
          *(undefined8 *)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8));
  lVar13 = aw22xxx_cfg_name;
  uVar9 = *(uint *)(param_1 + 0x300);
  uVar12 = (ulong)uVar9;
  sVar7 = strlen(*(char **)(aw22xxx_cfg_name + uVar12 * 8));
  bVar11 = g_init_flg;
  if (sVar7 < 5) {
    _printk(&DAT_0010d0df,"aw22xxx_cfg_recover_update_wait",uVar12);
    goto LAB_00106644;
  }
  if (*(char *)(param_1 + 0x2ef) == '\x02') {
    if (uVar9 == 2) {
      *(undefined1 *)(param_1 + 0x348) = 0;
      if ((bVar11 & 1) == 0) {
LAB_0010650c:
        g_init_flg = 1;
        aw22xxx_init_cfg_update_array(param_1);
        uVar12 = (ulong)*(uint *)(param_1 + 0x300);
        lVar13 = aw22xxx_cfg_name;
      }
      else {
        uVar12 = 2;
      }
    }
    else {
      *(undefined1 *)(param_1 + 0x348) = 1;
      if ((bVar11 & 1) == 0) goto LAB_0010650c;
    }
    iVar6 = request_firmware(&local_60,*(undefined8 *)(lVar13 + uVar12 * 8),
                             *(undefined8 *)(param_1 + 8));
    puVar4 = local_60;
    if (iVar6 == 0) {
      _printk(&DAT_0010d681,"aw22xxx_cfg_recover_loaded");
      uVar10 = *(undefined8 *)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8);
      if (puVar4 == (ulong *)0x0) {
        _printk(&DAT_0010d3eb,"aw22xxx_cfg_recover_loaded",uVar10);
        release_firmware(0);
      }
      else {
        _printk(&DAT_0010d0c2,"aw22xxx_cfg_recover_loaded",uVar10,*puVar4);
        if (*puVar4 != 0) {
          uVar12 = 0;
          bVar11 = 0;
          iVar6 = 2;
          do {
            pbVar1 = (byte *)(puVar4[1] + uVar12);
            bVar2 = *pbVar1;
            if (bVar2 == 0xff) {
              bVar11 = pbVar1[1];
            }
            if ((*(char *)(param_1 + 0x304) == '\x01') || (bVar11 != 1)) {
              aw22xxx_i2c_write(param_1,bVar2,pbVar1[1]);
              if ((bVar11 == 0) &&
                 ((*(char *)(puVar4[1] + uVar12) == '\x02' &&
                  ((((char *)(puVar4[1] + uVar12))[1] & 1U) != 0)))) {
                usleep_range_state(2000,0x9c4,2);
              }
            }
            else {
              uVar9 = bVar2 - 0x10;
              if (uVar9 < 0x1b) {
                uVar3 = (uVar9 & 0xff) / 3;
                uVar9 = *(uint *)(param_1 + 0x30c + (ulong)uVar3 * 4) >>
                        (ulong)((uVar9 + uVar3 * -3 & 0x1f) * -8 + 0x10 & 0x1f);
              }
              else {
                uVar9 = (uint)pbVar1[1];
              }
              aw22xxx_i2c_write(param_1,bVar2,uVar9);
            }
            uVar12 = (ulong)iVar6;
            iVar6 = iVar6 + 2;
          } while (uVar12 < *puVar4);
        }
        release_firmware(puVar4);
        if (0xc < *(uint *)(param_1 + 0x2f0)) {
                    /* WARNING: Does not return */
          pcVar5 = (code *)SoftwareBreakpoint(0x5512,0x10675c);
          (*pcVar5)();
        }
        bVar11 = aw22xxx_imax_code[*(uint *)(param_1 + 0x2f0)];
        if (0xe < bVar11) {
          bVar11 = 0xf;
        }
        aw22xxx_i2c_write(param_1,0xff,0);
        aw22xxx_i2c_write(param_1,0xb,bVar11);
        _printk(&DAT_0010d5f4,"aw22xxx_cfg_recover_loaded");
      }
      *(int *)(param_1 + 0x2f8) = *(int *)(param_1 + 0x2f8) + 1;
      _printk(&DAT_0010db7e,"aw22xxx_cfg_recover_update_wait",0x42d);
      msleep(0x14);
      goto LAB_00106644;
    }
    puVar8 = &DAT_0010e0fd;
  }
  else {
    puVar8 = &DAT_0010d466;
  }
  _printk(puVar8,"aw22xxx_cfg_recover_update_wait");
LAB_00106644:
  lVar13 = sp_el0;
  if (*(long *)(lVar13 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}



/* 00106760 get_aw22xxx_id */

/* WARNING: Control flow encountered bad instruction data */

undefined8 get_aw22xxx_id(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  size_t sVar1;
  undefined8 uVar2;
  
  if (*param_4 != 0) {
    return 0;
  }
  _printk(&DAT_0010dbaa,"get_aw22xxx_id",0x9b3,&g_chip_id);
  sVar1 = strnlen((char *)&g_chip_id,0x20);
  if (sVar1 < 0x21) {
    if (sVar1 != 0x20) {
      uVar2 = simple_read_from_buffer(param_2,param_3,param_4,&g_chip_id);
      return uVar2;
    }
  }
  else {
    __fortify_panic(2,0x20,sVar1 + 1);
  }
  __fortify_panic(4,0x20,0x21);
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* 00106824 init_module */

int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_0010d321,"v1.1.3");
  msleep(500);
  _printk(&DAT_0010ce3a);
  iVar1 = i2c_register_driver(&__this_module,aw22xxx_i2c_driver);
  if (iVar1 != 0) {
    _printk(&DAT_0010e24d);
  }
  return iVar1;
}



/* 001068a0 cleanup_module */

void cleanup_module(void)

{
  i2c_del_driver(aw22xxx_i2c_driver);
  return;
}



