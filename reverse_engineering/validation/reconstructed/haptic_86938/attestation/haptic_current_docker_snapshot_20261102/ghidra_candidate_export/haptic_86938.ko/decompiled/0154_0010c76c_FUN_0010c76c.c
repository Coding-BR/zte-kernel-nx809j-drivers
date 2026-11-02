
void FUN_0010c76c(long param_1,long param_2)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  undefined4 uVar5;
  ulong uVar6;
  long lVar7;
  undefined8 uVar8;
  undefined *puVar9;
  code *pcVar10;
  long lVar11;
  long lVar12;
  long lVar13;
  uint uVar14;
  long unaff_x29;
  undefined2 uStack0000000000000008;
  undefined4 uStack000000000000000a;
  undefined2 uStack000000000000000e;
  
  *(undefined8 *)(unaff_x29 + -8) = *(undefined8 *)(param_1 + 0x710);
  lVar13 = *(long *)(param_2 + 0x308);
  _printk(&DAT_00112956);
  pcVar10 = *(code **)(*(long *)(*(long *)(param_2 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar10 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x10c7ac);
    (*pcVar10)();
  }
  uVar6 = (*pcVar10)();
  if ((uVar6 & 1) == 0) {
    _printk(&DAT_001134e2);
    iVar4 = -5;
    goto LAB_0010c7d0;
  }
  lVar11 = param_2 + 0x20;
  lVar7 = devm_kmalloc(lVar11,0x6f8,0xdc0);
  if (lVar7 == 0) {
    iVar4 = -0xc;
    goto LAB_0010c7d0;
  }
  *(long *)(lVar7 + 800) = lVar11;
  *(long *)(lVar7 + 0x328) = param_2;
  *(long *)(param_2 + 0xb8) = lVar7;
  if (lVar13 == 0) {
    *(undefined4 *)(lVar7 + 0x5c) = 0xffffffff;
    *(undefined4 *)(lVar7 + 0x50) = 0xffffffff;
LAB_0010c83c:
    if ((*(int *)(lVar7 + 0x5c) < 0) ||
       (iVar4 = devm_gpio_request_one(lVar11,*(int *)(lVar7 + 0x5c),0,"aw_rst"), iVar4 == 0)) {
      if ((*(int *)(lVar7 + 0x50) < 0) ||
         (iVar4 = devm_gpio_request_one(lVar11,*(int *)(lVar7 + 0x50),1,"aw_int"), iVar4 == 0)) {
        uVar14 = 0;
        *(undefined1 *)(lVar7 + 0x6f3) = 0x20;
        do {
          _printk(&haptic_86938_cb_enter,"haptic_hv",0x171,"hw_reset");
          if (*(int *)(lVar7 + 0x5c) < 0) {
            _printk(&DAT_00112198,"haptic_hv",0x178,"hw_reset");
          }
          else {
            uVar8 = gpio_to_desc();
            gpiod_set_raw_value_cansleep(uVar8,0);
            usleep_range_state(1000,2000,2);
            uVar8 = gpio_to_desc(*(undefined4 *)(lVar7 + 0x5c));
            gpiod_set_raw_value_cansleep(uVar8,1);
            usleep_range_state(8000,0x2134,2);
          }
          uStack0000000000000008 = *(undefined2 *)(*(long *)(lVar7 + 0x328) + 2);
          uStack000000000000000a = 0x10000;
          uStack000000000000000e = 0;
          iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(lVar7 + 0x328) + 0x18),&stack0x00000008,2);
          if (iVar4 < 0) {
LAB_0010c9b0:
            _printk(&DAT_0011211e,"haptic_hv",0x65,"i2c_r_bytes");
LAB_0010ca90:
            _printk(&DAT_001123b0,"haptic_hv",0x1bd,"parse_chipid",0);
            _printk(&DAT_001140d6,"haptic_hv",0x1bf,"parse_chipid",iVar4);
          }
          else {
            if (iVar4 != 2) {
LAB_0010ca70:
              _printk(&DAT_00112e84,"haptic_hv",0x68,"i2c_r_bytes");
              iVar4 = -6;
              goto LAB_0010ca90;
            }
            if (true) {
              uStack0000000000000008 = *(undefined2 *)(*(long *)(lVar7 + 0x328) + 2);
              uStack000000000000000a = 0x10000;
              uStack000000000000000e = 0;
              iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(lVar7 + 0x328) + 0x18),&stack0x00000008
                                   ,2);
              if (iVar4 < 0) goto LAB_0010c9b0;
              if (iVar4 != 2) goto LAB_0010ca70;
            }
            _printk(&DAT_001123b0,"haptic_hv",0x1bd,"parse_chipid",0);
          }
          if (true) {
            if (true) {
              if (false) {
                *(undefined1 *)(lVar7 + 4) = 0;
                *(undefined4 *)(lVar7 + 0x48) = 4;
                puVar9 = &DAT_001142da;
                *(undefined1 *)(lVar7 + 0x16) = 1;
                uVar8 = 0x1d7;
              }
              else {
                if (true) {
                  if (false) {
                    FUN_0010cdb8();
                    return;
                  }
                  goto LAB_0010c8ac;
                }
                *(undefined1 *)(lVar7 + 0x16) = 0;
                puVar9 = &DAT_00113d92;
                *(undefined4 *)(lVar7 + 0x48) = 5;
                *(undefined1 *)(lVar7 + 4) = 0;
                uVar8 = 0x1d1;
              }
            }
            else if (false) {
              if (false) {
                puVar9 = &DAT_0011255c;
                uVar8 = 0x1cb;
                *(undefined4 *)(lVar7 + 0x48) = 0x97;
                *(undefined1 *)(lVar7 + 0x16) = 1;
                *(undefined1 *)(lVar7 + 4) = 0;
              }
              else {
                if (true) goto LAB_0010c8ac;
                *(undefined4 *)(lVar7 + 0x48) = 0x7150;
                puVar9 = &DAT_00111fec;
                *(undefined1 *)(lVar7 + 4) = 0;
                uVar8 = 0x1e8;
              }
            }
            else {
              if (true) {
                if (false) {
                  FUN_0010ceb0();
                  return;
                }
                goto LAB_0010c8ac;
              }
              *(undefined1 *)(lVar7 + 0x16) = 0;
              *(undefined4 *)(lVar7 + 0x48) = 7;
              puVar9 = &DAT_001130d4;
              *(undefined1 *)(lVar7 + 4) = 1;
              uVar8 = 0x1dd;
            }
            goto LAB_0010cfe0;
          }
          if (false) {
            if (false) {
              if (false) {
                *(undefined4 *)(lVar7 + 0x48) = 0x9280;
                puVar9 = &DAT_00113850;
                *(undefined1 *)(lVar7 + 0x16) = 0;
                uVar8 = 0x20b;
                goto LAB_0010cfe0;
              }
              if (false) {
                FUN_0010cf40();
                return;
              }
            }
            else {
              if (false) {
                *(undefined4 *)(lVar7 + 0x48) = 0x9260;
                puVar9 = &DAT_0011382c;
                *(undefined1 *)(lVar7 + 0x16) = 0;
                uVar8 = 0x201;
                goto LAB_0010cfe0;
              }
              if (false) {
                FUN_0010cf6c();
                return;
              }
            }
          }
          else if (false) {
            if (false) {
              *(undefined4 *)(lVar7 + 0x48) = 0x7180;
              puVar9 = &DAT_00112140;
              *(undefined1 *)(lVar7 + 4) = 1;
              uVar8 = 0x1f7;
              goto LAB_0010cfe0;
            }
            if (false) {
              FUN_0010cf94();
              return;
            }
          }
          else {
            if (false) {
              *(undefined4 *)(lVar7 + 0x48) = 0x7170;
              puVar9 = &DAT_00112d8e;
              *(undefined1 *)(lVar7 + 4) = 1;
              uVar8 = 0x1ed;
LAB_0010cfe0:
              _printk(puVar9,"haptic_hv",uVar8,"parse_chipid");
              uStack0000000000000008 = CONCAT11(uStack0000000000000008._1_1_,0xaa);
              i2c_w_bytes(lVar7,0,&stack0x00000008,1);
              usleep_range_state(3000,0xdac,2);
              puVar9 = PTR_aw8693x_check_qualify_00100438;
              if (*(int *)(lVar7 + 0x48) < 1) {
                _printk(&DAT_001124ce,"haptic_hv",0x21f,"ctrl_init");
                puVar9 = &DAT_00111d88;
                uVar8 = 0x220;
              }
              else {
                if (*(int *)(lVar7 + 0x48) == 0x9380) {
                  *(undefined ***)(lVar7 + 0x5c8) = &aw8693x_func_list;
                  if (*(int *)(puVar9 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
                    pcVar10 = (code *)SoftwareBreakpoint(0x8229,0x10d094);
                    (*pcVar10)();
                  }
                  iVar4 = (*(code *)puVar9)(lVar7);
                  if (iVar4 < 0) {
                    puVar9 = &DAT_001122e4;
                    uVar8 = 0x114b;
                    goto LAB_0010d10c;
                  }
                  pcVar10 = *(code **)(*(long *)(lVar7 + 0x5c8) + 0xe0);
                  if (*(int *)(pcVar10 + -4) != 0x2e77d32a) {
                    /* WARNING: Does not return */
                    pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x10d168);
                    (*pcVar10)();
                  }
                  (*pcVar10)(lVar11,lVar7,lVar13);
                  iVar4 = FUN_0010c76c(lVar11,lVar7);
                  if (iVar4 != 0) {
                    puVar9 = &DAT_00111d34;
                    uVar8 = 0x1159;
                    goto LAB_0010d10c;
                  }
                  FUN_0010c96c(lVar7);
                  FUN_0010cccc(lVar7);
                  lVar13 = alloc_workqueue(&DAT_00112812,0x6000a,1,"aw_haptic_vibrator_work_queue");
                  *(long *)(lVar7 + 0x448) = lVar13;
                  if (lVar13 == 0) {
                    _printk(&DAT_0011251e,"haptic_hv",0x116d,"aw_i2c_probe");
                    iVar4 = 0;
                  }
                  else {
                    pcVar10 = *(code **)(*(long *)(lVar7 + 0x5c8) + 8);
                    if (*(int *)(pcVar10 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
                      pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x10d24c);
                      (*pcVar10)();
                    }
                    (*pcVar10)(lVar7);
                    FUN_00105c10(lVar7);
                    _printk(&DAT_00113330,"haptic_hv",0x1172,"aw_i2c_probe");
                    lVar13 = __kmalloc_large_noprof(16000,0xcc0);
                    *(long *)(lVar7 + 0x608) = lVar13;
                    if (lVar13 == 0) {
                      _dev_err(lVar11,"malloc rtp memory failed\n");
                    }
                    else {
                      lVar13 = get_free_pages_noprof(0xcc0,2);
                      *(long *)(lVar7 + 0x610) = lVar13;
                      if (lVar13 != 0) {
                        puVar1 = (ulong *)((((lVar13 << 8) >> 8) + 0x8000000000U >> 6 &
                                           0x3ffffffffffffc0) - 0x140000000);
                        Hint_Prefetch(puVar1,2,0,1);
                        do {
                          cVar2 = '\x01';
                          bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
                          if (bVar3) {
                            *puVar1 = *puVar1 | 0x4000;
                            cVar2 = ExclusiveMonitorsStatus();
                          }
                        } while (cVar2 != '\0');
                        lVar13 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar13 + 8) = lVar13 + 0x400;
                        lVar11 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar13 + 0x408) = lVar11 + 0x800;
                        lVar13 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar11 + 0x808) = lVar13 + 0xc00;
                        lVar11 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar13 + 0xc08) = lVar11 + 0x1000;
                        lVar13 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar11 + 0x1008) = lVar13 + 0x1400;
                        lVar11 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar13 + 0x1408) = lVar11 + 0x1800;
                        lVar13 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar11 + 0x1808) = lVar13 + 0x1c00;
                        lVar11 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar13 + 0x1c08) = lVar11 + 0x2000;
                        lVar13 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar11 + 0x2008) = lVar13 + 0x2400;
                        lVar11 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar13 + 0x2408) = lVar11 + 0x2800;
                        lVar13 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar11 + 0x2808) = lVar13 + 0x2c00;
                        lVar11 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar13 + 0x2c08) = lVar11 + 0x3000;
                        lVar13 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar11 + 0x3008) = lVar13 + 0x3400;
                        lVar11 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar13 + 0x3408) = lVar11 + 0x3800;
                        lVar13 = *(long *)(lVar7 + 0x610);
                        *(long *)(lVar11 + 0x3808) = lVar13 + 0x3c00;
                        *(undefined8 *)(lVar13 + 0x3c08) = *(undefined8 *)(lVar7 + 0x610);
                        lVar13 = *(long *)(*(long *)(lVar7 + 0x610) + 8);
                        *(undefined1 *)(*(long *)(lVar7 + 0x610) + 1) = 0;
                        lVar11 = *(long *)(lVar13 + 8);
                        *(undefined1 *)(lVar13 + 1) = 1;
                        lVar12 = *(long *)(lVar11 + 8);
                        *(undefined1 *)(lVar11 + 1) = 2;
                        lVar13 = *(long *)(lVar12 + 8);
                        *(undefined1 *)(lVar12 + 1) = 3;
                        lVar11 = *(long *)(lVar13 + 8);
                        *(undefined1 *)(lVar13 + 1) = 4;
                        lVar13 = *(long *)(lVar11 + 8);
                        *(undefined1 *)(lVar11 + 1) = 5;
                        lVar11 = *(long *)(lVar13 + 8);
                        *(undefined1 *)(lVar13 + 1) = 6;
                        lVar13 = *(long *)(lVar11 + 8);
                        *(undefined1 *)(lVar11 + 1) = 7;
                        lVar11 = *(long *)(lVar13 + 8);
                        *(undefined1 *)(lVar13 + 1) = 8;
                        lVar13 = *(long *)(lVar11 + 8);
                        *(undefined1 *)(lVar11 + 1) = 9;
                        lVar11 = *(long *)(lVar13 + 8);
                        *(undefined1 *)(lVar13 + 1) = 10;
                        lVar13 = *(long *)(lVar11 + 8);
                        *(undefined1 *)(lVar11 + 1) = 0xb;
                        lVar11 = *(long *)(lVar13 + 8);
                        *(undefined1 *)(lVar13 + 1) = 0xc;
                        lVar13 = *(long *)(lVar11 + 8);
                        *(undefined1 *)(lVar11 + 1) = 0xd;
                        *(undefined1 *)(lVar13 + 1) = 0xe;
                        *(undefined1 *)(*(long *)(lVar13 + 8) + 1) = 0xf;
                        *(undefined2 *)(lVar7 + 0x618) = 1;
                        *(undefined8 *)(lVar7 + 0x648) = 0xfffffffe00000;
                        *(long *)(lVar7 + 0x650) = lVar7 + 0x650;
                        *(long *)(lVar7 + 0x658) = lVar7 + 0x650;
                        *(code **)(lVar7 + 0x660) = richtap_rtp_work;
                        *(undefined8 *)(lVar7 + 0x668) = 0xfffffffe00000;
                        *(long *)(lVar7 + 0x670) = lVar7 + 0x670;
                        *(long *)(lVar7 + 0x678) = lVar7 + 0x670;
                        *(code **)(lVar7 + 0x680) = richtap_stop_work;
                        *(undefined8 *)(lVar7 + 0x628) = 0xfffffffe00000;
                        *(long *)(lVar7 + 0x630) = lVar7 + 0x630;
                        *(long *)(lVar7 + 0x638) = lVar7 + 0x630;
                        *(code **)(lVar7 + 0x640) = tiktap_work_routine;
                        *(undefined4 *)(lVar7 + 0x6bc) = 0;
                        misc_register(richtap_misc);
                        iVar4 = 0;
                        g_aw_haptic = lVar7;
                        goto LAB_0010c7d0;
                      }
                      _dev_err(lVar11,"Error __get_free_pages failed\n");
                      kfree(*(undefined8 *)(lVar7 + 0x608));
                    }
                    gpio_to_desc(*(undefined4 *)(lVar7 + 0x50));
                    uVar5 = gpiod_to_irq();
                    devm_free_irq(lVar11,uVar5,lVar7);
                    iVar4 = 0;
                  }
                  goto LAB_0010d110;
                }
                puVar9 = &DAT_001121b0;
                uVar8 = 0x240;
              }
              _printk(puVar9,"haptic_hv",uVar8,"ctrl_init");
              puVar9 = &DAT_00113f78;
              uVar8 = 0x1144;
              goto LAB_0010d104;
            }
            if (false) {
              FUN_0010cee0();
              return;
            }
          }
