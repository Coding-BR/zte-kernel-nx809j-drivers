
void aw_i2c_probe(long param_1)

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
  ushort uVar15;
  ushort uVar16;
  undefined1 local_90 [4];
  ushort local_8c [2];
  undefined2 local_88;
  undefined4 local_86;
  undefined2 local_82;
  undefined1 *local_80;
  undefined2 local_78;
  undefined4 local_76;
  undefined2 local_72;
  ushort *local_70;
  long local_68;
  
  lVar13 = sp_el0;
  local_68 = *(long *)(lVar13 + 0x710);
  lVar13 = *(long *)(param_1 + 0x308);
  _printk(&DAT_0010fdf5);
  pcVar10 = *(code **)(*(long *)(*(long *)(param_1 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar10 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x107428);
    (*pcVar10)();
  }
  uVar6 = (*pcVar10)();
  if ((uVar6 & 1) == 0) {
    _printk(&DAT_0011094f);
    iVar4 = -5;
    goto LAB_0010744c;
  }
  lVar11 = param_1 + 0x20;
  lVar7 = devm_kmalloc(lVar11,0x6f8,0xdc0);
  if (lVar7 == 0) {
    iVar4 = -0xc;
    goto LAB_0010744c;
  }
  *(long *)(lVar7 + 800) = lVar11;
  *(long *)(lVar7 + 0x328) = param_1;
  *(long *)(param_1 + 0xb8) = lVar7;
  if (lVar13 == 0) {
    *(undefined4 *)(lVar7 + 0x5c) = 0xffffffff;
    *(undefined4 *)(lVar7 + 0x50) = 0xffffffff;
LAB_001074b8:
    if ((*(int *)(lVar7 + 0x5c) < 0) ||
       (iVar4 = devm_gpio_request_one(lVar11,*(int *)(lVar7 + 0x5c),0,"aw_rst"), iVar4 == 0)) {
      if ((*(int *)(lVar7 + 0x50) < 0) ||
         (iVar4 = devm_gpio_request_one(lVar11,*(int *)(lVar7 + 0x50),1,"aw_int"), iVar4 == 0)) {
        uVar14 = 0;
        *(undefined1 *)(lVar7 + 0x6f3) = 0x20;
        uVar15 = 0;
        do {
          _printk(&DAT_0010f834,"haptic_hv",0x171,"hw_reset");
          if (*(int *)(lVar7 + 0x5c) < 0) {
            _printk(&DAT_0010f65e,"haptic_hv",0x178,"hw_reset");
          }
          else {
            uVar8 = gpio_to_desc();
            gpiod_set_raw_value_cansleep(uVar8,0);
            usleep_range_state(1000,2000,2);
            uVar8 = gpio_to_desc(*(undefined4 *)(lVar7 + 0x5c));
            gpiod_set_raw_value_cansleep(uVar8,1);
            usleep_range_state(8000,0x2134,2);
          }
          local_8c[0] = 0;
          local_88 = *(undefined2 *)(*(long *)(lVar7 + 0x328) + 2);
          local_86 = 0x10000;
          local_90[0] = 0;
          local_82 = 0;
          local_76 = 0x10001;
          local_72 = 0;
          local_80 = local_90;
          local_78 = local_88;
          local_70 = local_8c;
          iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(lVar7 + 0x328) + 0x18),&local_88,2);
          if (iVar4 < 0) {
LAB_0010762c:
            _printk(&DAT_0010f5e5,"haptic_hv",0x65,"i2c_r_bytes");
LAB_0010770c:
            _printk(&DAT_0010f86a,"haptic_hv",0x1bd,"parse_chipid",uVar15);
            _printk(&DAT_00111512,"haptic_hv",0x1bf,"parse_chipid",iVar4);
            uVar16 = uVar15;
          }
          else {
            if (iVar4 != 2) {
LAB_001076ec:
              _printk(&DAT_0011030e,"haptic_hv",0x68,"i2c_r_bytes");
              iVar4 = -6;
              goto LAB_0010770c;
            }
            uVar16 = local_8c[0] & 0xff;
            if ((local_8c[0] & 0x7c) == 0) {
              local_90[0] = 0x57;
              local_88 = *(undefined2 *)(*(long *)(lVar7 + 0x328) + 2);
              local_86 = 0x10000;
              local_82 = 0;
              local_76 = 0x20001;
              local_72 = 0;
              local_80 = local_90;
              local_78 = local_88;
              local_70 = local_8c;
              iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(lVar7 + 0x328) + 0x18),&local_88,2);
              if (iVar4 < 0) goto LAB_0010762c;
              if (iVar4 != 2) goto LAB_001076ec;
              uVar16 = local_8c[0] >> 8 | local_8c[0] << 8;
            }
            _printk(&DAT_0010f86a,"haptic_hv",0x1bd,"parse_chipid",uVar16);
          }
          if (uVar16 < 0x7170) {
            if (uVar16 < 7) {
              if (uVar16 == 4) {
                *(undefined1 *)(lVar7 + 4) = 0;
                *(undefined4 *)(lVar7 + 0x48) = 4;
                puVar9 = &DAT_0011170d;
                *(undefined1 *)(lVar7 + 0x16) = 1;
                uVar8 = 0x1d7;
              }
              else if (uVar16 == 5) {
                *(undefined1 *)(lVar7 + 0x16) = 0;
                puVar9 = &DAT_001111db;
                *(undefined4 *)(lVar7 + 0x48) = 5;
                *(undefined1 *)(lVar7 + 4) = 0;
                uVar8 = 0x1d1;
              }
              else {
                if (uVar16 != 6) goto LAB_00107528;
                puVar9 = &DAT_0010ee80;
                *(undefined4 *)(lVar7 + 0x48) = 6;
                *(undefined1 *)(lVar7 + 0x16) = 1;
                *(undefined1 *)(lVar7 + 4) = 1;
                uVar8 = 0x1e3;
              }
            }
            else if (uVar16 < 0x97) {
              if (uVar16 == 7) {
                *(undefined1 *)(lVar7 + 0x16) = 0;
                *(undefined4 *)(lVar7 + 0x48) = 7;
                puVar9 = &DAT_00110553;
                *(undefined1 *)(lVar7 + 4) = 1;
                uVar8 = 0x1dd;
              }
              else {
                if (uVar16 != 0x95) goto LAB_00107528;
                *(undefined1 *)(lVar7 + 0x16) = 0;
                puVar9 = &DAT_00111875;
                *(undefined4 *)(lVar7 + 0x48) = 0x95;
                *(undefined1 *)(lVar7 + 4) = 0;
                uVar8 = 0x1c5;
              }
            }
            else if (uVar16 == 0x97) {
              puVar9 = &DAT_0010fa0f;
              uVar8 = 0x1cb;
              *(undefined4 *)(lVar7 + 0x48) = 0x97;
              *(undefined1 *)(lVar7 + 0x16) = 1;
              *(undefined1 *)(lVar7 + 4) = 0;
            }
            else {
              if (uVar16 != 0x7150) goto LAB_00107528;
              *(undefined4 *)(lVar7 + 0x48) = 0x7150;
              puVar9 = &DAT_0010f4b9;
              *(undefined1 *)(lVar7 + 4) = 0;
              uVar8 = 0x1e8;
            }
LAB_00107c5c:
            _printk(puVar9,"haptic_hv",uVar8,"parse_chipid");
            local_88 = CONCAT11(local_88._1_1_,0xaa);
            i2c_w_bytes(lVar7,0,&local_88,1);
            usleep_range_state(3000,0xdac,2);
            puVar9 = PTR_aw8693x_check_qualify_00100150;
            if (*(int *)(lVar7 + 0x48) < 1) {
              _printk(&DAT_0010f983,"haptic_hv",0x21f,"ctrl_init");
              puVar9 = &DAT_0010f263;
              uVar8 = 0x220;
            }
            else {
              if (*(int *)(lVar7 + 0x48) == 0x9380) {
                *(undefined ***)(lVar7 + 0x5c8) = &aw8693x_func_list;
                if (*(int *)(puVar9 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
                  pcVar10 = (code *)SoftwareBreakpoint(0x8229,0x107d10);
                  (*pcVar10)();
                }
                iVar4 = (*(code *)puVar9)(lVar7);
                if (iVar4 < 0) {
                  puVar9 = &DAT_0010f7a3;
                  uVar8 = 0x114b;
                  goto LAB_00107d88;
                }
                pcVar10 = *(code **)(*(long *)(lVar7 + 0x5c8) + 0xe0);
                if (*(int *)(pcVar10 + -4) != 0x2e77d32a) {
                    /* WARNING: Does not return */
                  pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x107de4);
                  (*pcVar10)();
                }
                (*pcVar10)(lVar11,lVar7,lVar13);
                iVar4 = irq_config(lVar11,lVar7);
                if (iVar4 != 0) {
                  puVar9 = &DAT_0010f20f;
                  uVar8 = 0x1159;
                  goto LAB_00107d88;
                }
                vibrator_init(lVar7);
                haptic_init(lVar7);
                lVar13 = alloc_workqueue(&DAT_0010fcb8,0x6000a,1,"aw_haptic_vibrator_work_queue");
                *(long *)(lVar7 + 0x448) = lVar13;
                if (lVar13 == 0) {
                  _printk(&DAT_0010f9d1,"haptic_hv",0x116d,"aw_i2c_probe");
                  iVar4 = 0;
                }
                else {
                  pcVar10 = *(code **)(*(long *)(lVar7 + 0x5c8) + 8);
                  if (*(int *)(pcVar10 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
                    pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x107ec8);
                    (*pcVar10)();
                  }
                  (*pcVar10)(lVar7);
                  ram_work_init(lVar7);
                  _printk(&DAT_001107a7,"haptic_hv",0x1172,"aw_i2c_probe");
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
                      goto LAB_0010744c;
                    }
                    _dev_err(lVar11,"Error __get_free_pages failed\n");
                    kfree(*(undefined8 *)(lVar7 + 0x608));
                  }
                  gpio_to_desc(*(undefined4 *)(lVar7 + 0x50));
                  uVar5 = gpiod_to_irq();
                  devm_free_irq(lVar11,uVar5,lVar7);
                  iVar4 = 0;
                }
                goto LAB_00107d8c;
              }
              puVar9 = &DAT_0010f676;
              uVar8 = 0x240;
            }
            _printk(puVar9,"haptic_hv",uVar8,"ctrl_init");
            puVar9 = &DAT_001113b9;
            uVar8 = 0x1144;
            goto LAB_00107d80;
          }
          if (0x925f < uVar16) {
            if (uVar16 < 0x9280) {
              if (uVar16 == 0x9260) {
                *(undefined4 *)(lVar7 + 0x48) = 0x9260;
                puVar9 = &DAT_00110c8b;
                *(undefined1 *)(lVar7 + 0x16) = 0;
                uVar8 = 0x201;
              }
              else {
                if (uVar16 != 0x9270) goto LAB_00107528;
                *(undefined4 *)(lVar7 + 0x48) = 0x9270;
                puVar9 = &DAT_001107d6;
                *(undefined1 *)(lVar7 + 0x16) = 0;
                uVar8 = 0x206;
              }
            }
            else if (uVar16 == 0x9280) {
              *(undefined4 *)(lVar7 + 0x48) = 0x9280;
              puVar9 = &DAT_00110cae;
              *(undefined1 *)(lVar7 + 0x16) = 0;
              uVar8 = 0x20b;
            }
            else {
              if (uVar16 != 0x9380) goto LAB_00107528;
              *(undefined4 *)(lVar7 + 0x48) = 0x9380;
              puVar9 = &DAT_0010f0ab;
              *(undefined1 *)(lVar7 + 0x6f3) = 0x40;
              uVar8 = 0x210;
            }
            goto LAB_00107c5c;
          }
          if (0x717f < uVar16) {
            if (uVar16 == 0x7180) {
              *(undefined4 *)(lVar7 + 0x48) = 0x7180;
              puVar9 = &DAT_0010f607;
              *(undefined1 *)(lVar7 + 4) = 1;
              uVar8 = 0x1f7;
            }
            else {
              if (uVar16 != 0x9250) goto LAB_00107528;
              *(undefined4 *)(lVar7 + 0x48) = 0x9250;
              puVar9 = &DAT_001109b4;
              *(undefined1 *)(lVar7 + 0x16) = 0;
              uVar8 = 0x1fc;
            }
            goto LAB_00107c5c;
          }
          if (uVar16 == 0x7170) {
            *(undefined4 *)(lVar7 + 0x48) = 0x7170;
            puVar9 = &DAT_0011021a;
            *(undefined1 *)(lVar7 + 4) = 1;
            uVar8 = 0x1ed;
            goto LAB_00107c5c;
          }
          if (uVar16 == 0x7171) {
            *(undefined4 *)(lVar7 + 0x48) = 0x7171;
            puVar9 = &DAT_00110991;
            *(undefined1 *)(lVar7 + 4) = 1;
            uVar8 = 0x1f2;
            goto LAB_00107c5c;
          }
