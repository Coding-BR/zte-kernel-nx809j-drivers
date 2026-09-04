
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void syna_spi_probe(long param_1)

{
  int iVar1;
  int iVar2;
  long lVar3;
  ulong uVar4;
  undefined4 *puVar5;
  undefined *puVar6;
  uint uVar7;
  undefined8 uVar8;
  undefined8 local_80;
  undefined8 local_78;
  undefined4 local_70;
  long local_68;
  
  lVar3 = sp_el0;
  local_68 = *(long *)(lVar3 + 0x710);
  _printk(&DAT_0013ce32,"syna_spi_probe");
  uVar8 = *(undefined8 *)(param_1 + 0x2e8);
  local_70 = 0;
  local_80 = 0;
  local_78 = 0;
  DAT_00100cc8 = -1;
  lVar3 = of_find_property(uVar8,"synaptics,irq-gpio",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    DAT_00100cc8 = of_get_named_gpio(uVar8,"synaptics,irq-gpio",0);
  }
  DAT_00100cd0 = 0x2008;
  lVar3 = of_find_property(uVar8,"synaptics,irq-flags",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,irq-flags",&local_80,1,0);
    DAT_00100cd0 = (long)(int)local_80;
  }
  DAT_00100ccc = 0;
  lVar3 = of_find_property(uVar8,"synaptics,irq-on-state",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,irq-on-state",&DAT_00100ccc,1,0);
  }
  DAT_00100d70 = 1;
  lVar3 = of_find_property(uVar8,"synaptics,power-on-state",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,power-on-state",&DAT_00100d70,1,0);
  }
  DAT_00100d74 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,power-delay-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,power-delay-ms",&DAT_00100d74,1,0);
  }
  DAT_00100d20 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,vdd-control",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,vdd-control",&DAT_00100d20,1,0);
  }
  DAT_00100d28 = (char *)0x0;
  lVar3 = of_find_property(uVar8,"synaptics,vdd-name",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_string(uVar8,"synaptics,vdd-name",&DAT_00100d28);
  }
  DAT_00100d38 = -1;
  lVar3 = of_find_property(uVar8,"synaptics,vdd-gpio",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    DAT_00100d38 = of_get_named_gpio(uVar8,"synaptics,vdd-gpio",0);
  }
  DAT_00100d40 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,vdd-power-on-delay-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,vdd-power-on-delay-ms",&DAT_00100d40,1,0);
  }
  DAT_00100d44 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,vdd-power-off-delay-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,vdd-power-off-delay-ms",&DAT_00100d44,1,0);
  }
  DAT_00100d48 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,vio-control",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,vio-control",&DAT_00100d48,1,0);
  }
  DAT_00100d50 = (byte *)0x0;
  lVar3 = of_find_property(uVar8,"synaptics,avdd-name",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_string(uVar8,"synaptics,avdd-name",&DAT_00100d50);
  }
  DAT_00100d60 = -1;
  lVar3 = of_find_property(uVar8,"synaptics,vio-gpio",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    DAT_00100d60 = of_get_named_gpio(uVar8,"synaptics,vio-gpio",0);
  }
  DAT_00100d68 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,vio-power-on-delay-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,vio-power-on-delay-ms",&DAT_00100d68,1,0);
  }
  DAT_00100d6c = 0;
  lVar3 = of_find_property(uVar8,"synaptics,vio-power-off-delay-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,vio-power-off-delay-ms",&DAT_00100d6c,1,0);
  }
  DAT_00100d14 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,reset-on-state",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,reset-on-state",&DAT_00100d14,1,0);
  }
  DAT_00100d10 = -1;
  lVar3 = of_find_property(uVar8,"synaptics,reset-gpio",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    DAT_00100d10 = of_get_named_gpio(uVar8,"synaptics,reset-gpio",0);
  }
  lVar3 = of_find_property(uVar8,"synaptics,reset-active-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,reset-active-ms",&DAT_00100d1c,1,0);
  }
  lVar3 = of_find_property(uVar8,"synaptics,reset-delay-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,reset-delay-ms",&DAT_00100d18,1,0);
  }
  DAT_00100cc0 = -1;
  lVar3 = of_find_property(uVar8,"synaptics,io-switch-gpio",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    DAT_00100cc0 = of_get_named_gpio(uVar8,"synaptics,io-switch-gpio",0);
  }
  lVar3 = of_find_property(uVar8,"synaptics,io-switch-state",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,io-switch-state",&DAT_00100cc4,1,0);
  }
  DAT_00100c84 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,spi-byte-delay-us",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,spi-byte-delay-us",&DAT_00100c84,1,0);
  }
  DAT_00100c88 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,spi-block-delay-us",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,spi-block-delay-us",&DAT_00100c88,1,0);
  }
  DAT_00100c80 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,spi-mode",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,spi-mode",&DAT_00100c80,1,0);
  }
  lVar3 = of_find_property(uVar8,"synaptics,chunks",0);
  if (((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) &&
     (iVar1 = of_property_read_variable_u32_array(uVar8,"synaptics,chunks",&local_80,2,0),
     -1 < iVar1)) {
    DAT_00100c34 = (int)local_80;
    DAT_00100c38 = local_80._4_4_;
  }
  lVar3 = of_find_property(uVar8,"synaptics,flash-access-delay-us",0);
  if (((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) &&
     (iVar1 = of_property_read_variable_u32_array
                        (uVar8,"synaptics,flash-access-delay-usy",&local_80,3,0), -1 < iVar1)) {
    _DAT_00100d90 = local_80;
    _DAT_00100d98 = (undefined4)local_78;
  }
  lVar3 = of_find_property(uVar8,"synaptics,command-timeout-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,command-timeout-ms",&DAT_00100d78,1,0);
  }
  lVar3 = of_find_property(uVar8,"synaptics,command-polling-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,command-polling-ms",&DAT_00100d7c,1,0);
  }
  lVar3 = of_find_property(uVar8,"synaptics,command-turnaround-us",0);
  if (((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) &&
     (iVar1 = of_property_read_variable_u32_array
                        (uVar8,"synaptics,command-turnaround-us",&local_80,2,0), -1 < iVar1)) {
    _DAT_00100d80 = (int)local_80;
    _DAT_00100d84 = local_80._4_4_;
  }
  lVar3 = of_find_property(uVar8,"synaptics,command-retry-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,command-retry-ms",&DAT_00100d88,1,0);
  }
  lVar3 = of_find_property(uVar8,"synaptics,fw-switch-delay-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,fw-switch-delay-ms",&DAT_00100d8c,1,0);
  }
  _printk(&DAT_00136d49,"syna_spi_parse_dt",DAT_00100c34,DAT_00100c38,DAT_00100d1c,DAT_00100d18,
          DAT_00100d40,DAT_00100d44,DAT_00100d68,DAT_00100d6c);
  _printk(&DAT_0013a1c9,"syna_spi_parse_dt",_DAT_00100d78,_DAT_00100d80,_DAT_00100d84,_DAT_00100d88)
  ;
  _printk(&DAT_0013e15e,"syna_spi_parse_dt",_DAT_00100d90 & 0xffffffff,_DAT_00100d94,_DAT_00100d98,
          _DAT_00100d8c);
  syna_ts_check_dt(param_1);
  lVar3 = p_device;
  DAT_00100c28 = &syna_spi_hw_if;
  syna_spi_hw_if = param_1;
  *(long *)(p_device + 0x70) = param_1;
  *(long **)(lVar3 + 0xa0) = &syna_spi_hw_if;
  uVar7 = DAT_00100d48;
  if (((DAT_00100d48 == 0) && (uVar7 = 0, DAT_00100d50 != (byte *)0x0)) &&
     (uVar7 = (uint)*DAT_00100d50, *DAT_00100d50 != 0)) {
    uVar7 = 1;
    DAT_00100d48 = 1;
  }
  if (((DAT_00100d20 == 0) && (DAT_00100d28 != (char *)0x0)) && (*DAT_00100d28 != '\0')) {
    DAT_00100d20 = 1;
  }
  if (uVar7 == 1) {
    if ((DAT_00100d50 != (byte *)0x0) && (*DAT_00100d50 != 0)) {
      if (*DAT_00100d50 == 0) {
        uVar4 = 0;
      }
      else {
        uVar4 = devm_regulator_get(*(undefined8 *)(lVar3 + 0x70));
        if (0xfffffffffffff000 < uVar4) {
          _printk(&DAT_0013d43c,"syna_spi_get_regulator");
          puVar6 = &DAT_00138f8b;
          DAT_00100d58 = uVar4;
          goto LAB_001192b0;
        }
      }
LAB_00118fc8:
      DAT_00100d58 = uVar4;
      if (DAT_00100d20 == 1) {
        if ((DAT_00100d28 == (char *)0x0) || (*DAT_00100d28 == '\0')) {
          puVar6 = &DAT_00139b72;
          goto LAB_001192b0;
        }
        if (*DAT_00100d28 == '\0') {
          uVar4 = 0;
        }
        else {
          uVar4 = devm_regulator_get(*(undefined8 *)(p_device + 0x70));
          if (0xfffffffffffff000 < uVar4) {
            _printk(&DAT_0013d43c,"syna_spi_get_regulator");
            puVar6 = &DAT_00134c03;
            DAT_00100d30 = uVar4;
            goto LAB_001192b0;
          }
        }
      }
      else {
        uVar4 = DAT_00100d30;
        if (((0 < DAT_00100d20) && (0 < DAT_00100d38)) &&
           (iVar1 = syna_spi_get_gpio(DAT_00100d38,1,DAT_00100d70 == 0,
                                      syna_spi_request_power_resources_str_avdd_gpio),
           uVar4 = DAT_00100d30, iVar1 < 0)) {
          puVar6 = &DAT_00135930;
          iVar2 = DAT_00100d38;
          goto LAB_00119078;
        }
      }
      DAT_00100d30 = uVar4;
      lVar3 = syna_spi_hw_if;
      if (syna_spi_hw_if == 0) {
        iVar1 = -0x16;
LAB_001195a4:
        _printk(&DAT_00137c09,"syna_spi_probe");
        if (DAT_00100d48 == 1) {
          if (DAT_00100d58 != 0) {
            devm_regulator_put();
          }
        }
        else if ((0 < (int)DAT_00100d48) && (0 < DAT_00100d60)) {
          gpio_free();
        }
        if (DAT_00100d20 == 1) {
          if (DAT_00100d30 != 0) {
            devm_regulator_put();
          }
          goto LAB_00119630;
        }
        if (DAT_00100d20 < 1) goto LAB_00119630;
        iVar2 = 0x100000;
      }
      else {
        __mutex_init(&DAT_00100c90,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
        uVar7 = DAT_00100c80;
        *(undefined1 *)(lVar3 + 0x3ac) = 8;
        if (uVar7 < 4) {
          *(uint *)(lVar3 + 0x3b0) = uVar7;
        }
        iVar1 = spi_setup(lVar3);
        if (iVar1 < 0) {
          _printk(&DAT_00137c8c,"syna_spi_request_bus_resources");
          goto LAB_001195a4;
        }
        puVar5 = (undefined4 *)__kmalloc_cache_noprof(_remove_proc_entry,0xdc0,8);
        iVar1 = DAT_00100cc0;
        if (puVar5 == (undefined4 *)0x0) {
          _printk(&DAT_001383f7,"syna_spi_request_bus_resources");
          iVar1 = -0xc;
          goto LAB_001195a4;
        }
        *puVar5 = 0x3fe;
        *(undefined4 **)(lVar3 + 0x3c0) = puVar5;
        if ((0 < iVar1) &&
           (iVar1 = syna_spi_get_gpio(iVar1,1,DAT_00100cc4,
                                      syna_spi_request_bus_resources_str_switch_gpio), iVar1 < 0)) {
          _printk(&DAT_0013597e,"syna_spi_request_bus_resources",DAT_00100cc0);
          goto LAB_001195a4;
        }
        if ((DAT_00100d10 < 1) ||
           (iVar1 = syna_spi_get_gpio(DAT_00100d10,1,DAT_00100d14,
                                      syna_spi_request_reset_resources_str_rst_gpio), -1 < iVar1)) {
          __mutex_init(&DAT_00100ce0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
          if (DAT_00100cc8 < 1) {
            iVar1 = 0;
            goto LAB_00119630;
          }
          iVar2 = syna_spi_get_gpio(DAT_00100cc8,0,0,syna_spi_request_attn_resources_str_attn_gpio);
          iVar1 = 0;
          if (-1 < iVar2) goto LAB_00119630;
          _printk(&DAT_00139bb5,"syna_spi_request_attn_resources",DAT_00100cc8);
          _printk(&DAT_0013e10b,"syna_spi_probe");
          if (0 < DAT_00100d10) {
            gpio_free();
          }
          if (0 < DAT_00100cc0) {
            gpio_free();
          }
          if (rx_buf != 0) {
            if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else {
              devm_kfree();
            }
            rx_buf = 0;
          }
          if (tx_buf != 0) {
            if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else {
              devm_kfree();
            }
            tx_buf = 0;
          }
          if (xfer != 0) {
            if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else {
              devm_kfree();
            }
            xfer = 0;
          }
          if (DAT_00100d48 == 1) {
            if (DAT_00100d58 != 0) {
              devm_regulator_put();
            }
          }
          else if ((0 < (int)DAT_00100d48) && (0 < DAT_00100d60)) {
            gpio_free(iVar2);
          }
          iVar1 = iVar2;
          if (DAT_00100d20 == 1) {
            if (DAT_00100d30 != 0) {
              devm_regulator_put();
            }
            goto LAB_00119630;
          }
        }
        else {
          _printk(&DAT_00133a03,"syna_spi_request_reset_resources",DAT_00100d10);
          _printk(&DAT_0013b852,"syna_spi_probe");
          if (0 < DAT_00100cc0) {
            gpio_free();
          }
          if (rx_buf != 0) {
            if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else {
              devm_kfree();
            }
            rx_buf = 0;
          }
          if (tx_buf != 0) {
            if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else {
              devm_kfree();
            }
            tx_buf = 0;
          }
          if (xfer != 0) {
            if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else {
              devm_kfree();
            }
            xfer = 0;
          }
          if (DAT_00100d48 == 1) {
            if (DAT_00100d58 != 0) {
              devm_regulator_put(DAT_00100d58);
            }
          }
          else if ((0 < (int)DAT_00100d48) && (0 < DAT_00100d60)) {
            gpio_free(DAT_00100d60);
          }
          iVar2 = DAT_00100d38;
          if (DAT_00100d20 == 1) {
            if (DAT_00100d30 != 0) {
              devm_regulator_put(DAT_00100d30);
            }
            goto LAB_00119630;
          }
        }
        if (DAT_00100d20 < 1) goto LAB_00119630;
      }
      if (0 < DAT_00100d38) {
        gpio_free(iVar2,DAT_00100d38);
      }
      goto LAB_00119630;
    }
    puVar6 = &DAT_001340df;
LAB_001192b0:
    _printk(puVar6,"syna_spi_request_power_resources");
    iVar1 = -6;
  }
  else {
    uVar4 = DAT_00100d58;
    if ((((int)uVar7 < 1) || (DAT_00100d60 < 1)) ||
       (iVar1 = syna_spi_get_gpio(DAT_00100d60,1,DAT_00100d70 == 0,
                                  syna_spi_request_power_resources_str_vdd_gpio),
       uVar4 = DAT_00100d58, -1 < iVar1)) goto LAB_00118fc8;
    puVar6 = &DAT_001383c8;
    iVar2 = DAT_00100d60;
LAB_00119078:
    _printk(puVar6,"syna_spi_request_power_resources",iVar2);
  }
  _printk(&DAT_0013b81f,"syna_spi_probe");
LAB_00119630:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar1);
}

