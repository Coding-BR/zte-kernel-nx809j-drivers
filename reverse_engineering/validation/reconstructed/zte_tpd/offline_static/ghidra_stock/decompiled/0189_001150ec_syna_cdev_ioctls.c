
long syna_cdev_ioctls(undefined8 param_1,byte param_2,ulong param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  byte bVar3;
  ushort uVar4;
  undefined2 uVar5;
  undefined8 *puVar6;
  ulong uVar7;
  byte *pbVar8;
  ulong uVar9;
  long lVar10;
  bool bVar11;
  uint uVar12;
  uint uVar13;
  int iVar14;
  ulong uVar15;
  long lVar16;
  long lVar17;
  void *pvVar18;
  undefined *puVar19;
  ulong __n;
  undefined8 *puVar20;
  undefined8 uVar21;
  char *pcVar22;
  uint uVar23;
  code *pcVar24;
  ulong uVar25;
  long *plVar26;
  ulong uVar27;
  long *plVar28;
  long *plVar29;
  long lVar30;
  byte *pbVar31;
  undefined8 local_188;
  ulong local_180;
  undefined1 auStack_178 [4];
  int local_174;
  undefined8 local_170;
  undefined8 local_168;
  undefined8 local_160;
  undefined8 local_158;
  undefined8 local_150;
  undefined8 local_148;
  undefined8 local_140;
  undefined8 local_138;
  ulong local_130;
  undefined8 uStack_128;
  undefined8 local_120;
  undefined8 uStack_118;
  undefined8 local_110;
  undefined8 uStack_108;
  undefined8 local_100;
  undefined8 uStack_f8;
  undefined8 local_f0;
  undefined8 uStack_e8;
  undefined8 local_e0;
  undefined8 uStack_d8;
  undefined8 local_d0;
  undefined8 uStack_c8;
  undefined8 local_c0;
  undefined8 uStack_b8;
  undefined8 local_b0;
  undefined8 uStack_a8;
  undefined8 local_a0;
  undefined8 uStack_98;
  undefined8 local_90;
  undefined8 uStack_88;
  undefined8 local_80;
  undefined8 uStack_78;
  long local_70;
  
  lVar30 = sp_el0;
  local_70 = *(long *)(lVar30 + 0x710);
  local_188 = 0;
  local_180 = 0;
  plVar28 = *(long **)(g_cdev_data + 0xa8);
  mutex_lock(&DAT_00131e20);
  if (param_2 < 0x10) {
    if (param_2 < 2) {
      if (param_2 == 0) {
        uVar12 = syna_tcm_reset(*plVar28,*(undefined4 *)(*plVar28 + 0x20c));
        if ((int)uVar12 < 0) {
          puVar19 = &DAT_0013a66c;
        }
        else {
          if (*(char *)(*plVar28 + 9) != '\x01') goto LAB_001168dc;
          if (*(int *)((code *)plVar28[0xd7] + -4) != -0x51dfb8e4) {
                    /* WARNING: Does not return */
            pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x11538c);
            (*pcVar24)();
          }
          uVar12 = (*(code *)plVar28[0xd7])(plVar28);
          if (-1 < (int)uVar12) goto LAB_001168dc;
          puVar19 = &DAT_00132d53;
        }
        _printk(puVar19,"syna_cdev_ioctl_old_dispatch");
        goto LAB_001168dc;
      }
      if (param_2 == 1) {
        pcVar24 = *(code **)(plVar28[0x4e] + 0x40);
        if (pcVar24 == (code *)0x0) {
          uVar12 = 0xffffffea;
          goto LAB_001168dc;
        }
        if (param_3 == 1) {
          uVar21 = 1;
        }
        else {
          if (param_3 != 0) goto LAB_001168d8;
          uVar21 = 0;
        }
        if (*(int *)(pcVar24 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x1153cc);
          (*pcVar24)();
        }
        uVar12 = (*pcVar24)(plVar28[0x4e] + 8,uVar21);
        goto LAB_001168dc;
      }
LAB_001162e8:
      pcVar22 = "syna_cdev_ioctl_old_dispatch";
LAB_001162f8:
      _printk(&DAT_00135fc9,pcVar22,param_2);
      uVar12 = 0xffffffea;
      goto LAB_001168dc;
    }
    if (param_2 != 2) {
      if (param_2 == 3) {
        uVar12 = 0;
        *(undefined1 *)((long)plVar28 + 0x584) = 1;
        goto LAB_001168dc;
      }
      goto LAB_001162e8;
    }
    goto LAB_001168d8;
  }
  if (param_2 == 0x10) {
    uVar12 = 1;
    goto LAB_001168dc;
  }
  puVar6 = (undefined8 *)sp_el0;
  uVar7 = (long)(param_3 << 8) >> 8;
  if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
     (uVar25 = param_3, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
    uVar25 = param_3 & uVar7;
  }
  if (0x7ffffffff0 < uVar25) {
    uVar15 = 0x10;
LAB_001161ec:
    if (0x10 < uVar15) {
LAB_00117248:
                    /* WARNING: Subroutine does not return */
      __fortify_panic(uVar25,0xf,0,uVar15);
    }
    memset(auStack_178 + -uVar15,0,uVar15);
    puVar19 = &DAT_00134b30;
    pcVar22 = "syna_cdev_ioctls";
    uVar15 = uVar15 & 0xffffffff;
    goto LAB_00116938;
  }
  uVar21 = daif;
  uVar25 = daif;
  daif = uVar25 | 0xc0;
  uVar25 = ttbr1_el1;
  ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
  ttbr0_el1 = puVar6[1];
  InstructionSynchronizationBarrier();
  daif = uVar21;
  uVar15 = __arch_copy_from_user(uVar21,&local_188,param_3 & 0xff7fffffffffffff,0x10);
  uVar9 = local_180;
  uVar25 = daif;
  uVar27 = daif;
  daif = uVar27 | 0xc0;
  uVar27 = ttbr1_el1;
  ttbr0_el1 = (uVar27 & 0xffffffffffff) - 0x1000;
  ttbr1_el1 = uVar27 & 0xffffffffffff;
  InstructionSynchronizationBarrier();
  daif = uVar25;
  if (uVar15 != 0) goto LAB_001161ec;
  uVar23 = local_188._4_4_;
  uVar15 = (ulong)local_188._4_4_;
  if (0x1000 < local_188._4_4_) {
    _printk(uVar25,&DAT_001382a8,"syna_cdev_ioctls");
    uVar12 = 0xffffffcc;
    goto LAB_001168dc;
  }
  uVar12 = (uint)local_188;
  uVar25 = local_180;
  switch(param_2) {
  case 0x11:
    _printk(&DAT_00138a56,"syna_cdev_ioctl_store_pid");
    bVar3 = *(byte *)((long)puVar6 + 0x46);
    goto joined_r0x0011684c;
  case 0x12:
    uVar25 = local_188 & 0xffffffff;
    local_170 = (void *)((ulong)local_170 & 0xffffffff00000000);
    if ((*(byte *)((long)plVar28 + 0x582) & 1) == 0) {
      pcVar22 = "syna_cdev_ioctl_enable_irq";
LAB_00116e64:
      _printk(&DAT_0013e0ee,pcVar22);
      uVar12 = 0xfffffffa;
    }
    else {
      if (*(int *)((long)plVar28 + 0x57c) == 3) {
        puVar19 = &DAT_00138eb9;
        pcVar22 = "syna_cdev_ioctl_enable_irq";
        goto LAB_00116ac0;
      }
      if ((local_188._4_4_ < 4) || ((uint)local_188 < 4)) {
        puVar19 = &DAT_0013a131;
        pcVar22 = "syna_cdev_ioctl_enable_irq";
        goto LAB_00116bc4;
      }
      lVar30 = plVar28[0x4e];
      if (*(long *)(lVar30 + 0x40) == 0) {
        puVar19 = &DAT_0013463f;
        pcVar22 = "syna_cdev_ioctl_enable_irq";
        goto LAB_00116cac;
      }
      if (4 < local_188._4_4_) {
        __copy_overflow(4,uVar15);
LAB_00115330:
        pcVar22 = "syna_cdev_ioctl_enable_irq";
        goto LAB_00116cf4;
      }
      __check_object_size(&local_170,uVar15,0);
      if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
         (uVar25 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
        uVar25 = uVar9 & (long)(uVar9 << 8) >> 8;
      }
      uVar27 = uVar15;
      if (0x8000000000 - uVar15 < uVar25) {
LAB_001152fc:
        uVar15 = uVar15 - uVar27;
        uVar25 = 0;
        if (uVar15 < 5) {
          uVar25 = 4 - uVar15;
        }
        if (uVar25 < uVar27) {
                    /* WARNING: Subroutine does not return */
          __fortify_panic(0xf,uVar25,uVar27);
        }
        memset((void *)((long)&local_170 + uVar15),0,uVar27);
        uVar15 = uVar27 & 0xffffffff;
        if ((int)uVar27 != 0) goto LAB_00115330;
      }
      else {
        uVar21 = daif;
        uVar25 = daif;
        daif = uVar25 | 0xc0;
        uVar25 = ttbr1_el1;
        ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
        ttbr0_el1 = puVar6[1];
        InstructionSynchronizationBarrier();
        daif = uVar21;
        uVar27 = __arch_copy_from_user(uVar21,&local_170,uVar9 & 0xff7fffffffffffff,uVar15);
        uVar21 = daif;
        uVar25 = daif;
        daif = uVar25 | 0xc0;
        uVar25 = ttbr1_el1;
        ttbr0_el1 = (uVar25 & 0xffffffffffff) - 0x1000;
        ttbr1_el1 = uVar25 & 0xffffffffffff;
        InstructionSynchronizationBarrier();
        daif = uVar21;
        if (uVar27 != 0) goto LAB_001152fc;
      }
      if ((uint)local_170 == 1) {
        if ((*(byte *)(plVar28[0x4e] + 0xbc) & 1) == 0) {
          if (*(int *)(*(code **)(lVar30 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
            pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x117000);
            (*pcVar24)();
          }
          uVar12 = (**(code **)(lVar30 + 0x40))(lVar30 + 8,1);
          if (-1 < (int)uVar12) {
            _printk(&DAT_0013bf41,"syna_cdev_ioctl_enable_irq");
            uVar12 = 0;
            DAT_00131e80._0_4_ = 0;
            break;
          }
LAB_00117008:
          puVar19 = &DAT_00134666;
LAB_00117014:
          _printk(puVar19,"syna_cdev_ioctl_enable_irq");
          break;
        }
      }
      else if ((uint)local_170 == 0) {
        if (*(char *)(plVar28[0x4e] + 0xbc) == '\x01') {
          if (*(int *)(*(code **)(lVar30 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
            pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x11646c);
            (*pcVar24)();
          }
          uVar12 = (**(code **)(lVar30 + 0x40))(lVar30 + 8,0);
          if (-1 < (int)uVar12) {
            _printk(&DAT_001382cb,"syna_cdev_ioctl_enable_irq");
            uVar12 = 0;
            DAT_00131e80._0_4_ = *(uint *)(*plVar28 + 0x20c);
            break;
          }
          puVar19 = &DAT_0013397d;
          goto LAB_00117014;
        }
      }
      else {
        if (*(int *)(*(code **)(lVar30 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x116f74);
          (*pcVar24)();
        }
        uVar12 = (**(code **)(lVar30 + 0x40))(lVar30 + 8,1);
        if ((int)uVar12 < 0) goto LAB_00117008;
        uVar12 = *(uint *)(*plVar28 + 0x20c);
        DAT_00131e80._0_4_ = (uint)local_170;
        if ((uint)local_170 < uVar12) {
          local_170 = (void *)CONCAT44(local_170._4_4_,uVar12);
          DAT_00131e80._0_4_ = uVar12;
        }
        _printk(&DAT_0013bf41,"syna_cdev_ioctl_enable_irq");
        _printk(&DAT_0013d387,"syna_cdev_ioctl_enable_irq",(uint)DAT_00131e80);
      }
LAB_00116500:
      uVar12 = 0;
    }
    break;
  case 0x13:
    uVar12 = syna_cdev_ioctl_raw_read(plVar28,local_180,local_188._4_4_,local_188 & 0xffffffff);
    break;
  case 0x14:
    uVar12 = syna_cdev_ioctl_raw_write(plVar28,local_180,local_188._4_4_,local_188 & 0xffffffff);
    break;
  case 0x15:
    lVar30 = plVar28[0x4e];
    local_174 = 0;
    if ((*(byte *)((long)plVar28 + 0x582) & 1) == 0) {
      pcVar22 = "syna_cdev_ioctl_get_frame";
      goto LAB_00116e64;
    }
    if (*(int *)((long)plVar28 + 0x57c) == 3) {
      puVar19 = &DAT_00138ef0;
      pcVar22 = "syna_cdev_ioctl_get_frame";
      goto LAB_00116ac0;
    }
    if (local_188._4_4_ < 4) {
      puVar19 = &DAT_00135ff1;
      pcVar22 = "syna_cdev_ioctl_get_frame";
      uVar25 = (ulong)local_188._4_4_;
      goto LAB_00116d10;
    }
    if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) || (((uint)*puVar6 >> 0x1a & 1) != 0)) {
      uVar25 = local_180 & (long)(local_180 << 8) >> 8;
    }
    if (0x7ffffffffc < uVar25) {
      uVar15 = 4;
LAB_00116cbc:
      if (4 < uVar15) goto LAB_00117248;
      memset((void *)((long)&local_170 - uVar15),0,uVar15);
      pcVar22 = "syna_cdev_ioctl_get_frame";
      goto LAB_00116cf0;
    }
    uVar21 = daif;
    uVar25 = daif;
    daif = uVar25 | 0xc0;
    uVar25 = ttbr1_el1;
    ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
    ttbr0_el1 = puVar6[1];
    InstructionSynchronizationBarrier();
    daif = uVar21;
    uVar15 = __arch_copy_from_user(uVar21,&local_174,local_180 & 0xff7fffffffffffff,4);
    iVar14 = local_174;
    uVar25 = daif;
    uVar27 = daif;
    daif = uVar27 | 0xc0;
    uVar27 = ttbr1_el1;
    ttbr0_el1 = (uVar27 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar27 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar25;
    if (uVar15 != 0) goto LAB_00116cbc;
    plVar29 = plVar28 + 0x9f;
    if ((long *)plVar28[0x9f] == plVar29) {
      lVar17 = __msecs_to_jiffies(local_174);
      if (lVar17 == 0 && (int)plVar28[0x9e] != 0) {
        lVar17 = 1;
      }
      if (((int)plVar28[0x9e] == 0) && (lVar17 != 0)) {
        local_158 = 0;
        local_150 = 0;
        local_168 = 0;
        local_160 = 0;
        local_170 = (void *)0x0;
        lVar16 = __msecs_to_jiffies(iVar14);
        init_wait_entry(&local_170,0);
        lVar17 = prepare_to_wait_event(plVar28 + 0xa1,&local_170,1);
        iVar14 = (int)plVar28[0x9e];
        if (lVar16 == 0 && iVar14 != 0) {
          lVar16 = 1;
        }
        while ((lVar10 = lVar16, iVar14 == 0 && (lVar10 = 0, lVar16 != 0))) {
          if (lVar17 != 0) goto LAB_00115928;
          lVar16 = schedule_timeout(lVar16);
          lVar17 = prepare_to_wait_event(plVar28 + 0xa1,&local_170,1);
          iVar14 = (int)plVar28[0x9e];
          if (lVar16 == 0 && iVar14 != 0) {
            lVar16 = 1;
          }
        }
        lVar17 = lVar10;
        finish_wait(plVar28 + 0xa1,&local_170);
      }
LAB_00115928:
      if ((int)lVar17 == 0) {
        local_188 = local_188 & 0xffffffff00000000;
        uVar12 = 0xffffff92;
        break;
      }
    }
    if ((long *)*plVar29 == plVar29) {
      uVar12 = 0xffffffc3;
      break;
    }
    mutex_lock(&DAT_00131e50);
    plVar29 = (long *)*plVar29;
    uVar13 = *(uint *)(plVar29 + 3);
    uVar25 = (ulong)uVar13;
    if (uVar23 < uVar13) {
      _printk(&DAT_00136cad,"syna_cdev_ioctl_get_frame",uVar23,uVar25);
      uVar12 = 0xffffffb5;
      break;
    }
    lVar17 = plVar29[2];
    __check_object_size(lVar17,uVar25,1);
    if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
       (uVar15 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
      uVar15 = uVar9 & (long)(uVar9 << 8) >> 8;
    }
    if (uVar15 <= 0x8000000000 - uVar25) {
      uVar21 = daif;
      uVar15 = daif;
      daif = uVar15 | 0xc0;
      uVar15 = ttbr1_el1;
      ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar15 & 0xffffffffffff;
      ttbr0_el1 = puVar6[1];
      InstructionSynchronizationBarrier();
      daif = uVar21;
      uVar13 = __arch_copy_to_user(uVar21,uVar9 & 0xff7fffffffffffff,lVar17,uVar25);
      uVar15 = daif;
      uVar25 = daif;
      daif = uVar25 | 0xc0;
      uVar25 = ttbr1_el1;
      ttbr0_el1 = (uVar25 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar25 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar15;
    }
    if (uVar13 == 0) {
      uVar12 = 0;
    }
    else {
      _printk(uVar15,&DAT_00137646,"syna_cdev_ioctl_get_frame",uVar13);
      uVar12 = 0xffffffcc;
    }
    plVar26 = (long *)plVar29[1];
    local_188 = CONCAT44(local_188._4_4_,(int)plVar29[3]);
    if (((long *)*plVar26 == plVar29) && (lVar17 = *plVar29, *(long **)(lVar17 + 8) == plVar29)) {
      *(long **)(lVar17 + 8) = plVar26;
      *plVar26 = lVar17;
    }
    else {
      __list_del_entry_valid_or_report(plVar29);
    }
    *plVar29 = -0x2152ffffffffff00;
    plVar29[1] = -0x2152fffffffffede;
    if (uVar13 == 0) {
      uVar12 = *(uint *)(plVar29 + 3);
    }
    kfree(plVar29[2]);
    kfree(plVar29);
    uVar23 = *(uint *)(plVar28 + 0x9e);
    if (uVar23 != 0) {
      uVar23 = uVar23 - 1;
      *(uint *)(plVar28 + 0x9e) = uVar23;
    }
    if (((uVar23 < DAT_00131e88) && ((*(byte *)(plVar28[0x4e] + 0xbc) & 1) == 0)) &&
       (pcVar24 = *(code **)(lVar30 + 0x40), pcVar24 != (code *)0x0)) {
      if (*(int *)(pcVar24 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x115ab4);
        (*pcVar24)();
      }
      (*pcVar24)(lVar30 + 8,1);
    }
    puVar20 = &DAT_00131e50;
    goto LAB_00116840;
  case 0x16:
    lVar30 = *plVar28;
    local_174 = (uint)local_174._1_3_ << 8;
    local_138 = 0;
    local_130 = 0;
    local_148 = 0;
    local_140 = 0;
    local_158 = 0;
    local_150 = 0;
    local_168 = 0;
    local_160 = 0;
    local_170 = (void *)0x0;
    if ((*(byte *)((long)plVar28 + 0x582) & 1) == 0) {
      pcVar22 = "syna_cdev_ioctl_send_message";
      goto LAB_00116e64;
    }
    if (*(int *)((long)plVar28 + 0x57c) == 3) {
      puVar19 = &DAT_00133fff;
      pcVar22 = "syna_cdev_ioctl_send_message";
      goto LAB_00116ac0;
    }
    if (local_188._4_4_ < DAT_00131e80._4_4_ + 3) {
      puVar19 = &DAT_00135ff1;
      pcVar22 = "syna_cdev_ioctl_send_message";
      uVar25 = (ulong)local_188._4_4_;
    }
    else {
      uVar25 = local_188 & 0xffffffff;
      if (((uint)local_188 <= local_188._4_4_) && (0xfffff001 < (uint)local_188 - 0x1001)) {
        if (DAT_00131e18 != '\0') {
          _printk(&DAT_00138e56,"syna_tcm_buf_lock");
        }
        mutex_lock(&DAT_00131de8);
        pbVar8 = DAT_00131dd8;
        uVar25 = DAT_00131de0 & 0xffffffff;
        uVar12 = (DAT_00131e80._4_4_ & ((int)DAT_00131e80._4_4_ >> 0x1f ^ 0xffffffffU)) + uVar23;
        uVar27 = (ulong)uVar12;
        DAT_00131e18 = DAT_00131e18 + '\x01';
        if ((uint)DAT_00131de0 < uVar12) {
          if (DAT_00131dd8 == (byte *)0x0) {
LAB_001156cc:
            lVar17 = syna_request_managed_device();
            if (lVar17 != 0) goto LAB_001156d4;
LAB_00117160:
            puVar19 = &DAT_0013ccb3;
LAB_00117168:
            _printk(puVar19,"syna_pal_mem_alloc");
            DAT_00131dd8 = (byte *)0x0;
          }
          else {
            lVar17 = syna_request_managed_device();
            if (lVar17 != 0) {
              devm_kfree(lVar17,pbVar8);
              goto LAB_001156cc;
            }
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            lVar17 = syna_request_managed_device();
            if (lVar17 == 0) goto LAB_00117160;
LAB_001156d4:
            if ((int)uVar12 < 1) {
              puVar19 = &DAT_00138e98;
              goto LAB_00117168;
            }
            DAT_00131dd8 = (byte *)devm_kmalloc(lVar17,uVar27,0xdc0);
            if (DAT_00131dd8 != (byte *)0x0) {
              DAT_00131de0 = CONCAT44(DAT_00131de0._4_4_,uVar12);
              uVar25 = uVar27;
              goto LAB_00116324;
            }
          }
          _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar27);
          DAT_00131de0 = 0;
          _printk(&DAT_00138268,"syna_cdev_ioctl_send_message",uVar23);
          uVar12 = 0xffffff0d;
        }
        else {
LAB_00116324:
          memset(DAT_00131dd8,0,uVar25);
          pbVar8 = DAT_00131dd8;
          uVar25 = local_188 & 0xffffffff;
          DAT_00131de0 = DAT_00131de0 & 0xffffffff;
          if ((int)(uint)local_188 < 0) {
                    /* WARNING: Does not return */
            pcVar24 = (code *)SoftwareBreakpoint(0x800,0x117230);
            (*pcVar24)();
          }
          __check_object_size(DAT_00131dd8,uVar25,0);
          if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
             (uVar27 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
            uVar27 = uVar9 & (long)(uVar9 << 8) >> 8;
          }
          __n = uVar25;
          if (0x8000000000 - uVar25 < uVar27) {
LAB_00116380:
            memset(pbVar8 + (uVar25 - __n),0,__n);
            if ((int)__n != 0) {
              _printk(&DAT_001352ed,"syna_cdev_ioctl_send_message",local_188 & 0xffffffff);
              uVar12 = 0xffffffcc;
              goto LAB_00116758;
            }
          }
          else {
            uVar21 = daif;
            uVar27 = daif;
            daif = uVar27 | 0xc0;
            uVar27 = ttbr1_el1;
            ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar27 & 0xffffffffffff;
            ttbr0_el1 = puVar6[1];
            InstructionSynchronizationBarrier();
            daif = uVar21;
            __n = __arch_copy_from_user(uVar21,pbVar8,uVar9 & 0xff7fffffffffffff,uVar25);
            uVar21 = daif;
            uVar27 = daif;
            daif = uVar27 | 0xc0;
            uVar27 = ttbr1_el1;
            ttbr0_el1 = (uVar27 & 0xffffffffffff) - 0x1000;
            ttbr1_el1 = uVar27 & 0xffffffffffff;
            InstructionSynchronizationBarrier();
            daif = uVar21;
            if (__n != 0) goto LAB_00116380;
          }
          uVar4 = *(ushort *)(pbVar8 + 1);
          if ((uint)local_188 < uVar4) {
            _printk(&DAT_00138303,"syna_cdev_ioctl_send_message",uVar4);
            uVar12 = 0xffffffcc;
          }
          else {
            local_130 = local_130 & 0xffffffffffffff00;
            local_170 = (void *)0x0;
            local_168 = 0;
            __mutex_init(&local_160,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
            pbVar31 = pbVar8 + 3;
            iVar14 = syna_tcm_send_command
                               (lVar30,*pbVar8,pbVar31,uVar4,&local_174,&local_170,
                                (uint)DAT_00131e80);
            if (iVar14 < 0) {
              _printk(&DAT_0013767e,"syna_cdev_ioctl_send_message",*pbVar8,uVar4);
            }
            memset(pbVar8,0,uVar15);
            *pbVar8 = (byte)local_174;
            pbVar8[1] = (byte)((ulong)local_168 >> 0x20);
            pbVar8[2] = (byte)((ulong)local_168 >> 0x28);
            if ((uint)DAT_00131de0 < local_168._4_4_) {
              _printk(&DAT_00136cad,"syna_cdev_ioctl_send_message",DAT_00131de0 & 0xffffffff,
                      local_168._4_4_);
              uVar12 = 0xffffffb5;
            }
            else if (local_168._4_4_ == 0) {
LAB_00116694:
              uVar12 = local_168._4_4_ +
                       (DAT_00131e80._4_4_ & ((int)DAT_00131e80._4_4_ >> 0x1f ^ 0xffffffffU)) + 3;
              uVar25 = (ulong)uVar12;
              local_188 = CONCAT44(local_188._4_4_,uVar12);
              if ((int)uVar12 < 0) {
                    /* WARNING: Does not return */
                pcVar24 = (code *)SoftwareBreakpoint(0x800,0x11723c);
                (*pcVar24)();
              }
              __check_object_size(pbVar8,uVar25,1);
              if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
                 (uVar15 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
                uVar15 = uVar9 & (long)(uVar9 << 8) >> 8;
              }
              if (uVar15 <= 0x8000000000 - uVar25) {
                uVar21 = daif;
                uVar15 = daif;
                daif = uVar15 | 0xc0;
                uVar15 = ttbr1_el1;
                ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar15 & 0xffffffffffff;
                ttbr0_el1 = puVar6[1];
                InstructionSynchronizationBarrier();
                daif = uVar21;
                uVar12 = __arch_copy_to_user(uVar21,uVar9 & 0xff7fffffffffffff,pbVar8,uVar25);
                uVar15 = daif;
                uVar25 = daif;
                daif = uVar25 | 0xc0;
                uVar25 = ttbr1_el1;
                ttbr0_el1 = (uVar25 & 0xffffffffffff) - 0x1000;
                ttbr1_el1 = uVar25 & 0xffffffffffff;
                InstructionSynchronizationBarrier();
                daif = uVar15;
              }
              if (uVar12 == 0) {
                uVar12 = (uint)local_188;
              }
              else {
                _printk(uVar15,&DAT_00136c2a,"syna_cdev_ioctl_send_message");
                uVar12 = 0xffffffcc;
              }
            }
            else {
              if ((pbVar31 != (byte *)0x0) && (local_170 != (void *)0x0)) {
                if ((local_168._4_4_ <= (uint)DAT_00131de0 - 3) &&
                   (local_168._4_4_ <= (uint)local_168)) {
                  memcpy(pbVar31,local_170,(ulong)local_168._4_4_);
                  if (1 < (int)DAT_00131e80._4_4_) {
                    uVar5 = *(undefined2 *)(lVar30 + 0x382);
                    pbVar8[local_168._4_4_ + 3] = (byte)uVar5;
                    pbVar8[local_168._4_4_ + 4] = (byte)((ushort)uVar5 >> 8);
                    if ((DAT_00131e80._4_4_ + 0xfffe & 0xffff) != 0) {
                      pbVar8[local_168._4_4_ + 5] = *(byte *)(lVar30 + 0x385);
                    }
                  }
                  goto LAB_00116694;
                }
                _printk(&DAT_0013a172,"syna_pal_mem_cpy");
              }
              _printk(&DAT_00134b70,"syna_cdev_ioctl_send_message");
              uVar12 = 0xffffffea;
            }
          }
        }
LAB_00116758:
        if (DAT_00131e18 == '\x01') {
          DAT_00131e18 = '\0';
        }
        else {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
          DAT_00131e18 = DAT_00131e18 + -1;
        }
        mutex_unlock();
        if ((char)local_130 != '\0') {
          _printk(&DAT_00135294,"syna_tcm_buf_release");
        }
        pvVar18 = local_170;
        lVar30 = syna_request_managed_device();
        if (lVar30 == 0) {
          _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        }
        else if (pvVar18 != (void *)0x0) {
          devm_kfree(lVar30,pvVar18);
        }
        break;
      }
      puVar19 = &DAT_00136024;
      pcVar22 = "syna_cdev_ioctl_send_message";
    }
LAB_00116d10:
    _printk(puVar19,pcVar22,uVar25);
    uVar12 = 0xffffffea;
    break;
  case 0x17:
    uVar15 = local_188 & 0xffffffff;
    local_80 = 0;
    uStack_78 = 0;
    local_90 = 0;
    uStack_88 = 0;
    local_a0 = 0;
    uStack_98 = 0;
    local_b0 = 0;
    uStack_a8 = 0;
    local_c0 = 0;
    uStack_b8 = 0;
    local_d0 = 0;
    uStack_c8 = 0;
    local_e0 = 0;
    uStack_d8 = 0;
    local_f0 = 0;
    uStack_e8 = 0;
    local_100 = 0;
    uStack_f8 = 0;
    local_110 = 0;
    uStack_108 = 0;
    local_120 = 0;
    uStack_118 = 0;
    local_130 = 0;
    uStack_128 = 0;
    local_140 = 0;
    local_138 = 0;
    local_150 = 0;
    local_148 = 0;
    local_160 = 0;
    local_158 = 0;
    local_170 = (void *)0x0;
    local_168 = 0;
    if (*(int *)((long)plVar28 + 0x57c) == 3) {
      puVar19 = &DAT_001365b0;
      pcVar22 = "syna_cdev_ioctl_set_queued_types";
LAB_00116ac0:
      _printk(puVar19,pcVar22);
      uVar12 = 0;
    }
    else if (local_188._4_4_ < 0x100) {
      puVar19 = &DAT_00132d7e;
      pcVar22 = "syna_cdev_ioctl_set_queued_types";
      uVar25 = 0x100;
LAB_00116bc4:
      _printk(puVar19,pcVar22,local_188._4_4_,uVar25);
      uVar12 = 0xffffffea;
    }
    else {
      if ((uint)local_188 != 0) {
        if ((uint)local_188 < 0x101) {
          __check_object_size(&local_170,uVar15,0);
          if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
             (uVar25 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
            uVar25 = uVar9 & (long)(uVar9 << 8) >> 8;
          }
          uVar27 = uVar15;
          if (uVar25 <= 0x8000000000 - uVar15) {
            uVar21 = daif;
            uVar25 = daif;
            daif = uVar25 | 0xc0;
            uVar25 = ttbr1_el1;
            ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
            ttbr0_el1 = puVar6[1];
            InstructionSynchronizationBarrier();
            daif = uVar21;
            uVar27 = __arch_copy_from_user(uVar21,&local_170,uVar9 & 0xff7fffffffffffff,uVar15);
            uVar21 = daif;
            uVar25 = daif;
            daif = uVar25 | 0xc0;
            uVar25 = ttbr1_el1;
            ttbr0_el1 = (uVar25 & 0xffffffffffff) - 0x1000;
            ttbr1_el1 = uVar25 & 0xffffffffffff;
            InstructionSynchronizationBarrier();
            daif = uVar21;
            if (uVar27 == 0) {
              uVar25 = 0;
              do {
                if ((*(char *)((long)&local_170 + uVar25) == '\x01') &&
                   (uVar12 = syna_tcm_set_data_duplicator
                                       (*plVar28,uVar25 & 0xffffffff,syna_cdev_process_reports,
                                        plVar28), (int)uVar12 < 0)) {
                  _printk(&DAT_0013b798,"syna_cdev_ioctl_set_queued_types",uVar25 & 0xffffffff);
                  goto LAB_00116844;
                }
                uVar25 = uVar25 + 1;
              } while (uVar25 != 0x100);
              goto LAB_00116500;
            }
          }
          uVar15 = uVar15 - uVar27;
          uVar25 = 0;
          if (uVar15 < 0x101) {
            uVar25 = 0x100 - uVar15;
          }
          if (uVar25 < uVar27) {
                    /* WARNING: Subroutine does not return */
            __fortify_panic(0xf);
          }
          memset((void *)((long)&local_170 + uVar15),0,uVar27);
          uVar15 = uVar27;
        }
        else {
          __copy_overflow(0x100,uVar15);
        }
        pcVar22 = "syna_cdev_ioctl_set_queued_types";
        uVar15 = uVar15 & 0xffffffff;
        goto LAB_00116cf4;
      }
      puVar19 = &DAT_0013da82;
      pcVar22 = "syna_cdev_ioctl_set_queued_types";
LAB_00116cac:
      _printk(puVar19,pcVar22);
      uVar12 = 0xffffffea;
    }
    break;
  case 0x18:
    local_174 = 0;
    if ((*(byte *)((long)plVar28 + 0x582) & 1) == 0) {
      pcVar22 = "syna_cdev_ioctl_check_frame";
      goto LAB_00116e64;
    }
    if (*(int *)((long)plVar28 + 0x57c) == 3) {
      puVar19 = &DAT_00138ef0;
      pcVar22 = "syna_cdev_ioctl_check_frame";
      goto LAB_00116ac0;
    }
    if ((local_188._4_4_ < 4) || ((uint)local_188 < 4)) {
      puVar19 = &DAT_00135899;
      pcVar22 = "syna_cdev_ioctl_check_frame";
      uVar25 = (ulong)local_188._4_4_;
      goto LAB_00116d10;
    }
    if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) || (((uint)*puVar6 >> 0x1a & 1) != 0)) {
      uVar25 = local_180 & (long)(local_180 << 8) >> 8;
    }
    if (uVar25 < 0x7ffffffffd) {
      uVar21 = daif;
      uVar25 = daif;
      daif = uVar25 | 0xc0;
      uVar25 = ttbr1_el1;
      ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
      ttbr0_el1 = puVar6[1];
      InstructionSynchronizationBarrier();
      daif = uVar21;
      uVar15 = __arch_copy_from_user(uVar21,&local_174,local_180 & 0xff7fffffffffffff,4);
      iVar14 = local_174;
      uVar25 = daif;
      uVar27 = daif;
      daif = uVar27 | 0xc0;
      uVar27 = ttbr1_el1;
      ttbr0_el1 = (uVar27 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar27 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar25;
      if (uVar15 != 0) goto LAB_00116c64;
      if ((long *)plVar28[0x9f] == plVar28 + 0x9f) {
        lVar30 = __msecs_to_jiffies(local_174);
        if (lVar30 == 0 && (int)plVar28[0x9e] != 0) {
          lVar30 = 1;
        }
        if (((int)plVar28[0x9e] == 0) && (lVar30 != 0)) {
          local_158 = 0;
          local_150 = 0;
          local_168 = 0;
          local_160 = 0;
          local_170 = (void *)0x0;
          lVar17 = __msecs_to_jiffies(iVar14);
          init_wait_entry(&local_170,0);
          lVar30 = prepare_to_wait_event(plVar28 + 0xa1,&local_170,1);
          iVar14 = (int)plVar28[0x9e];
          if (lVar17 == 0 && iVar14 != 0) {
            lVar17 = 1;
          }
          while ((lVar16 = lVar17, iVar14 == 0 && (lVar16 = 0, lVar17 != 0))) {
            if (lVar30 != 0) goto LAB_00115560;
            lVar17 = schedule_timeout(lVar17);
            lVar30 = prepare_to_wait_event(plVar28 + 0xa1,&local_170,1);
            iVar14 = (int)plVar28[0x9e];
            if (lVar17 == 0 && iVar14 != 0) {
              lVar17 = 1;
            }
          }
          lVar30 = lVar16;
          finish_wait(plVar28 + 0xa1,&local_170);
        }
LAB_00115560:
        if ((int)lVar30 == 0) {
          uVar12 = 0xffffff92;
          break;
        }
      }
      if ((int)uVar12 < 1) break;
      local_174 = (int)plVar28[0x9e];
      if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
         (uVar25 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
        uVar25 = uVar9 & (long)(uVar9 << 8) >> 8;
      }
      if (uVar25 < 0x7ffffffffd) {
        uVar21 = daif;
        uVar25 = daif;
        daif = uVar25 | 0xc0;
        uVar25 = ttbr1_el1;
        ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
        ttbr0_el1 = puVar6[1];
        InstructionSynchronizationBarrier();
        daif = uVar21;
        iVar14 = __arch_copy_to_user(uVar21,uVar9 & 0xff7fffffffffffff,&local_174,4);
        uVar21 = daif;
        uVar25 = daif;
        daif = uVar25 | 0xc0;
        uVar25 = ttbr1_el1;
        ttbr0_el1 = (uVar25 & 0xffffffffffff) - 0x1000;
        ttbr1_el1 = uVar25 & 0xffffffffffff;
        InstructionSynchronizationBarrier();
        daif = uVar21;
        if (iVar14 == 0) break;
      }
      puVar19 = &DAT_00136c2a;
    }
    else {
      uVar15 = 4;
LAB_00116c64:
      if (4 < uVar15) goto LAB_00117248;
      memset((void *)((long)&local_170 - uVar15),0,uVar15);
      puVar19 = &DAT_0013b7d2;
    }
    _printk(puVar19,"syna_cdev_ioctl_check_frame");
    uVar12 = 0xffffffcc;
    break;
  case 0x19:
    mutex_lock(&DAT_00131e50);
    plVar29 = (long *)plVar28[0x9f];
    while (plVar29 != plVar28 + 0x9f) {
      plVar26 = (long *)plVar29[1];
      if (((long *)*plVar26 == plVar29) && (lVar30 = *plVar29, *(long **)(lVar30 + 8) == plVar29)) {
        *(long **)(lVar30 + 8) = plVar26;
        *plVar26 = lVar30;
      }
      else {
        __list_del_entry_valid_or_report(plVar29);
      }
      *plVar29 = -0x2152ffffffffff00;
      plVar29[1] = -0x2152fffffffffede;
      kfree(plVar29[2]);
      kfree(plVar29);
      if ((int)plVar28[0x9e] != 0) {
        *(int *)(plVar28 + 0x9e) = (int)plVar28[0x9e] + -1;
      }
      plVar29 = (long *)plVar28[0x9f];
    }
    mutex_unlock(&DAT_00131e50);
    if ((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) == 0) goto LAB_00116850;
    goto LAB_0011685c;
  case 0x1a:
    uVar25 = local_188 & 0xffffffff;
    if (((*(byte *)((long)plVar28 + 0x582) & 1) == 0) && (*(int *)((long)plVar28 + 0x57c) != 3)) {
      _printk(&DAT_0013e0ee,"syna_cdev_ioctl_application_info");
      uVar12 = 0xfffffffa;
      goto LAB_001168dc;
    }
    if ((local_188._4_4_ == 0) || (local_188._4_4_ < (uint)local_188)) {
      puVar19 = &DAT_00136d05;
      pcVar22 = "syna_cdev_ioctl_application_info";
      uVar12 = local_188._4_4_;
      goto LAB_00116a68;
    }
    lVar30 = plVar28[0xb5];
    if (lVar30 == 0) {
LAB_0011613c:
      lVar30 = syna_request_managed_device();
      if (lVar30 != 0) goto LAB_00116144;
LAB_00116e1c:
      puVar19 = &DAT_0013ccb3;
LAB_00116e24:
      _printk(puVar19,"syna_pal_mem_alloc");
      plVar28[0xb5] = 0;
LAB_00116e34:
      _printk(&DAT_00138a9f,"syna_cdev_ioctl_application_info",uVar25);
      uVar12 = 0xfffffff4;
      goto LAB_001168dc;
    }
    lVar17 = syna_request_managed_device();
    if (lVar17 != 0) {
      devm_kfree(lVar17,lVar30);
      goto LAB_0011613c;
    }
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    lVar30 = syna_request_managed_device();
    if (lVar30 == 0) goto LAB_00116e1c;
LAB_00116144:
    if (uVar12 == 0) {
      puVar19 = &DAT_00138e98;
      goto LAB_00116e24;
    }
    pvVar18 = (void *)devm_kmalloc(lVar30,uVar25,0xdc0);
    plVar28[0xb5] = (long)pvVar18;
    if (pvVar18 == (void *)0x0) goto LAB_00116e34;
    memset(pvVar18,0,uVar25);
    __check_object_size(pvVar18,uVar25,0);
    if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
       (uVar27 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
      uVar27 = uVar9 & (long)(uVar9 << 8) >> 8;
    }
    uVar15 = uVar25;
    if (0x8000000000 - uVar25 < uVar27) {
LAB_001161ac:
      uVar27 = 0;
      if (uVar15 <= uVar25) {
        uVar27 = uVar15;
      }
      if (uVar27 < uVar15) {
                    /* WARNING: Subroutine does not return */
        __fortify_panic(0xf,uVar27,uVar15);
      }
      memset((void *)((long)pvVar18 + (uVar25 - uVar15)),0,uVar15);
      if ((int)uVar15 == 0) goto LAB_00116848;
      puVar19 = &DAT_001352ed;
      pcVar22 = "syna_cdev_ioctl_application_info";
      uVar15 = uVar15 & 0xffffffff;
      goto LAB_00116938;
    }
    uVar21 = daif;
    uVar15 = daif;
    daif = uVar15 | 0xc0;
    uVar15 = ttbr1_el1;
    ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar15 & 0xffffffffffff;
    ttbr0_el1 = puVar6[1];
    InstructionSynchronizationBarrier();
    daif = uVar21;
    uVar15 = __arch_copy_from_user(uVar21,pvVar18,uVar9 & 0xff7fffffffffffff,uVar25);
    uVar21 = daif;
    uVar27 = daif;
    daif = uVar27 | 0xc0;
    uVar27 = ttbr1_el1;
    ttbr0_el1 = (uVar27 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar27 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar21;
    if (uVar15 != 0) goto LAB_001161ac;
    goto LAB_00116848;
  case 0x1b:
    local_170 = (void *)((ulong)local_170 & 0xffffff0000000000);
    local_174 = (uint)local_174._1_3_ << 8;
    if (((*(byte *)((long)plVar28 + 0x582) & 1) == 0) && (*(int *)((long)plVar28 + 0x57c) != 3)) {
      pcVar22 = "syna_cdev_ioctl_do_hw_reset";
      goto LAB_00116e64;
    }
    if ((local_188._4_4_ < 5) || ((uint)local_188 < 5)) {
      puVar19 = &DAT_00135899;
      pcVar22 = "syna_cdev_ioctl_do_hw_reset";
      uVar25 = (ulong)local_188._4_4_;
      goto LAB_00116d10;
    }
    lVar30 = plVar28[0x4e];
    if (*(long *)(lVar30 + 0x188) == 0) {
      _printk(&DAT_0013b16f,"syna_cdev_ioctl_do_hw_reset");
      uVar12 = 0xffffffed;
      break;
    }
    uVar1 = *(undefined4 *)(lVar30 + 0xf8);
    uVar2 = *(undefined4 *)(lVar30 + 0xfc);
    if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) || (((uint)*puVar6 >> 0x1a & 1) != 0)) {
      uVar25 = local_180 & (long)(local_180 << 8) >> 8;
    }
    if (uVar25 < 0x7ffffffffc) {
      uVar21 = daif;
      uVar25 = daif;
      daif = uVar25 | 0xc0;
      uVar25 = ttbr1_el1;
      ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
      ttbr0_el1 = puVar6[1];
      InstructionSynchronizationBarrier();
      daif = uVar21;
      uVar15 = __arch_copy_from_user(uVar21,&local_170,local_180 & 0xff7fffffffffffff,5);
      uVar25 = daif;
      uVar27 = daif;
      daif = uVar27 | 0xc0;
      uVar27 = ttbr1_el1;
      ttbr0_el1 = (uVar27 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar27 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar25;
      if (uVar15 == 0) {
        if (local_170._1_2_ != 0) {
          *(uint *)(plVar28[0x4e] + 0xfc) = (uint)local_170._1_2_;
        }
        if (local_170._3_2_ != 0) {
          *(uint *)(plVar28[0x4e] + 0xf8) = (uint)local_170._3_2_;
        }
        if (*(int *)(*(code **)(plVar28[0x4e] + 0x188) + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
          pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x115df8);
          (*pcVar24)();
        }
        (**(code **)(plVar28[0x4e] + 0x188))();
        *(undefined4 *)(plVar28[0x4e] + 0xfc) = uVar2;
        *(undefined4 *)(plVar28[0x4e] + 0xf8) = uVar1;
        if ((char)local_170 != '\x01') {
          if ((*(byte *)(plVar28[0x4e] + 0xbc) & 1) == 0) {
            syna_tcm_get_event_data(*plVar28,&local_174,0);
          }
          if (*(char *)(*plVar28 + 9) == '\x01') {
            if (*(int *)((code *)plVar28[0xd7] + -4) != -0x51dfb8e4) {
                    /* WARNING: Does not return */
              pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x115e64);
              (*pcVar24)();
            }
            uVar12 = (*(code *)plVar28[0xd7])(plVar28);
            if ((int)uVar12 < 0) {
              _printk(&DAT_001327f0,"syna_cdev_ioctl_do_hw_reset");
            }
            break;
          }
        }
        goto LAB_00116500;
      }
    }
    else {
      uVar15 = 5;
    }
    if (5 < uVar15) goto LAB_00117248;
    memset((void *)((long)&local_170 + (5 - uVar15)),0,uVar15);
    pcVar22 = "syna_cdev_ioctl_do_hw_reset";
LAB_00116cf0:
    uVar15 = uVar15 & 0xffffffff;
LAB_00116cf4:
    _printk(&DAT_001352ed,pcVar22,uVar15);
    uVar12 = 0xffffffcc;
    break;
  default:
    pcVar22 = "syna_cdev_ioctl_dispatch";
    goto LAB_001162f8;
  case 0x21:
    if ((uint)local_188 < 0x14) {
      pcVar22 = "syna_cdev_ioctl_set_config";
LAB_00116a1c:
      puVar19 = &DAT_00139aa5;
      uVar25 = 0x14;
LAB_00116a68:
      _printk(puVar19,pcVar22,uVar12,uVar25);
      uVar12 = 0xffffffea;
      goto LAB_001168dc;
    }
    lVar30 = *plVar28;
    if (DAT_00131e18 != '\0') {
      _printk(&DAT_00138e56,"syna_tcm_buf_lock");
    }
    mutex_lock(&DAT_00131de8);
    pbVar8 = DAT_00131dd8;
    DAT_00131e18 = DAT_00131e18 + '\x01';
    uVar12 = (uint)DAT_00131de0;
    if ((uint)DAT_00131de0 < 0x14) {
      if (DAT_00131dd8 == (byte *)0x0) {
LAB_00115ee8:
        lVar17 = syna_request_managed_device();
        if (lVar17 != 0) goto LAB_00115ef0;
LAB_001170e8:
        _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
        DAT_00131dd8 = (byte *)0x0;
      }
      else {
        lVar17 = syna_request_managed_device();
        if (lVar17 != 0) {
          devm_kfree(lVar17,pbVar8);
          goto LAB_00115ee8;
        }
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        lVar17 = syna_request_managed_device();
        if (lVar17 == 0) goto LAB_001170e8;
LAB_00115ef0:
        uVar12 = 0x14;
        DAT_00131dd8 = (byte *)devm_kmalloc(lVar17,0x14,0xdc0);
        if (DAT_00131dd8 != (byte *)0x0) {
          DAT_00131de0 = CONCAT44(DAT_00131de0._4_4_,0x14);
          goto LAB_00115f14;
        }
      }
      _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",0x14);
      DAT_00131de0 = 0;
      _printk(&DAT_00138268,"syna_cdev_ioctl_set_config",0x14);
      uVar12 = 0xffffff0d;
    }
    else {
LAB_00115f14:
      memset(DAT_00131dd8,0,(ulong)uVar12);
      pbVar8 = DAT_00131dd8;
      DAT_00131de0 = DAT_00131de0 & 0xffffffff;
      if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
         (uVar25 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
        uVar25 = uVar9 & (long)(uVar9 << 8) >> 8;
      }
      if (uVar25 < 0x7fffffffed) {
        uVar21 = daif;
        uVar25 = daif;
        daif = uVar25 | 0xc0;
        uVar25 = ttbr1_el1;
        ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
        ttbr0_el1 = puVar6[1];
        InstructionSynchronizationBarrier();
        daif = uVar21;
        uVar15 = __arch_copy_from_user(uVar21,DAT_00131dd8,uVar9 & 0xff7fffffffffffff,0x14);
        uVar21 = daif;
        uVar25 = daif;
        daif = uVar25 | 0xc0;
        uVar25 = ttbr1_el1;
        ttbr0_el1 = (uVar25 & 0xffffffffffff) - 0x1000;
        ttbr1_el1 = uVar25 & 0xffffffffffff;
        InstructionSynchronizationBarrier();
        daif = uVar21;
        if (uVar15 != 0) goto LAB_00115f58;
      }
      else {
        uVar15 = 0x14;
LAB_00115f58:
        memset(pbVar8 + (0x14 - uVar15),0,uVar15);
        if ((int)uVar15 != 0) {
          _printk(&DAT_001352ed,"syna_cdev_ioctl_set_config",uVar15 & 0xffffffff);
          uVar12 = 0xffffffcc;
          goto LAB_00116824;
        }
      }
      pbVar8 = DAT_00131dd8;
      if (*(char *)((long)plVar28 + 0x582) == '\x01') {
        uVar12 = (uint)*(ushort *)(DAT_00131dd8 + 2);
        if (*(ushort *)(DAT_00131dd8 + 4) == 0) {
          if (uVar12 != 0) {
            bVar11 = false;
            goto LAB_001167b0;
          }
        }
        else {
          bVar11 = *(uint *)(lVar30 + 0x3c) != (uint)*(ushort *)(DAT_00131dd8 + 4);
          if (uVar12 == 0) {
joined_r0x001167bc:
            if (!bVar11) goto LAB_001167e4;
          }
          else {
LAB_001167b0:
            if (*(uint *)(lVar30 + 0x38) == uVar12) goto joined_r0x001167bc;
          }
          if (*(int *)(*(code **)(lVar30 + 0x3a8) + -4) != 0x4a0b1dd) {
                    /* WARNING: Does not return */
            pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x1167e0);
            (*pcVar24)();
          }
          (**(code **)(lVar30 + 0x3a8))(lVar30);
        }
LAB_001167e4:
        uVar4 = *(ushort *)(pbVar8 + 8);
        if ((uVar4 & 1) != (ushort)*(byte *)(lVar30 + 0x37a)) {
          pcVar22 = "enable";
          if ((uVar4 & 1) == 0) {
            pcVar22 = "disable";
          }
          _printk(&DAT_0013cdf6,"syna_cdev_ioctl_set_config",pcVar22);
          syna_tcm_enable_predict_reading(lVar30,uVar4 & 1);
          uVar4 = *(ushort *)(pbVar8 + 8);
        }
        if (DAT_00131e80._4_4_ != uVar4 >> 8) {
          DAT_00131e80._4_4_ = (uint)(uVar4 >> 8);
          _printk(&DAT_00132dbe,"syna_cdev_ioctl_set_config");
        }
        DAT_00131e88 = (uint)pbVar8[10] << 2;
        if (pbVar8[10] != 0) {
          _printk(&DAT_001371a9,"syna_cdev_ioctl_set_config");
        }
      }
      uVar12 = 0;
    }
LAB_00116824:
    if (DAT_00131e18 != '\x01') {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      goto LAB_00116b14;
    }
LAB_00116830:
    DAT_00131e18 = '\0';
    goto LAB_00116834;
  case 0x22:
    if ((uint)local_188 < 0x14) {
      pcVar22 = "syna_cdev_ioctl_get_config_params";
      goto LAB_00116a1c;
    }
    lVar30 = *plVar28;
    if (DAT_00131e18 != '\0') {
      _printk(&DAT_00138e56,"syna_tcm_buf_lock");
    }
    mutex_lock(&DAT_00131de8);
    pbVar8 = DAT_00131dd8;
    DAT_00131e18 = DAT_00131e18 + '\x01';
    uVar12 = (uint)DAT_00131de0;
    if ((uint)DAT_00131de0 < 0x14) {
      if (DAT_00131dd8 == (byte *)0x0) {
LAB_00115b3c:
        lVar17 = syna_request_managed_device();
        if (lVar17 != 0) goto LAB_00115b44;
LAB_00117070:
        _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
        DAT_00131dd8 = (byte *)0x0;
      }
      else {
        lVar17 = syna_request_managed_device();
        if (lVar17 != 0) {
          devm_kfree(lVar17,pbVar8);
          goto LAB_00115b3c;
        }
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        lVar17 = syna_request_managed_device();
        if (lVar17 == 0) goto LAB_00117070;
LAB_00115b44:
        uVar12 = 0x14;
        DAT_00131dd8 = (byte *)devm_kmalloc(lVar17,0x14,0xdc0);
        if (DAT_00131dd8 != (byte *)0x0) {
          DAT_00131de0 = CONCAT44(DAT_00131de0._4_4_,0x14);
          goto LAB_00115b68;
        }
      }
      _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",0x14);
      DAT_00131de0 = 0;
      _printk(&DAT_00138268,"syna_cdev_ioctl_get_config_params",0x14);
      uVar12 = 0xffffff0d;
    }
    else {
LAB_00115b68:
      memset(DAT_00131dd8,0,(ulong)uVar12);
      DAT_00131de0 = DAT_00131de0 & 0xffffffff;
      pbVar8 = DAT_00131dd8;
      pbVar8[0x10] = 0;
      pbVar8[0x11] = 0;
      pbVar8[0x12] = 0;
      pbVar8[0x13] = 0;
      pbVar8[0] = 0;
      pbVar8[1] = 0;
      pbVar8[2] = 0;
      pbVar8[3] = 0;
      pbVar8[4] = 0;
      pbVar8[5] = 0;
      pbVar8[6] = 0;
      pbVar8[7] = 0;
      pbVar8[8] = 0;
      pbVar31 = DAT_00131dd8;
      pbVar8[9] = 0;
      pbVar8[10] = 0;
      pbVar8[0xb] = 0;
      pbVar8[0xc] = 0;
      pbVar8[0xd] = 0;
      pbVar8[0xe] = 0;
      pbVar8[0xf] = 0;
      *(short *)(DAT_00131dd8 + 2) = (short)*(undefined4 *)(lVar30 + 0x38);
      *(short *)(pbVar31 + 4) = (short)*(undefined4 *)(lVar30 + 0x3c);
      bVar3 = *pbVar31 & 0xfe | *(byte *)((long)plVar28 + 0x582);
      *pbVar31 = bVar3;
      *pbVar31 = bVar3 & 0xf7 | (*(int *)((long)plVar28 + 0x57c) == 3) << 3;
      if (*(byte *)(lVar30 + 0x80) != 0) {
        pbVar31[1] = *(byte *)(lVar30 + 0x80);
      }
      uVar4 = *(ushort *)(pbVar31 + 8);
      bVar3 = *(byte *)(lVar30 + 0x37a);
      *(ushort *)(pbVar31 + 8) = uVar4 & 0xfffe | (ushort)bVar3;
      *(ushort *)(pbVar31 + 8) = uVar4 & 0xfe | (ushort)bVar3 | DAT_00131e80._4_2_ << 8;
      pbVar31[10] = (byte)(DAT_00131e88 >> 2);
      if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
         (uVar25 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
        uVar25 = uVar9 & (long)(uVar9 << 8) >> 8;
      }
      if (uVar25 < 0x7fffffffed) {
        uVar21 = daif;
        uVar25 = daif;
        daif = uVar25 | 0xc0;
        uVar25 = ttbr1_el1;
        ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
        ttbr0_el1 = puVar6[1];
        InstructionSynchronizationBarrier();
        daif = uVar21;
        iVar14 = __arch_copy_to_user(uVar21,uVar9 & 0xff7fffffffffffff,pbVar31,0x14);
        uVar25 = daif;
        uVar15 = daif;
        daif = uVar15 | 0xc0;
        uVar15 = ttbr1_el1;
        ttbr0_el1 = (uVar15 & 0xffffffffffff) - 0x1000;
        ttbr1_el1 = uVar15 & 0xffffffffffff;
        InstructionSynchronizationBarrier();
        daif = uVar25;
        if (iVar14 == 0) {
          uVar12 = 0x14;
          goto LAB_00115c98;
        }
      }
      _printk(uVar25,&DAT_00136c2a,"syna_cdev_ioctl_get_config_params");
      uVar12 = 0xffffffcc;
    }
LAB_00115c98:
    if (DAT_00131e18 == '\x01') goto LAB_00116830;
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
LAB_00116b14:
    DAT_00131e18 = DAT_00131e18 + -1;
LAB_00116834:
    puVar20 = &DAT_00131de8;
LAB_00116840:
    mutex_unlock(puVar20);
  }
