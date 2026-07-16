/* 0010071c gpio_keys_probe */

ulong gpio_keys_probe(long *param_1)

{
  long *plVar1;
  ulong uVar2;
  undefined8 *puVar3;
  undefined8 uVar4;
  undefined1 auVar5 [16];
  bool bVar6;
  byte bVar7;
  uint uVar8;
  int iVar9;
  int iVar10;
  undefined4 uVar11;
  undefined8 *puVar12;
  long lVar13;
  long *plVar14;
  long lVar15;
  ulong uVar16;
  ulong uVar17;
  ulong uVar18;
  char *pcVar19;
  ulong uVar20;
  code *pcVar21;
  long lVar22;
  long *plVar23;
  undefined4 *puVar24;
  long local_88;
  char *local_70;
  long local_68;
  
  lVar13 = sp_el0;
  plVar1 = param_1 + 2;
  local_68 = *(long *)(lVar13 + 0x710);
  plVar23 = (long *)param_1[0x14];
  if (plVar23 == (long *)0x0) {
    iVar9 = device_get_child_node_count(plVar1);
    if (iVar9 == 0) {
      uVar20 = 0xffffffed;
      goto LAB_001014dc;
    }
    uVar20 = (long)iVar9 * 0x38 + 0x30;
    plVar23 = (long *)devm_kmalloc(plVar1,uVar20,0xdc0);
    if (plVar23 == (long *)0x0) {
      uVar20 = 0xfffffff4;
      goto LAB_001014dc;
    }
    if (uVar20 == 0) goto LAB_00101518;
    *(int *)(plVar23 + 1) = iVar9;
    *plVar23 = (long)(plVar23 + 6);
    bVar7 = device_property_present(plVar1,"autorepeat");
    if (uVar20 < 0x10) goto LAB_00101518;
    *(byte *)(plVar23 + 2) = *(byte *)(plVar23 + 2) & 0xfe | bVar7 & 1;
    device_property_read_string(plVar1,"label",plVar23 + 5);
    uVar17 = device_get_next_child_node(plVar1,0);
    if (uVar17 != 0) {
      uVar18 = 0x60;
      do {
        if ((uVar17 < 0xfffffffffffff001) && (*(undefined **)(uVar17 + 8) == &of_fwnode_ops)) {
          uVar11 = irq_of_parse_and_map(uVar17 - 0x18,0);
          if ((((long)uVar18 < 0) ||
              (((lVar13 = (long)iVar9 * -0x38 + 0x30 + uVar18, lVar13 == 0x60 || (uVar20 < uVar18))
               || ((long)uVar18 < 0)))) || ((uVar20 < uVar18 || (lVar13 == 0x60))))
          goto LAB_00101518;
          *(undefined4 *)((long)plVar23 + uVar18) = uVar11;
        }
        iVar10 = fwnode_property_read_u32_array
                           (uVar17,"linux,code",(long)plVar23 + (uVar18 - 0x30),1);
        if (iVar10 != 0) {
          _dev_err(plVar1,"Button without keycode\n");
          if (((uVar17 < 0xfffffffffffff001) && (*(long *)(uVar17 + 8) != 0)) &&
             (pcVar21 = *(code **)(*(long *)(uVar17 + 8) + 8), pcVar21 != (code *)0x0)) {
            if (*(int *)(pcVar21 + -4) != -0x26580391) {
                    /* WARNING: Does not return */
              pcVar21 = (code *)SoftwareBreakpoint(0x8228,0x10142c);
              (*pcVar21)();
            }
            (*pcVar21)(uVar17);
          }
          uVar20 = 0xffffffea;
          goto LAB_001014dc;
        }
        fwnode_property_read_string(uVar17,"label",(long)plVar23 + (uVar18 - 0x20));
        puVar24 = (undefined4 *)((long)plVar23 + (uVar18 - 0x18));
        iVar10 = fwnode_property_read_u32_array(uVar17,"linux,input-type",puVar24,1);
        if (iVar10 != 0) {
          if (((((long)(uVar18 - 0x18) < 0) || (uVar20 <= uVar18 - 0x18)) ||
              ((long)(uVar18 - 0x18) < 0)) || (uVar20 <= uVar18 - 0x18)) goto LAB_00101518;
          *puVar24 = 1;
        }
        uVar16 = fwnode_property_present(uVar17,"wakeup-source");
        if ((uVar16 & 1) == 0) {
          uVar8 = fwnode_property_present(uVar17,"gpio-key,wakeup");
        }
        else {
          uVar8 = 1;
        }
        if ((((long)(uVar18 - 0x14) < 0) || (uVar20 < uVar18 - 0x14)) ||
           (((long)(uVar18 - 0x14) < 0 || (uVar20 < uVar18 - 0x14)))) goto LAB_00101518;
        *(uint *)((long)plVar23 + (uVar18 - 0x14)) = uVar8 & 1;
        fwnode_property_read_u32_array
                  (uVar17,"wakeup-event-action",(long)plVar23 + (uVar18 - 0x10),1);
        bVar7 = fwnode_property_present(uVar17,"linux,can-disable");
        if ((((long)(uVar18 - 8) < 0) || (uVar20 <= uVar18 - 8)) ||
           (((long)(uVar18 - 8) < 0 || (uVar20 <= uVar18 - 8)))) goto LAB_00101518;
        puVar24 = (undefined4 *)((long)plVar23 + (uVar18 - 0xc));
        *(byte *)((long)plVar23 + (uVar18 - 8)) = bVar7 & 1;
        iVar10 = fwnode_property_read_u32_array(uVar17,"debounce-interval",puVar24,1);
        if (iVar10 != 0) {
          uVar16 = uVar18 - 0xc;
          if (((uVar20 < uVar16) || ((long)uVar16 < 0)) || (uVar20 < uVar16)) goto LAB_00101518;
          *puVar24 = 5;
        }
        uVar17 = device_get_next_child_node(plVar1,uVar17);
        uVar18 = uVar18 + 0x38;
      } while (uVar17 != 0);
    }
    if ((long *)0xfffffffffffff000 < plVar23) {
      uVar20 = (ulong)plVar23 & 0xffffffff;
      goto LAB_001014dc;
    }
  }
  auVar5._8_8_ = 0;
  auVar5._0_8_ = (long)(int)plVar23[1];
  uVar20 = (long)(int)plVar23[1] * 0x110;
  uVar17 = uVar20 + 0x48;
  if (0xffffffffffffffb7 < uVar20) {
    uVar17 = 0xffffffffffffffff;
  }
  if (SUB168(auVar5 * ZEXT816(0x110),8) != 0) {
    uVar17 = 0xffffffffffffffff;
  }
  puVar12 = (undefined8 *)devm_kmalloc(plVar1,uVar17,0xdc0);
  if (puVar12 == (undefined8 *)0x0) {
    pcVar19 = "failed to allocate state\n";
LAB_00101330:
    _dev_err(plVar1,pcVar19);
    uVar20 = 0xfffffff4;
    goto LAB_001014dc;
  }
  if ((int)*(uint *)(plVar23 + 1) < 0) {
    puVar12[8] = 0;
    uVar20 = 0xfffffff4;
    goto LAB_001014dc;
  }
  lVar13 = devm_kmalloc(plVar1,(ulong)*(uint *)(plVar23 + 1) << 1,0xdc0);
  puVar12[8] = lVar13;
  if (lVar13 == 0) {
    uVar20 = 0xfffffff4;
    goto LAB_001014dc;
  }
  plVar14 = (long *)devm_input_allocate_device(plVar1);
  if (plVar14 == (long *)0x0) {
    pcVar19 = "failed to allocate input device\n";
    goto LAB_00101330;
  }
  *puVar12 = plVar23;
  if ((uVar17 & 0xfffffffffffffff8) == 8) {
LAB_00101518:
                    /* WARNING: Does not return */
    pcVar21 = (code *)SoftwareBreakpoint(1,0x10151c);
    (*pcVar21)();
  }
  puVar12[1] = plVar14;
  __mutex_init(puVar12 + 2,"&ddata->disable_lock",&gpio_keys_probe___key);
  param_1[0x15] = (long)puVar12;
  plVar14[0x59] = (long)puVar12;
  lVar13 = plVar23[5];
  if (lVar13 == 0) {
    lVar13 = *param_1;
  }
  plVar14[0x52] = (long)plVar1;
  *plVar14 = lVar13;
  plVar14[1] = (long)"gpio-keys_nubia/input0";
  plVar14[0x39] = (long)gpio_keys_open;
  plVar14[0x3a] = (long)gpio_keys_close;
  plVar14[3] = 0x100000100010019;
  plVar14[0x1c] = puVar12[8];
  *(undefined4 *)(plVar14 + 0x1b) = 2;
  *(int *)((long)plVar14 + 0xd4) = (int)plVar23[1];
  if ((*(byte *)(plVar23 + 2) & 1) != 0) {
    plVar14[5] = plVar14[5] | 0x100000;
  }
  if ((int)plVar23[1] < 1) {
    uVar20 = input_register_device(plVar14);
    if ((int)uVar20 != 0) goto LAB_00101340;
LAB_001012d0:
    device_wakeup_disable(plVar1);
    device_set_wakeup_capable(plVar1,0);
  }
  else {
    bVar6 = false;
    uVar18 = 0;
    local_88 = 0;
    do {
      lVar13 = *plVar23;
      if ((param_1[0x14] == 0) && (uVar18 = device_get_next_child_node(plVar1), uVar18 == 0)) {
        _dev_err(plVar1,"missing child device node for entry %d\n",local_88);
        uVar20 = 0xffffffea;
        goto LAB_001014dc;
      }
      puVar24 = (undefined4 *)(lVar13 + local_88 * 0x38);
      lVar13 = local_88 * 0x110;
      pcVar19 = "gpio_keys_nubia";
      if (*(char **)(puVar24 + 4) != (char *)0x0) {
        pcVar19 = *(char **)(puVar24 + 4);
      }
      if (((long)(lVar13 + 0x50U) < 0) || (uVar17 < lVar13 + 0x50U)) goto LAB_00101518;
      uVar20 = lVar13 + 0x48;
      puVar3 = puVar12 + local_88 * 0x22 + 9;
      puVar3[1] = plVar14;
      if (((long)uVar20 < 0) || ((uVar17 < uVar20 || (uVar17 - uVar20 < 8)))) goto LAB_00101518;
      *puVar3 = puVar24;
      uVar20 = lVar13 + 0x14c;
      if (((long)uVar20 < 0) || ((uVar17 < uVar20 || (uVar17 - uVar20 < 4)))) goto LAB_00101518;
      *(undefined4 *)((long)puVar3 + 0x104) = 0;
      if (uVar18 == 0) {
        if ((int)puVar24[1] < 0) {
          uVar20 = lVar13 + 0x58;
          if (((-1 < (long)uVar20) && (uVar20 <= uVar17)) && (7 < uVar17 - uVar20)) {
            uVar20 = puVar3[2];
            goto LAB_00100a5c;
          }
          goto LAB_00101518;
        }
        uVar4 = 5;
        if (puVar24[2] == 0) {
          uVar4 = 1;
        }
        uVar8 = devm_gpio_request_one(plVar1,puVar24[1],uVar4,pcVar19);
        if ((int)uVar8 < 0) {
          uVar20 = (ulong)uVar8;
          _dev_err(plVar1,"Failed to request GPIO %d, error %d\n",puVar24[1],uVar20);
        }
        else {
          lVar15 = gpio_to_desc(puVar24[1]);
          uVar20 = lVar13 + 0x58;
          if ((((long)uVar20 < 0) || (uVar17 < uVar20)) || (uVar17 - uVar20 < 8)) goto LAB_00101518;
          puVar3[2] = lVar15;
          if (lVar15 != 0) goto LAB_00100a60;
          uVar20 = 0xffffffea;
        }
        _printk(&DAT_00102f59,"gpio_keys_probe");
        goto LAB_001014dc;
      }
      uVar20 = devm_fwnode_gpiod_get_index(plVar1,uVar18,0,0,1,pcVar19);
      uVar16 = lVar13 + 0x58;
      if ((((long)uVar16 < 0) || (uVar17 < uVar16)) || (uVar17 - uVar16 < 8)) goto LAB_00101518;
      puVar3[2] = uVar20;
      if (uVar20 < 0xfffffffffffff001) {
LAB_00100a5c:
        if (uVar20 == 0) goto LAB_00100ccc;
LAB_00100a60:
        lVar22 = param_1[0x5f];
        local_70 = (char *)0x0;
        lVar15 = of_get_next_child(lVar22,0);
        while ((lVar15 != 0 &&
               (iVar9 = of_property_read_string(lVar15,"label",&local_70), -1 < iVar9))) {
          of_get_named_gpio(lVar15,"gpios",0);
          iVar9 = strcmp(local_70,*(char **)(puVar24 + 4));
          if (iVar9 == 0) {
            iVar9 = 1;
            goto LAB_00100ac8;
          }
          lVar15 = of_get_next_child(lVar22,lVar15);
        }
        iVar9 = 0;
LAB_00100ac8:
        uVar20 = lVar13 + 0x58;
        if (puVar24[9] != 0) {
          if ((((long)uVar20 < 0) || (uVar17 < uVar20)) || (uVar17 - uVar20 < 8)) goto LAB_00101518;
          iVar10 = gpiod_set_debounce(puVar3[2],puVar24[9] * 1000);
          if (iVar10 < 0) {
            if (((long)(lVar13 + 0x100U) < 0) || (uVar17 < lVar13 + 0x100U)) goto LAB_00101518;
            *(undefined4 *)(puVar3 + 0x17) = puVar24[9];
          }
        }
        iVar10 = puVar24[0xc];
        if (iVar10 == 0) {
          if ((((long)uVar20 < 0) || (uVar17 < uVar20)) || (uVar17 - uVar20 < 8)) goto LAB_00101518;
          uVar16 = gpiod_to_irq(puVar3[2]);
          uVar20 = uVar16 & 0xffffffff;
          iVar10 = (int)uVar16;
          if (-1 < iVar10) goto LAB_00100b58;
          uVar11 = puVar24[1];
          pcVar19 = "Unable to get irq number for GPIO %d, error %d\n";
        }
        else {
          uVar20 = 0xffffffff;
LAB_00100b58:
          uVar16 = lVar13 + 0x104;
          if ((((long)uVar16 < 0) || (uVar17 < uVar16)) || (uVar17 - uVar16 < 4)) goto LAB_00101518;
          *(int *)((long)puVar3 + 0xbc) = iVar10;
          uVar2 = lVar13 + 0x98;
          if ((((long)uVar2 < 0) || (uVar17 < uVar2)) || (uVar17 - uVar2 < 8)) goto LAB_00101518;
          puVar3[10] = 0xfffffffe00000;
          puVar3[0xb] = puVar3 + 0xb;
          puVar3[0xc] = puVar3 + 0xb;
          if (((long)(lVar13 + 0xb0U) < 0) || (uVar17 < lVar13 + 0xb0U)) goto LAB_00101518;
          puVar3[0xd] = gpio_keys_gpio_work_func;
          init_timer_key(puVar3 + 0xe,&delayed_work_timer_fn,0x200000,0,0);
          if ((uVar17 < uVar16) || (uVar17 - uVar16 < 4)) goto LAB_00101518;
          uVar16 = lVar13 + 0x108;
          if ((((long)uVar16 < 0) || (uVar17 < uVar16)) || (uVar17 - uVar16 < 4)) goto LAB_00101518;
          _printk(&DAT_001030c9,uVar20,*(undefined4 *)((long)puVar3 + 0xbc),
                  *(undefined4 *)(puVar3 + 0x18),puVar24[0xc],iVar9);
          if (puVar24[8] == 2) {
            uVar20 = lVar13 + 0x148;
            if ((((long)uVar20 < 0) || (uVar17 < uVar20)) || (uVar17 - uVar20 < 4))
            goto LAB_00101518;
            uVar11 = 1;
            if (iVar9 == 0) {
              uVar11 = 2;
            }
LAB_00100ca0:
            *(undefined4 *)(puVar3 + 0x20) = uVar11;
          }
          else if (puVar24[8] == 1) {
            uVar20 = lVar13 + 0x148;
            if (((-1 < (long)uVar20) && (uVar20 <= uVar17)) && (3 < uVar17 - uVar20)) {
              uVar11 = 1;
              if (iVar9 != 0) {
                uVar11 = 2;
              }
              goto LAB_00100ca0;
            }
            goto LAB_00101518;
          }
          pcVar21 = gpio_keys_gpio_isr;
          uVar20 = 3;
LAB_00100d44:
          if (((long)(lVar13 + 0x60U) < 0) || (uVar17 < lVar13 + 0x60U)) goto LAB_00101518;
          lVar15 = puVar12[8];
          puVar3[3] = lVar15 + local_88 * 2;
          *(short *)(lVar15 + local_88 * 2) = (short)*puVar24;
          uVar8 = puVar24[6];
          if (uVar8 < 2) {
            uVar8 = 1;
          }
          input_set_capability(plVar14,uVar8,*(undefined2 *)puVar3[3]);
          uVar8 = __devm_add_action(plVar1,gpio_keys_quiesce_key,puVar3,"gpio_keys_quiesce_key");
          if (uVar8 != 0) {
            uVar20 = (ulong)uVar8;
            _dev_err(plVar1,"failed to register quiesce action, error: %d\n",uVar20);
            goto LAB_00101470;
          }
          if (*(char *)(puVar24 + 10) == '\0') {
            uVar20 = uVar20 | 0x80;
          }
          uVar16 = lVar13 + 0x104;
          if ((((long)uVar16 < 0) || (uVar17 < uVar16)) || (uVar17 - uVar16 < 4)) goto LAB_00101518;
          uVar8 = devm_request_any_context_irq
                            (plVar1,*(undefined4 *)((long)puVar3 + 0xbc),pcVar21,uVar20,pcVar19,
                             puVar3);
          if (-1 < (int)uVar8) {
            lVar22 = param_1[0x5f];
            lVar15 = of_get_next_child(lVar22,0);
            if (lVar15 != 0) {
              uVar16 = lVar13 + 0x10c;
              do {
                uVar11 = of_get_named_gpio(lVar15,"gpios",0);
                if ((uVar17 < uVar16 || uVar17 - uVar16 < 4) || (long)uVar16 < 0) goto LAB_00101518;
                *(undefined4 *)((long)puVar3 + 0xc4) = uVar11;
                uVar11 = of_get_named_gpio(lVar15,"gpion",0);
                if ((long)(lVar13 + 0x110U) < 0 || uVar17 < lVar13 + 0x110U) goto LAB_00101518;
                *(undefined4 *)(puVar3 + 0x19) = uVar11;
                lVar15 = of_get_next_child(lVar22,lVar15);
              } while (lVar15 != 0);
            }
            uVar16 = lVar13 + 0x110;
            if (((long)uVar16 < 0) || (uVar17 < uVar16)) goto LAB_00101518;
            if (*(int *)(puVar3 + 0x19) != 0) {
              gpio_to_desc();
              uVar11 = gpiod_to_irq();
              uVar2 = lVar13 + 0x108;
              if ((((long)uVar2 < 0) || (uVar17 < uVar2)) || (uVar17 - uVar2 < 4))
              goto LAB_00101518;
              *(undefined4 *)(puVar3 + 0x18) = uVar11;
            }
            __mutex_init(puVar3 + 0x1a,"&bdata->report_lock",&nb_setup_secondary___key);
            uVar2 = lVar13 + 0x10c;
            if ((((-1 < (long)uVar2) && (uVar2 <= uVar17)) && (3 < uVar17 - uVar2)) &&
               (uVar16 <= uVar17)) {
              _printk(&DAT_00102f10,"nb_setup_secondary",*(undefined4 *)((long)puVar3 + 0xc4),
                      *(undefined4 *)(puVar3 + 0x19));
              uVar16 = lVar13 + 0x108;
              if (((-1 < (long)uVar16) && (uVar16 <= uVar17)) && (3 < uVar17 - uVar16)) {
                if ((*(int *)(puVar3 + 0x18) != 0) &&
                   (iVar9 = devm_request_any_context_irq
                                      (plVar1,*(int *)(puVar3 + 0x18),pcVar21,uVar20,pcVar19,puVar3)
                   , iVar9 < 0)) {
                  _printk(&DAT_00102ab2,"gpio_keys_setup_key");
                }
                goto LAB_00100f64;
              }
            }
            goto LAB_00101518;
          }
          uVar20 = lVar13 + 0x104;
          if ((((long)uVar20 < 0) || (uVar17 < uVar20)) || (uVar17 - uVar20 < 4)) goto LAB_00101518;
          uVar11 = *(undefined4 *)((long)puVar3 + 0xbc);
          uVar20 = (ulong)uVar8;
          pcVar19 = "Unable to claim irq %d; error %d\n";
        }
        _dev_err(plVar1,pcVar19,uVar11,uVar20);
LAB_00101470:
        _printk(&DAT_00102f59,"gpio_keys_probe");
        if (((uVar18 != 0) && ((uVar18 < 0xfffffffffffff001 && (*(long *)(uVar18 + 8) != 0)))) &&
           (pcVar21 = *(code **)(*(long *)(uVar18 + 8) + 8), pcVar21 != (code *)0x0)) {
          if (*(int *)(pcVar21 + -4) != -0x26580391) {
                    /* WARNING: Does not return */
            pcVar21 = (code *)SoftwareBreakpoint(0x8228,0x1014bc);
            (*pcVar21)();
          }
          (*pcVar21)();
        }
        goto LAB_001014dc;
      }
      iVar9 = (int)uVar20;
      if (iVar9 == -2) {
        if ((uVar16 <= uVar17) && (7 < uVar17 - uVar16)) {
          puVar3[2] = 0;
LAB_00100ccc:
          if (puVar24[0xc] == 0) {
            pcVar19 = "Found button without gpio or irq\n";
          }
          else {
            uVar20 = lVar13 + 0x104;
            if ((((long)uVar20 < 0) || (uVar17 < uVar20)) || (uVar17 - uVar20 < 4))
            goto LAB_00101518;
            *(undefined4 *)((long)puVar3 + 0xbc) = puVar24[0xc];
            if ((uint)puVar24[6] < 2) {
              if ((-1 < (long)(lVar13 + 0x90U)) && (lVar13 + 0x90U <= uVar17)) {
                *(undefined4 *)(puVar3 + 9) = puVar24[9];
                init_timer_key(puVar3 + 4,gpio_keys_irq_timer,0,0,0);
                uVar20 = 0;
                pcVar21 = gpio_keys_irq_isr;
                goto LAB_00100d44;
              }
              goto LAB_00101518;
            }
            pcVar19 = "Only EV_KEY allowed for IRQ buttons.\n";
          }
          _dev_err(plVar1,pcVar19);
          uVar20 = 0xffffffea;
          goto LAB_00101470;
        }
        goto LAB_00101518;
      }
      if ((iVar9 == -0x205) ||
         (_dev_err(plVar1,"failed to get gpio: %d\n",uVar20 & 0xffffffff), iVar9 != 0))
      goto LAB_00101470;
LAB_00100f64:
      if (puVar24[7] != 0) {
        bVar6 = true;
      }
      local_88 = local_88 + 1;
    } while (local_88 < (int)plVar23[1]);
    if ((((uVar18 != 0) && (uVar18 < 0xfffffffffffff001)) && (*(long *)(uVar18 + 8) != 0)) &&
       (pcVar21 = *(code **)(*(long *)(uVar18 + 8) + 8), pcVar21 != (code *)0x0)) {
      if (*(int *)(pcVar21 + -4) != -0x26580391) {
                    /* WARNING: Does not return */
        pcVar21 = (code *)SoftwareBreakpoint(0x8228,0x101298);
        (*pcVar21)();
      }
      (*pcVar21)(uVar18);
    }
    uVar20 = input_register_device(plVar14);
    if ((int)uVar20 != 0) {
LAB_00101340:
      uVar20 = uVar20 & 0xffffffff;
      _dev_err(plVar1,"Unable to register input device, error: %d\n",uVar20);
      goto LAB_001014dc;
    }
    if (!bVar6) goto LAB_001012d0;
    device_set_wakeup_capable(plVar1,1);
    device_wakeup_enable(plVar1);
  }
  uVar20 = 0;
LAB_001014dc:
  lVar13 = sp_el0;
  if (*(long *)(lVar13 + 0x710) == local_68) {
    return uVar20 & 0xffffffff;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101530 gpio_keys_shutdown */

void gpio_keys_shutdown(long param_1)

{
  int iVar1;
  
  iVar1 = gpio_keys_suspend(param_1 + 0x10);
  if (iVar1 != 0) {
    _dev_err(param_1 + 0x10,"failed to shutdown\n");
  }
  return;
}



/* 00101578 gpio_keys_open */

undefined8 gpio_keys_open(long param_1)

{
  undefined8 uVar1;
  long lVar2;
  code *pcVar3;
  long lVar4;
  long *plVar5;
  long *plVar6;
  long lVar7;
  
  plVar6 = *(long **)(param_1 + 0x2c8);
  lVar2 = *plVar6;
  pcVar3 = *(code **)(lVar2 + 0x18);
  if (pcVar3 != (code *)0x0) {
    if (*(int *)(pcVar3 + -4) != 0x2a703c0b) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8229,0x1015b8);
      (*pcVar3)();
    }
    uVar1 = (*pcVar3)(*(undefined8 *)(param_1 + 0x290));
    if ((int)uVar1 != 0) {
      return uVar1;
    }
    lVar2 = *plVar6;
  }
  lVar4 = plVar6[1];
  if (0 < *(int *)(lVar2 + 8)) {
    lVar7 = 0;
    plVar5 = plVar6 + 9;
    do {
      if (plVar5[2] != 0) {
        gpio_keys_gpio_report_event(plVar5);
        lVar2 = *plVar6;
      }
      lVar7 = lVar7 + 1;
      plVar5 = plVar5 + 0x22;
    } while (lVar7 < *(int *)(lVar2 + 8));
  }
  input_event(lVar4,0,0,0);
  return 0;
}



