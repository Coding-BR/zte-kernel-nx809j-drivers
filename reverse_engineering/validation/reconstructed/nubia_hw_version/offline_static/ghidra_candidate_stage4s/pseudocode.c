/* 001003d4 nubia_hw_rf_band_show */

long nubia_hw_rf_band_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  char *pcVar2;
  long lVar3;
  undefined *puVar4;
  
  if (param_3 == (char *)0x0) {
    return 0;
  }
  if (nubia_rf_gpio1_v == '\x02') {
    if (nubia_rf_gpio2_v < 3) {
      puVar4 = &DAT_00101590;
LAB_00100434:
      lVar3 = *(long *)(puVar4 + (long)(char)nubia_rf_gpio2_v * 8);
LAB_00100438:
      pcVar2 = "COMMON" + lVar3 * 0x14;
      goto code_r0x0010045c;
    }
  }
  else if (nubia_rf_gpio1_v == '\x01') {
    if (nubia_rf_gpio2_v == 0) {
      lVar3 = 6;
      goto LAB_00100438;
    }
  }
  else if ((nubia_rf_gpio1_v == '\0') && (nubia_rf_gpio2_v < 3)) {
    puVar4 = &DAT_00101578;
    goto LAB_00100434;
  }
  pcVar2 = "unknow";
code_r0x0010045c:
  if (debug_value == 1) {
    _printk(&DAT_00101d5a,pcVar2);
  }
  iVar1 = snprintf(param_3,0xc,"%s",pcVar2);
  return (long)iVar1;
}



/* 001004cc nubia_get_hw_id */

undefined4 nubia_get_hw_id(void)

{
  undefined **ppuVar1;
  undefined *puVar2;
  
  if (nubia_hw_exact_bss_base < 2) {
    if (nubia_hw_exact_bss_base == 0) {
      if (2 < nubia_pcb_gpio2_v) {
        return 9;
      }
      ppuVar1 = &PTR_nubia_hw_exact_rodata_base_00101530;
    }
    else {
      if (nubia_hw_exact_bss_base != 1) {
        return 9;
      }
      if (2 < nubia_pcb_gpio2_v) {
        return 9;
      }
      ppuVar1 = &PTR_DAT_00101560;
    }
  }
  else {
    if (nubia_hw_exact_bss_base != 2) {
      if (nubia_hw_exact_bss_base != 3) {
        return 9;
      }
      if (nubia_pcb_gpio2_v != 3) {
        return 9;
      }
      puVar2 = &UNK_001012f8;
      goto LAB_00100564;
    }
    if (2 < nubia_pcb_gpio2_v) {
      return 9;
    }
    ppuVar1 = &PTR_DAT_00101548;
  }
  puVar2 = ppuVar1[(char)nubia_pcb_gpio2_v];
LAB_00100564:
  if (debug_value == 1) {
    _printk(&DAT_00101c63,*(undefined4 *)(puVar2 + 8));
  }
  return *(undefined4 *)(puVar2 + 8);
}



/* 001005a0 nubia_get_hw_pcb_version */

undefined4 * nubia_get_hw_pcb_version(undefined4 *param_1)

{
  int iVar1;
  size_t sVar2;
  undefined4 *puVar3;
  char *__s;
  ulong uVar4;
  undefined **ppuVar5;
  undefined *puVar6;
  
  if (nubia_hw_exact_bss_base < 2) {
    if (nubia_hw_exact_bss_base == 0) {
      if (2 < nubia_pcb_gpio2_v) goto LAB_00100670;
      ppuVar5 = &PTR_nubia_hw_exact_rodata_base_00101530;
    }
    else {
      if ((nubia_hw_exact_bss_base != 1) || (2 < nubia_pcb_gpio2_v)) goto LAB_00100670;
      ppuVar5 = &PTR_DAT_00101560;
    }
LAB_00100634:
    puVar6 = ppuVar5[(char)nubia_pcb_gpio2_v];
joined_r0x00100608:
    if (param_1 != (undefined4 *)0x0) {
      sVar2 = strnlen(puVar6 + 0xc,0xc);
      if (sVar2 < 0xd) {
        if (sVar2 != 0xc) {
          puVar3 = memcpy(param_1,puVar6 + 0xc,sVar2 + 1);
          return puVar3;
        }
      }
      else {
        sVar2 = __fortify_panic(2,0xc,sVar2 + 1);
      }
      __s = (char *)(sVar2 + 1);
      __fortify_panic(4,0xc);
      if (__s == (char *)0x0) {
        return (undefined4 *)0x0;
      }
      if ((ulong)nubia_pcb_gpio3_v < 3) {
        uVar4 = (ulong)*(uint *)(&DAT_001015b4 + (ulong)nubia_pcb_gpio3_v * 4);
      }
      else {
        uVar4 = 0xffffffff;
      }
      if (debug_value == 1) {
        _printk(&DAT_0010194b,uVar4);
      }
      iVar1 = snprintf(__s,5,"%d",uVar4);
      return (undefined4 *)(long)iVar1;
    }
  }
  else {
    if (nubia_hw_exact_bss_base == 2) {
      if (nubia_pcb_gpio2_v < 3) {
        ppuVar5 = &PTR_DAT_00101548;
        goto LAB_00100634;
      }
    }
    else if ((nubia_hw_exact_bss_base == 3) && (nubia_pcb_gpio2_v == 3)) {
      puVar6 = &UNK_001012f8;
      goto joined_r0x00100608;
    }
LAB_00100670:
    if (param_1 != (undefined4 *)0x0) {
      *(undefined4 *)((long)param_1 + 3) = 0x776f6e;
      *param_1 = 0x6e6b6e75;
    }
  }
  return param_1;
}



