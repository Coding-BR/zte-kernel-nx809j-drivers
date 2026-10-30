
ulong aw9620x_i2c_probe(long param_1)

{
  long lVar1;
  char cVar2;
  int iVar3;
  uint uVar4;
  ulong uVar5;
  long lVar6;
  long lVar7;
  undefined *puVar8;
  undefined8 uVar9;
  char *pcVar10;
  undefined4 uVar11;
  undefined1 uVar12;
  code *pcVar13;
  undefined8 uVar14;
  byte local_64 [4];
  undefined8 local_60;
  undefined8 uStack_58;
  undefined4 local_50;
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  local_64[0] = 0;
  _printk(&DAT_0010dbe8,"aw9620x_i2c_probe");
  pcVar13 = *(code **)(*(long *)(*(long *)(param_1 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar13 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar13 = (code *)SoftwareBreakpoint(0x8228,0x107570);
    (*pcVar13)();
  }
  uVar5 = (*pcVar13)();
  lVar1 = param_1 + 0x20;
  if ((uVar5 & 1) == 0) {
    _dev_printk(&DAT_0010c99c,lVar1,"[%s:%d] check_functionality failed\n","aw9620x_i2c_probe",
                0x10bb);
    uVar5 = 0xfffffffb;
    goto LAB_0010770c;
  }
  lVar6 = devm_kmalloc(lVar1,0x340,0xdc0);
  if (lVar6 == 0) {
    _dev_printk(&DAT_0010c99c,lVar1,"[%s:%d] failed to malloc memory!\n","aw9620x_i2c_probe",0x10c1)
    ;
    uVar5 = 0xffffffff;
    goto LAB_0010770c;
  }
  *(long *)(lVar6 + 0x28) = param_1;
  *(long *)(lVar6 + 0x30) = lVar1;
  *(long *)(param_1 + 0xb8) = lVar6;
  __mutex_init(&DAT_0010e7c0,"&aw_lock",&DAT_0010e7f0);
  __mutex_init(&DAT_0010e7f8,"&aw_update_lock",&DAT_0010e7f1);
  uVar14 = *(undefined8 *)(param_1 + 0x308);
  iVar3 = of_property_read_variable_u32_array(uVar14,"sar-num",lVar6 + 8,1,0);
  uVar9 = *(undefined8 *)(lVar6 + 0x30);
  if (iVar3 < 0) {
    pcVar10 = "[%s:%d] multiple sar failed!\n";
    uVar14 = 0x2b9;
  }
  else {
    _dev_printk(&DAT_0010d22b,uVar9,"[%s:%d] sar num = %d\n","aw9620x_parse_dt",700,
                *(undefined4 *)(lVar6 + 8));
    iVar3 = of_get_named_gpio(uVar14,"irq-gpio",0);
    *(int *)(lVar6 + 0xc) = iVar3;
    if (iVar3 < 0) {
      uVar9 = *(undefined8 *)(lVar6 + 0x30);
      *(undefined4 *)(lVar6 + 0xc) = 0xffffffff;
      pcVar10 = "[%s:%d] no irq gpio provided.\n";
      uVar14 = 0x2c1;
    }
    else {
      _dev_printk(&DAT_0010d22b,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] irq gpio provided ok.\n",
                  "aw9620x_parse_dt",0x2c4);
      iVar3 = of_property_read_variable_u32_array(uVar14,"channel_use_flag",lVar6 + 0x18,1,0);
      uVar9 = *(undefined8 *)(lVar6 + 0x30);
      if (-1 < iVar3) {
        _dev_printk(&DAT_0010d22b,uVar9,"[%s:%d] channel_use_flag = 0x%x\n","aw9620x_parse_dt",0x2cb
                    ,*(undefined4 *)(lVar6 + 0x18));
        lVar7 = of_find_property(uVar14,"aw9620x,using-arr-laod-reg",0);
        *(bool *)lVar6 = lVar7 != 0;
        _dev_printk(&DAT_0010d22b,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] firmware_flag = <%d>\n",
                    "aw9620x_parse_dt",0x2ce);
        _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] %s enter\n",
                    "aw9620x_pinctrl_init",0x1068,"aw9620x_pinctrl_init");
        uVar5 = devm_pinctrl_get(*(undefined8 *)(lVar6 + 0x30));
        *(ulong *)(lVar6 + 800) = uVar5;
        if ((uVar5 == 0) || (0xfffffffffffff000 < uVar5)) {
          _dev_printk(&DAT_0010c99c,*(undefined8 *)(lVar6 + 0x30),
                      "[%s:%d] %s Target does not use pinctrl %d\n\n","aw9620x_pinctrl_init",0x106d,
                      "aw9620x_pinctrl_init");
LAB_00107acc:
          *(undefined8 *)(lVar6 + 800) = 0;
        }
        else {
          if (*(int *)(lVar6 + 8) == 1) {
            uVar5 = pinctrl_lookup_state(uVar5,"aw_int_default_sar1");
            *(ulong *)(lVar6 + 0x338) = uVar5;
            if ((uVar5 == 0) || (0xfffffffffffff000 < uVar5)) {
              uVar9 = *(undefined8 *)(lVar6 + 0x30);
              uVar11 = *(undefined4 *)(lVar6 + 8);
              pcVar10 = "[%s:%d] %s Can not lookup aw_int_default_sar%d pinstate %d\n\n";
              uVar14 = 0x108f;
            }
            else {
              uVar5 = pinctrl_lookup_state(*(undefined8 *)(lVar6 + 800),"aw_int_active_sar1");
              *(ulong *)(lVar6 + 0x328) = uVar5;
              if ((uVar5 == 0) || (0xfffffffffffff000 < uVar5)) {
                uVar9 = *(undefined8 *)(lVar6 + 0x30);
                uVar11 = *(undefined4 *)(lVar6 + 8);
                pcVar10 = "[%s:%d] %s Can not lookup aw_int_active_sar%d pinstate %d\n\n";
                uVar14 = 0x1098;
              }
              else {
                uVar5 = pinctrl_lookup_state(*(undefined8 *)(lVar6 + 800),"aw_int_suspend_sar1");
                *(ulong *)(lVar6 + 0x330) = uVar5;
                if ((uVar5 != 0) && (uVar5 < 0xfffffffffffff001)) goto LAB_00107990;
                uVar9 = *(undefined8 *)(lVar6 + 0x30);
                uVar11 = *(undefined4 *)(lVar6 + 8);
                pcVar10 = "[%s:%d] %s Can not lookup aw_int_suspend_sar%d pinstate %d\n\n";
                uVar14 = 0x10a0;
              }
            }
LAB_00107abc:
            _dev_printk(&DAT_0010c99c,uVar9,pcVar10,"aw9620x_pinctrl_init",uVar14,
                        "aw9620x_pinctrl_init",uVar11);
            devm_pinctrl_put(*(undefined8 *)(lVar6 + 800));
            goto LAB_00107acc;
          }
          if (*(int *)(lVar6 + 8) == 0) {
            uVar5 = pinctrl_lookup_state(uVar5,"aw_int_default_sar0");
            *(ulong *)(lVar6 + 0x338) = uVar5;
            if ((uVar5 == 0) || (0xfffffffffffff000 < uVar5)) {
              uVar9 = *(undefined8 *)(lVar6 + 0x30);
              uVar11 = *(undefined4 *)(lVar6 + 8);
              pcVar10 = "[%s:%d] %s Can not lookup aw_int_default_sar%d pinstate %d\n\n";
              uVar14 = 0x1075;
            }
            else {
              uVar5 = pinctrl_lookup_state(*(undefined8 *)(lVar6 + 800),"aw_int_active_sar0");
              *(ulong *)(lVar6 + 0x328) = uVar5;
              if ((uVar5 == 0) || (0xfffffffffffff000 < uVar5)) {
                uVar9 = *(undefined8 *)(lVar6 + 0x30);
                uVar11 = *(undefined4 *)(lVar6 + 8);
                pcVar10 = "[%s:%d] %s Can not lookup aw_int_active_sar%d pinstate %d\n\n";
                uVar14 = 0x107e;
              }
              else {
                uVar5 = pinctrl_lookup_state(*(undefined8 *)(lVar6 + 800),"aw_int_suspend_sar0");
                *(ulong *)(lVar6 + 0x330) = uVar5;
                if ((uVar5 != 0) && (uVar5 < 0xfffffffffffff001)) goto LAB_00107990;
                uVar9 = *(undefined8 *)(lVar6 + 0x30);
                uVar11 = *(undefined4 *)(lVar6 + 8);
                pcVar10 = "[%s:%d] %s Can not lookup aw_int_suspend_sar%d pinstate %d\n\n";
                uVar14 = 0x1086;
              }
            }
            goto LAB_00107abc;
          }
LAB_00107990:
          if (*(long *)(lVar6 + 800) != 0) {
            iVar3 = pinctrl_select_state(*(long *)(lVar6 + 800),*(undefined8 *)(lVar6 + 0x328));
            if (iVar3 < 0) {
              puVar8 = &DAT_0010c99c;
              pcVar10 = "[%s:%d] %s: Failed to select aw_int_active_sar%d pinstate %d\n\n";
              uVar9 = 0x10d9;
            }
            else {
              puVar8 = &DAT_0010d797;
              pcVar10 = "[%s:%d] %s: Successed to select aw_int_active_sar%d pinstate %d\n\n";
              uVar9 = 0x10db;
            }
            _dev_printk(puVar8,*(undefined8 *)(lVar6 + 0x30),pcVar10,"aw9620x_i2c_probe",uVar9,
                        "aw9620x_i2c_probe",*(undefined4 *)(lVar6 + 8),iVar3);
          }
        }
        local_50 = 0;
        local_60 = 0;
        uStack_58 = 0;
        _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] aw9620x power init enter\n"
                    ,"aw9620x_power_init",0x2d9);
        snprintf((char *)&local_60,0x14,"vcc%u",(ulong)*(uint *)(lVar6 + 8));
        _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] vcc_name = %s\n",
                    "aw9620x_power_init",0x2dc,&local_60);
        uVar5 = regulator_get(*(undefined8 *)(lVar6 + 0x30),&local_60);
        *(ulong *)(lVar6 + 0x1f8) = uVar5;
        if (uVar5 < 0xfffffffffffff001) {
          iVar3 = regulator_count_voltages(uVar5);
          if ((iVar3 < 1) ||
             (uVar4 = regulator_set_voltage(*(undefined8 *)(lVar6 + 0x1f8),1700000,3600000),
             uVar4 == 0)) goto LAB_00107bb4;
          uVar5 = (ulong)uVar4;
          _dev_printk(&DAT_0010c99c,*(undefined8 *)(lVar6 + 0x30),
                      "[%s:%d] regulator set vol failed rc = %d\n","aw9620x_power_init",0x2ea,uVar5)
          ;
          regulator_put(*(undefined8 *)(lVar6 + 0x1f8));
LAB_00108048:
          _dev_printk(&DAT_0010c99c,lVar1,"[%s:%d] aw9620x power init failed\n","aw9620x_i2c_probe",
                      0x10e3);
          cVar2 = *(char *)(lVar6 + 1);
        }
        else {
          _dev_printk(&DAT_0010c99c,*(undefined8 *)(lVar6 + 0x30),
                      "[%s:%d] regulator get failed vcc rc = %d\n","aw9620x_power_init",0x2e1,
                      uVar5 & 0xffffffff);
          if ((int)uVar5 != 0) goto LAB_00108048;
LAB_00107bb4:
          _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),
                      "[%s:%d] aw9620x power enable enter\n","aw9620x_power_enable",0x2fa);
          iVar3 = regulator_enable(*(undefined8 *)(lVar6 + 0x1f8));
          if (iVar3 == 0) {
            *(undefined1 *)(lVar6 + 1) = 1;
          }
          else {
            _dev_printk(&DAT_0010c99c,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] regulator_enable vol failed rc = %d\n","aw9620x_power_enable",0x300
                        ,iVar3);
          }
          _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] enter\n",
                      "regulator_is_get_voltage",0x313);
          iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
          _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),
                      "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,iVar3)
          ;
          if (iVar3 < 1600000) {
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_00107f08;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_00107f08;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_00107f08;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_00107f08;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_00107f08;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_00107f08;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_00107f08;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_00107f08;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_00107f08;
            __const_udelay(0x418958);
            _dev_printk(&DAT_0010c99c,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] get_voltage failed\n",
                        "aw9620x_i2c_probe",0x10ea);
            uVar5 = 0xffffffff;
            cVar2 = *(char *)(lVar6 + 1);
          }
          else {
LAB_00107f08:
            msleep(0x19);
            puVar8 = &DAT_0010e0ce;
            if (*(int *)(lVar6 + 8) != 0) {
              puVar8 = &DAT_0010b716;
            }
            *(undefined8 *)(lVar6 + 0x38) = puVar8;
            *(code **)(lVar6 + 0x58) = aw9620x_set_brightness;
            uVar4 = devm_led_classdev_register_ext
                              (*(undefined8 *)(lVar6 + 0x30),(undefined8 *)(lVar6 + 0x38),0);
            if ((int)uVar4 < 0) {
              uVar5 = (ulong)uVar4;
              _dev_err(*(undefined8 *)(lVar6 + 0x30),"unable to register led ret=%d\n",uVar5);
              goto LAB_0010770c;
            }
            uVar4 = sysfs_create_group(*(undefined8 *)(lVar6 + 0x88),&DAT_00100170);
            if ((int)uVar4 < 0) {
              uVar5 = (ulong)uVar4;
              _dev_printk(&DAT_0010c99c,*(undefined8 *)(lVar6 + 0x30),
                          "[%s:%d] error creating sysfs attr files\n","aw9620x_i2c_probe",0x1104);
            }
            else {
              iVar3 = aw9620x_input_init(lVar6,local_64);
              if (iVar3 == 0) {
                iVar3 = aw9620x_irq_init(lVar6);
                if (iVar3 != 0) {
                  uVar9 = *(undefined8 *)(lVar6 + 0x30);
                  pcVar10 = "[%s:%d] error irq init\n";
                  uVar14 = 0x1112;
                  goto LAB_001080dc;
                }
                iVar3 = aw9620x_old_boot_nvr_modify(lVar6);
                uVar9 = *(undefined8 *)(lVar6 + 0x30);
                if (iVar3 == -1) {
                  pcVar10 = "[%s:%d] i2c err!\n";
                  uVar14 = 0x111e;
                  goto LAB_001080dc;
                }
                if (iVar3 == 0) {
                  _dev_printk(&DAT_0010c99c,uVar9,"[%s:%d] old boot\n","aw9620x_i2c_probe",0x1119);
                  *(undefined1 *)(lVar6 + 6) = 5;
                  *(undefined4 *)(lVar6 + 0x20) = 1;
LAB_00108258:
                  aw9620x_update(lVar6);
                  uVar5 = 0;
                  *(undefined1 *)(lVar6 + 0x2a0) = 2;
                  goto LAB_0010770c;
                }
                _dev_printk(&DAT_0010c99c,uVar9,"[%s:%d] new boot\n","aw9620x_i2c_probe",0x1121);
                iVar3 = aw9620x_read_chipid(lVar6);
                uVar9 = *(undefined8 *)(lVar6 + 0x30);
                if (iVar3 == -2) {
                  _dev_printk(&DAT_0010c99c,uVar9,"[%s:%d] read chipid failed, ret=%d, \n",
                              "aw9620x_i2c_probe",0x112a,0xfffffffe);
                  uVar12 = 2;
LAB_00108254:
                  *(undefined1 *)(lVar6 + 6) = uVar12;
                  goto LAB_00108258;
                }
                if (iVar3 != -1) {
                  _dev_printk(&DAT_0010c99c,uVar9,"[%s:%d] read chipid ok!\n","aw9620x_i2c_probe",
                              0x112e);
                  iVar3 = aw9620x_recover_fun(lVar6,1);
                  if (iVar3 == 0) {
                    iVar3 = aw9620x_soft_reset(lVar6);
                    if (iVar3 != 0) {
                      uVar9 = *(undefined8 *)(lVar6 + 0x30);
                      pcVar10 = "[%s:%d] soft reset failed, ret=%d\n";
                      uVar14 = 0x113b;
                      goto LAB_00108218;
                    }
                    iVar3 = aw9620x_read_init_over_irq(lVar6);
                    uVar9 = *(undefined8 *)(lVar6 + 0x30);
                    if (iVar3 == -3) {
                      _dev_printk(&DAT_0010c99c,uVar9,"[%s:%d] _read_init_over_irq, ret=%d, \n",
                                  "aw9620x_i2c_probe",0x1145,0xfffffffd);
                      aw9620x_get_err_info(lVar6);
                      uVar12 = 3;
                      goto LAB_00108254;
                    }
                    if (iVar3 != -1) {
                      _dev_printk(&DAT_0010c99c,uVar9,"[%s:%d] read_init_over_irq ok!\n",
                                  "aw9620x_i2c_probe",0x114a);
                      *(undefined1 *)(lVar6 + 6) = 0;
                      goto LAB_00108258;
                    }
                    pcVar10 = "[%s:%d] read chipid failed\n";
                    uVar14 = 0x1142;
                  }
                  else {
                    uVar9 = *(undefined8 *)(lVar6 + 0x30);
                    pcVar10 = "[%s:%d] recover_fun err\n";
                    uVar14 = 0x1134;
                  }
                  goto LAB_001080dc;
                }
                pcVar10 = "[%s:%d] read chipid failed, ret=%d, \n";
                uVar14 = 0x1127;
LAB_00108218:
                _dev_printk(&DAT_0010c99c,uVar9,pcVar10,"aw9620x_i2c_probe",uVar14,0xffffffff);
              }
              else {
                uVar9 = *(undefined8 *)(lVar6 + 0x30);
                pcVar10 = "[%s:%d] error inputs init\n";
                uVar14 = 0x110c;
LAB_001080dc:
                _dev_printk(&DAT_0010c99c,uVar9,pcVar10,"aw9620x_i2c_probe",uVar14);
              }
              uVar5 = (ulong)local_64[0];
              if (uVar5 != 0) {
                lVar7 = 0;
                do {
                  input_unregister_device(*(undefined8 *)(*(long *)(lVar6 + 0x200) + lVar7 + 8));
                  lVar7 = lVar7 + 0x30;
                } while (uVar5 * 0x30 - lVar7 != 0);
              }
              lVar7 = *(long *)(lVar6 + 0x200);
              if (*(long *)(lVar7 + 8) != 0) {
                input_free_device();
                lVar7 = *(long *)(lVar6 + 0x200);
              }
              if (*(long *)(lVar7 + 0x38) != 0) {
                input_free_device();
                lVar7 = *(long *)(lVar6 + 0x200);
              }
              if (*(long *)(lVar7 + 0x68) != 0) {
                input_free_device();
                lVar7 = *(long *)(lVar6 + 0x200);
              }
              if (*(long *)(lVar7 + 0x98) != 0) {
                input_free_device();
                lVar7 = *(long *)(lVar6 + 0x200);
              }
              if (*(long *)(lVar7 + 200) != 0) {
                input_free_device();
                lVar7 = *(long *)(lVar6 + 0x200);
              }
              if (*(long *)(lVar7 + 0xf8) != 0) {
                input_free_device();
                lVar7 = *(long *)(lVar6 + 0x200);
              }
              if (*(long *)(lVar7 + 0x128) != 0) {
                input_free_device();
                lVar7 = *(long *)(lVar6 + 0x200);
              }
              if (*(long *)(lVar7 + 0x158) != 0) {
                input_free_device();
              }
              uVar5 = 0xffffffff;
            }
            sysfs_remove_group(lVar1,&DAT_00100170);
            cVar2 = *(char *)(lVar6 + 1);
          }
        }
        if (cVar2 != '\0') {
          regulator_disable(*(undefined8 *)(lVar6 + 0x1f8));
          regulator_put(*(undefined8 *)(lVar6 + 0x1f8));
        }
        goto LAB_0010770c;
      }
      pcVar10 = "[%s:%d] channel_use_flag failed!\n";
      uVar14 = 0x2c8;
    }
  }
  _dev_printk(&DAT_0010c99c,uVar9,pcVar10,"aw9620x_parse_dt",uVar14);
  uVar5 = 0xffffffff;
  _dev_printk(&DAT_0010c99c,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] irq gpio error!, ret = %d\n",
              "aw9620x_i2c_probe",0x10cf,0xffffffff);
LAB_0010770c:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return uVar5 & 0xffffffff;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