/* 0010163c gpio_keys_close */

void gpio_keys_close(long param_1)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(**(long **)(param_1 + 0x2c8) + 0x20);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != 0x6c81b8c8) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x101674);
      (*pcVar1)();
    }
    (*pcVar1)(*(undefined8 *)(param_1 + 0x290));
  }
  return;
}



/* 00101684 gpio_keys_gpio_report_event */

void gpio_keys_gpio_report_event(long *param_1)

{
  undefined4 *puVar1;
  long lVar2;
  uint uVar3;
  undefined4 uVar4;
  short sVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  undefined *puVar9;
  uint uVar10;
  
  puVar1 = (undefined4 *)*param_1;
  lVar2 = param_1[1];
  uVar3 = puVar1[6];
  uVar10 = uVar3;
  if (uVar3 < 2) {
    uVar10 = 1;
  }
  uVar8 = nb_key_is_need_report_stat_rec;
  if (-1 < (int)param_1[0x19]) {
    gpio_to_desc(*(undefined4 *)((long)param_1 + 0xc4));
    iVar6 = gpiod_get_raw_value();
    gpio_to_desc((int)param_1[0x19]);
    iVar7 = gpiod_get_raw_value();
    if ((iVar6 == 0) == (iVar7 == 0)) {
      _printk(&DAT_00102f85,"nb_key_is_need_report",iVar6 == 0);
      return;
    }
    uVar8 = (uint)(iVar7 == 0) | (uint)(iVar6 == 0) << 1;
    if (nb_key_is_need_report_stat_rec == uVar8) {
      return;
    }
  }
  nb_key_is_need_report_stat_rec = uVar8;
  sVar5 = *(short *)param_1[3];
  uVar8 = gpiod_get_value_cansleep(param_1[2]);
  if ((sVar5 == 0xf) && (uVar3 == 5)) {
    uVar8 = (uint)(uVar8 == 0);
LAB_001017b4:
    input_event(lVar2,uVar10,*(undefined2 *)param_1[3],uVar8);
    uVar4 = *puVar1;
    puVar9 = &DAT_00102ed0;
  }
  else {
    if ((int)uVar8 < 0) {
      _dev_err(*(undefined8 *)(lVar2 + 0x290),"failed to get gpio state: %d\n",uVar8);
      return;
    }
    if (uVar3 != 3) goto LAB_001017b4;
    if (uVar8 == 0) goto LAB_0010173c;
    input_event(lVar2,3,*puVar1,puVar1[0xb]);
    uVar4 = *puVar1;
    uVar8 = puVar1[0xb];
    puVar9 = &DAT_00102a6c;
    uVar10 = 3;
  }
  _printk(puVar9,uVar10,uVar4,uVar8);
LAB_0010173c:
  input_event(lVar2,0,0,0);
  return;
}