LAB_0010c8ac:
          _printk(&DAT_00112164,"haptic_hv",0x213,"parse_chipid",0);
          usleep_range_state(2000,0x9c4,2);
          bVar3 = uVar14 < 4;
          uVar14 = uVar14 + 1;
        } while (bVar3);
        puVar9 = &DAT_00111fc0;
        uVar8 = 0x113d;
LAB_0010d104:
        iVar4 = -0x16;
LAB_0010d10c:
        _printk(puVar9,"haptic_hv",uVar8,"aw_i2c_probe",iVar4);
LAB_0010d110:
        if (-1 < *(int *)(lVar7 + 0x50)) {
          gpio_free();
        }
      }
      else {
        _printk(&DAT_001144f4,"haptic_hv",0x1129,"aw_i2c_probe");
      }
      if (-1 < *(int *)(lVar7 + 0x5c)) {
        gpio_free();
      }
    }
    else {
      _printk(&DAT_00113ada,"haptic_hv",0x1106,"aw_i2c_probe");
    }
  }
  else {
    iVar4 = of_get_named_gpio(lVar13,"reset-gpio",0);
    *(int *)(lVar7 + 0x5c) = iVar4;
    if (-1 < iVar4) {
      _printk(&DAT_00111d5e,"haptic_hv",0x153,"parse_dt_gpio",iVar4);
      iVar4 = of_get_named_gpio(lVar13,"irq-gpio",0);
      *(int *)(lVar7 + 0x50) = iVar4;
      if (iVar4 < 0) {
        _printk(&DAT_00113804,"haptic_hv",0x156,"parse_dt_gpio");
      }
      else {
        _printk(&DAT_001140a6,"haptic_hv",0x158,"parse_dt_gpio",iVar4);
      }
      iVar4 = of_property_read_variable_u8_array(lVar13,&DAT_001142d4,lVar7 + 0x460,1,0);
      if (iVar4 < 0) {
        _printk(&DAT_00112816,"haptic_hv",0x15b,"parse_dt_gpio");
      }
      goto LAB_0010c83c;
    }
    _printk(&DAT_001130ac,"haptic_hv",0x150,"parse_dt_gpio");
    _printk(&DAT_00113ab4,"haptic_hv",0x10fa,"aw_i2c_probe");
    iVar4 = -1;
  }
  devm_kfree(lVar11,lVar7);
LAB_0010c7d0:
  lVar13 = sp_el0;
  if (*(long *)(lVar13 + 0x710) != *(long *)(unaff_x29 + -8)) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar4);
  }
  return;
}