LAB_00107528:
          _printk(&DAT_0010f62a,"haptic_hv",0x213,"parse_chipid",uVar16);
          usleep_range_state(2000,0x9c4,2);
          bVar3 = uVar14 < 4;
          uVar14 = uVar14 + 1;
          uVar15 = uVar16;
        } while (bVar3);
        puVar9 = &DAT_0010f48e;
        uVar8 = 0x113d;
LAB_00107d80:
        iVar4 = -0x16;
LAB_00107d88:
        _printk(puVar9,"haptic_hv",uVar8,"aw_i2c_probe",iVar4);
LAB_00107d8c:
        if (-1 < *(int *)(lVar7 + 0x50)) {
          gpio_free();
        }
      }
      else {
        _printk(&DAT_0011191d,"haptic_hv",0x1129,"aw_i2c_probe");
      }
      if (-1 < *(int *)(lVar7 + 0x5c)) {
        gpio_free();
      }
    }
    else {
      _printk(&DAT_00110f30,"haptic_hv",0x1106,"aw_i2c_probe");
    }
  }
  else {
    iVar4 = of_get_named_gpio(lVar13,"reset-gpio",0);
    *(int *)(lVar7 + 0x5c) = iVar4;
    if (-1 < iVar4) {
      _printk(&DAT_0010f239,"haptic_hv",0x153,"parse_dt_gpio",iVar4);
      iVar4 = of_get_named_gpio(lVar13,"irq-gpio",0);
      *(int *)(lVar7 + 0x50) = iVar4;
      if (iVar4 < 0) {
        _printk(&DAT_00110c64,"haptic_hv",0x156,"parse_dt_gpio");
      }
      else {
        _printk(&DAT_001114e3,"haptic_hv",0x158,"parse_dt_gpio",iVar4);
      }
      iVar4 = of_property_read_variable_u8_array(lVar13,&DAT_00111708,lVar7 + 0x460,1,0);
      if (iVar4 < 0) {
        _printk(&DAT_0010fcbb,"haptic_hv",0x15b,"parse_dt_gpio");
      }
      goto LAB_001074b8;
    }
    _printk(&DAT_0011052c,"haptic_hv",0x150,"parse_dt_gpio");
    _printk(&DAT_00110f0a,"haptic_hv",0x10fa,"aw_i2c_probe");
    iVar4 = -1;
  }
  devm_kfree(lVar11,lVar7);
LAB_0010744c:
  lVar13 = sp_el0;
  if (*(long *)(lVar13 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar4);
}