/* 0010181c gpio_keys_gpio_work_func */

void gpio_keys_gpio_work_func(long param_1)

{
  mutex_lock(param_1 + 0x80);
  gpio_keys_gpio_report_event(param_1 + -0x50);
  if (*(int *)(*(long *)(param_1 + -0x50) + 0x1c) != 0) {
    pm_relax(*(undefined8 *)(*(long *)(param_1 + -0x48) + 0x290));
  }
  mutex_unlock(param_1 + 0x80);
  return;
}



/* 00101878 gpio_keys_gpio_isr */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 gpio_keys_gpio_isr(int param_1,undefined8 *param_2)

{
  undefined8 uVar1;
  code *pcVar2;
  undefined8 uVar3;
  undefined4 *puVar4;
  
  if ((*(int *)((long)param_2 + 0xbc) != param_1) && (*(int *)(param_2 + 0x18) != param_1)) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x800,0x101924);
    (*pcVar2)();
  }
  puVar4 = (undefined4 *)*param_2;
  if (((puVar4[7] != 0) &&
      (pm_stay_awake(*(undefined8 *)(param_2[1] + 0x290)),
      *(char *)((long)param_2 + 0x10a) == '\x01')) && ((uint)puVar4[6] < 2)) {
    input_event(param_2[1],1,*puVar4,1);
  }
  uVar1 = _system_wq;
  uVar3 = __msecs_to_jiffies(*(undefined4 *)(param_2 + 0x17));
  mod_delayed_work_on(0x20,uVar1,param_2 + 10,uVar3);
  return 1;
}



