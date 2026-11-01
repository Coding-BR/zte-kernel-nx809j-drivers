
/* WARNING: Possible PIC construction at 0x0010d01c: Changing call to branch */
/* WARNING: Possible PIC construction at 0x0010d030: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x0010d020) */
/* WARNING: Removing unreachable block (ram,0x0010d0a4) */
/* WARNING: Removing unreachable block (ram,0x0010d024) */
/* WARNING: Removing unreachable block (ram,0x0010d034) */
/* WARNING: Removing unreachable block (ram,0x0010d0d0) */
/* WARNING: Removing unreachable block (ram,0x0010d0f4) */
/* WARNING: Removing unreachable block (ram,0x0010d3c4) */
/* WARNING: Removing unreachable block (ram,0x0010d13c) */
/* WARNING: Removing unreachable block (ram,0x0010d404) */
/* WARNING: Removing unreachable block (ram,0x0010d41c) */
/* WARNING: Removing unreachable block (ram,0x0010d150) */
/* WARNING: Removing unreachable block (ram,0x0010d440) */
/* WARNING: Removing unreachable block (ram,0x0010d450) */
/* WARNING: Removing unreachable block (ram,0x0010d458) */
/* WARNING: Removing unreachable block (ram,0x0010d460) */
/* WARNING: Removing unreachable block (ram,0x0010d17c) */
/* WARNING: Removing unreachable block (ram,0x0010d0f0) */
/* WARNING: Removing unreachable block (ram,0x0010d05c) */

void aw_i2c_probe(long param_1,long param_2)