/* 001006c0 hml_config_version_show */

long hml_config_version_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  ulong uVar2;
  
  if (param_3 != (char *)0x0) {
    if ((ulong)nubia_pcb_gpio3_v < 3) {
      uVar2 = (ulong)*(uint *)(&DAT_001015b4 + (ulong)nubia_pcb_gpio3_v * 4);
    }
    else {
      uVar2 = 0xffffffff;
    }
    if (debug_value == 1) {
      _printk(&DAT_0010194b,uVar2);
    }
    iVar1 = snprintf(param_3,5,"%d",uVar2);
    return (long)iVar1;
  }
  return 0;
}



/* 00100764 nubia_hw_ver_probe */

undefined8 nubia_hw_ver_probe(long param_1)

{
  char cVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  ulong uVar5;
  undefined8 uVar6;
  char *pcVar7;
  undefined8 *puVar8;
  undefined *puVar9;
  undefined **ppuVar10;
  ulong uVar11;
  undefined8 uVar12;
  ulong uVar13;
  
  uVar12 = *(undefined8 *)(param_1 + 0x2f8);
  if (debug_value == 1) {
    _printk(&DAT_00101cf4);
  }
  if (param_1 == 0) {
    _printk(&DAT_001019f4);
    return 0xfffffdfb;
  }
  uVar5 = of_get_named_gpio(uVar12,"qcom,pcb-gpio1",0);
  if ((int)uVar5 < 0) {
    if (debug_value == 1) {
      _printk(&DAT_00101a1b);
    }
    pcVar7 = "parse pcb_gpio error!!\n";
    goto LAB_00100a98;
  }
  uVar11 = uVar5 & 0xffffffff;
  iVar2 = gpio_request(uVar5,"NUBIA_HW_PCB_GPIO1");
  if (iVar2 < 0) {
    _printk("Failed to request GPIO:%d, ERRNO:%d",uVar11,iVar2);
  }
  uVar5 = of_get_named_gpio(uVar12,"qcom,pcb-gpio2",0);
  if ((int)uVar5 < 0) {
    if (debug_value == 1) {
      _printk(&DAT_0010190f);
    }
    uVar13 = 0;
  }
  else {
    uVar13 = uVar5 & 0xffffffff;
    iVar2 = gpio_request(uVar5,"NUBIA_HW_PCB_GPIO2");
    if (iVar2 < 0) {
      _printk("Failed to request GPIO:%d, ERRNO:%d\n",uVar13,iVar2);
    }
    uVar6 = of_get_named_gpio(uVar12,"qcom,pcb-gpio3",0);
    pcb_gpio3 = (int)uVar6;
    if (pcb_gpio3 < 0) {
      if (debug_value == 1) {
        _printk(&DAT_001018a3);
      }
    }
    else {
      iVar2 = gpio_request(uVar6,"NUBIA_HW_PCB_GPIO3");
      if (iVar2 < 0) {
        _printk("Failed to request GPIO:%d, ERRNO:%d\n",pcb_gpio3,iVar2);
      }
    }
  }
  iVar2 = of_get_named_gpio(uVar12,"qcom,rf-gpio1",0);
  if (iVar2 < 0) {
    if (debug_value == 1) {
      puVar9 = &DAT_00101d2d;
LAB_00100a8c:
      _printk(puVar9);
    }
  }
  else {
    iVar3 = of_get_named_gpio(uVar12,"qcom,rf-gpio2",0);
    if (-1 < iVar3) {
      iVar4 = gpio_request(iVar2,"NUBIA_RF_PCB_GPIO1");
      if (iVar4 < 0) {
        _printk("Failed to request GPIO:%d, ERRNO:%d",iVar2,iVar4);
      }
      iVar4 = gpio_request(iVar3,"NUBIA_HW_RF_GPIO2");
      if (iVar4 < 0) {
        _printk("Failed to request GPIO:%d, ERRNO:%d\n",iVar3,iVar4);
      }
      iVar4 = nubia_gpio_ctrl(param_1);
      if (iVar4 != 0) {
        return 0xffffffed;
      }
      gpio_to_desc(uVar11);
      gpiod_direction_input();
      msleep(1);
      gpio_to_desc(uVar11);
      cVar1 = gpiod_get_raw_value();
      if (debug_value == 1) {
        _printk(&DAT_00101d7d,cVar1);
      }
      nubia_hw_exact_bss_base = cVar1;
      gpio_to_desc(uVar13);
      gpiod_direction_input();
      msleep(1);
      gpio_to_desc(uVar13);
      cVar1 = gpiod_get_raw_value();
      if (debug_value == 1) {
        _printk(&DAT_00101d7d,cVar1);
      }
      iVar4 = pcb_gpio3;
      nubia_pcb_gpio2_v = cVar1;
      gpio_to_desc(pcb_gpio3);
      gpiod_direction_input();
      msleep(1);
      gpio_to_desc(iVar4);
      cVar1 = gpiod_get_raw_value();
      if (debug_value == 1) {
        _printk(&DAT_00101d7d,cVar1);
      }
      nubia_pcb_gpio3_v = cVar1;
      gpio_to_desc(iVar2);
      gpiod_direction_input();
      msleep(1);
      gpio_to_desc(iVar2);
      cVar1 = gpiod_get_raw_value();
      if (debug_value == 1) {
        _printk(&DAT_00101d7d,cVar1);
      }
      nubia_rf_gpio1_v = cVar1;
      gpio_to_desc(iVar3);
      gpiod_direction_input();
      msleep(1);
      gpio_to_desc(iVar3);
      cVar1 = gpiod_get_raw_value();
      if (debug_value == 1) {
        _printk(&DAT_00101d7d,cVar1);
      }
      nubia_rf_gpio2_v = cVar1;
      msleep(0x14);
      puVar8 = *(undefined8 **)(param_1 + 0xa8);
      if (puVar8 == (undefined8 *)0x0) {
        _dev_err(param_1 + 0x10,"Cannot get hw gpio info\n");
        return 0xffffffed;
      }
      if (puVar8[2] == 0) {
        _printk(&DAT_001019cd);
        return 0xffffffed;
      }
      iVar4 = pinctrl_select_state(*puVar8);
      if (iVar4 != 0) {
        return 0xffffffed;
      }
      cVar1 = nubia_get_gpio_status(uVar11);
      nubia_hw_exact_bss_base = nubia_hw_exact_bss_base + cVar1;
      cVar1 = nubia_get_gpio_status(uVar13);
      nubia_pcb_gpio2_v = nubia_pcb_gpio2_v + cVar1;
      cVar1 = nubia_get_gpio_status(pcb_gpio3);
      nubia_pcb_gpio3_v = nubia_pcb_gpio3_v + cVar1;
      if (debug_value == 1) {
        _printk(&DAT_00101b06,nubia_hw_exact_bss_base,nubia_pcb_gpio2_v,nubia_pcb_gpio3_v);
      }
      if (nubia_hw_exact_bss_base < 2) {
        if (nubia_hw_exact_bss_base == 0) {
          if (2 < nubia_pcb_gpio2_v) goto LAB_00100cf4;
          ppuVar10 = &PTR_nubia_hw_exact_rodata_base_00101530;
        }
        else {
          if ((nubia_hw_exact_bss_base != 1) || (2 < nubia_pcb_gpio2_v)) goto LAB_00100cf4;
          ppuVar10 = &PTR_DAT_00101560;
        }
LAB_00100cdc:
        puVar9 = ppuVar10[(char)nubia_pcb_gpio2_v];
LAB_00100ce0:
        _printk(&DAT_0010186c,puVar9 + 0xc);
      }
      else {
        if (nubia_hw_exact_bss_base == 2) {
          if (nubia_pcb_gpio2_v < 3) {
            ppuVar10 = &PTR_DAT_00101548;
            goto LAB_00100cdc;
          }
        }
        else if ((nubia_hw_exact_bss_base == 3) && (nubia_pcb_gpio2_v == 3)) {
          puVar9 = &UNK_001012f8;
          goto LAB_00100ce0;
        }
LAB_00100cf4:
        _printk(&DAT_00101a04);
      }
      cVar1 = nubia_get_gpio_status(iVar2);
      nubia_rf_gpio1_v = nubia_rf_gpio1_v + cVar1;
      cVar1 = nubia_get_gpio_status(iVar3);
      nubia_rf_gpio2_v = nubia_rf_gpio2_v + cVar1;
      if (debug_value == 1) {
        _printk(&DAT_00101c84,nubia_rf_gpio1_v,nubia_rf_gpio2_v);
      }
      return 0;
    }
    if (debug_value == 1) {
      puVar9 = &DAT_00101bf9;
      goto LAB_00100a8c;
    }
  }
  pcVar7 = "parse rf_gpio error!!\n";
LAB_00100a98:
  _dev_err(param_1 + 0x10,pcVar7);
  return 0xfffffdfb;
}