/* 00101928 gpio_keys_irq_timer */

void gpio_keys_irq_timer(long param_1)

{
  undefined8 uVar1;
  undefined8 uVar2;
  
  uVar2 = *(undefined8 *)(param_1 + -0x18);
  uVar1 = _raw_spin_lock_irqsave(param_1 + 0xe4);
  if (*(char *)(param_1 + 0xe9) == '\x01') {
    input_event(uVar2,1,**(undefined2 **)(param_1 + -8),0);
    input_event(uVar2,0,0,0);
    *(undefined1 *)(param_1 + 0xe9) = 0;
  }
  _raw_spin_unlock_irqrestore(param_1 + 0xe4,uVar1);
  return;
}



/* 001019b0 gpio_keys_irq_isr */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 gpio_keys_irq_isr(int param_1,long *param_2)

{
  code *pcVar1;
  undefined8 uVar2;
  long lVar3;
  long lVar4;
  
  if (*(int *)((long)param_2 + 0xbc) != param_1) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x800,0x101ac8);
    (*pcVar1)();
  }
  lVar4 = param_2[1];
  uVar2 = _raw_spin_lock_irqsave((long)param_2 + 0x104);
  if ((*(byte *)((long)param_2 + 0x109) & 1) == 0) {
    if (*(int *)(*param_2 + 0x1c) != 0) {
      pm_wakeup_dev_event(*(undefined8 *)(param_2[1] + 0x290),0,0);
    }
    input_event(lVar4,1,*(undefined2 *)param_2[3],1);
    input_event(lVar4,0,0,0);
    if ((int)param_2[9] == 0) {
      input_event(lVar4,1,*(undefined2 *)param_2[3],0);
      input_event(lVar4,0,0,0);
      goto LAB_00101aa0;
    }
    *(undefined1 *)((long)param_2 + 0x109) = 1;
  }
  else if ((int)param_2[9] == 0) goto LAB_00101aa0;
  lVar4 = _jiffies;
  lVar3 = __msecs_to_jiffies();
  mod_timer(param_2 + 4,lVar3 + lVar4);
