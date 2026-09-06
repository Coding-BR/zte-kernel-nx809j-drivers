
undefined8 FUN_00145724(undefined8 param_1,undefined8 param_2,int param_3)

{
  undefined8 *puVar1;
  uint uVar2;
  undefined8 uVar3;
  char cVar4;
  byte bVar5;
  code *pcVar6;
  bool in_ZR;
  int iVar7;
  int iVar8;
  long lVar9;
  void *__dest;
  undefined *puVar10;
  uint in_w8;
  int iVar11;
  ulong uVar12;
  uint uVar13;
  ulong in_x9;
  uint in_w10;
  int in_w11;
  int in_w12;
  int in_w13;
  long unaff_x19;
  uint uVar14;
  uint *unaff_x21;
  uint uVar15;
  ulong uVar16;
  void *pvVar17;
  uint uVar18;
  undefined1 *unaff_x24;
  uint uVar19;
  undefined1 *unaff_x25;
  int unaff_w26;
  uint uVar20;
  uint uVar21;
  long unaff_x29;
  int iStack0000000000000004;
  int iStack0000000000000018;
  
  if (in_ZR) {
    in_w11 = in_w13 + 1;
    in_w8 = in_w10;
  }
  uVar21 = in_w11 + in_w12 + 1;
  uVar20 = in_w8 + in_w12 + 1;
  if ((in_x9 & 1) == 0) {
    uVar21 = in_w13 + 1;
    uVar20 = in_w10;
  }
  if (param_3 != 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
  }
  iStack0000000000000018 = in_w13;
  mutex_lock(unaff_x19 + 0x250);
  uVar15 = *(uint *)(unaff_x19 + 0x248);
  uVar13 = uVar20 + 1;
  *(char *)(unaff_x19 + 0x280) = *(char *)(unaff_x19 + 0x280) + '\x01';
  if (uVar15 < uVar13) {
    pvVar17 = (void *)**(undefined8 **)(unaff_x29 + -8);
    lVar9 = syna_request_managed_device();
    if (lVar9 == 0) {
      puVar10 = &DAT_00171996;
LAB_00146490:
                    /* WARNING: Subroutine does not return */
      _printk(puVar10,"syna_pal_mem_alloc");
    }
    if (0x7ffffffe < uVar20) {
      puVar10 = &DAT_0016da92;
      goto LAB_00146490;
    }
    __dest = (void *)devm_kmalloc(lVar9,uVar13,0xdc0);
    **(undefined8 **)(unaff_x29 + -8) = __dest;
    if (__dest == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016c730,"syna_tcm_buf_realloc",uVar13);
    }
    if (pvVar17 == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00166ca2,"syna_tcm_buf_realloc");
    }
    memcpy(__dest,pvVar17,(ulong)uVar15);
    lVar9 = syna_request_managed_device();
    if (lVar9 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171996,"syna_pal_mem_free");
    }
    devm_kfree(lVar9,pvVar17);
    *unaff_x21 = uVar13;
  }
  uVar13 = uVar20;
  if (*(uint *)(unaff_x19 + 0x3c) != 0) {
    uVar13 = *(uint *)(unaff_x19 + 0x3c);
  }
  if (*(char *)(*(long *)(unaff_x19 + 0x48) + 0x15) == '\x01') {
    uVar15 = 0;
    if (uVar13 == 0) {
      uVar14 = 0;
    }
    else {
      uVar19 = *(uint *)(*(long *)(unaff_x19 + 0x48) + 0x18);
      uVar14 = 0;
      if (uVar19 != 0) {
        uVar15 = 0;
        if (uVar19 != 0) {
          uVar15 = uVar13 / uVar19;
        }
        uVar15 = uVar15 * uVar19;
        if (uVar15 != 0) goto LAB_0014582c;
        goto LAB_0014580c;
      }
    }
  }
  else {
    uVar15 = uVar13;
    if (uVar13 == 0) {
LAB_0014580c:
      uVar14 = 0;
    }
    else {
LAB_0014582c:
      uVar14 = 0;
      if (uVar15 != 0) {
        uVar14 = ((uVar20 + uVar15) - 1) / uVar15;
      }
    }
  }
  if (uVar14 < 2) {
    uVar14 = 1;
  }
  uVar20 = (*(int *)(unaff_x19 + 0x200) - iStack0000000000000018) + 4;
  if (*(char *)(unaff_x19 + 0x310) != '\0') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
  }
  iStack0000000000000004 = unaff_w26;
  mutex_lock(unaff_x19 + 0x2e0);
  cVar4 = *(char *)(unaff_x19 + 0x310);
  iVar8 = 0;
  uVar13 = uVar15 - 2;
  *(uint *)(unaff_x29 + -0x14) = uVar13;
  *(uint *)(unaff_x29 + -0x10) = uVar15;
  *(char *)(unaff_x19 + 0x310) = cVar4 + '\x01';
  uVar19 = 0;
  do {
    uVar2 = uVar19 + 1;
    uVar18 = uVar13;
    if (uVar21 <= uVar15) {
      uVar18 = uVar21;
    }
    if (uVar18 == 1) {
      uVar21 = uVar21 - 1;
      *(undefined1 *)(**(long **)(unaff_x29 + -8) + (ulong)uVar20) = 0x5a;
      uVar20 = uVar20 + 1;
    }
    else {
      if (((uVar2 == uVar14) &&
          (lVar9 = *(long *)(unaff_x19 + 0x48), (*(byte *)(lVar9 + 0x15) & 1) != 0)) &&
         (*(uint *)(lVar9 + 0x1c) < uVar18)) {
        uVar13 = *(uint *)(lVar9 + 0x18);
        iVar11 = 0;
        if (uVar13 != 0) {
          uVar15 = 0;
          if (uVar13 != 0) {
            uVar15 = uVar18 / uVar13;
          }
          iVar11 = uVar15 * uVar13;
        }
        uVar18 = iVar11 - 2;
        if (uVar18 != uVar21) {
          uVar14 = uVar14 + 1;
        }
      }
      uVar15 = *(uint *)(unaff_x19 + 0x2d8);
      *(uint *)(unaff_x29 + -0xc) = uVar14;
      uVar13 = uVar18 + 2;
      pvVar17 = *(void **)(unaff_x19 + 0x2d0);
      uVar16 = (ulong)uVar15;
      if (uVar15 < uVar13) {
        if (pvVar17 != (void *)0x0) {
          lVar9 = syna_request_managed_device();
          if (lVar9 == 0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00171996,"syna_pal_mem_free");
          }
          devm_kfree(lVar9,pvVar17);
        }
        lVar9 = syna_request_managed_device();
        if (lVar9 == 0) {
          puVar10 = &DAT_00171996;
LAB_00146764:
                    /* WARNING: Subroutine does not return */
          _printk(puVar10,"syna_pal_mem_alloc");
        }
        if ((int)uVar13 < 1) {
          puVar10 = &DAT_0016da92;
          goto LAB_00146764;
        }
        pvVar17 = (void *)devm_kmalloc(lVar9,(ulong)uVar13,0xdc0);
        *(void **)(unaff_x19 + 0x2d0) = pvVar17;
        if (pvVar17 == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar13);
        }
        *(uint *)(unaff_x19 + 0x2d8) = uVar13;
        uVar16 = (ulong)uVar13;
      }
      memset(pvVar17,0,uVar16);
      *(undefined4 *)(unaff_x19 + 0x2dc) = 0;
      iVar11 = 5;
      if (5 < iVar8 + 1) {
        iVar11 = iVar8 + 1;
      }
      do {
        uVar15 = *(uint *)(unaff_x19 + 0x210);
        if ((0 < (int)uVar15) && (uVar14 = *(uint *)(unaff_x19 + 0x214), 0 < (int)uVar14)) {
          if (uVar14 <= uVar15) {
            uVar14 = uVar15;
          }
          usleep_range_state(uVar15,uVar14,2);
        }
        iVar7 = FUN_00146b28();
        if (iVar7 < 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016c904,"syna_tcm_v1_continued_read",uVar13);
        }
        lVar9 = *(long *)(unaff_x19 + 0x2d0);
        *(uint *)(unaff_x19 + 0x2dc) = uVar13;
        cVar4 = *(char *)(lVar9 + 1);
        if (cVar4 == '\x03') {
          uVar15 = *(uint *)(unaff_x29 + -0x10);
          goto joined_r0x00145adc;
        }
        iVar8 = iVar8 + 1;
      } while (iVar8 < 5);
      uVar15 = *(uint *)(unaff_x29 + -0x10);
      if (cVar4 != '\x03') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016ac22,"syna_tcm_v1_continued_read",cVar4,uVar19,
                *(undefined4 *)(unaff_x29 + -0xc));
      }
      lVar9 = *(long *)(unaff_x19 + 0x2d0);
      iVar8 = iVar11;