/* 00100d58 nubia_hw_ver_remove */

void nubia_hw_ver_remove(long param_1)

{
  long *plVar1;
  
  plVar1 = *(long **)(param_1 + 0xa8);
  if ((plVar1 != (long *)0x0) && (*plVar1 != 0)) {
    devm_pinctrl_put();
  }
  devm_kfree(param_1 + 0x10,plVar1);
  return;
}



/* 00100d9c nubia_get_gpio_status */

ulong nubia_get_gpio_status(undefined4 param_1)

{
  uint uVar1;
  ulong uVar2;
  
  gpio_to_desc();
  gpiod_direction_input();
  msleep(1);
  gpio_to_desc(param_1);
  uVar2 = gpiod_get_raw_value();
  if (debug_value == 1) {
    uVar1 = (uint)uVar2;
    uVar2 = uVar2 & 0xffffffff;
    _printk(&DAT_00101d7d,uVar1 & 0xff);
  }
  return uVar2;
}



/* 00100e10 nubia_get_pcb_table_item_by_gpio */

uint * nubia_get_pcb_table_item_by_gpio(uint *param_1,uint param_2)

{
  ulong uVar1;
  
  if ((param_1 != (uint *)0x0) && (param_2 != 0)) {
    uVar1 = (ulong)param_2;
    do {
      if ((*param_1 == (uint)nubia_hw_exact_bss_base) && (param_1[1] == (uint)nubia_pcb_gpio2_v)) {
        return param_1;
      }
      uVar1 = uVar1 - 1;
      param_1 = param_1 + 6;
    } while (uVar1 != 0);
  }
  return (uint *)0x0;
}