LAB_00101aa0:
  _raw_spin_unlock_irqrestore((long)param_2 + 0x104,uVar2);
  return 1;
}



/* 00101acc gpio_keys_quiesce_key */

void gpio_keys_quiesce_key(long param_1)

{
  if (*(long *)(param_1 + 0x10) == 0) {
    timer_delete_sync(param_1 + 0x20);
  }
  else {
    cancel_delayed_work_sync(param_1 + 0x50);
  }
  return;
}



/* 00101b04 gpio_keys_suspend */

int gpio_keys_suspend(long param_1)

{
  int iVar1;
  int iVar2;
  long lVar3;
  code *pcVar4;
  long lVar5;
  long *plVar6;
  long lVar7;
  
  plVar6 = *(long **)(param_1 + 0x98);
  lVar5 = plVar6[1];
  if (((*(ushort *)(param_1 + 0x10c) & 1) == 0) || (*(long *)(param_1 + 0x148) == 0)) {
    mutex_lock(lVar5 + 0x1f8);
    if ((*(int *)(lVar5 + 0x228) != 0) &&
       (pcVar4 = *(code **)(**(long **)(lVar5 + 0x2c8) + 0x20), pcVar4 != (code *)0x0)) {
      if (*(int *)(pcVar4 + -4) != 0x6c81b8c8) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x101c20);
        (*pcVar4)();
      }
      (*pcVar4)(*(undefined8 *)(lVar5 + 0x290));
    }
    mutex_unlock(lVar5 + 0x1f8);
  }
  else if (0 < *(int *)(*plVar6 + 8)) {
    lVar7 = 0;
    lVar5 = 0;
    do {
      if (*(int *)(*(long *)((long)plVar6 + lVar7 + 0x48) + 0x1c) != 0) {
        iVar1 = irq_set_irq_wake(*(undefined4 *)((long)plVar6 + lVar7 + 0x104),1);
        if (iVar1 != 0) {
          _dev_err(*(undefined8 *)(*(long *)((long)plVar6 + lVar7 + 0x50) + 0x290),
                   "failed to configure IRQ %d as wakeup source: %d\n",
                   *(undefined4 *)((long)plVar6 + lVar7 + 0x104),iVar1);
joined_r0x00101c74:
          for (; lVar7 != 0; lVar7 = lVar7 + -0x110) {
            if (*(int *)(*(long *)((long)plVar6 + lVar7 + -200) + 0x1c) != 0) {
              if ((*(int *)((long)plVar6 + lVar7 + 0x38) != 0) &&
                 (iVar2 = irq_set_irq_type(*(undefined4 *)((long)plVar6 + lVar7 + -0xc),3),
                 iVar2 != 0)) {
                _dev_warn(*(undefined8 *)(*(long *)((long)plVar6 + lVar7 + -0xc0) + 0x290),
                          "failed to restore interrupt trigger for IRQ %d: %d\n",
                          *(undefined4 *)((long)plVar6 + lVar7 + -0xc),iVar2);
              }
              iVar2 = irq_set_irq_wake(*(undefined4 *)((long)plVar6 + lVar7 + -0xc),0);
              if (iVar2 != 0) {
                _dev_warn(*(undefined8 *)(*(long *)((long)plVar6 + lVar7 + -0xc0) + 0x290),
                          "failed to disable IRQ %d as wake source: %d\n",
                          *(undefined4 *)((long)plVar6 + lVar7 + -0xc));
              }
            }
            *(undefined1 *)((long)plVar6 + lVar7 + 0x42) = 0;
          }
          return iVar1;
        }
        if ((*(int *)((long)plVar6 + lVar7 + 0x148) != 0) &&
           (iVar1 = irq_set_irq_type(*(undefined4 *)((long)plVar6 + lVar7 + 0x104)), iVar1 != 0)) {
          _dev_err(*(undefined8 *)(*(long *)((long)plVar6 + lVar7 + 0x50) + 0x290),
                   "failed to set wakeup trigger %08x for IRQ %d: %d\n",
                   *(undefined4 *)((long)plVar6 + lVar7 + 0x148),
                   *(undefined4 *)((long)plVar6 + lVar7 + 0x104),iVar1);
          irq_set_irq_wake(*(undefined4 *)((long)plVar6 + lVar7 + 0x104),0);
          goto joined_r0x00101c74;
        }
      }
      lVar3 = *plVar6;
      *(undefined1 *)((long)plVar6 + lVar7 + 0x152) = 1;
      lVar5 = lVar5 + 1;
      lVar7 = lVar7 + 0x110;
    } while (lVar5 < *(int *)(lVar3 + 8));
  }
  return 0;
}