LAB_00116844:
  if ((int)uVar12 < 0) goto LAB_001168dc;
LAB_00116848:
  bVar3 = *(byte *)((long)puVar6 + 0x46);
joined_r0x0011684c:
  if ((bVar3 >> 5 & 1) == 0) {
LAB_00116850:
    uVar25 = param_3;
    if (((uint)*puVar6 >> 0x1a & 1) != 0) goto LAB_0011685c;
  }
  else {
LAB_0011685c:
    uVar25 = param_3 & uVar7;
  }
  if (uVar25 < 0x7ffffffff1) {
    uVar21 = daif;
    uVar7 = daif;
    daif = uVar7 | 0xc0;
    uVar7 = ttbr1_el1;
    ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar7 & 0xffffffffffff;
    ttbr0_el1 = puVar6[1];
    InstructionSynchronizationBarrier();
    daif = uVar21;
    uVar15 = __arch_copy_to_user(uVar21,param_3 & 0xff7fffffffffffff,&local_188,0x10);
    uVar21 = daif;
    uVar7 = daif;
    daif = uVar7 | 0xc0;
    uVar7 = ttbr1_el1;
    ttbr0_el1 = (uVar7 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar7 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar21;
    if ((int)uVar15 == 0) {
LAB_001168d8:
      uVar12 = 0;
      goto LAB_001168dc;
    }
  }
  else {
    uVar15 = 0x10;
  }
  puVar19 = &DAT_0013c686;
  pcVar22 = "syna_cdev_ioctls";
LAB_00116938:
  _printk(puVar19,pcVar22,uVar15);
  uVar12 = 0xffffffcc;
LAB_001168dc:
  mutex_unlock(&DAT_00131e20);
  lVar30 = sp_el0;
  if (*(long *)(lVar30 + 0x710) != local_70) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return (long)(int)uVar12;
}

