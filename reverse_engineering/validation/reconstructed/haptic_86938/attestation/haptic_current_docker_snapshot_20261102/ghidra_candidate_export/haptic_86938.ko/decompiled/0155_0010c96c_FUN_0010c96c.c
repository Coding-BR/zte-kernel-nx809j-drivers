
void FUN_0010c96c(long param_1,undefined8 param_2,undefined1 *param_3,undefined8 param_4)

{
  ulong *puVar1;
  char cVar2;
  code *pcVar3;
  bool bVar4;
  int iVar5;
  undefined8 uVar6;
  undefined *puVar7;
  long lVar8;
  long lVar9;
  undefined4 in_w10;
  long lVar10;
  long unaff_x19;
  uint unaff_w22;
  uint unaff_w25;
  uint uVar11;
  long unaff_x29;
  undefined1 uStack0000000000000000;
  byte bStack0000000000000004;
  undefined2 uStack0000000000000008;
  undefined4 uStack000000000000000a;
  undefined2 uStack000000000000000e;
  undefined2 uStack0000000000000018;
  undefined4 uStack000000000000001a;
  undefined2 uStack000000000000001e;
  
  do {
    _bStack0000000000000004 = 0;
    uStack0000000000000008 = *(undefined2 *)(param_1 + 2);
    uStack0000000000000000 = 0;
    uStack000000000000000e = 0;
    uStack000000000000001a = 0x10001;
    uStack000000000000001e = 0;
    uStack000000000000000a = in_w10;
    uStack0000000000000018 = uStack0000000000000008;
    iVar5 = i2c_transfer(*(undefined8 *)(param_1 + 0x18),param_3,param_4);
    if (iVar5 < 0) {
LAB_0010c9b0:
      _printk(&DAT_0011211e);
LAB_0010ca90:
      _printk(&DAT_001123b0);
      _printk(&DAT_001140d6);
      uVar11 = unaff_w25;
    }
    else {
      if (iVar5 != 2) {
LAB_0010ca70:
        _printk(&DAT_00112e84);
        goto LAB_0010ca90;
      }
      uVar11 = (uint)bStack0000000000000004;
      if ((_bStack0000000000000004 & 0x7c) == 0) {
        uStack0000000000000000 = 0x57;
        uStack0000000000000008 = *(undefined2 *)(*(long *)(unaff_x19 + 0x328) + 2);
        uStack000000000000000a = 0x10000;
        uStack000000000000000e = 0;
        uStack000000000000001a = 0x20001;
        uStack000000000000001e = 0;
        uStack0000000000000018 = uStack0000000000000008;
        iVar5 = i2c_transfer(*(undefined8 *)(*(long *)(unaff_x19 + 0x328) + 0x18),&stack0x00000008,2
                            );
        if (iVar5 < 0) goto LAB_0010c9b0;
        if (iVar5 != 2) goto LAB_0010ca70;
        uVar11 = (uint)(_bStack0000000000000004 >> 8) | (_bStack0000000000000004 & 0xff00ff) << 8;
      }
      _printk(&DAT_001123b0);
    }
    if ((int)uVar11 < 0x7170) {
      if ((int)uVar11 < 7) {
        if (uVar11 == 4) {
          *(undefined1 *)(unaff_x19 + 4) = 0;
          *(undefined4 *)(unaff_x19 + 0x48) = 4;
          puVar7 = &DAT_001142da;
          *(undefined1 *)(unaff_x19 + 0x16) = 1;
          uVar6 = 0x1d7;
        }
        else {
          if (uVar11 != 5) {
            if (uVar11 == 6) {
              FUN_0010cdb8();
              return;
            }
            goto LAB_0010c8ac;
          }
          *(undefined1 *)(unaff_x19 + 0x16) = 0;
          puVar7 = &DAT_00113d92;
          *(undefined4 *)(unaff_x19 + 0x48) = 5;
          *(undefined1 *)(unaff_x19 + 4) = 0;
          uVar6 = 0x1d1;
        }
      }
      else if ((int)uVar11 < 0x97) {
        if (uVar11 != 7) {
          if (uVar11 == 0x95) {
            FUN_0010ceb0();
            return;
          }
          goto LAB_0010c8ac;
        }
        *(undefined1 *)(unaff_x19 + 0x16) = 0;
        *(undefined4 *)(unaff_x19 + 0x48) = 7;
        puVar7 = &DAT_001130d4;
        *(undefined1 *)(unaff_x19 + 4) = 1;
        uVar6 = 0x1dd;
      }
      else if (uVar11 == 0x97) {
        puVar7 = &DAT_0011255c;
        uVar6 = 0x1cb;
        *(undefined4 *)(unaff_x19 + 0x48) = 0x97;
        *(undefined1 *)(unaff_x19 + 0x16) = 1;
        *(undefined1 *)(unaff_x19 + 4) = 0;
      }
      else {
        if (uVar11 != 0x7150) goto LAB_0010c8ac;
        *(undefined4 *)(unaff_x19 + 0x48) = 0x7150;
        puVar7 = &DAT_00111fec;
        *(undefined1 *)(unaff_x19 + 4) = 0;
        uVar6 = 0x1e8;
      }
      goto LAB_0010cfe0;
    }
    if ((int)uVar11 < 0x9260) {
      if ((int)uVar11 < 0x7180) {
        if (uVar11 == 0x7170) {
          *(undefined4 *)(unaff_x19 + 0x48) = 0x7170;
          puVar7 = &DAT_00112d8e;
          *(undefined1 *)(unaff_x19 + 4) = 1;
          uVar6 = 0x1ed;
LAB_0010cfe0:
          _printk(puVar7,"haptic_hv",uVar6,"parse_chipid");
          uStack0000000000000008 = CONCAT11(uStack0000000000000008._1_1_,0xaa);
          i2c_w_bytes();
          usleep_range_state(3000,0xdac,2);
          puVar7 = PTR_aw8693x_check_qualify_00100438;
          if (*(int *)(unaff_x19 + 0x48) < 1) {
            _printk(&DAT_001124ce,"haptic_hv",0x21f,"ctrl_init");
            puVar7 = &DAT_00111d88;
            uVar6 = 0x220;
          }
          else {
            if (*(int *)(unaff_x19 + 0x48) == 0x9380) {
              *(undefined ***)(unaff_x19 + 0x5c8) = &aw8693x_func_list;
              if (*(int *)(puVar7 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
                pcVar3 = (code *)SoftwareBreakpoint(0x8229,0x10d094);
                (*pcVar3)();
              }
              iVar5 = (*(code *)puVar7)();
              if (iVar5 < 0) {
                puVar7 = &DAT_001122e4;
                uVar6 = 0x114b;
                goto LAB_0010d10c;
              }
              pcVar3 = *(code **)(*(long *)(unaff_x19 + 0x5c8) + 0xe0);
              if (*(int *)(pcVar3 + -4) != 0x2e77d32a) {
                    /* WARNING: Does not return */
                pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10d168);
                (*pcVar3)();
              }
              (*pcVar3)();
              iVar5 = FUN_0010c76c();
              if (iVar5 != 0) {
                puVar7 = &DAT_00111d34;
                uVar6 = 0x1159;
                goto LAB_0010d10c;
              }
              FUN_0010c96c();
              FUN_0010cccc();
              lVar8 = alloc_workqueue(&DAT_00112812,0x6000a,1,"aw_haptic_vibrator_work_queue");
              *(long *)(unaff_x19 + 0x448) = lVar8;
              if (lVar8 == 0) {
                _printk(&DAT_0011251e,"haptic_hv",0x116d,"aw_i2c_probe");
                iVar5 = 0;
              }
              else {
                pcVar3 = *(code **)(*(long *)(unaff_x19 + 0x5c8) + 8);
                if (*(int *)(pcVar3 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
                  pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10d24c);
                  (*pcVar3)();
                }
                (*pcVar3)();
                FUN_00105c10();
                _printk(&DAT_00113330,"haptic_hv",0x1172,"aw_i2c_probe");
                lVar8 = __kmalloc_large_noprof(16000,0xcc0);
                *(long *)(unaff_x19 + 0x608) = lVar8;
                if (lVar8 == 0) {
                  _dev_err();
                }
                else {
                  lVar8 = get_free_pages_noprof(0xcc0,2);
                  *(long *)(unaff_x19 + 0x610) = lVar8;
                  if (lVar8 != 0) {
                    puVar1 = (ulong *)((((lVar8 << 8) >> 8) + 0x8000000000U >> 6 & 0x3ffffffffffffc0
                                       ) - 0x140000000);
                    Hint_Prefetch(puVar1,2,0,1);
                    do {
                      cVar2 = '\x01';
                      bVar4 = (bool)ExclusiveMonitorPass(puVar1,0x10);
                      if (bVar4) {
                        *puVar1 = *puVar1 | 0x4000;
                        cVar2 = ExclusiveMonitorsStatus();
                      }
                    } while (cVar2 != '\0');
                    lVar8 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar8 + 8) = lVar8 + 0x400;
                    lVar9 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar8 + 0x408) = lVar9 + 0x800;
                    lVar8 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar9 + 0x808) = lVar8 + 0xc00;
                    lVar9 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar8 + 0xc08) = lVar9 + 0x1000;
                    lVar8 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar9 + 0x1008) = lVar8 + 0x1400;
                    lVar9 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar8 + 0x1408) = lVar9 + 0x1800;
                    lVar8 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar9 + 0x1808) = lVar8 + 0x1c00;
                    lVar9 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar8 + 0x1c08) = lVar9 + 0x2000;
                    lVar8 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar9 + 0x2008) = lVar8 + 0x2400;
                    lVar9 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar8 + 0x2408) = lVar9 + 0x2800;
                    lVar8 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar9 + 0x2808) = lVar8 + 0x2c00;
                    lVar9 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar8 + 0x2c08) = lVar9 + 0x3000;
                    lVar8 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar9 + 0x3008) = lVar8 + 0x3400;
                    lVar9 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar8 + 0x3408) = lVar9 + 0x3800;
                    lVar8 = *(long *)(unaff_x19 + 0x610);
                    *(long *)(lVar9 + 0x3808) = lVar8 + 0x3c00;
                    *(undefined8 *)(lVar8 + 0x3c08) = *(undefined8 *)(unaff_x19 + 0x610);
                    lVar8 = *(long *)(*(long *)(unaff_x19 + 0x610) + 8);
                    *(undefined1 *)(*(long *)(unaff_x19 + 0x610) + 1) = 0;
                    lVar9 = *(long *)(lVar8 + 8);
                    *(undefined1 *)(lVar8 + 1) = 1;
                    lVar10 = *(long *)(lVar9 + 8);
                    *(undefined1 *)(lVar9 + 1) = 2;
                    lVar8 = *(long *)(lVar10 + 8);
                    *(undefined1 *)(lVar10 + 1) = 3;
                    lVar9 = *(long *)(lVar8 + 8);
                    *(undefined1 *)(lVar8 + 1) = 4;
                    lVar8 = *(long *)(lVar9 + 8);
                    *(undefined1 *)(lVar9 + 1) = 5;
                    lVar9 = *(long *)(lVar8 + 8);
                    *(undefined1 *)(lVar8 + 1) = 6;
                    lVar8 = *(long *)(lVar9 + 8);
                    *(undefined1 *)(lVar9 + 1) = 7;
                    lVar9 = *(long *)(lVar8 + 8);
                    *(undefined1 *)(lVar8 + 1) = 8;
                    lVar8 = *(long *)(lVar9 + 8);
                    *(undefined1 *)(lVar9 + 1) = 9;
                    lVar9 = *(long *)(lVar8 + 8);
                    *(undefined1 *)(lVar8 + 1) = 10;
                    lVar8 = *(long *)(lVar9 + 8);
                    *(undefined1 *)(lVar9 + 1) = 0xb;
                    lVar9 = *(long *)(lVar8 + 8);
                    *(undefined1 *)(lVar8 + 1) = 0xc;
                    lVar8 = *(long *)(lVar9 + 8);
                    *(undefined1 *)(lVar9 + 1) = 0xd;
                    *(undefined1 *)(lVar8 + 1) = 0xe;
                    *(undefined1 *)(*(long *)(lVar8 + 8) + 1) = 0xf;
                    *(undefined2 *)(unaff_x19 + 0x618) = 1;
                    *(undefined8 *)(unaff_x19 + 0x648) = 0xfffffffe00000;
                    *(long *)(unaff_x19 + 0x650) = unaff_x19 + 0x650;
                    *(long *)(unaff_x19 + 0x658) = unaff_x19 + 0x650;
                    *(code **)(unaff_x19 + 0x660) = richtap_rtp_work;
                    *(undefined8 *)(unaff_x19 + 0x668) = 0xfffffffe00000;
                    *(long *)(unaff_x19 + 0x670) = unaff_x19 + 0x670;
                    *(long *)(unaff_x19 + 0x678) = unaff_x19 + 0x670;
                    *(code **)(unaff_x19 + 0x680) = richtap_stop_work;
                    *(undefined8 *)(unaff_x19 + 0x628) = 0xfffffffe00000;
                    *(long *)(unaff_x19 + 0x630) = unaff_x19 + 0x630;
                    *(long *)(unaff_x19 + 0x638) = unaff_x19 + 0x630;
                    *(code **)(unaff_x19 + 0x640) = tiktap_work_routine;
                    *(undefined4 *)(unaff_x19 + 0x6bc) = 0;
                    misc_register(richtap_misc);
                    iVar5 = 0;
                    g_aw_haptic = unaff_x19;
                    goto LAB_0010c7d0;
                  }
                  _dev_err();
                  kfree(*(undefined8 *)(unaff_x19 + 0x608));
                }
                gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x50));
                gpiod_to_irq();
                devm_free_irq();
                iVar5 = 0;
              }
              goto LAB_0010d110;
            }
            puVar7 = &DAT_001121b0;
            uVar6 = 0x240;
          }
          _printk(puVar7,"haptic_hv",uVar6,"ctrl_init");
          puVar7 = &DAT_00113f78;
          uVar6 = 0x1144;
          goto LAB_0010d104;
        }
        if (uVar11 == 0x7171) {
          FUN_0010cee0();
          return;
        }
      }
      else {
        if (uVar11 == 0x7180) {
          *(undefined4 *)(unaff_x19 + 0x48) = 0x7180;
          puVar7 = &DAT_00112140;
          *(undefined1 *)(unaff_x19 + 4) = 1;
          uVar6 = 0x1f7;
          goto LAB_0010cfe0;
        }
        if (uVar11 == 0x9250) {
          FUN_0010cf94();
          return;
        }
      }
    }
    else if ((int)uVar11 < 0x9280) {
      if (uVar11 == 0x9260) {
        *(undefined4 *)(unaff_x19 + 0x48) = 0x9260;
        puVar7 = &DAT_0011382c;
        *(undefined1 *)(unaff_x19 + 0x16) = 0;
        uVar6 = 0x201;
        goto LAB_0010cfe0;
      }
      if (uVar11 == 0x9270) {
        FUN_0010cf6c();
        return;
      }
    }
    else {
      if (uVar11 == 0x9280) {
        *(undefined4 *)(unaff_x19 + 0x48) = 0x9280;
        puVar7 = &DAT_00113850;
        *(undefined1 *)(unaff_x19 + 0x16) = 0;
        uVar6 = 0x20b;
        goto LAB_0010cfe0;
      }
      if (uVar11 == 0x9380) {
        FUN_0010cf40();
        return;
      }
    }