/* 00101d18 gpio_keys_show_keys */

void gpio_keys_show_keys(long param_1,undefined8 param_2,undefined8 param_3)

{
  gpio_keys_attr_show_helper(*(undefined8 *)(param_1 + 0x98),param_3,1,0);
  return;
}



/* 00101d44 gpio_keys_attr_show_helper */

long gpio_keys_attr_show_helper(long *param_1,long param_2,uint param_3,ulong param_4)

{
  code *pcVar1;
  int iVar2;
  long lVar3;
  undefined4 uVar4;
  long lVar5;
  long *plVar6;
  ulong uVar7;
  
  if ((param_3 & 0xfffffffb) != 1) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x800,0x101e84);
    (*pcVar1)();
  }
  uVar4 = 0x300;
  if (param_3 != 1) {
    uVar4 = 0x11;
  }
  _printk(&DAT_0010304e,uVar4);
  lVar3 = bitmap_zalloc(uVar4,0xcc0);
  if (lVar3 == 0) {
    lVar5 = -0xc;
  }
  else {
    if (0 < *(int *)(*param_1 + 8)) {
      lVar5 = 0;
      plVar6 = param_1;
      do {
        if ((*(uint *)(plVar6[9] + 0x18) == param_3) &&
           (((param_4 & 1) == 0 || ((char)plVar6[0x2a] == '\x01')))) {
          uVar7 = (ulong)(*(ushort *)plVar6[0xc] >> 3) & 0x1ff8;
          *(ulong *)(lVar3 + uVar7) =
               *(ulong *)(lVar3 + uVar7) | 1L << ((ulong)*(ushort *)plVar6[0xc] & 0x3f);
        }
        lVar5 = lVar5 + 1;
        plVar6 = plVar6 + 0x22;
      } while (lVar5 < *(int *)(*param_1 + 8));
    }
    iVar2 = scnprintf(param_2,0xfff,"%*pbl",uVar4,lVar3);
    lVar5 = (long)iVar2 + 1;
    *(undefined2 *)(param_2 + iVar2) = 10;
    bitmap_free(lVar3);
  }
  return lVar5;
}



