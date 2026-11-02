
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