/* 00100e6c nubia_get_rf_band_by_gpio */

char * nubia_get_rf_band_by_gpio(long param_1,uint param_2)

{
  char *pcVar1;
  ulong uVar2;
  
  pcVar1 = "unknow";
  if ((param_1 != 0) && (param_2 != 0)) {
    uVar2 = (ulong)param_2;
    pcVar1 = (char *)(param_1 + 8);
    while ((*(uint *)(pcVar1 + -8) != (uint)nubia_rf_gpio1_v ||
           (*(uint *)(pcVar1 + -4) != (uint)nubia_rf_gpio2_v))) {
      uVar2 = uVar2 - 1;
      pcVar1 = pcVar1 + 0x14;
      if (uVar2 == 0) {
        return "unknow";
      }
    }
  }
  return pcVar1;
}



/* 00100ed8 nubia_gpio_ctrl1 */

undefined8 nubia_gpio_ctrl1(long param_1)

{
  undefined8 uVar1;
  undefined8 *puVar2;
  
  puVar2 = *(undefined8 **)(param_1 + 0xa8);
  if (puVar2 == (undefined8 *)0x0) {
    _dev_err(param_1 + 0x10,"Cannot get hw gpio info\n");
    uVar1 = 0xffffffea;
  }
  else if (puVar2[2] == 0) {
    _printk(&DAT_00101e82);
    uVar1 = 0xffffffea;
  }
  else {
    uVar1 = pinctrl_select_state(*puVar2);
  }
  return uVar1;
}



/* 00100f38 nubia_gpio_ctrl */

ulong nubia_gpio_ctrl(long param_1)

