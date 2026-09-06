
/* WARNING: Possible PIC construction at 0x00145f28: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x00145f2c) */
/* WARNING: Removing unreachable block (ram,0x00146508) */
/* WARNING: Removing unreachable block (ram,0x00145f30) */
/* WARNING: Removing unreachable block (ram,0x001465bc) */
/* WARNING: Removing unreachable block (ram,0x00145f3c) */
/* WARNING: Removing unreachable block (ram,0x00145f58) */
/* WARNING: Removing unreachable block (ram,0x001460d4) */
/* WARNING: Removing unreachable block (ram,0x001460dc) */
/* WARNING: Removing unreachable block (ram,0x00145f64) */
/* WARNING: Removing unreachable block (ram,0x00145f6c) */
/* WARNING: Removing unreachable block (ram,0x00145f74) */
/* WARNING: Removing unreachable block (ram,0x001460e4) */
/* WARNING: Removing unreachable block (ram,0x001469a4) */
/* WARNING: Removing unreachable block (ram,0x001460f0) */
/* WARNING: Removing unreachable block (ram,0x00146100) */

ulong syna_tcm_v1_read_message(long param_1,undefined1 *param_2)

{
  undefined8 *puVar1;
  long *plVar2;
  undefined8 uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  char cVar8;
  bool bVar9;
  undefined1 uVar10;
  int iVar11;
  int iVar12;
  long lVar13;
  void *pvVar14;
  void *__dest;
  ulong uVar15;
  undefined *puVar16;
  long extraout_x1;
  char *pcVar17;
  uint uVar18;
  uint uVar19;
  uint uVar20;
  long lVar21;
  code *pcVar22;
  ulong uVar23;
  ulong uVar24;
  ulong extraout_x11;
  ulong uVar25;
  ulong extraout_x12;
  int iVar26;
  ulong extraout_x13;
  uint uVar27;
  uint *puVar28;
  uint uVar29;
  uint uVar30;
  undefined1 *puVar31;
  uint uVar32;
  
  if (param_1 == 0) {
    puVar31 = &DAT_00168a84;
LAB_00145850:
    uVar15 = _printk(puVar31,"syna_tcm_v1_read_message");
    return uVar15;
  }
  if (*(long *)(param_1 + 0x48) == 0) {
    puVar31 = &DAT_00172230;
    goto LAB_00145850;
  }
  if (*(char *)(param_1 + 0x37a) == '\x01') {
    bVar9 = *(int *)(param_1 + 0x1f8) == 0;
  }
  else {
    bVar9 = false;
  }
  if (param_2 != (undefined1 *)0x0) {
    *param_2 = 0xff;
  }
  *(undefined1 *)(param_1 + 0x1fd) = 0;
  mutex_lock(param_1 + 0x348);
  if (*(char *)(param_1 + 0x280) != '\0') {
    uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar15;
  }
  mutex_lock(param_1 + 0x250);
  *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
  if (bVar9) {
    uVar29 = 4;
    if (*(int *)(param_1 + 0x37c) != 0) {
      iVar11 = 6;
      if (*(char *)(param_1 + 0x380) == '\0') {
        iVar11 = 4;
      }
      uVar29 = *(int *)(param_1 + 0x37c) + (uint)*(byte *)(param_1 + 900) + iVar11 + 1;
    }
  }
  else {
    uVar29 = 4;
  }
  lVar21 = *(long *)(param_1 + 0x48);
  plVar2 = (long *)(param_1 + 0x240);
  if ((*(char *)(lVar21 + 0x15) == '\x01') && (*(uint *)(lVar21 + 0x1c) < uVar29)) {
    uVar19 = *(uint *)(lVar21 + 0x18);
    if (uVar19 == 0) {
      uVar29 = 0;
      goto LAB_001455c4;
    }
    uVar18 = 0;
    if (uVar19 != 0) {
      uVar18 = uVar29 / uVar19;
    }
    uVar29 = uVar18 * uVar19;
  }
  if (uVar29 <= *(uint *)(param_1 + 0x248)) {
LAB_001455c4:
    puVar28 = (uint *)(param_1 + 0x248);
    iVar11 = FUN_00146b90(param_1,uVar29,*(undefined8 *)(param_1 + 0x240),*puVar28);
    if (iVar11 < 0) {
      uVar15 = _printk(&DAT_0016dc7a,"syna_tcm_v1_read_message",uVar29);
      return uVar15;
    }
    puVar31 = *(undefined1 **)(param_1 + 0x240);
    *(uint *)(param_1 + 0x200) = (uint)*(ushort *)(puVar31 + 2);
    if (puVar31[1] != '\0') {
      *(undefined1 *)(param_1 + 0x1fd) = puVar31[1];
    }
    if (*(char *)(param_1 + 0x280) != '\x01') {
      uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar15;
    }
    *(undefined1 *)(param_1 + 0x280) = 0;
    mutex_unlock(param_1 + 0x250);
    uVar19 = *(uint *)(param_1 + 0x200);
    if (uVar19 == 0) goto LAB_00145bac;
    if (puVar31[1] != '\x03') {
      uVar18 = 0;
      if (uVar29 - 4 <= uVar19) {
        uVar18 = uVar19 - (uVar29 - 4);
      }
      if (uVar29 < 5) {
        uVar18 = uVar19;
      }
      uVar15 = (ulong)uVar18;
      if (uVar18 == 0) goto LAB_00145bac;
      if (((uVar18 ^ 0xffffffff) & 0xffff) == 0) {
LAB_001467e4:
        uVar15 = _printk(&DAT_001705d6,"syna_tcm_v1_read_message",uVar15,*puVar31,puVar31[1],
                         puVar31[2],puVar31[3]);
        return uVar15;
      }
      uVar25 = (ulong)*(byte *)(param_1 + 900);
      uVar23 = (ulong)(uVar19 + 5);
      uVar19 = uVar19 + 7;
      uVar24 = (ulong)(uVar18 + 3);
      uVar18 = (uint)*(byte *)(param_1 + 0x280);
      uVar10 = *(byte *)(param_1 + 0x380) == 0;
      uVar29 = (uint)(*(byte *)(param_1 + 0x380) | *(byte *)(param_1 + 900));
      lVar21 = extraout_x1;
      do {
        iVar11 = (int)uVar25 + 1;
        iVar26 = (int)uVar15;
        iVar12 = (int)uVar24;
        if ((bool)uVar10) {
          iVar12 = iVar26 + 1;
          uVar19 = (uint)uVar23;
        }
        uVar32 = iVar12 + iVar11;
        uVar19 = uVar19 + iVar11;
        if ((uVar29 & 1) == 0) {
          uVar32 = iVar26 + 1;
          uVar19 = (uint)uVar23;
        }
        if (uVar18 != 0) {
          uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
          return uVar15;
        }
        mutex_lock(param_1 + 0x250,lVar21);
        uVar18 = *(uint *)(param_1 + 0x248);
        uVar29 = uVar19 + 1;
        *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
        if (uVar18 < uVar29) {
          pvVar14 = (void *)*plVar2;
          lVar21 = syna_request_managed_device();
          if (lVar21 == 0) {
            puVar16 = &DAT_00171996;
LAB_00146490:
            uVar15 = _printk(puVar16,"syna_pal_mem_alloc");
            return uVar15;
          }
          if (0x7ffffffe < uVar19) {
            puVar16 = &DAT_0016da92;
            goto LAB_00146490;
          }
          __dest = (void *)devm_kmalloc(lVar21,uVar29,0xdc0);
          *plVar2 = (long)__dest;
          if (__dest == (void *)0x0) {
            uVar15 = _printk(&DAT_0016c730,"syna_tcm_buf_realloc",uVar29);
            return uVar15;
          }
          if (pvVar14 == (void *)0x0) {
            uVar15 = _printk(&DAT_00166ca2,"syna_tcm_buf_realloc");
            return uVar15;
          }
          memcpy(__dest,pvVar14,(ulong)uVar18);
          lVar21 = syna_request_managed_device();
          if (lVar21 == 0) {
            uVar15 = _printk(&DAT_00171996,"syna_pal_mem_free");
            return uVar15;
          }
          devm_kfree(lVar21,pvVar14);
          *puVar28 = uVar29;
        }
        uVar29 = uVar19;
        if (*(uint *)(param_1 + 0x3c) != 0) {
          uVar29 = *(uint *)(param_1 + 0x3c);
        }
        if (*(char *)(*(long *)(param_1 + 0x48) + 0x15) == '\x01') {
          uVar18 = 0;
          if (uVar29 == 0) {
            uVar27 = 0;
          }
          else {
            uVar4 = *(uint *)(*(long *)(param_1 + 0x48) + 0x18);
            uVar27 = 0;
            if (uVar4 != 0) {
              uVar18 = 0;
              if (uVar4 != 0) {
                uVar18 = uVar29 / uVar4;
              }
              uVar18 = uVar18 * uVar4;
              if (uVar18 != 0) goto LAB_0014582c;
              goto LAB_0014580c;
            }
          }
        }
        else {
          uVar18 = uVar29;
          if (uVar29 == 0) {
LAB_0014580c:
            uVar27 = 0;
          }
          else {
LAB_0014582c:
            uVar27 = 0;
            if (uVar18 != 0) {
              uVar27 = ((uVar19 + uVar18) - 1) / uVar18;
            }
          }
        }
        if (uVar27 < 2) {
          uVar27 = 1;
        }
        uVar29 = (*(int *)(param_1 + 0x200) - iVar26) + 4;
        if (*(char *)(param_1 + 0x310) != '\0') {
          uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
          return uVar15;
        }
        mutex_lock(param_1 + 0x2e0);
        puVar28 = (uint *)0x0;
        *(char *)(param_1 + 0x310) = *(char *)(param_1 + 0x310) + '\x01';
        uVar19 = 0;
        do {
          uVar4 = uVar19 + 1;
          uVar30 = uVar18 - 2;
          if (uVar32 <= uVar18) {
            uVar30 = uVar32;
          }
          if (uVar30 == 1) {
            uVar32 = uVar32 - 1;
            *(undefined1 *)(*plVar2 + (ulong)uVar29) = 0x5a;
            uVar29 = uVar29 + 1;
          }
          else {
            if (((uVar4 == uVar27) &&
                (lVar21 = *(long *)(param_1 + 0x48), (*(byte *)(lVar21 + 0x15) & 1) != 0)) &&
               (*(uint *)(lVar21 + 0x1c) < uVar30)) {
              uVar5 = *(uint *)(lVar21 + 0x18);
              iVar11 = 0;
              if (uVar5 != 0) {
                uVar20 = 0;
                if (uVar5 != 0) {
                  uVar20 = uVar30 / uVar5;
                }
                iVar11 = uVar20 * uVar5;
              }
              uVar30 = iVar11 - 2;
              if (uVar30 != uVar32) {
                uVar27 = uVar27 + 1;
              }
            }
            uVar5 = uVar30 + 2;
            pvVar14 = *(void **)(param_1 + 0x2d0);
            uVar24 = (ulong)*(uint *)(param_1 + 0x2d8);
            if (*(uint *)(param_1 + 0x2d8) < uVar5) {
              if (pvVar14 != (void *)0x0) {
                lVar21 = syna_request_managed_device();
                if (lVar21 == 0) {
                  uVar15 = _printk(&DAT_00171996,"syna_pal_mem_free");
                  return uVar15;
                }
                devm_kfree(lVar21,pvVar14);
              }
              lVar21 = syna_request_managed_device();
              if (lVar21 == 0) {
                puVar16 = &DAT_00171996;
LAB_00146764:
                uVar15 = _printk(puVar16,"syna_pal_mem_alloc");
                return uVar15;
              }
              if ((int)uVar5 < 1) {
                puVar16 = &DAT_0016da92;
                goto LAB_00146764;
              }
              pvVar14 = (void *)devm_kmalloc(lVar21,(ulong)uVar5,0xdc0);
              *(void **)(param_1 + 0x2d0) = pvVar14;
              if (pvVar14 == (void *)0x0) {
                uVar15 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar5);
                return uVar15;
              }
              *(uint *)(param_1 + 0x2d8) = uVar5;
              uVar24 = (ulong)uVar5;
            }
            memset(pvVar14,0,uVar24);
            *(undefined4 *)(param_1 + 0x2dc) = 0;
            uVar20 = 5;
            if (5 < (int)puVar28 + 1) {
              uVar20 = (int)puVar28 + 1;
            }
            do {
              uVar6 = *(uint *)(param_1 + 0x210);
              if ((0 < (int)uVar6) && (uVar7 = *(uint *)(param_1 + 0x214), 0 < (int)uVar7)) {
                if (uVar7 <= uVar6) {
                  uVar7 = uVar6;
                }
                usleep_range_state(uVar6,uVar7,2);
              }
              iVar11 = FUN_00146b28(param_1,uVar5,*(undefined8 *)(param_1 + 0x2d0),
                                    *(undefined4 *)(param_1 + 0x2d8));
              if (iVar11 < 0) {
                uVar15 = _printk(&DAT_0016c904,"syna_tcm_v1_continued_read",uVar5);
                return uVar15;
              }
              lVar21 = *(long *)(param_1 + 0x2d0);
              *(uint *)(param_1 + 0x2dc) = uVar5;
              cVar8 = *(char *)(lVar21 + 1);
              if (cVar8 == '\x03') goto joined_r0x00145adc;
              uVar6 = (int)puVar28 + 1;
              puVar28 = (uint *)(ulong)uVar6;
            } while ((int)uVar6 < 5);
            if (cVar8 != '\x03') {
              uVar15 = _printk(&DAT_0016ac22,"syna_tcm_v1_continued_read",cVar8,uVar19,uVar27);
              return uVar15;
            }
            lVar21 = *(long *)(param_1 + 0x2d0);
            puVar28 = (uint *)(ulong)uVar20;
joined_r0x00145adc:
            if (((void *)(lVar21 + 2) == (void *)0x0) ||
               ((void *)(*plVar2 + (ulong)uVar29) == (void *)0x0)) {
              uVar15 = _printk(&DAT_00171bee,"syna_tcm_v1_continued_read");
              return uVar15;
            }
            uVar19 = *(int *)(param_1 + 0x2d8) - 2;
            uVar5 = *(int *)(param_1 + 0x248) - uVar29;
            if ((uVar19 < uVar30) || (uVar5 < uVar30)) {
              uVar15 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",uVar19,uVar5,uVar30);
              return uVar15;
            }
            memcpy((void *)(*plVar2 + (ulong)uVar29),(void *)(lVar21 + 2),(ulong)uVar30);
            uVar29 = uVar30 + uVar29;
            uVar32 = uVar32 - uVar30;
          }
          uVar19 = uVar4;
        } while (uVar4 < uVar27);
        *(uint *)(param_1 + 0x24c) = uVar29;
        if (*(char *)(param_1 + 0x310) != '\x01') {
          uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
          return uVar15;
        }
        *(undefined1 *)(param_1 + 0x310) = 0;
        mutex_unlock(param_1 + 0x2e0);
        if (*(char *)(param_1 + 0x280) != '\x01') {
          uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
          return uVar15;
        }
        *(undefined1 *)(param_1 + 0x280) = 0;
        mutex_unlock(param_1 + 0x250);
        uVar15 = uVar15 & 0xffffffff;
        if (false) goto LAB_001467e4;
LAB_00145bac:
        if (*(char *)(param_1 + 0x280) != '\0') {
          uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
          return uVar15;
        }
        mutex_lock(param_1 + 0x250);
        *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
        **(undefined1 **)(param_1 + 0x240) = 0xa5;
        *(undefined1 *)(*(long *)(param_1 + 0x240) + 1) = *(undefined1 *)(param_1 + 0x1fd);
        *(char *)(*(long *)(param_1 + 0x240) + 2) = (char)*(undefined4 *)(param_1 + 0x200);
        *(char *)(*(long *)(param_1 + 0x240) + 3) =
             (char)((uint)*(undefined4 *)(param_1 + 0x200) >> 8);
        if (*(char *)(param_1 + 0x280) != '\x01') {
          uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
          return uVar15;
        }
        *(undefined1 *)(param_1 + 0x280) = 0;
        mutex_unlock(param_1 + 0x250);
        if ((*(char *)(param_1 + 0x380) == '\x01') && (*(int *)(param_1 + 0x200) != 0)) {
          if (*(char *)(param_1 + 0x280) != '\0') {
            uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
            return uVar15;
          }
          mutex_lock(param_1 + 0x250);
          cVar8 = *(char *)(param_1 + 0x280);
          uVar29 = *(int *)(param_1 + 0x200) + 5;
          *(char *)(param_1 + 0x280) = cVar8 + '\x01';
          if (uVar29 < *(uint *)(param_1 + 0x248)) {
            *(undefined2 *)(param_1 + 0x382) =
                 *(undefined2 *)(*(long *)(param_1 + 0x240) + (ulong)uVar29);
            if ((*(char *)(param_1 + 900) == '\x01') &&
               (uVar29 = *(int *)(param_1 + 0x200) + 7, uVar29 <= *(uint *)(param_1 + 0x248))) {
              *(undefined1 *)(param_1 + 0x385) =
                   *(undefined1 *)(*(long *)(param_1 + 0x240) + (ulong)uVar29);
            }
            if (cVar8 != '\0') {
              uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock",cVar8 + '\x01');
              return uVar15;
            }
            *(undefined1 *)(param_1 + 0x280) = 0;
            mutex_unlock(param_1 + 0x250);
          }
        }
        uVar15 = (ulong)*(byte *)(param_1 + 0x1fd);
        if (*(long *)(param_1 + 0x13d8 + uVar15 * 0x10 + 8) != 0) {
          if (*(char *)(param_1 + 0x280) != '\0') {
            uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
            return uVar15;
          }
          mutex_lock(param_1 + 0x250);
          puVar1 = (undefined8 *)(param_1 + 0x13d8 + (ulong)*(byte *)(param_1 + 0x1fd) * 0x10);
          *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
          pcVar22 = (code *)puVar1[1];
          if (*(int *)(pcVar22 + -4) != -0x606c3bf6) {
                    /* WARNING: Does not return */
            pcVar22 = (code *)SoftwareBreakpoint(0x822b,0x145d00);
            (*pcVar22)();
          }
          (*pcVar22)(*(byte *)(param_1 + 0x1fd),*(long *)(param_1 + 0x240) + 4,
                     *(undefined4 *)(param_1 + 0x200),*puVar1);
          if (*(char *)(param_1 + 0x280) != '\x01') {
            uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
            return uVar15;
          }
          *(undefined1 *)(param_1 + 0x280) = 0;
          mutex_unlock(param_1 + 0x250);
          uVar15 = (ulong)*(byte *)(param_1 + 0x1fd);
        }
        if ((uint)uVar15 < 0x10) {
          if (*(int *)(param_1 + 0x1f8) == 1) {
            *(char *)(param_1 + 0x1fe) = (char)uVar15;
            if (*(int *)(param_1 + 0x200) == 0) {
              *(undefined4 *)(param_1 + 0x154) = 0;
              cVar8 = *(char *)(param_1 + 0x1fe);
            }
            else {
              if (*(char *)(param_1 + 0x188) != '\0') {
                uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
                return uVar15;
              }
              mutex_lock(param_1 + 0x158);
              uVar29 = *(uint *)(param_1 + 0x200);
              uVar15 = (ulong)*(uint *)(param_1 + 0x150);
              pvVar14 = *(void **)(param_1 + 0x148);
              *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
              if (*(uint *)(param_1 + 0x150) < uVar29) {
                if (pvVar14 != (void *)0x0) {
                  lVar21 = syna_request_managed_device();
                  if (lVar21 == 0) {
                    uVar15 = _printk(&DAT_00171996,"syna_pal_mem_free");
                    return uVar15;
                  }
                  devm_kfree(lVar21,pvVar14);
                }
                lVar21 = syna_request_managed_device();
                if (lVar21 == 0) {
                  puVar16 = &DAT_00171996;
LAB_00146834:
                  uVar15 = _printk(puVar16,"syna_pal_mem_alloc");
                  return uVar15;
                }
                if ((int)uVar29 < 1) {
                  puVar16 = &DAT_0016da92;
                  goto LAB_00146834;
                }
                pvVar14 = (void *)devm_kmalloc(lVar21,(ulong)uVar29,0xdc0);
                *(void **)(param_1 + 0x148) = pvVar14;
                if (pvVar14 == (void *)0x0) {
                  uVar15 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar29);
                  return uVar15;
                }
                *(uint *)(param_1 + 0x150) = uVar29;
                uVar15 = (ulong)uVar29;
              }
              memset(pvVar14,0,uVar15);
              *(undefined4 *)(param_1 + 0x154) = 0;
              if (*(char *)(param_1 + 0x280) != '\0') {
                uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
                return uVar15;
              }
              mutex_lock(param_1 + 0x250);
              *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
              if ((*(void **)(param_1 + 0x148) == (void *)0x0) ||
                 (pvVar14 = (void *)(*(long *)(param_1 + 0x240) + 4), pvVar14 == (void *)0x0)) {
                uVar15 = _printk(&DAT_0017065e,"syna_tcm_v1_dispatch_response");
                return uVar15;
              }
              uVar29 = *(uint *)(param_1 + 0x200);
              if ((*(uint *)(param_1 + 0x150) < uVar29) || (*(int *)(param_1 + 0x248) - 4U < uVar29)
                 ) {
                uVar15 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy");
                return uVar15;
              }
              memcpy(*(void **)(param_1 + 0x148),pvVar14,(ulong)uVar29);
              *(undefined4 *)(param_1 + 0x154) = *(undefined4 *)(param_1 + 0x200);
              if (*(char *)(param_1 + 0x280) != '\x01') {
                uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
                return uVar15;
              }
              *(undefined1 *)(param_1 + 0x280) = 0;
              mutex_unlock(param_1 + 0x250);
              if ((*(char *)(param_1 + 0x1fc) == '\x02') &&
                 (iVar11 = FUN_0014541c(param_1,*(undefined8 *)(param_1 + 0x148),
                                        *(undefined4 *)(param_1 + 0x150),
                                        *(undefined4 *)(param_1 + 0x154)), iVar11 < 0)) {
                uVar15 = _printk(&DAT_0016d106,"syna_tcm_v1_dispatch_response");
                return uVar15;
              }
              if (*(char *)(param_1 + 0x188) != '\x01') {
                uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
                return uVar15;
              }
              *(undefined1 *)(param_1 + 0x188) = 0;
              mutex_unlock(param_1 + 0x158);
              cVar8 = *(char *)(param_1 + 0x1fe);
            }
            if (cVar8 != '\0') {
              if (cVar8 != '\x01') {
                if (cVar8 != '\x03') {
                  uVar15 = _printk(&DAT_0016737a,"syna_tcm_v1_dispatch_response",cVar8,
                                   *(undefined1 *)(param_1 + 0x1fc));
                  return uVar15;
                }
                uVar15 = _printk(&DAT_0016f878,"syna_tcm_v1_dispatch_response");
                return uVar15;
              }
              *(undefined4 *)(param_1 + 0x1f8) = 0;
              uVar15 = completion_done(param_1 + 0x220);
              if ((uVar15 & 1) == 0) {
                complete(param_1 + 0x220);
              }
            }
          }
joined_r0x001468a4:
          if (param_2 != (undefined1 *)0x0) {
            *param_2 = *(undefined1 *)(param_1 + 0x1fd);
          }
          uVar29 = 0;
          if (bVar9) {
            uVar18 = *(uint *)(param_1 + 0x200);
            uVar32 = *(int *)(param_1 + 0x3c) - 5;
            uVar19 = uVar18;
            if (uVar32 <= uVar18) {
              uVar19 = uVar32;
            }
            if (*(int *)(param_1 + 0x3c) != 0) {
              uVar18 = uVar19;
            }
            uVar19 = 0;
            if (0xf < *(byte *)(param_1 + 0x1fd)) {
              uVar19 = uVar18;
            }
            *(uint *)(param_1 + 0x37c) = uVar19;
          }
          goto LAB_001468e4;
        }
        if (*(int *)(param_1 + 0x200) == 0) {
          *(undefined4 *)(param_1 + 0x10c) = 0;
          goto joined_r0x001468a4;
        }
        if (*(char *)(param_1 + 0x140) != '\0') {
          uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
          return uVar15;
        }
        mutex_lock(param_1 + 0x110);
        uVar29 = *(uint *)(param_1 + 0x200);
        uVar24 = (ulong)*(uint *)(param_1 + 0x108);
        pvVar14 = *(void **)(param_1 + 0x100);
        *(char *)(param_1 + 0x140) = *(char *)(param_1 + 0x140) + '\x01';
        if (*(uint *)(param_1 + 0x108) < uVar29) {
          if (pvVar14 != (void *)0x0) {
            lVar21 = syna_request_managed_device();
            if (lVar21 == 0) {
              uVar15 = _printk(&DAT_00171996,"syna_pal_mem_free");
              return uVar15;
            }
            devm_kfree(lVar21,pvVar14);
          }
          lVar21 = syna_request_managed_device();
          if (lVar21 == 0) {
            puVar16 = &DAT_00171996;
LAB_00146674:
            uVar15 = _printk(puVar16,"syna_pal_mem_alloc");
            return uVar15;
          }
          if ((int)uVar29 < 1) {
            puVar16 = &DAT_0016da92;
            goto LAB_00146674;
          }
          pvVar14 = (void *)devm_kmalloc(lVar21,(ulong)uVar29,0xdc0);
          *(void **)(param_1 + 0x100) = pvVar14;
          if (pvVar14 == (void *)0x0) {
            uVar15 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar29);
            return uVar15;
          }
          *(uint *)(param_1 + 0x108) = uVar29;
          uVar24 = (ulong)uVar29;
        }
        memset(pvVar14,0,uVar24);
        *(undefined4 *)(param_1 + 0x10c) = 0;
        if (*(char *)(param_1 + 0x280) != '\0') {
          uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
          return uVar15;
        }
        mutex_lock(param_1 + 0x250);
        *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
        if ((*(void **)(param_1 + 0x100) == (void *)0x0) ||
           (pvVar14 = (void *)(*(long *)(param_1 + 0x240) + 4), pvVar14 == (void *)0x0)) {
          uVar15 = _printk(&DAT_00167e32,"syna_tcm_v1_dispatch_report");
          return uVar15;
        }
        uVar29 = *(uint *)(param_1 + 0x200);
        if ((*(uint *)(param_1 + 0x108) < uVar29) || (*(int *)(param_1 + 0x248) - 4U < uVar29)) {
          uVar15 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy");
          return uVar15;
        }
        memcpy(*(void **)(param_1 + 0x100),pvVar14,(ulong)uVar29);
        *(undefined4 *)(param_1 + 0x10c) = *(undefined4 *)(param_1 + 0x200);
        if (*(char *)(param_1 + 0x280) != '\x01') {
          uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
          return uVar15;
        }
        *(undefined1 *)(param_1 + 0x280) = 0;
        mutex_unlock(param_1 + 0x250);
        if (*(char *)(param_1 + 0x140) != '\x01') {
          uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
          return uVar15;
        }
        *(undefined1 *)(param_1 + 0x140) = 0;
        mutex_unlock(param_1 + 0x110);
        uVar10 = (uint)uVar15 == 0x10;
        if (!(bool)uVar10) {
          lVar21 = param_1 + uVar15 * 0x10;
          if (*(long *)(lVar21 + 0x3e0) != 0) {
            if (*(char *)(param_1 + 0x140) != '\0') {
              uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
              return uVar15;
            }
            mutex_lock(param_1 + 0x110);
            uVar3 = *(undefined8 *)(lVar21 + 0x3d8);
            pcVar22 = *(code **)(lVar21 + 0x3e0);
            *(char *)(param_1 + 0x140) = *(char *)(param_1 + 0x140) + '\x01';
            if (*(int *)(pcVar22 + -4) != -0x606c3bf6) {
                    /* WARNING: Does not return */
              pcVar22 = (code *)SoftwareBreakpoint(0x8229,0x14615c);
              (*pcVar22)();
            }
            (*pcVar22)(uVar15,*(undefined8 *)(param_1 + 0x100),*(undefined4 *)(param_1 + 0x10c),
                       uVar3);
            if (*(char *)(param_1 + 0x140) != '\x01') {
              uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
              return uVar15;
            }
            *(undefined1 *)(param_1 + 0x140) = 0;
            mutex_unlock(param_1 + 0x110);
          }
          goto joined_r0x001468a4;
        }
        if (*(char *)(param_1 + 0x280) != '\0') {
          uVar15 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
          return uVar15;
        }
        mutex_lock(param_1 + 0x250);
        uVar29 = *(uint *)(param_1 + 0x248);
        uVar23 = *(ulong *)(param_1 + 0x240);
        uVar19 = *(byte *)(param_1 + 0x280) + 1;
        uVar18 = uVar29 - 4;
        lVar21 = uVar23 + 4;
        *(char *)(param_1 + 0x280) = (char)uVar19;
        uVar24 = extraout_x11;
        uVar25 = extraout_x12;
        uVar15 = extraout_x13;
      } while( true );
    }
    uVar29 = 0x40;
    if (*(uint *)(param_1 + 0x3c) != 0) {
      uVar29 = *(uint *)(param_1 + 0x3c);
    }
    lVar21 = syna_request_managed_device();
    if (lVar21 == 0) {
      puVar16 = &DAT_00171996;
    }
    else {
      if (uVar29 < 0x7fffffff) {
        lVar21 = devm_kmalloc(lVar21,uVar29 + 1,0xdc0);
        if (lVar21 == 0) {
          puVar16 = &DAT_0016d72c;
          pcVar17 = "syna_tcm_v1_discard_message";
        }
        else {
          iVar11 = 100;
          do {
            lVar13 = *(long *)(param_1 + 0x48);
            puVar16 = &DAT_0016d5c2;
            if ((lVar13 == 0) ||
               (pcVar22 = *(code **)(lVar13 + 0x20), puVar16 = &DAT_0016b7bc, pcVar22 == (code *)0x0
               )) {
              uVar15 = _printk(puVar16,"syna_tcm_read");
              return uVar15;
            }
            if (*(int *)(pcVar22 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
              pcVar22 = (code *)SoftwareBreakpoint(0x8228,0x1456a0);
              (*pcVar22)();
            }
            iVar12 = (*pcVar22)(lVar13,lVar21,uVar29);
            if (iVar12 < 0) {
              uVar15 = _printk(&DAT_00166c72,"syna_tcm_v1_discard_message",uVar29);
              return uVar15;
            }
            if (*(char *)(lVar21 + 1) == '\0') break;
            usleep_range_state(1000,2000,2);
            iVar11 = iVar11 + -1;
          } while (iVar11 != 0);
          lVar13 = syna_request_managed_device();
          if (lVar13 != 0) {
            devm_kfree(lVar13,lVar21);
            uVar29 = 0xffffff0e;
LAB_001468e4:
            uVar19 = *(uint *)(param_1 + 0x210);
            if ((0 < (int)uVar19) && (uVar18 = *(uint *)(param_1 + 0x214), 0 < (int)uVar18)) {
              if (uVar18 <= uVar19) {
                uVar18 = uVar19;
              }
              usleep_range_state(uVar19,uVar18,2);
            }
            mutex_unlock(param_1 + 0x348);
            return (ulong)uVar29;
          }
          puVar16 = &DAT_00171996;
          pcVar17 = "syna_pal_mem_free";
        }
        uVar15 = _printk(puVar16,pcVar17);
        return uVar15;
      }
      puVar16 = &DAT_0016da92;
    }
    uVar15 = _printk(puVar16,"syna_pal_mem_alloc");
    return uVar15;
  }
  lVar21 = *plVar2;
  if (lVar21 != 0) {
    lVar13 = syna_request_managed_device();
    if (lVar13 == 0) {
      uVar15 = _printk(&DAT_00171996,"syna_pal_mem_free");
      return uVar15;
    }
    devm_kfree(lVar13,lVar21);
  }
  lVar21 = syna_request_managed_device();
  if (lVar21 == 0) {
    puVar16 = &DAT_00171996;
  }
  else {
    if (0 < (int)uVar29) {
      pvVar14 = (void *)devm_kmalloc(lVar21,(ulong)uVar29,0xdc0);
      *plVar2 = (long)pvVar14;
      if (pvVar14 == (void *)0x0) {
        uVar15 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar29);
        return uVar15;
      }
      *(uint *)(param_1 + 0x248) = uVar29;
      memset(pvVar14,0,(ulong)uVar29);
      *(undefined4 *)(param_1 + 0x24c) = 0;
      goto LAB_001455c4;
    }
    puVar16 = &DAT_0016da92;
  }
  uVar15 = _printk(puVar16,"syna_pal_mem_alloc");
  return uVar15;
}