joined_r0x00145adc:
      if (((void *)(lVar9 + 2) == (void *)0x0) ||
         (pvVar17 = (void *)(**(long **)(unaff_x29 + -8) + (ulong)uVar20), pvVar17 == (void *)0x0))
      {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171bee,"syna_tcm_v1_continued_read");
      }
      uVar13 = *(int *)(unaff_x19 + 0x2d8) - 2;
      uVar14 = *(int *)(unaff_x19 + 0x248) - uVar20;
      if ((uVar13 < uVar18) || (uVar14 < uVar18)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016edc2,"syna_pal_mem_cpy",uVar13,uVar14,uVar18);
      }
      memcpy(pvVar17,(void *)(lVar9 + 2),(ulong)uVar18);
      uVar14 = *(uint *)(unaff_x29 + -0xc);
      uVar13 = *(uint *)(unaff_x29 + -0x14);
      uVar20 = uVar18 + uVar20;
      uVar21 = uVar21 - uVar18;
    }
    uVar19 = uVar2;
  } while (uVar2 < uVar14);
  *(uint *)(unaff_x19 + 0x24c) = uVar20;
  if (*(char *)(unaff_x19 + 0x310) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
  }
  *(undefined1 *)(unaff_x19 + 0x310) = 0;
  mutex_unlock(unaff_x19 + 0x2e0);
  if (*(char *)(unaff_x19 + 0x280) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
  }
  *(undefined1 *)(unaff_x19 + 0x280) = 0;
  mutex_unlock(unaff_x19 + 0x250);
  if (false) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001705d6,"syna_tcm_v1_read_message",iStack0000000000000018,*unaff_x24,unaff_x24[1],
            unaff_x24[2],unaff_x24[3]);
  }
  if (*(char *)(unaff_x19 + 0x280) != '\0') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
  }
  mutex_lock(unaff_x19 + 0x250);
  *(char *)(unaff_x19 + 0x280) = *(char *)(unaff_x19 + 0x280) + '\x01';
  **(undefined1 **)(unaff_x19 + 0x240) = 0xa5;
  *(undefined1 *)(*(long *)(unaff_x19 + 0x240) + 1) = *(undefined1 *)(unaff_x19 + 0x1fd);
  *(char *)(*(long *)(unaff_x19 + 0x240) + 2) = (char)*(undefined4 *)(unaff_x19 + 0x200);
  *(char *)(*(long *)(unaff_x19 + 0x240) + 3) =
       (char)((uint)*(undefined4 *)(unaff_x19 + 0x200) >> 8);
  if (*(char *)(unaff_x19 + 0x280) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
  }
  *(undefined1 *)(unaff_x19 + 0x280) = 0;
  mutex_unlock(unaff_x19 + 0x250);
  if ((*(char *)(unaff_x19 + 0x380) == '\x01') && (*(int *)(unaff_x19 + 0x200) != 0)) {
    if (*(char *)(unaff_x19 + 0x280) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    }
    mutex_lock(unaff_x19 + 0x250);
    cVar4 = *(char *)(unaff_x19 + 0x280);
    uVar21 = *(int *)(unaff_x19 + 0x200) + 5;
    *(char *)(unaff_x19 + 0x280) = cVar4 + '\x01';
    if (uVar21 < *(uint *)(unaff_x19 + 0x248)) {
      *(undefined2 *)(unaff_x19 + 0x382) =
           *(undefined2 *)(*(long *)(unaff_x19 + 0x240) + (ulong)uVar21);
      if ((*(char *)(unaff_x19 + 900) == '\x01') &&
         (uVar21 = *(int *)(unaff_x19 + 0x200) + 7, uVar21 <= *(uint *)(unaff_x19 + 0x248))) {
        *(undefined1 *)(unaff_x19 + 0x385) =
             *(undefined1 *)(*(long *)(unaff_x19 + 0x240) + (ulong)uVar21);
      }
      if (cVar4 != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016da50,"syna_tcm_buf_unlock",cVar4 + '\x01');
      }
      *(undefined1 *)(unaff_x19 + 0x280) = 0;
      mutex_unlock(unaff_x19 + 0x250);
    }
  }
  uVar16 = (ulong)*(byte *)(unaff_x19 + 0x1fd);
  if (*(long *)(unaff_x19 + 0x13d8 + uVar16 * 0x10 + 8) != 0) {
    if (*(char *)(unaff_x19 + 0x280) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    }
    mutex_lock(unaff_x19 + 0x250);
    puVar1 = (undefined8 *)(unaff_x19 + 0x13d8 + (ulong)*(byte *)(unaff_x19 + 0x1fd) * 0x10);
    *(char *)(unaff_x19 + 0x280) = *(char *)(unaff_x19 + 0x280) + '\x01';
    pcVar6 = (code *)puVar1[1];
    if (*(int *)(pcVar6 + -4) != -0x606c3bf6) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x822b,0x145d00);
      (*pcVar6)();
    }
    (*pcVar6)(*(byte *)(unaff_x19 + 0x1fd),*(long *)(unaff_x19 + 0x240) + 4,
              *(undefined4 *)(unaff_x19 + 0x200),*puVar1);
    if (*(char *)(unaff_x19 + 0x280) != '\x01') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    }
    *(undefined1 *)(unaff_x19 + 0x280) = 0;
    mutex_unlock(unaff_x19 + 0x250);
    uVar16 = (ulong)*(byte *)(unaff_x19 + 0x1fd);
  }
  if ((uint)uVar16 < 0x10) {
    if (*(int *)(unaff_x19 + 0x1f8) != 1) goto joined_r0x001468a4;
    *(char *)(unaff_x19 + 0x1fe) = (char)uVar16;
    if (*(int *)(unaff_x19 + 0x200) == 0) {
      *(undefined4 *)(unaff_x19 + 0x154) = 0;
      cVar4 = *(char *)(unaff_x19 + 0x1fe);
    }
    else {
      if (*(char *)(unaff_x19 + 0x188) != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      }
      mutex_lock(unaff_x19 + 0x158);
      uVar21 = *(uint *)(unaff_x19 + 0x200);
      uVar16 = (ulong)*(uint *)(unaff_x19 + 0x150);
      pvVar17 = *(void **)(unaff_x19 + 0x148);
      *(char *)(unaff_x19 + 0x188) = *(char *)(unaff_x19 + 0x188) + '\x01';
      if (*(uint *)(unaff_x19 + 0x150) < uVar21) {
        if (pvVar17 != (void *)0x0) {
          lVar9 = syna_request_managed_device();
          if (lVar9 == 0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00171996,"syna_pal_mem_free");
          }
          devm_kfree(lVar9,pvVar17);
        }
        lVar9 = syna_request_managed_device();
        if (lVar9 == 0) {
          puVar10 = &DAT_00171996;
LAB_00146834:
                    /* WARNING: Subroutine does not return */
          _printk(puVar10,"syna_pal_mem_alloc");
        }
        if ((int)uVar21 < 1) {
          puVar10 = &DAT_0016da92;
          goto LAB_00146834;
        }
        pvVar17 = (void *)devm_kmalloc(lVar9,(ulong)uVar21,0xdc0);
        *(void **)(unaff_x19 + 0x148) = pvVar17;
        if (pvVar17 == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar21);
        }
        *(uint *)(unaff_x19 + 0x150) = uVar21;
        uVar16 = (ulong)uVar21;
      }
      memset(pvVar17,0,uVar16);
      *(undefined4 *)(unaff_x19 + 0x154) = 0;
      if (*(char *)(unaff_x19 + 0x280) != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      }
      mutex_lock(unaff_x19 + 0x250);
      *(char *)(unaff_x19 + 0x280) = *(char *)(unaff_x19 + 0x280) + '\x01';
      if ((*(void **)(unaff_x19 + 0x148) == (void *)0x0) ||
         (pvVar17 = (void *)(*(long *)(unaff_x19 + 0x240) + 4), pvVar17 == (void *)0x0)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017065e,"syna_tcm_v1_dispatch_response");
      }
      uVar21 = *(uint *)(unaff_x19 + 0x200);
      if ((*(uint *)(unaff_x19 + 0x150) < uVar21) || (*(int *)(unaff_x19 + 0x248) - 4U < uVar21)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016edc2,"syna_pal_mem_cpy");
      }
      memcpy(*(void **)(unaff_x19 + 0x148),pvVar17,(ulong)uVar21);
      *(undefined4 *)(unaff_x19 + 0x154) = *(undefined4 *)(unaff_x19 + 0x200);
      if (*(char *)(unaff_x19 + 0x280) != '\x01') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      }
      *(undefined1 *)(unaff_x19 + 0x280) = 0;
      mutex_unlock(unaff_x19 + 0x250);
      if ((*(char *)(unaff_x19 + 0x1fc) == '\x02') && (iVar8 = FUN_0014541c(), iVar8 < 0)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016d106,"syna_tcm_v1_dispatch_response");
      }
      if (*(char *)(unaff_x19 + 0x188) != '\x01') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      }
      *(undefined1 *)(unaff_x19 + 0x188) = 0;
      mutex_unlock(unaff_x19 + 0x158);
      cVar4 = *(char *)(unaff_x19 + 0x1fe);
    }
    if (cVar4 == '\0') goto joined_r0x001468a4;
    if (cVar4 != '\x01') {
      if (cVar4 == '\x03') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016f878,"syna_tcm_v1_dispatch_response");
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016737a,"syna_tcm_v1_dispatch_response",cVar4,*(undefined1 *)(unaff_x19 + 0x1fc)
             );
    }
    goto LAB_0014688c;
  }
  if (*(int *)(unaff_x19 + 0x200) == 0) {
    *(undefined4 *)(unaff_x19 + 0x10c) = 0;
    goto joined_r0x001468a4;
  }
  if (*(char *)(unaff_x19 + 0x140) != '\0') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
  }
  mutex_lock(unaff_x19 + 0x110);
  uVar21 = *(uint *)(unaff_x19 + 0x200);
  uVar12 = (ulong)*(uint *)(unaff_x19 + 0x108);
  pvVar17 = *(void **)(unaff_x19 + 0x100);
  *(char *)(unaff_x19 + 0x140) = *(char *)(unaff_x19 + 0x140) + '\x01';
  if (*(uint *)(unaff_x19 + 0x108) < uVar21) {
    if (pvVar17 != (void *)0x0) {
      lVar9 = syna_request_managed_device();
      if (lVar9 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171996,"syna_pal_mem_free");
      }
      devm_kfree(lVar9,pvVar17);
    }
    lVar9 = syna_request_managed_device();
    if (lVar9 == 0) {
      puVar10 = &DAT_00171996;
LAB_00146674:
                    /* WARNING: Subroutine does not return */
      _printk(puVar10,"syna_pal_mem_alloc");
    }
    if ((int)uVar21 < 1) {
      puVar10 = &DAT_0016da92;
      goto LAB_00146674;
    }
    pvVar17 = (void *)devm_kmalloc(lVar9,(ulong)uVar21,0xdc0);
    *(void **)(unaff_x19 + 0x100) = pvVar17;
    if (pvVar17 == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar21);
    }
    *(uint *)(unaff_x19 + 0x108) = uVar21;
    uVar12 = (ulong)uVar21;
  }
  memset(pvVar17,0,uVar12);
  *(undefined4 *)(unaff_x19 + 0x10c) = 0;
  if (*(char *)(unaff_x19 + 0x280) != '\0') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
  }
  mutex_lock(unaff_x19 + 0x250);
  *(char *)(unaff_x19 + 0x280) = *(char *)(unaff_x19 + 0x280) + '\x01';
  if ((*(void **)(unaff_x19 + 0x100) == (void *)0x0) ||
     (pvVar17 = (void *)(*(long *)(unaff_x19 + 0x240) + 4), pvVar17 == (void *)0x0)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00167e32,"syna_tcm_v1_dispatch_report");
  }
  uVar21 = *(uint *)(unaff_x19 + 0x200);
  if ((*(uint *)(unaff_x19 + 0x108) < uVar21) || (*(int *)(unaff_x19 + 0x248) - 4U < uVar21)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016edc2,"syna_pal_mem_cpy");
  }
  memcpy(*(void **)(unaff_x19 + 0x100),pvVar17,(ulong)uVar21);
  *(undefined4 *)(unaff_x19 + 0x10c) = *(undefined4 *)(unaff_x19 + 0x200);
  if (*(char *)(unaff_x19 + 0x280) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
  }
  *(undefined1 *)(unaff_x19 + 0x280) = 0;
  mutex_unlock(unaff_x19 + 0x250);
  if (*(char *)(unaff_x19 + 0x140) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
  }
  *(undefined1 *)(unaff_x19 + 0x140) = 0;
  mutex_unlock(unaff_x19 + 0x110);
  if ((uint)uVar16 == 0x10) {
    if (*(char *)(unaff_x19 + 0x280) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    }
    mutex_lock(unaff_x19 + 0x250);
    *(char *)(unaff_x19 + 0x280) = *(char *)(unaff_x19 + 0x280) + '\x01';
    iVar8 = FUN_00145724();
    if (iVar8 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016f846,"syna_tcm_v1_dispatch_report");
    }
    if (*(char *)(unaff_x19 + 0x280) != '\x01') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    }
    *(undefined1 *)(unaff_x19 + 0x280) = 0;
    mutex_unlock(unaff_x19 + 0x250);
    if (*(int *)(unaff_x19 + 0x1f8) == 1) {
      bVar5 = *(byte *)(unaff_x19 + 0x1fc);
      if (bVar5 < 0x1f) {
        if ((bVar5 == 4) || (bVar5 == 0x14)) {
LAB_0014688c:
          *(undefined4 *)(unaff_x19 + 0x1f8) = 0;
          uVar16 = completion_done(unaff_x19 + 0x220);
          if ((uVar16 & 1) == 0) {
            complete(unaff_x19 + 0x220);
          }
          goto joined_r0x001468a4;
        }
      }
      else if ((bVar5 == 0x1f) || (bVar5 == 0x31)) goto LAB_0014688c;
      if (*(char *)(unaff_x19 + 0x1f0) != '\x01') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171438,"syna_tcm_v1_dispatch_report",0x10);
      }
      *(undefined4 *)(unaff_x19 + 0x1f8) = 0;
      uVar12 = completion_done(unaff_x19 + 0x220);
      if ((uVar12 & 1) == 0) {
        complete(unaff_x19 + 0x220);
      }
    }
  }
  lVar9 = unaff_x19 + uVar16 * 0x10;
  if (*(long *)(lVar9 + 0x3e0) != 0) {
    if (*(char *)(unaff_x19 + 0x140) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    }
    mutex_lock(unaff_x19 + 0x110);
    uVar3 = *(undefined8 *)(lVar9 + 0x3d8);
    pcVar6 = *(code **)(lVar9 + 0x3e0);
    *(char *)(unaff_x19 + 0x140) = *(char *)(unaff_x19 + 0x140) + '\x01';
    if (*(int *)(pcVar6 + -4) != -0x606c3bf6) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8229,0x14615c);
      (*pcVar6)();
    }
    (*pcVar6)(uVar16,*(undefined8 *)(unaff_x19 + 0x100),*(undefined4 *)(unaff_x19 + 0x10c),uVar3);
    if (*(char *)(unaff_x19 + 0x140) != '\x01') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    }
    *(undefined1 *)(unaff_x19 + 0x140) = 0;
    mutex_unlock(unaff_x19 + 0x110);
  }