{
  long lVar1;
  bool bVar2;
  int iVar3;
  ulong uVar4;
  undefined8 uVar5;
  undefined *puVar6;
  code *pcVar7;
  long extraout_x8;
  long lVar8;
  uint uVar9;
  ushort uVar10;
  ushort uVar11;
  undefined1 auStack_90 [4];
  ushort auStack_8c [2];
  undefined2 uStack_88;
  undefined4 uStack_86;
  undefined2 uStack_82;
  undefined1 *puStack_80;
  undefined2 uStack_78;
  undefined4 uStack_76;
  undefined2 uStack_72;
  ushort *puStack_70;
  long lStack_68;
  
  lVar8 = sp_el0;
SUB_0010c614:
  lStack_68 = *(long *)(lVar8 + 0x710);
  lVar8 = *(long *)(param_1 + 0x308);
  _printk(&DAT_0011283e,param_2);
  pcVar7 = *(code **)(*(long *)(*(long *)(param_1 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar7 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x10c654);
    (*pcVar7)();
  }
  uVar4 = (*pcVar7)();
  if ((uVar4 & 1) == 0) {
    _printk(&DAT_001133ca);
    iVar3 = -5;
    goto LAB_0010c678;
  }
  lVar1 = param_1 + 0x20;
  param_2 = devm_kmalloc(lVar1,0x6f8,0xdc0);
  if (param_2 == 0) {
    iVar3 = -0xc;
    goto LAB_0010c678;
  }
  *(long *)(param_2 + 800) = lVar1;
  *(long *)(param_2 + 0x328) = param_1;
  *(long *)(param_1 + 0xb8) = param_2;
  if (lVar8 == 0) {
    *(undefined4 *)(param_2 + 0x5c) = 0xffffffff;
    *(undefined4 *)(param_2 + 0x50) = 0xffffffff;
LAB_0010c6e4:
    if ((-1 < *(int *)(param_2 + 0x5c)) &&
       (iVar3 = devm_gpio_request_one(lVar1,*(int *)(param_2 + 0x5c),0,"aw_rst"), iVar3 != 0)) {
      _printk(&DAT_001139c2,"haptic_hv",0x1106,"aw_i2c_probe");
      goto LAB_0010cfd0;
    }
    if ((*(int *)(param_2 + 0x50) < 0) ||
       (iVar3 = devm_gpio_request_one(lVar1,*(int *)(param_2 + 0x50),1,"aw_int"), iVar3 == 0)) {
      uVar9 = 0;
      *(undefined1 *)(param_2 + 0x6f3) = 0x20;
      uVar10 = 0;
      do {
        _printk(&haptic_86938_cb_enter,"haptic_hv",0x171,"hw_reset");
        if (*(int *)(param_2 + 0x5c) < 0) {
          _printk(&DAT_00112080,"haptic_hv",0x178,"hw_reset");
        }
        else {
          uVar5 = gpio_to_desc();
          gpiod_set_raw_value_cansleep(uVar5,0);
          usleep_range_state(1000,2000,2);
          uVar5 = gpio_to_desc(*(undefined4 *)(param_2 + 0x5c));
          gpiod_set_raw_value_cansleep(uVar5,1);
          usleep_range_state(8000,0x2134,2);
        }
        auStack_8c[0] = 0;
        uStack_88 = *(undefined2 *)(*(long *)(param_2 + 0x328) + 2);
        uStack_86 = 0x10000;
        auStack_90[0] = 0;
        uStack_82 = 0;
        uStack_76 = 0x10001;
        uStack_72 = 0;
        puStack_80 = auStack_90;
        uStack_78 = uStack_88;
        puStack_70 = auStack_8c;
        iVar3 = i2c_transfer(*(undefined8 *)(*(long *)(param_2 + 0x328) + 0x18),&uStack_88,2);
        if (iVar3 < 0) {
LAB_0010c858:
          _printk(&DAT_00112006,"haptic_hv",0x65,"i2c_r_bytes");
LAB_0010c938:
          _printk(&DAT_00112298,"haptic_hv",0x1bd,"parse_chipid",uVar10);
          _printk(&DAT_00113fbe,"haptic_hv",0x1bf,"parse_chipid",iVar3);
          uVar11 = uVar10;
        }
        else {
          if (iVar3 != 2) {
LAB_0010c918:
            _printk(&DAT_00112d6c,"haptic_hv",0x68,"i2c_r_bytes");
            iVar3 = -6;
            goto LAB_0010c938;
          }
          uVar11 = auStack_8c[0] & 0xff;
          if ((auStack_8c[0] & 0x7c) == 0) {
            auStack_90[0] = 0x57;
            uStack_88 = *(undefined2 *)(*(long *)(param_2 + 0x328) + 2);
            uStack_86 = 0x10000;
            uStack_82 = 0;
            uStack_76 = 0x20001;
            uStack_72 = 0;
            puStack_80 = auStack_90;
            uStack_78 = uStack_88;
            puStack_70 = auStack_8c;
            iVar3 = i2c_transfer(*(undefined8 *)(*(long *)(param_2 + 0x328) + 0x18),&uStack_88,2);
            if (iVar3 < 0) goto LAB_0010c858;
            if (iVar3 != 2) goto LAB_0010c918;
            uVar11 = auStack_8c[0] >> 8 | auStack_8c[0] << 8;
          }
          _printk(&DAT_00112298,"haptic_hv",0x1bd,"parse_chipid",uVar11);
        }
        if (uVar11 < 0x7170) {
          if (uVar11 < 7) {
            if (uVar11 == 4) {
              *(undefined1 *)(param_2 + 4) = 0;
              *(undefined4 *)(param_2 + 0x48) = 4;
              puVar6 = &DAT_001141c2;
              *(undefined1 *)(param_2 + 0x16) = 1;
              uVar5 = 0x1d7;
              goto LAB_0010ce88;
            }
            if (uVar11 == 5) {
              *(undefined1 *)(param_2 + 0x16) = 0;
              puVar6 = &DAT_00113c7a;
              *(undefined4 *)(param_2 + 0x48) = 5;
              *(undefined1 *)(param_2 + 4) = 0;
              uVar5 = 0x1d1;
              goto LAB_0010ce88;
            }
            if (uVar11 == 6) {
              func_0x0010cc60();
              return;
            }
          }
          else if (uVar11 < 0x97) {
            if (uVar11 == 7) {
              *(undefined1 *)(param_2 + 0x16) = 0;
              *(undefined4 *)(param_2 + 0x48) = 7;
              puVar6 = &DAT_00112fbc;
              *(undefined1 *)(param_2 + 4) = 1;
              uVar5 = 0x1dd;
              goto LAB_0010ce88;
            }
            if (uVar11 == 0x95) {
              func_0x0010cd58();
              return;
            }
          }
          else {
            if (uVar11 == 0x97) {
              puVar6 = &DAT_00112444;
              uVar5 = 0x1cb;
              *(undefined4 *)(param_2 + 0x48) = 0x97;
              *(undefined1 *)(param_2 + 0x16) = 1;
              *(undefined1 *)(param_2 + 4) = 0;
              goto LAB_0010ce88;
            }
            if (uVar11 == 0x7150) goto code_r0x0010ca64;
          }
        }
        else if (uVar11 < 0x9260) {
          if (uVar11 < 0x7180) {
            if (uVar11 == 0x7170) {
              *(undefined4 *)(param_2 + 0x48) = 0x7170;
              puVar6 = &DAT_00112c76;
              *(undefined1 *)(param_2 + 4) = 1;
              uVar5 = 0x1ed;
              goto LAB_0010ce88;
            }
            if (uVar11 == 0x7171) {
              func_0x0010cd88();
              return;
            }
          }
          else {
            if (uVar11 == 0x7180) {
              *(undefined4 *)(param_2 + 0x48) = 0x7180;
              puVar6 = &DAT_00112028;
              *(undefined1 *)(param_2 + 4) = 1;
              uVar5 = 0x1f7;
              goto LAB_0010ce88;
            }
            if (uVar11 == 0x9250) {
              func_0x0010ce3c();
              return;
            }
          }
        }
        else if (uVar11 < 0x9280) {
          if (uVar11 == 0x9260) {
            *(undefined4 *)(param_2 + 0x48) = 0x9260;
            puVar6 = &DAT_00113714;
            *(undefined1 *)(param_2 + 0x16) = 0;
            uVar5 = 0x201;
            goto LAB_0010ce88;
          }
          if (uVar11 == 0x9270) {
            func_0x0010ce14();
            return;
          }
        }
        else {
          if (uVar11 == 0x9280) {
            *(undefined4 *)(param_2 + 0x48) = 0x9280;
            puVar6 = &DAT_00113738;
            *(undefined1 *)(param_2 + 0x16) = 0;
            uVar5 = 0x20b;
            goto LAB_0010ce88;
          }
          if (uVar11 == 0x9380) {
            func_0x0010cde8();
            return;
          }
        }
        _printk(&DAT_0011204c,"haptic_hv",0x213,"parse_chipid",uVar11);
        usleep_range_state(2000,0x9c4,2);
        bVar2 = 3 < uVar9;
        uVar9 = uVar9 + 1;
        uVar10 = uVar11;
        if (bVar2) {
          puVar6 = &DAT_00111ea8;
          uVar5 = 0x113d;
          goto LAB_0010cfac;
        }
      } while( true );
    }
    _printk(&DAT_001143dc,"haptic_hv",0x1129,"aw_i2c_probe");
    goto LAB_0010cfc4;
  }
  iVar3 = of_get_named_gpio(lVar8,"reset-gpio",0);
  *(int *)(param_2 + 0x5c) = iVar3;
  if (-1 < iVar3) {
    _printk(&DAT_00111c46,"haptic_hv",0x153,"parse_dt_gpio",iVar3);
    iVar3 = of_get_named_gpio(lVar8,"irq-gpio",0);
    *(int *)(param_2 + 0x50) = iVar3;
    if (iVar3 < 0) {
      _printk(&DAT_001136ec,"haptic_hv",0x156,"parse_dt_gpio");
    }
    else {
      _printk(&DAT_00113f8e,"haptic_hv",0x158,"parse_dt_gpio",iVar3);
    }
    iVar3 = of_property_read_variable_u8_array(lVar8,&DAT_001141bc,param_2 + 0x460,1,0);
    if (iVar3 < 0) {
      _printk(&DAT_001126fe,"haptic_hv",0x15b,"parse_dt_gpio");
    }
    goto LAB_0010c6e4;
  }
  _printk(&DAT_00112f94,"haptic_hv",0x150,"parse_dt_gpio");
  _printk(&DAT_0011399c,"haptic_hv",0x10fa,"aw_i2c_probe");
  iVar3 = -1;
  goto LAB_0010cfd0;
code_r0x0010ca64:
  *(undefined4 *)(param_2 + 0x48) = 0x7150;
  puVar6 = &DAT_00111ed4;
  *(undefined1 *)(param_2 + 4) = 0;
  uVar5 = 0x1e8;
LAB_0010ce88:
  _printk(puVar6,"haptic_hv",uVar5,"parse_chipid");
  uStack_88 = CONCAT11(uStack_88._1_1_,0xaa);
  i2c_w_bytes(param_2,0,&uStack_88,1);
  usleep_range_state(3000,0xdac,2);
  puVar6 = PTR_aw8693x_check_qualify_00100438;
  if (*(int *)(param_2 + 0x48) < 1) {
    _printk(&DAT_001123b6,"haptic_hv",0x21f,"ctrl_init");
    puVar6 = &DAT_00111c70;
    uVar5 = 0x220;
  }
  else {
    if (*(int *)(param_2 + 0x48) == 0x9380) {
      *(undefined ***)(param_2 + 0x5c8) = &aw8693x_func_list;
      if (*(int *)(puVar6 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
        pcVar7 = (code *)SoftwareBreakpoint(0x8229,0x10cf3c);
        (*pcVar7)();
      }
      iVar3 = (*(code *)puVar6)(param_2);
      if (-1 < iVar3) {
        pcVar7 = *(code **)(*(long *)(param_2 + 0x5c8) + 0xe0);
        if (*(int *)(pcVar7 + -4) != 0x2e77d32a) {
                    /* WARNING: Does not return */
          pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x10d010);
          (*pcVar7)();
        }
        (*pcVar7)(lVar1,param_2,lVar8);
        param_1 = lVar1;
        lVar8 = extraout_x8;
        goto SUB_0010c614;
      }
      puVar6 = &DAT_001121cc;
      uVar5 = 0x114b;
      goto LAB_0010cfb4;
    }
    puVar6 = &DAT_00112098;
    uVar5 = 0x240;
  }
  _printk(puVar6,"haptic_hv",uVar5,"ctrl_init");
  puVar6 = &DAT_00113e60;
  uVar5 = 0x1144;
LAB_0010cfac:
  iVar3 = -0x16;
LAB_0010cfb4:
  _printk(puVar6,"haptic_hv",uVar5,"aw_i2c_probe",iVar3);
  if (-1 < *(int *)(param_2 + 0x50)) {
    gpio_free();
  }
LAB_0010cfc4:
  if (-1 < *(int *)(param_2 + 0x5c)) {
    gpio_free();
  }
LAB_0010cfd0:
  devm_kfree(lVar1,param_2);
LAB_0010c678:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == lStack_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar3);
}