/* 00101e88 gpio_keys_show_switches */

void gpio_keys_show_switches(long param_1,undefined8 param_2,undefined8 param_3)

{
  gpio_keys_attr_show_helper(*(undefined8 *)(param_1 + 0x98),param_3,5,0);
  return;
}



/* 00101eb8 gpio_keys_show_disabled_keys */

void gpio_keys_show_disabled_keys(long param_1,undefined8 param_2,undefined8 param_3)

{
  gpio_keys_attr_show_helper(*(undefined8 *)(param_1 + 0x98),param_3,1,1);
  return;
}



/* 00101ee8 gpio_keys_store_disabled_keys */

long gpio_keys_store_disabled_keys(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  long lVar1;
  
  lVar1 = gpio_keys_attr_store_helper(*(undefined8 *)(param_1 + 0x98),param_3,1);
  if (lVar1 != 0) {
    param_4 = lVar1;
  }
  return param_4;
}



/* 00101f24 gpio_keys_attr_store_helper */

long gpio_keys_attr_store_helper(long *param_1,undefined8 param_2,uint param_3)

{
  ulong *puVar1;
  byte bVar2;
  ushort uVar3;
  code *pcVar4;
  int iVar5;
  ulong *puVar6;
  undefined1 uVar7;
  uint uVar8;
  ulong uVar9;
  long *plVar10;
  long lVar11;
  long lVar12;
  
  if ((param_3 & 0xfffffffb) != 1) {
                    /* WARNING: Does not return */
    pcVar4 = (code *)SoftwareBreakpoint(0x800,0x102244);
    (*pcVar4)();
  }
  uVar8 = 0x300;
  if (param_3 != 1) {
    uVar8 = 0x11;
  }
  lVar12 = param_1[1];
  lVar11 = 0x30;
  if (param_3 != 1) {
    lVar11 = 200;
  }
  puVar6 = (ulong *)bitmap_zalloc(uVar8,0xcc0);
  if (puVar6 == (ulong *)0x0) {
    return -0xc;
  }
  iVar5 = bitmap_parselist(param_2,puVar6,uVar8);
  if (iVar5 != 0) {
    lVar11 = (long)iVar5;
    goto LAB_001020b8;
  }
  puVar1 = (ulong *)(lVar12 + lVar11);
  if (param_3 == 1) {
    if (((((((*puVar6 & (*puVar1 ^ 0xffffffffffffffff)) == 0) &&
           ((puVar6[1] & (puVar1[1] ^ 0xffffffffffffffff)) == 0)) &&
          ((puVar6[2] & (puVar1[2] ^ 0xffffffffffffffff)) == 0)) &&
         ((((puVar6[3] & (puVar1[3] ^ 0xffffffffffffffff)) == 0 &&
           ((puVar6[4] & (puVar1[4] ^ 0xffffffffffffffff)) == 0)) &&
          (((puVar6[5] & (puVar1[5] ^ 0xffffffffffffffff)) == 0 &&
           (((puVar6[6] & (puVar1[6] ^ 0xffffffffffffffff)) == 0 &&
            ((puVar6[7] & (puVar1[7] ^ 0xffffffffffffffff)) == 0)))))))) &&
        ((puVar6[8] & (puVar1[8] ^ 0xffffffffffffffff)) == 0)) &&
       ((((puVar6[9] & (puVar1[9] ^ 0xffffffffffffffff)) == 0 &&
         ((puVar6[10] & (puVar1[10] ^ 0xffffffffffffffff)) == 0)) &&
        ((puVar6[0xb] & (puVar1[0xb] ^ 0xffffffffffffffff)) == 0)))) {
      lVar11 = 0xc;
      goto LAB_00102088;
    }
LAB_001020b4:
    lVar11 = -0x16;
  }
  else {
    lVar11 = 0;
LAB_00102088:
    if ((uVar8 & 0x11) != 0) {
      uVar9 = 0x1ffff;
      if (param_3 == 1) {
        uVar9 = 0xffffffffffffffff;
      }
      if ((puVar6[lVar11] & uVar9 & (puVar1[lVar11] ^ 0xffffffffffffffff)) != 0) goto LAB_001020b4;
    }
    _printk(&DAT_00102d88,uVar8,param_3);
    uVar9 = (ulong)*(uint *)(*param_1 + 8);
    if (0 < (int)*(uint *)(*param_1 + 8)) {
      plVar10 = param_1 + 0xc;
      do {
        if (((*(uint *)(plVar10[-3] + 0x18) == param_3) &&
            ((*(ulong *)((long)puVar6 + ((ulong)(*(ushort *)*plVar10 >> 3) & 0x1ff8)) >>
              ((ulong)*(ushort *)*plVar10 & 0x3f) & 1) != 0)) &&
           (*(char *)(plVar10[-3] + 0x28) != '\x01')) goto LAB_001020b4;
        uVar9 = uVar9 - 1;
        plVar10 = plVar10 + 0x22;
      } while (uVar9 != 0);
    }
    mutex_lock(param_1 + 2);
    if (0 < *(int *)(*param_1 + 8)) {
      lVar12 = 0;
      lVar11 = 0;
      do {
        if (*(uint *)(*(long *)((long)param_1 + lVar12 + 0x48) + 0x18) == param_3) {
          uVar3 = **(ushort **)((long)param_1 + lVar12 + 0x60);
          bVar2 = *(byte *)((long)param_1 + lVar12 + 0x150);
          if ((*(ulong *)((long)puVar6 + ((ulong)(uVar3 >> 3) & 0x1ff8)) >> ((ulong)uVar3 & 0x3f) &
              1) == 0) {
            if (bVar2 != 0) {
              enable_irq(*(undefined4 *)((long)param_1 + lVar12 + 0x104));
              if (*(int *)((long)param_1 + lVar12 + 0x108) != 0) {
                enable_irq();
              }
              uVar7 = 0;
              goto LAB_00102188;
            }
          }
          else if ((bVar2 & 1) == 0) {
            disable_irq(*(undefined4 *)((long)param_1 + lVar12 + 0x104));
            if (*(int *)((long)param_1 + lVar12 + 0x108) != 0) {
              disable_irq();
            }
            if (*(long *)((long)param_1 + lVar12 + 0x58) == 0) {
              timer_delete_sync((long)param_1 + lVar12 + 0x68);
            }
            else {
              cancel_delayed_work_sync((long)param_1 + lVar12 + 0x98);
            }
            uVar7 = 1;
LAB_00102188:
            *(undefined1 *)((long)param_1 + lVar12 + 0x150) = uVar7;
          }
        }
        lVar11 = lVar11 + 1;
        lVar12 = lVar12 + 0x110;
      } while (lVar11 < *(int *)(*param_1 + 8));
    }
    mutex_unlock(param_1 + 2);
    lVar11 = 0;
  }
LAB_001020b8:
  bitmap_free(puVar6);
  return lVar11;
}