joined_r0x001468a4:
  if (unaff_x25 != (undefined1 *)0x0) {
    *unaff_x25 = *(undefined1 *)(unaff_x19 + 0x1fd);
  }
  if (iStack0000000000000004 != 0) {
    uVar20 = *(uint *)(unaff_x19 + 0x200);
    uVar13 = *(int *)(unaff_x19 + 0x3c) - 5;
    uVar21 = uVar20;
    if (uVar13 <= uVar20) {
      uVar21 = uVar13;
    }
    if (*(int *)(unaff_x19 + 0x3c) != 0) {
      uVar20 = uVar21;
    }
    uVar21 = 0;
    if (0xf < *(byte *)(unaff_x19 + 0x1fd)) {
      uVar21 = uVar20;
    }
    *(uint *)(unaff_x19 + 0x37c) = uVar21;
  }
  uVar21 = *(uint *)(unaff_x19 + 0x210);
  if ((0 < (int)uVar21) && (uVar20 = *(uint *)(unaff_x19 + 0x214), 0 < (int)uVar20)) {
    if (uVar20 <= uVar21) {
      uVar20 = uVar21;
    }
    usleep_range_state(uVar21,uVar20,2);
  }
  mutex_unlock(unaff_x19 + 0x348);
  return 0;
}

