
ulong syna_tcm_v1_read_message(long param_1,undefined1 *param_2)

{
  undefined8 *puVar1;
  long *plVar2;
  undefined8 uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  char cVar7;
  byte bVar8;
  uint uVar9;
  uint uVar10;
  bool bVar11;
  int iVar12;
  int iVar13;
  int iVar14;
  long lVar15;
  void *pvVar16;
  void *__dest;
  ulong uVar17;
  undefined *puVar18;
  char *pcVar19;
  long lVar20;
  code *pcVar21;
  ulong uVar22;
  uint uVar23;
  uint uVar24;
  uint uVar25;
  uint uVar26;
  undefined1 *puVar27;
  uint uVar28;
  uint uVar29;
  
  if (param_1 == 0) {
    puVar27 = &DAT_00168a84;
LAB_00145850:
    uVar17 = _printk(puVar27,"syna_tcm_v1_read_message");
    return uVar17;
  }
  if (*(long *)(param_1 + 0x48) == 0) {
    puVar27 = &DAT_00172230;
    goto LAB_00145850;
  }
  if (*(char *)(param_1 + 0x37a) == '\x01') {
    bVar11 = *(int *)(param_1 + 0x1f8) == 0;
  }
  else {
    bVar11 = false;
  }
  if (param_2 != (undefined1 *)0x0) {
    *param_2 = 0xff;
  }
  *(undefined1 *)(param_1 + 0x1fd) = 0;
  mutex_lock(param_1 + 0x348);
  if (*(char *)(param_1 + 0x280) != '\0') {
    uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar17;
  }
  mutex_lock(param_1 + 0x250);
  *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
  if (bVar11) {
    uVar24 = 4;
    if (*(int *)(param_1 + 0x37c) != 0) {
      iVar12 = 6;
      if (*(char *)(param_1 + 0x380) == '\0') {
        iVar12 = 4;
      }
      uVar24 = *(int *)(param_1 + 0x37c) + (uint)*(byte *)(param_1 + 900) + iVar12 + 1;
    }
  }
  else {
    uVar24 = 4;
  }
  lVar20 = *(long *)(param_1 + 0x48);
  plVar2 = (long *)(param_1 + 0x240);
  if ((*(char *)(lVar20 + 0x15) == '\x01') && (*(uint *)(lVar20 + 0x1c) < uVar24)) {
    uVar28 = *(uint *)(lVar20 + 0x18);
    if (uVar28 != 0) {
      uVar9 = 0;
      if (uVar28 != 0) {
        uVar9 = uVar24 / uVar28;
      }
      uVar24 = uVar9 * uVar28;
      goto LAB_00145558;
    }
    uVar24 = 0;
  }
  else {
LAB_00145558:
    if (*(uint *)(param_1 + 0x248) < uVar24) {
      lVar20 = *plVar2;
      if (lVar20 != 0) {
        lVar15 = syna_request_managed_device();
        if (lVar15 == 0) {
          uVar17 = _printk(&DAT_00171996,"syna_pal_mem_free");
          return uVar17;
        }
        devm_kfree(lVar15,lVar20);
      }
      lVar20 = syna_request_managed_device();
      if (lVar20 == 0) {
        puVar18 = &DAT_00171996;
LAB_00146188:
        uVar17 = _printk(puVar18,"syna_pal_mem_alloc");
        return uVar17;
      }
      if ((int)uVar24 < 1) {
        puVar18 = &DAT_0016da92;
        goto LAB_00146188;
      }
      pvVar16 = (void *)devm_kmalloc(lVar20,(ulong)uVar24,0xdc0);
      *plVar2 = (long)pvVar16;
      if (pvVar16 == (void *)0x0) {
        uVar17 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar24);
        return uVar17;
      }
      *(uint *)(param_1 + 0x248) = uVar24;
      memset(pvVar16,0,(ulong)uVar24);
      *(undefined4 *)(param_1 + 0x24c) = 0;
    }
  }
  iVar12 = FUN_00146b90(param_1,uVar24,*(undefined8 *)(param_1 + 0x240),*(uint *)(param_1 + 0x248));
  if (iVar12 < 0) {
    uVar17 = _printk(&DAT_0016dc7a,"syna_tcm_v1_read_message",uVar24);
    return uVar17;
  }
  puVar27 = *(undefined1 **)(param_1 + 0x240);
  *(uint *)(param_1 + 0x200) = (uint)*(ushort *)(puVar27 + 2);
  if (puVar27[1] != '\0') {
    *(undefined1 *)(param_1 + 0x1fd) = puVar27[1];
  }
  if (*(char *)(param_1 + 0x280) != '\x01') {
    uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    return uVar17;
  }
  *(undefined1 *)(param_1 + 0x280) = 0;
  mutex_unlock(param_1 + 0x250);
  uVar28 = *(uint *)(param_1 + 0x200);
  if (uVar28 != 0) {
    if (puVar27[1] == '\x03') {
      uVar24 = 0x40;
      if (*(uint *)(param_1 + 0x3c) != 0) {
        uVar24 = *(uint *)(param_1 + 0x3c);
      }
      lVar20 = syna_request_managed_device();
      if (lVar20 == 0) {
        puVar18 = &DAT_00171996;
LAB_00146210:
        uVar17 = _printk(puVar18,"syna_pal_mem_alloc");
        return uVar17;
      }
      if (0x7ffffffe < uVar24) {
        puVar18 = &DAT_0016da92;
        goto LAB_00146210;
      }
      lVar20 = devm_kmalloc(lVar20,uVar24 + 1,0xdc0);
      if (lVar20 == 0) {
        puVar18 = &DAT_0016d72c;
        pcVar19 = "syna_tcm_v1_discard_message";
LAB_001463bc:
        uVar17 = _printk(puVar18,pcVar19);
        return uVar17;
      }
      iVar12 = 100;
      do {
        lVar15 = *(long *)(param_1 + 0x48);
        puVar18 = &DAT_0016d5c2;
        if ((lVar15 == 0) ||
           (pcVar21 = *(code **)(lVar15 + 0x20), puVar18 = &DAT_0016b7bc, pcVar21 == (code *)0x0)) {
          uVar17 = _printk(puVar18,"syna_tcm_read");
          return uVar17;
        }
        if (*(int *)(pcVar21 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
          pcVar21 = (code *)SoftwareBreakpoint(0x8228,0x1456a0);
          (*pcVar21)();
        }
        iVar13 = (*pcVar21)(lVar15,lVar20,uVar24);
        if (iVar13 < 0) {
          uVar17 = _printk(&DAT_00166c72,"syna_tcm_v1_discard_message",uVar24);
          return uVar17;
        }
        if (*(char *)(lVar20 + 1) == '\0') break;
        usleep_range_state(1000,2000,2);
        iVar12 = iVar12 + -1;
      } while (iVar12 != 0);
      lVar15 = syna_request_managed_device();
      if (lVar15 == 0) {
        puVar18 = &DAT_00171996;
        pcVar19 = "syna_pal_mem_free";
        goto LAB_001463bc;
      }
      devm_kfree(lVar15,lVar20);
      uVar24 = 0xffffff0e;
      goto LAB_001468e4;
    }
    uVar9 = 0;
    if (uVar24 - 4 <= uVar28) {
      uVar9 = uVar28 - (uVar24 - 4);
    }
    if (uVar24 < 5) {
      uVar9 = uVar28;
    }
    if (uVar9 != 0) {
      if (((uVar9 ^ 0xffffffff) & 0xffff) == 0) goto LAB_001467e4;
      iVar12 = uVar9 + 3;
      iVar13 = *(byte *)(param_1 + 900) + 1;
      uVar24 = uVar28 + 7;
      if (*(byte *)(param_1 + 0x380) == 0) {
        iVar12 = uVar9 + 1;
        uVar24 = uVar28 + 5;
      }
      uVar29 = iVar12 + iVar13;
      uVar24 = uVar24 + iVar13;
      if (((*(byte *)(param_1 + 0x380) | *(byte *)(param_1 + 900)) & 1) == 0) {
        uVar29 = uVar9 + 1;
        uVar24 = uVar28 + 5;
      }
      if (*(char *)(param_1 + 0x280) != '\0') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
        return uVar17;
      }
      mutex_lock(param_1 + 0x250);
      uVar25 = *(uint *)(param_1 + 0x248);
      uVar28 = uVar24 + 1;
      *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
      if (uVar25 < uVar28) {
        pvVar16 = (void *)*plVar2;
        lVar20 = syna_request_managed_device();
        if (lVar20 == 0) {
          puVar18 = &DAT_00171996;
LAB_00146490:
          uVar17 = _printk(puVar18,"syna_pal_mem_alloc");
          return uVar17;
        }
        if (0x7ffffffe < uVar24) {
          puVar18 = &DAT_0016da92;
          goto LAB_00146490;
        }
        __dest = (void *)devm_kmalloc(lVar20,uVar28,0xdc0);
        *plVar2 = (long)__dest;
        if (__dest == (void *)0x0) {
          uVar17 = _printk(&DAT_0016c730,"syna_tcm_buf_realloc",uVar28);
          return uVar17;
        }
        if (pvVar16 == (void *)0x0) {
          uVar17 = _printk(&DAT_00166ca2,"syna_tcm_buf_realloc");
          return uVar17;
        }
        memcpy(__dest,pvVar16,(ulong)uVar25);
        lVar20 = syna_request_managed_device();
        if (lVar20 == 0) {
          uVar17 = _printk(&DAT_00171996,"syna_pal_mem_free");
          return uVar17;
        }
        devm_kfree(lVar20,pvVar16);
        *(uint *)(param_1 + 0x248) = uVar28;
      }
      uVar28 = uVar24;
      if (*(uint *)(param_1 + 0x3c) != 0) {
        uVar28 = *(uint *)(param_1 + 0x3c);
      }
      if (*(char *)(*(long *)(param_1 + 0x48) + 0x15) == '\x01') {
        uVar25 = 0;
        if (uVar28 == 0) {
          uVar23 = 0;
        }
        else {
          uVar4 = *(uint *)(*(long *)(param_1 + 0x48) + 0x18);
          uVar23 = 0;
          if (uVar4 != 0) {
            uVar25 = 0;
            if (uVar4 != 0) {
              uVar25 = uVar28 / uVar4;
            }
            uVar25 = uVar25 * uVar4;
            if (uVar25 != 0) goto LAB_0014582c;
            goto LAB_0014580c;
          }
        }
      }
      else {
        uVar25 = uVar28;
        if (uVar28 == 0) {
LAB_0014580c:
          uVar23 = 0;
        }
        else {
LAB_0014582c:
          uVar23 = 0;
          if (uVar25 != 0) {
            uVar23 = ((uVar24 + uVar25) - 1) / uVar25;
          }
        }
      }
      if (uVar23 < 2) {
        uVar23 = 1;
      }
      uVar24 = (*(int *)(param_1 + 0x200) - uVar9) + 4;
      if (*(char *)(param_1 + 0x310) != '\0') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
        return uVar17;
      }
      mutex_lock(param_1 + 0x2e0);
      iVar12 = 0;
      *(char *)(param_1 + 0x310) = *(char *)(param_1 + 0x310) + '\x01';
      uVar28 = 0;
      do {
        uVar4 = uVar28 + 1;
        uVar26 = uVar25 - 2;
        if (uVar29 <= uVar25) {
          uVar26 = uVar29;
        }
        if (uVar26 == 1) {
          uVar29 = uVar29 - 1;
          *(undefined1 *)(*plVar2 + (ulong)uVar24) = 0x5a;
          uVar24 = uVar24 + 1;
        }
        else {
          if (((uVar4 == uVar23) &&
              (lVar20 = *(long *)(param_1 + 0x48), (*(byte *)(lVar20 + 0x15) & 1) != 0)) &&
             (*(uint *)(lVar20 + 0x1c) < uVar26)) {
            uVar5 = *(uint *)(lVar20 + 0x18);
            iVar13 = 0;
            if (uVar5 != 0) {
              uVar10 = 0;
              if (uVar5 != 0) {
                uVar10 = uVar26 / uVar5;
              }
              iVar13 = uVar10 * uVar5;
            }
            uVar26 = iVar13 - 2;
            if (uVar26 != uVar29) {
              uVar23 = uVar23 + 1;
            }
          }
          uVar5 = uVar26 + 2;
          pvVar16 = *(void **)(param_1 + 0x2d0);
          uVar17 = (ulong)*(uint *)(param_1 + 0x2d8);
          if (*(uint *)(param_1 + 0x2d8) < uVar5) {
            if (pvVar16 != (void *)0x0) {
              lVar20 = syna_request_managed_device();
              if (lVar20 == 0) {
                uVar17 = _printk(&DAT_00171996,"syna_pal_mem_free");
                return uVar17;
              }
              devm_kfree(lVar20,pvVar16);
            }
            lVar20 = syna_request_managed_device();
            if (lVar20 == 0) {
              puVar18 = &DAT_00171996;
LAB_00146764:
              uVar17 = _printk(puVar18,"syna_pal_mem_alloc");
              return uVar17;
            }
            if ((int)uVar5 < 1) {
              puVar18 = &DAT_0016da92;
              goto LAB_00146764;
            }
            pvVar16 = (void *)devm_kmalloc(lVar20,(ulong)uVar5,0xdc0);
            *(void **)(param_1 + 0x2d0) = pvVar16;
            if (pvVar16 == (void *)0x0) {
              uVar17 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar5);
              return uVar17;
            }
            *(uint *)(param_1 + 0x2d8) = uVar5;
            uVar17 = (ulong)uVar5;
          }
          memset(pvVar16,0,uVar17);
          *(undefined4 *)(param_1 + 0x2dc) = 0;
          iVar13 = 5;
          if (5 < iVar12 + 1) {
            iVar13 = iVar12 + 1;
          }
          do {
            uVar10 = *(uint *)(param_1 + 0x210);
            if ((0 < (int)uVar10) && (uVar6 = *(uint *)(param_1 + 0x214), 0 < (int)uVar6)) {
              if (uVar6 <= uVar10) {
                uVar6 = uVar10;
              }
              usleep_range_state(uVar10,uVar6,2);
            }
            iVar14 = FUN_00146b28(param_1,uVar5,*(undefined8 *)(param_1 + 0x2d0),
                                  *(undefined4 *)(param_1 + 0x2d8));
            if (iVar14 < 0) {
              uVar17 = _printk(&DAT_0016c904,"syna_tcm_v1_continued_read",uVar5);
              return uVar17;
            }
            lVar20 = *(long *)(param_1 + 0x2d0);
            *(uint *)(param_1 + 0x2dc) = uVar5;
            cVar7 = *(char *)(lVar20 + 1);
            if (cVar7 == '\x03') goto joined_r0x00145adc;
            iVar12 = iVar12 + 1;
          } while (iVar12 < 5);
          if (cVar7 != '\x03') {
            uVar17 = _printk(&DAT_0016ac22,"syna_tcm_v1_continued_read",cVar7,uVar28,uVar23);
            return uVar17;
          }
          lVar20 = *(long *)(param_1 + 0x2d0);
          iVar12 = iVar13;
joined_r0x00145adc:
          if (((void *)(lVar20 + 2) == (void *)0x0) ||
             ((void *)(*plVar2 + (ulong)uVar24) == (void *)0x0)) {
            uVar17 = _printk(&DAT_00171bee,"syna_tcm_v1_continued_read");
            return uVar17;
          }
          uVar28 = *(int *)(param_1 + 0x2d8) - 2;
          uVar5 = *(int *)(param_1 + 0x248) - uVar24;
          if ((uVar28 < uVar26) || (uVar5 < uVar26)) {
            uVar17 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",uVar28,uVar5,uVar26);
            return uVar17;
          }
          memcpy((void *)(*plVar2 + (ulong)uVar24),(void *)(lVar20 + 2),(ulong)uVar26);
          uVar24 = uVar26 + uVar24;
          uVar29 = uVar29 - uVar26;
        }
        uVar28 = uVar4;
      } while (uVar4 < uVar23);
      *(uint *)(param_1 + 0x24c) = uVar24;
      if (*(char *)(param_1 + 0x310) != '\x01') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
        return uVar17;
      }
      *(undefined1 *)(param_1 + 0x310) = 0;
      mutex_unlock(param_1 + 0x2e0);
      if (*(char *)(param_1 + 0x280) != '\x01') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
        return uVar17;
      }
      *(undefined1 *)(param_1 + 0x280) = 0;
      mutex_unlock(param_1 + 0x250);
      if (false) {
LAB_001467e4:
        uVar17 = _printk(&DAT_001705d6,"syna_tcm_v1_read_message",uVar9,*puVar27,puVar27[1],
                         puVar27[2],puVar27[3]);
        return uVar17;
      }
    }
  }
  if (*(char *)(param_1 + 0x280) != '\0') {
    uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar17;
  }
  mutex_lock(param_1 + 0x250);
  *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
  **(undefined1 **)(param_1 + 0x240) = 0xa5;
  *(undefined1 *)(*(long *)(param_1 + 0x240) + 1) = *(undefined1 *)(param_1 + 0x1fd);
  *(char *)(*(long *)(param_1 + 0x240) + 2) = (char)*(undefined4 *)(param_1 + 0x200);
  *(char *)(*(long *)(param_1 + 0x240) + 3) = (char)((uint)*(undefined4 *)(param_1 + 0x200) >> 8);
  if (*(char *)(param_1 + 0x280) != '\x01') {
    uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    return uVar17;
  }
  *(undefined1 *)(param_1 + 0x280) = 0;
  mutex_unlock(param_1 + 0x250);
  if ((*(char *)(param_1 + 0x380) == '\x01') && (*(int *)(param_1 + 0x200) != 0)) {
    if (*(char *)(param_1 + 0x280) != '\0') {
      uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar17;
    }
    mutex_lock(param_1 + 0x250);
    cVar7 = *(char *)(param_1 + 0x280);
    uVar24 = *(int *)(param_1 + 0x200) + 5;
    *(char *)(param_1 + 0x280) = cVar7 + '\x01';
    if (uVar24 < *(uint *)(param_1 + 0x248)) {
      *(undefined2 *)(param_1 + 0x382) = *(undefined2 *)(*(long *)(param_1 + 0x240) + (ulong)uVar24)
      ;
      if ((*(char *)(param_1 + 900) == '\x01') &&
         (uVar24 = *(int *)(param_1 + 0x200) + 7, uVar24 <= *(uint *)(param_1 + 0x248))) {
        *(undefined1 *)(param_1 + 0x385) =
             *(undefined1 *)(*(long *)(param_1 + 0x240) + (ulong)uVar24);
      }
      if (cVar7 != '\0') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock",cVar7 + '\x01');
        return uVar17;
      }
      *(undefined1 *)(param_1 + 0x280) = 0;
      mutex_unlock(param_1 + 0x250);
    }
  }
  uVar17 = (ulong)*(byte *)(param_1 + 0x1fd);
  if (*(long *)(param_1 + 0x13d8 + uVar17 * 0x10 + 8) != 0) {
    if (*(char *)(param_1 + 0x280) != '\0') {
      uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar17;
    }
    mutex_lock(param_1 + 0x250);
    puVar1 = (undefined8 *)(param_1 + 0x13d8 + (ulong)*(byte *)(param_1 + 0x1fd) * 0x10);
    *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
    pcVar21 = (code *)puVar1[1];
    if (*(int *)(pcVar21 + -4) != -0x606c3bf6) {
                    /* WARNING: Does not return */
      pcVar21 = (code *)SoftwareBreakpoint(0x822b,0x145d00);
      (*pcVar21)();
    }
    (*pcVar21)(*(byte *)(param_1 + 0x1fd),*(long *)(param_1 + 0x240) + 4,
               *(undefined4 *)(param_1 + 0x200),*puVar1);
    if (*(char *)(param_1 + 0x280) != '\x01') {
      uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar17;
    }
    *(undefined1 *)(param_1 + 0x280) = 0;
    mutex_unlock(param_1 + 0x250);
    uVar17 = (ulong)*(byte *)(param_1 + 0x1fd);
  }
  if ((uint)uVar17 < 0x10) {
    if (*(int *)(param_1 + 0x1f8) == 1) {
      *(char *)(param_1 + 0x1fe) = (char)uVar17;
      if (*(int *)(param_1 + 0x200) == 0) {
        *(undefined4 *)(param_1 + 0x154) = 0;
        cVar7 = *(char *)(param_1 + 0x1fe);
      }
      else {
        if (*(char *)(param_1 + 0x188) != '\0') {
          uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
          return uVar17;
        }
        mutex_lock(param_1 + 0x158);
        uVar24 = *(uint *)(param_1 + 0x200);
        uVar17 = (ulong)*(uint *)(param_1 + 0x150);
        pvVar16 = *(void **)(param_1 + 0x148);
        *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
        if (*(uint *)(param_1 + 0x150) < uVar24) {
          if (pvVar16 != (void *)0x0) {
            lVar20 = syna_request_managed_device();
            if (lVar20 == 0) {
              uVar17 = _printk(&DAT_00171996,"syna_pal_mem_free");
              return uVar17;
            }
            devm_kfree(lVar20,pvVar16);
          }
          lVar20 = syna_request_managed_device();
          if (lVar20 == 0) {
            puVar18 = &DAT_00171996;
LAB_00146834:
            uVar17 = _printk(puVar18,"syna_pal_mem_alloc");
            return uVar17;
          }
          if ((int)uVar24 < 1) {
            puVar18 = &DAT_0016da92;
            goto LAB_00146834;
          }
          pvVar16 = (void *)devm_kmalloc(lVar20,(ulong)uVar24,0xdc0);
          *(void **)(param_1 + 0x148) = pvVar16;
          if (pvVar16 == (void *)0x0) {
            uVar17 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar24);
            return uVar17;
          }
          *(uint *)(param_1 + 0x150) = uVar24;
          uVar17 = (ulong)uVar24;
        }
        memset(pvVar16,0,uVar17);
        *(undefined4 *)(param_1 + 0x154) = 0;
        if (*(char *)(param_1 + 0x280) != '\0') {
          uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
          return uVar17;
        }
        mutex_lock(param_1 + 0x250);
        *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
        if ((*(void **)(param_1 + 0x148) == (void *)0x0) ||
           (pvVar16 = (void *)(*(long *)(param_1 + 0x240) + 4), pvVar16 == (void *)0x0)) {
          uVar17 = _printk(&DAT_0017065e,"syna_tcm_v1_dispatch_response");
          return uVar17;
        }
        uVar24 = *(uint *)(param_1 + 0x200);
        if ((*(uint *)(param_1 + 0x150) < uVar24) || (*(int *)(param_1 + 0x248) - 4U < uVar24)) {
          uVar17 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy");
          return uVar17;
        }
        memcpy(*(void **)(param_1 + 0x148),pvVar16,(ulong)uVar24);
        *(undefined4 *)(param_1 + 0x154) = *(undefined4 *)(param_1 + 0x200);
        if (*(char *)(param_1 + 0x280) != '\x01') {
          uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
          return uVar17;
        }
        *(undefined1 *)(param_1 + 0x280) = 0;
        mutex_unlock(param_1 + 0x250);
        if ((*(char *)(param_1 + 0x1fc) == '\x02') &&
           (iVar12 = FUN_0014541c(param_1,*(undefined8 *)(param_1 + 0x148),
                                  *(undefined4 *)(param_1 + 0x150),*(undefined4 *)(param_1 + 0x154))
           , iVar12 < 0)) {
          uVar17 = _printk(&DAT_0016d106,"syna_tcm_v1_dispatch_response");
          return uVar17;
        }
        if (*(char *)(param_1 + 0x188) != '\x01') {
          uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
          return uVar17;
        }
        *(undefined1 *)(param_1 + 0x188) = 0;
        mutex_unlock(param_1 + 0x158);
        cVar7 = *(char *)(param_1 + 0x1fe);
      }
      if (cVar7 != '\0') {
        if (cVar7 != '\x01') {
          if (cVar7 != '\x03') {
            uVar17 = _printk(&DAT_0016737a,"syna_tcm_v1_dispatch_response",cVar7,
                             *(undefined1 *)(param_1 + 0x1fc));
            return uVar17;
          }
          uVar17 = _printk(&DAT_0016f878,"syna_tcm_v1_dispatch_response");
          return uVar17;
        }
        goto LAB_0014688c;
      }
    }
  }
  else if (*(int *)(param_1 + 0x200) == 0) {
    *(undefined4 *)(param_1 + 0x10c) = 0;
  }
  else {
    if (*(char *)(param_1 + 0x140) != '\0') {
      uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar17;
    }
    mutex_lock(param_1 + 0x110);
    uVar24 = *(uint *)(param_1 + 0x200);
    uVar22 = (ulong)*(uint *)(param_1 + 0x108);
    pvVar16 = *(void **)(param_1 + 0x100);
    *(char *)(param_1 + 0x140) = *(char *)(param_1 + 0x140) + '\x01';
    if (*(uint *)(param_1 + 0x108) < uVar24) {
      if (pvVar16 != (void *)0x0) {
        lVar20 = syna_request_managed_device();
        if (lVar20 == 0) {
          uVar17 = _printk(&DAT_00171996,"syna_pal_mem_free");
          return uVar17;
        }
        devm_kfree(lVar20,pvVar16);
      }
      lVar20 = syna_request_managed_device();
      if (lVar20 == 0) {
        puVar18 = &DAT_00171996;
LAB_00146674:
        uVar17 = _printk(puVar18,"syna_pal_mem_alloc");
        return uVar17;
      }
      if ((int)uVar24 < 1) {
        puVar18 = &DAT_0016da92;
        goto LAB_00146674;
      }
      pvVar16 = (void *)devm_kmalloc(lVar20,(ulong)uVar24,0xdc0);
      *(void **)(param_1 + 0x100) = pvVar16;
      if (pvVar16 == (void *)0x0) {
        uVar17 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar24);
        return uVar17;
      }
      *(uint *)(param_1 + 0x108) = uVar24;
      uVar22 = (ulong)uVar24;
    }
    memset(pvVar16,0,uVar22);
    *(undefined4 *)(param_1 + 0x10c) = 0;
    if (*(char *)(param_1 + 0x280) != '\0') {
      uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar17;
    }
    mutex_lock(param_1 + 0x250);
    *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
    if ((*(void **)(param_1 + 0x100) == (void *)0x0) ||
       (pvVar16 = (void *)(*(long *)(param_1 + 0x240) + 4), pvVar16 == (void *)0x0)) {
      uVar17 = _printk(&DAT_00167e32,"syna_tcm_v1_dispatch_report");
      return uVar17;
    }
    uVar24 = *(uint *)(param_1 + 0x200);
    if ((*(uint *)(param_1 + 0x108) < uVar24) || (*(int *)(param_1 + 0x248) - 4U < uVar24)) {
      uVar17 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy");
      return uVar17;
    }
    memcpy(*(void **)(param_1 + 0x100),pvVar16,(ulong)uVar24);
    *(undefined4 *)(param_1 + 0x10c) = *(undefined4 *)(param_1 + 0x200);
    if (*(char *)(param_1 + 0x280) != '\x01') {
      uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar17;
    }
    *(undefined1 *)(param_1 + 0x280) = 0;
    mutex_unlock(param_1 + 0x250);
    if (*(char *)(param_1 + 0x140) != '\x01') {
      uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar17;
    }
    *(undefined1 *)(param_1 + 0x140) = 0;
    mutex_unlock(param_1 + 0x110);
    if ((uint)uVar17 == 0x10) {
      if (*(char *)(param_1 + 0x280) != '\0') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
        return uVar17;
      }
      mutex_lock(param_1 + 0x250);
      *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
      iVar12 = FUN_00145724(param_1,*(long *)(param_1 + 0x240) + 4,*(int *)(param_1 + 0x248) + -4,
                            *(undefined4 *)(param_1 + 0x200));
      if (iVar12 < 0) {
        uVar17 = _printk(&DAT_0016f846,"syna_tcm_v1_dispatch_report");
        return uVar17;
      }
      if (*(char *)(param_1 + 0x280) != '\x01') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
        return uVar17;
      }
      *(undefined1 *)(param_1 + 0x280) = 0;
      mutex_unlock(param_1 + 0x250);
      if (*(int *)(param_1 + 0x1f8) == 1) {
        bVar8 = *(byte *)(param_1 + 0x1fc);
        if (bVar8 < 0x1f) {
          if ((bVar8 == 4) || (bVar8 == 0x14)) {
LAB_0014688c:
            *(undefined4 *)(param_1 + 0x1f8) = 0;
            uVar17 = completion_done(param_1 + 0x220);
            if ((uVar17 & 1) == 0) {
              complete(param_1 + 0x220);
            }
            goto joined_r0x001468a4;
          }
        }
        else if ((bVar8 == 0x1f) || (bVar8 == 0x31)) goto LAB_0014688c;
        if (*(char *)(param_1 + 0x1f0) != '\x01') {
          uVar17 = _printk(&DAT_00171438,"syna_tcm_v1_dispatch_report",0x10);
          return uVar17;
        }
        *(undefined4 *)(param_1 + 0x1f8) = 0;
        uVar22 = completion_done(param_1 + 0x220);
        if ((uVar22 & 1) == 0) {
          complete(param_1 + 0x220);
        }
      }
    }
    lVar20 = param_1 + uVar17 * 0x10;
    if (*(long *)(lVar20 + 0x3e0) != 0) {
      if (*(char *)(param_1 + 0x140) != '\0') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
        return uVar17;
      }
      mutex_lock(param_1 + 0x110);
      uVar3 = *(undefined8 *)(lVar20 + 0x3d8);
      pcVar21 = *(code **)(lVar20 + 0x3e0);
      *(char *)(param_1 + 0x140) = *(char *)(param_1 + 0x140) + '\x01';
      if (*(int *)(pcVar21 + -4) != -0x606c3bf6) {
                    /* WARNING: Does not return */
        pcVar21 = (code *)SoftwareBreakpoint(0x8229,0x14615c);
        (*pcVar21)();
      }
      (*pcVar21)(uVar17,*(undefined8 *)(param_1 + 0x100),*(undefined4 *)(param_1 + 0x10c),uVar3);
      if (*(char *)(param_1 + 0x140) != '\x01') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
        return uVar17;
      }
      *(undefined1 *)(param_1 + 0x140) = 0;
      mutex_unlock(param_1 + 0x110);
    }
  }
joined_r0x001468a4:
  if (param_2 != (undefined1 *)0x0) {
    *param_2 = *(undefined1 *)(param_1 + 0x1fd);
  }
  uVar24 = 0;
  if (bVar11) {
    uVar9 = *(uint *)(param_1 + 0x200);
    uVar29 = *(int *)(param_1 + 0x3c) - 5;
    uVar28 = uVar9;
    if (uVar29 <= uVar9) {
      uVar28 = uVar29;
    }
    if (*(int *)(param_1 + 0x3c) != 0) {
      uVar9 = uVar28;
    }
    uVar28 = 0;
    if (0xf < *(byte *)(param_1 + 0x1fd)) {
      uVar28 = uVar9;
    }
    *(uint *)(param_1 + 0x37c) = uVar28;
  }
LAB_001468e4:
  uVar28 = *(uint *)(param_1 + 0x210);
  if ((0 < (int)uVar28) && (uVar9 = *(uint *)(param_1 + 0x214), 0 < (int)uVar9)) {
    if (uVar9 <= uVar28) {
      uVar9 = uVar28;
    }
    usleep_range_state(uVar28,uVar9,2);
  }
  mutex_unlock(param_1 + 0x348);
  return (ulong)uVar24;
}