/* 00102248 gpio_keys_show_disabled_switches */

void gpio_keys_show_disabled_switches(long param_1,undefined8 param_2,undefined8 param_3)

{
  gpio_keys_attr_show_helper(*(undefined8 *)(param_1 + 0x98),param_3,5,1);
  return;
}



/* 00102278 gpio_keys_store_disabled_switches */

long gpio_keys_store_disabled_switches
               (long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  long lVar1;
  
  lVar1 = gpio_keys_attr_store_helper(*(undefined8 *)(param_1 + 0x98),param_3,5);
  if (lVar1 != 0) {
    param_4 = lVar1;
  }
  return param_4;
}



/* 001022b8 gpio_keys_show_GamekeyStatus */

long gpio_keys_show_GamekeyStatus(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  int iVar2;
  ulong uVar3;
  long *plVar4;
  
  plVar4 = *(long **)(param_1 + 0x98);
  uVar3 = (ulong)*(uint *)(*plVar4 + 8);
  if (0 < (int)*(uint *)(*plVar4 + 8)) {
    do {
      if (((plVar4[9] != 0) && (*(short *)plVar4[0xc] == 0xf)) && (*(int *)(plVar4[9] + 0x18) == 5))
      {
        iVar1 = gpiod_get_value_cansleep(plVar4[0xb]);
        gpio_to_desc((int)plVar4[0x22]);
        iVar2 = gpiod_get_raw_value();
        uVar3 = (ulong)(iVar1 == 0 && iVar2 != 0);
        goto LAB_00102348;
      }
      uVar3 = uVar3 - 1;
      plVar4 = plVar4 + 0x22;
    } while (uVar3 != 0);
  }
  uVar3 = 0xffffffff;
LAB_00102348:
  _printk(&DAT_00102b65,uVar3);
  iVar1 = snprintf(param_3,4,"%d\n",uVar3);
  return (long)iVar1;
}



/* 00102388 gpio_keys_store_GamekeyStatus */

undefined8 gpio_keys_store_GamekeyStatus(void)

{
  undefined8 in_x3;
  
  _printk(&DAT_00102dce);
  return in_x3;
}



/* 001023c0 gpio_keys_resume */

int gpio_keys_resume(long param_1)

{
  int iVar1;
  code *pcVar2;
  long *plVar3;
  long *plVar4;
  long lVar5;
  long lVar6;
  long lVar7;
  undefined4 *puVar8;
  long *plVar9;
  long lVar10;
  
  plVar4 = *(long **)(param_1 + 0x98);
  lVar5 = plVar4[1];
  if (((*(ushort *)(param_1 + 0x10c) & 1) == 0) || (*(long *)(param_1 + 0x148) == 0)) {
    mutex_lock(lVar5 + 0x1f8);
    if (*(int *)(lVar5 + 0x228) != 0) {
      plVar9 = *(long **)(lVar5 + 0x2c8);
      lVar6 = *plVar9;
      pcVar2 = *(code **)(lVar6 + 0x18);
      if (pcVar2 != (code *)0x0) {
        if (*(int *)(pcVar2 + -4) != 0x2a703c0b) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(0x8229,0x1024e8);
          (*pcVar2)();
        }
        iVar1 = (*pcVar2)(*(undefined8 *)(lVar5 + 0x290));
        if (iVar1 != 0) {
          mutex_unlock(lVar5 + 0x1f8);
          return iVar1;
        }
        lVar6 = *plVar9;
      }
      lVar7 = plVar9[1];
      if (0 < *(int *)(lVar6 + 8)) {
        lVar10 = 0;
        plVar3 = plVar9 + 9;
        do {
          if (plVar3[2] != 0) {
            gpio_keys_gpio_report_event(plVar3);
            lVar6 = *plVar9;
          }
          lVar10 = lVar10 + 1;
          plVar3 = plVar3 + 0x22;
        } while (lVar10 < *(int *)(lVar6 + 8));
      }
      input_event(lVar7,0,0,0);
    }
    mutex_unlock(lVar5 + 0x1f8);
    lVar5 = *plVar4;
    iVar1 = *(int *)(lVar5 + 8);
  }
  else {
    if (*(int *)(*plVar4 + 8) < 1) {
      lVar6 = plVar4[1];
      goto LAB_001025c0;
    }
    lVar6 = 0;
    puVar8 = (undefined4 *)((long)plVar4 + 0x104);
    do {
      *(undefined1 *)((long)puVar8 + 0x4e) = 0;
      lVar5 = irq_get_irq_data(*puVar8);
      if ((*(byte *)(*(long *)(lVar5 + 0x10) + 1) >> 6 & 1) != 0) {
        if ((puVar8[0x11] != 0) && (iVar1 = irq_set_irq_type(*puVar8,3), iVar1 != 0)) {
          _dev_warn(*(undefined8 *)(*(long *)(puVar8 + -0x2d) + 0x290),
                    "failed to restore interrupt trigger for IRQ %d: %d\n",*puVar8,iVar1);
        }
        iVar1 = irq_set_irq_wake(*puVar8,0);
        if (iVar1 != 0) {
          _dev_warn(*(undefined8 *)(*(long *)(puVar8 + -0x2d) + 0x290),
                    "failed to disable IRQ %d as wake source: %d\n",*puVar8,iVar1);
        }
      }
      lVar5 = *plVar4;
      lVar6 = lVar6 + 1;
      puVar8 = puVar8 + 0x44;
      iVar1 = *(int *)(lVar5 + 8);
    } while (lVar6 < iVar1);
  }
  lVar6 = plVar4[1];
  if (0 < iVar1) {
    lVar7 = 0;
    plVar9 = plVar4 + 9;
    do {
      if (plVar9[2] != 0) {
        gpio_keys_gpio_report_event(plVar9);
        lVar5 = *plVar4;
      }
      lVar7 = lVar7 + 1;
      plVar9 = plVar9 + 0x22;
    } while (lVar7 < *(int *)(lVar5 + 8));
  }
LAB_001025c0:
  input_event(lVar6,0,0,0);
  return 0;
}



/* 001025f4 init_module */

void init_module(void)

{
  __platform_driver_register(gpio_keys_device_driver,&__this_module);
  return;
}



/* 00102624 cleanup_module */

void cleanup_module(void)

{
  platform_driver_unregister(gpio_keys_device_driver);
  return;
}