LAB_0010c8ac:
    _printk(&DAT_00112164);
    usleep_range_state(2000,0x9c4,2);
    bVar4 = 3 < unaff_w22;
    unaff_w22 = unaff_w22 + 1;
    if (bVar4) {
      puVar7 = &DAT_00111fc0;
      uVar6 = 0x113d;
LAB_0010d104:
      iVar5 = -0x16;
LAB_0010d10c:
      _printk(puVar7,"haptic_hv",uVar6,"aw_i2c_probe",iVar5);
LAB_0010d110:
      if (-1 < *(int *)(unaff_x19 + 0x50)) {
        gpio_free();
      }
      if (-1 < *(int *)(unaff_x19 + 0x5c)) {
        gpio_free();
      }
      devm_kfree();
LAB_0010c7d0:
      lVar8 = sp_el0;
      if (*(long *)(lVar8 + 0x710) == *(long *)(unaff_x29 + -8)) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(iVar5);
    }
    _printk(&haptic_86938_cb_enter);
    if (*(int *)(unaff_x19 + 0x5c) < 0) {
      _printk(&DAT_00112198);
    }
    else {
      uVar6 = gpio_to_desc();
      gpiod_set_raw_value_cansleep(uVar6,0);
      usleep_range_state(1000,2000,2);
      uVar6 = gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x5c));
      gpiod_set_raw_value_cansleep(uVar6,1);
      usleep_range_state(8000,0x2134,2);
    }
    param_1 = *(long *)(unaff_x19 + 0x328);
    in_w10 = 0x10000;
    param_3 = (undefined1 *)&stack0x00000008;
    param_4 = 2;
    unaff_w25 = uVar11;
  } while( true );
}

