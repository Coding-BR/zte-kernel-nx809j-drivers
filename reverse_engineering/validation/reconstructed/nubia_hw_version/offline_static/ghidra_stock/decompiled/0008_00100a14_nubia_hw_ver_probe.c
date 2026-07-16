
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
    _printk(&DAT_00101b70);
  }
  if (param_1 == 0) {
    _printk(&DAT_00101870);
    return 0xfffffdfb;
  }
  uVar5 = of_get_named_gpio(uVar12,"qcom,pcb-gpio1",0);
  if ((int)uVar5 < 0) {
    if (debug_value == 1) {
      _printk(&DAT_00101897);
    }
    pcVar7 = "parse pcb_gpio error!!\n";
    goto LAB_00100d48;
  }
  uVar11 = uVar5 & 0xffffffff;
  iVar2 = gpio_request(uVar5,"NUBIA_HW_PCB_GPIO1");
  if (iVar2 < 0) {
    _printk("Failed to request GPIO:%d, ERRNO:%d",uVar11,iVar2);
  }
  uVar5 = of_get_named_gpio(uVar12,"qcom,pcb-gpio2",0);
  if ((int)uVar5 < 0) {
    if (debug_value == 1) {
      _printk(&DAT_0010178b);
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
        _printk(&DAT_0010171f);
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
      puVar9 = &DAT_00101ba9;
LAB_00100d3c:
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
        _printk(&DAT_00101bf9,cVar1);
      }
      nubia_pcb_gpio1_v = cVar1;
      gpio_to_desc(uVar13);
      gpiod_direction_input();
      msleep(1);
      gpio_to_desc(uVar13);
      cVar1 = gpiod_get_raw_value();
      if (debug_value == 1) {
        _printk(&DAT_00101bf9,cVar1);
      }
      iVar4 = pcb_gpio3;
      nubia_pcb_gpio2_v = cVar1;
      gpio_to_desc(pcb_gpio3);
      gpiod_direction_input();
      msleep(1);
      gpio_to_desc(iVar4);
      cVar1 = gpiod_get_raw_value();
      if (debug_value == 1) {
        _printk(&DAT_00101bf9,cVar1);
      }
      nubia_pcb_gpio3_v = cVar1;
      gpio_to_desc(iVar2);
      gpiod_direction_input();
      msleep(1);
      gpio_to_desc(iVar2);
      cVar1 = gpiod_get_raw_value();
      if (debug_value == 1) {
        _printk(&DAT_00101bf9,cVar1);
      }
      nubia_rf_gpio1_v = cVar1;
      gpio_to_desc(iVar3);
      gpiod_direction_input();
      msleep(1);
      gpio_to_desc(iVar3);
      cVar1 = gpiod_get_raw_value();
      if (debug_value == 1) {
        _printk(&DAT_00101bf9,cVar1);
      }
      nubia_rf_gpio2_v = cVar1;
      msleep(0x14);
      puVar8 = *(undefined8 **)(param_1 + 0xa8);
      if (puVar8 == (undefined8 *)0x0) {
        _dev_err(param_1 + 0x10,"Cannot get hw gpio info\n");
        return 0xffffffed;
      }
      if (puVar8[2] == 0) {
        _printk(&DAT_00101849);
        return 0xffffffed;
      }
      iVar4 = pinctrl_select_state(*puVar8);
      if (iVar4 != 0) {
        return 0xffffffed;
      }
      cVar1 = nubia_get_gpio_status(uVar11);
      nubia_pcb_gpio1_v = nubia_pcb_gpio1_v + cVar1;
      cVar1 = nubia_get_gpio_status(uVar13);
      nubia_pcb_gpio2_v = nubia_pcb_gpio2_v + cVar1;
      cVar1 = nubia_get_gpio_status(pcb_gpio3);
      nubia_pcb_gpio3_v = nubia_pcb_gpio3_v + cVar1;
      if (debug_value == 1) {
        _printk(&DAT_00101982,nubia_pcb_gpio1_v,nubia_pcb_gpio2_v,nubia_pcb_gpio3_v);
      }
      if (nubia_pcb_gpio1_v < 2) {
        if (nubia_pcb_gpio1_v == 0) {
          if (2 < nubia_pcb_gpio2_v) goto LAB_00100fa4;
          ppuVar10 = &PTR_hw_pcb_gpio_map_00101f38;
        }
        else {
          if ((nubia_pcb_gpio1_v != 1) || (2 < nubia_pcb_gpio2_v)) goto LAB_00100fa4;
          ppuVar10 = &PTR_DAT_00101f68;
        }
LAB_00100f8c:
        puVar9 = ppuVar10[(char)nubia_pcb_gpio2_v];
LAB_00100f90:
        _printk(&DAT_001016e8,puVar9 + 0xc);
      }
      else {
        if (nubia_pcb_gpio1_v == 2) {
          if (nubia_pcb_gpio2_v < 3) {
            ppuVar10 = &PTR_DAT_00101f50;
            goto LAB_00100f8c;
          }
        }
        else if ((nubia_pcb_gpio1_v == 3) && (nubia_pcb_gpio2_v == 3)) {
          puVar9 = &UNK_00101d00;
          goto LAB_00100f90;
        }
LAB_00100fa4:
        _printk(&DAT_00101880);
      }
      cVar1 = nubia_get_gpio_status(iVar2);
      nubia_rf_gpio1_v = nubia_rf_gpio1_v + cVar1;
      cVar1 = nubia_get_gpio_status(iVar3);
      nubia_rf_gpio2_v = nubia_rf_gpio2_v + cVar1;
      if (debug_value == 1) {
        _printk(&DAT_00101b00,nubia_rf_gpio1_v,nubia_rf_gpio2_v);
      }
      return 0;
    }
    if (debug_value == 1) {
      puVar9 = &DAT_00101a75;
      goto LAB_00100d3c;
    }
  }
  pcVar7 = "parse rf_gpio error!!\n";
LAB_00100d48:
  _dev_err(param_1 + 0x10,pcVar7);
  return 0xfffffdfb;
}