{
  int iVar1;
  ulong *puVar2;
  ulong uVar3;
  char *pcVar4;
  ulong *puVar5;
  
  puVar2 = (ulong *)devm_kmalloc(param_1 + 0x10,0x18,0xdc0);
  if (puVar2 == (ulong *)0x0) {
    uVar3 = 0xfffffff4;
  }
  else {
    uVar3 = devm_pinctrl_get(param_1 + 0x10);
    *puVar2 = uVar3;
    if ((uVar3 == 0) || (0xfffffffffffff000 < uVar3)) {
      _dev_err(param_1 + 0x10,"Cannot get hw gpio pinctrl\n");
      uVar3 = *puVar2;
    }
    else {
      uVar3 = pinctrl_lookup_state(uVar3,"pull_up_default");
      pcVar4 = "Cannot get hw gpio pullup pinctrl state\n";
      puVar5 = puVar2 + 1;
      *puVar5 = uVar3;
      if ((uVar3 != 0) && (uVar3 < 0xfffffffffffff001)) {
        uVar3 = pinctrl_lookup_state(*puVar2,"pull_down_default");
        pcVar4 = "Cannot get hw gpio pulldown pinctrl state\n";
        puVar5 = puVar2 + 2;
        *puVar5 = uVar3;
        if ((uVar3 != 0) && (uVar3 < 0xfffffffffffff001)) {
          iVar1 = pinctrl_select_state(*puVar2,puVar2[1]);
          if (iVar1 != 0) {
            _dev_err(param_1 + 0x10,"set hw gpio pullup state fail:\n");
          }
          uVar3 = 0;
          *(ulong **)(param_1 + 0xa8) = puVar2;
          goto LAB_0010102c;
        }
      }
      _dev_err(param_1 + 0x10,pcVar4);
      uVar3 = *puVar5;
      devm_pinctrl_put(*puVar2);
    }
    devm_kfree(param_1 + 0x10,puVar2);
  }
LAB_0010102c:
  return uVar3 & 0xffffffff;
}



/* 0010105c charger_100W */

bool charger_100W(void)

{
  return nubia_pcb_gpio3_v == '\0';
}



/* 00101074 charger_80W */

bool charger_80W(void)

{
  return nubia_pcb_gpio3_v == '\x02';
}



/* 0010108c debug_value_show */

long debug_value_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,5,"%d",(ulong)debug_value);
  return (long)iVar1;
}



/* 001010c8 debug_value_store */

undefined8 debug_value_store(undefined8 param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  sscanf(param_3,"%d",&debug_value);
  return param_4;
}



/* 0010110c nubia_hw_pcb_version_show */

long nubia_hw_pcb_version_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  if (param_3 != (char *)0x0) {
    nubia_get_hw_pcb_version(param_3);
    if (debug_value == 1) {
      _printk(&DAT_00101e37,param_3);
    }
    iVar1 = snprintf(param_3,0xc,"%s",param_3);
    return (long)iVar1;
  }
  return 0;
}



/* 00101188 nubia_charge_version_show */

long nubia_charge_version_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  if (param_3 != (char *)0x0) {
    if ((ulong)nubia_pcb_gpio3_v < 3) {
      *(undefined4 *)param_3 = *(undefined4 *)(charge_version + (ulong)nubia_pcb_gpio3_v * 4);
    }
    if (debug_value == 1) {
      _printk(&DAT_00101ea9,param_3);
    }
    iVar1 = snprintf(param_3,0xc,"%s",param_3);
    return (long)iVar1;
  }
  return 0;
}



/* 00102074 init_module */

int init_module(void)

{
  int iVar1;
  
  if (debug_value == 1) {
    _printk(&DAT_00101f7f);
  }
  __platform_driver_register(&hardware_ver_driver,&__this_module);
  hw_version_kobj = kobject_create_and_add("nubia_hw_version",0);
  if (hw_version_kobj == 0) {
    _printk(&DAT_00101e0d,"nubia_hw_version_init");
    iVar1 = -0xc;
  }
  else {
    iVar1 = sysfs_create_group(hw_version_kobj,&nubia_hw_version_attr_group);
    if (iVar1 != 0) {
      _printk(&DAT_00101fcf,"nubia_hw_version_init");
    }
    if (debug_value == 1) {
      _printk(&DAT_00101ed6);
    }
  }
  return iVar1;
}



/* 00102150 cleanup_module */

void cleanup_module(void)

{
  sysfs_remove_group(hw_version_kobj,&nubia_hw_version_attr_group);
  kobject_put(hw_version_kobj);
  return;
}



