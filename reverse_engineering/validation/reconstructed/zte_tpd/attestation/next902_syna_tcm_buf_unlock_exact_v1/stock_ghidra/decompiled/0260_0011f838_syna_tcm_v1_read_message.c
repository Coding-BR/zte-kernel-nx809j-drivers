
/* WARNING: Type propagation algorithm not settling */

int syna_tcm_v1_read_message(long param_1,undefined1 *param_2)

{
  uint *puVar1;
  undefined8 *puVar2;
  long *plVar3;
  undefined8 uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  byte bVar8;
  uint uVar9;
  uint uVar10;
  bool bVar11;
  bool bVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  long lVar16;
  void *pvVar17;
  void *__dest;
  undefined *puVar18;
  char *pcVar19;
  char cVar20;
  long lVar21;
  code *pcVar22;
  ulong uVar23;
  uint uVar24;
  uint uVar25;
  uint uVar26;
  ulong uVar27;
  ulong uVar28;
  uint uVar29;
  undefined1 *puVar30;
  uint uVar31;
  uint uVar32;
  
  if (param_1 == 0) {
    puVar30 = &DAT_00133fd6;
LAB_0011fc2c:
    _printk(puVar30,"syna_tcm_v1_read_message");
    return -0xf1;
  }
  if (*(long *)(param_1 + 0x48) == 0) {
    puVar30 = &DAT_0013d534;
    goto LAB_0011fc2c;
  }
  if (*(char *)(param_1 + 0x37a) == '\x01') {
    bVar12 = *(int *)(param_1 + 0x1f8) == 0;
  }
  else {
    bVar12 = false;
  }
  if (param_2 != (undefined1 *)0x0) {
    *param_2 = 0xff;
  }
  *(undefined1 *)(param_1 + 0x1fd) = 0;
  mutex_lock(param_1 + 0x348);
  if (*(char *)(param_1 + 0x280) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 0x250);
  *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
  if (bVar12) {
    uVar25 = 4;
    if (*(int *)(param_1 + 0x37c) != 0) {
      iVar13 = 6;
      if (*(char *)(param_1 + 0x380) == '\0') {
        iVar13 = 4;
      }
      uVar25 = *(int *)(param_1 + 0x37c) + (uint)*(byte *)(param_1 + 900) + iVar13 + 1;
    }
  }
  else {
    uVar25 = 4;
  }
  lVar21 = *(long *)(param_1 + 0x48);
  plVar3 = (long *)(param_1 + 0x240);
  if ((*(char *)(lVar21 + 0x15) == '\x01') && (*(uint *)(lVar21 + 0x1c) < uVar25)) {
    uVar31 = *(uint *)(lVar21 + 0x18);
    if (uVar31 != 0) {
      uVar9 = 0;
      if (uVar31 != 0) {
        uVar9 = uVar25 / uVar31;
      }
      uVar25 = uVar9 * uVar31;
      goto LAB_0011f934;
    }
    uVar25 = 0;
  }
  else {
LAB_0011f934:
    if (*(uint *)(param_1 + 0x248) < uVar25) {
      lVar21 = *plVar3;
      if (lVar21 == 0) {
LAB_0011f960:
        lVar21 = syna_request_managed_device();
        if (lVar21 != 0) goto LAB_0011f968;
LAB_0012055c:
        puVar18 = &DAT_0013ccb3;
LAB_00120564:
        _printk(puVar18,"syna_pal_mem_alloc");
        *plVar3 = 0;
      }
      else {
        lVar16 = syna_request_managed_device();
        if (lVar16 != 0) {
          devm_kfree(lVar16,lVar21);
          goto LAB_0011f960;
        }
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        lVar21 = syna_request_managed_device();
        if (lVar21 == 0) goto LAB_0012055c;
LAB_0011f968:
        if ((int)uVar25 < 1) {
          puVar18 = &DAT_00138e98;
          goto LAB_00120564;
        }
        pvVar17 = (void *)devm_kmalloc(lVar21,(ulong)uVar25,0xdc0);
        *plVar3 = (long)pvVar17;
        if (pvVar17 != (void *)0x0) {
          *(uint *)(param_1 + 0x248) = uVar25;
          memset(pvVar17,0,(ulong)uVar25);
          *(undefined4 *)(param_1 + 0x24c) = 0;
          goto LAB_0011f9a0;
        }
      }
      _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar25);
      *(undefined8 *)(param_1 + 0x248) = 0;
      _printk(&DAT_00134d71,"syna_tcm_v1_read_message");
      if (*(char *)(param_1 + 0x280) == '\x01') {
        cVar20 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar20 = *(char *)(param_1 + 0x280) + -1;
      }
      *(char *)(param_1 + 0x280) = cVar20;
      mutex_unlock(param_1 + 0x250);
      *(undefined4 *)(param_1 + 0x200) = 0;
      iVar13 = -0xf3;
      *(undefined1 *)(param_1 + 0x1fd) = 0xff;
      goto LAB_00120cc0;
    }
  }
LAB_0011f9a0:
  puVar1 = (uint *)(param_1 + 0x248);
  iVar13 = syna_tcm_v1_read(param_1,uVar25,*(undefined8 *)(param_1 + 0x240),*puVar1);
  if (iVar13 < 0) {
    _printk(&DAT_00139078,"syna_tcm_v1_read_message",uVar25);
    if (*(char *)(param_1 + 0x280) == '\x01') {
      cVar20 = '\0';
    }
    else {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      cVar20 = *(char *)(param_1 + 0x280) + -1;
    }
    *(char *)(param_1 + 0x280) = cVar20;
    mutex_unlock(param_1 + 0x250);
    *(undefined4 *)(param_1 + 0x200) = 0;
    *(undefined1 *)(param_1 + 0x1fd) = 0xff;
    goto LAB_00120cc0;
  }
  puVar30 = *(undefined1 **)(param_1 + 0x240);
  *(uint *)(param_1 + 0x200) = (uint)*(ushort *)(puVar30 + 2);
  if (puVar30[1] != '\0') {
    *(undefined1 *)(param_1 + 0x1fd) = puVar30[1];
  }
  if (*(char *)(param_1 + 0x280) == '\x01') {
    cVar20 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar20 = *(char *)(param_1 + 0x280) + -1;
  }
  *(char *)(param_1 + 0x280) = cVar20;
  mutex_unlock(param_1 + 0x250);
  uVar31 = *(uint *)(param_1 + 0x200);
  if (uVar31 == 0) {
LAB_0011ff88:
    if (*(char *)(param_1 + 0x280) != '\0') {
      _printk(&DAT_00138e56,"syna_tcm_buf_lock");
    }
    mutex_lock(param_1 + 0x250);
    *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
    **(undefined1 **)(param_1 + 0x240) = 0xa5;
    *(undefined1 *)(*(long *)(param_1 + 0x240) + 1) = *(undefined1 *)(param_1 + 0x1fd);
    *(char *)(*(long *)(param_1 + 0x240) + 2) = (char)*(undefined4 *)(param_1 + 0x200);
    *(char *)(*(long *)(param_1 + 0x240) + 3) = (char)((uint)*(undefined4 *)(param_1 + 0x200) >> 8);
    if (*(char *)(param_1 + 0x280) == '\x01') {
      cVar20 = '\0';
    }
    else {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      cVar20 = *(char *)(param_1 + 0x280) + -1;
    }
    *(char *)(param_1 + 0x280) = cVar20;
    mutex_unlock(param_1 + 0x250);
    if ((*(char *)(param_1 + 0x380) == '\x01') && (*(int *)(param_1 + 0x200) != 0)) {
      if (*(char *)(param_1 + 0x280) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(param_1 + 0x250);
      cVar20 = *(char *)(param_1 + 0x280);
      uVar25 = *(int *)(param_1 + 0x200) + 5;
      *(char *)(param_1 + 0x280) = cVar20 + '\x01';
      if (uVar25 < *(uint *)(param_1 + 0x248)) {
        *(undefined2 *)(param_1 + 0x382) =
             *(undefined2 *)(*(long *)(param_1 + 0x240) + (ulong)uVar25);
        if ((*(char *)(param_1 + 900) == '\x01') &&
           (uVar25 = *(int *)(param_1 + 0x200) + 7, uVar25 <= *(uint *)(param_1 + 0x248))) {
          *(undefined1 *)(param_1 + 0x385) =
               *(undefined1 *)(*(long *)(param_1 + 0x240) + (ulong)uVar25);
        }
        if (cVar20 == '\0') {
          cVar20 = '\0';
        }
        else {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock",cVar20 + '\x01');
          cVar20 = *(char *)(param_1 + 0x280) + -1;
        }
        *(char *)(param_1 + 0x280) = cVar20;
        mutex_unlock(param_1 + 0x250);
      }
    }
    uVar27 = (ulong)*(byte *)(param_1 + 0x1fd);
    if (*(long *)(param_1 + 0x13d8 + uVar27 * 0x10 + 8) != 0) {
      if (*(char *)(param_1 + 0x280) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(param_1 + 0x250);
      puVar2 = (undefined8 *)(param_1 + 0x13d8 + (ulong)*(byte *)(param_1 + 0x1fd) * 0x10);
      *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
      pcVar22 = (code *)puVar2[1];
      if (*(int *)(pcVar22 + -4) != -0x606c3bf6) {
                    /* WARNING: Does not return */
        pcVar22 = (code *)SoftwareBreakpoint(0x822b,0x1200dc);
        (*pcVar22)();
      }
      (*pcVar22)(*(byte *)(param_1 + 0x1fd),*(long *)(param_1 + 0x240) + 4,
                 *(undefined4 *)(param_1 + 0x200),*puVar2);
      if (*(char *)(param_1 + 0x280) == '\x01') {
        cVar20 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar20 = *(char *)(param_1 + 0x280) + -1;
      }
      *(char *)(param_1 + 0x280) = cVar20;
      mutex_unlock(param_1 + 0x250);
      uVar27 = (ulong)*(byte *)(param_1 + 0x1fd);
    }
    if ((uint)uVar27 < 0x10) {
      if (*(int *)(param_1 + 0x1f8) != 1) goto joined_r0x00120900;
      *(char *)(param_1 + 0x1fe) = (char)uVar27;
      if (*(int *)(param_1 + 0x200) == 0) {
        *(undefined4 *)(param_1 + 0x154) = 0;
        cVar20 = *(char *)(param_1 + 0x1fe);
      }
      else {
        if (*(char *)(param_1 + 0x188) != '\0') {
          _printk(&DAT_00138e56,"syna_tcm_buf_lock");
        }
        mutex_lock(param_1 + 0x158);
        uVar25 = *(uint *)(param_1 + 0x200);
        uVar23 = (ulong)uVar25;
        uVar27 = (ulong)*(uint *)(param_1 + 0x150);
        pvVar17 = *(void **)(param_1 + 0x148);
        *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
        if (*(uint *)(param_1 + 0x150) < uVar25) {
          if (pvVar17 == (void *)0x0) {
LAB_001201e4:
            lVar21 = syna_request_managed_device();
            if (lVar21 != 0) goto LAB_001201ec;
LAB_00120c08:
            puVar18 = &DAT_0013ccb3;
LAB_00120c10:
            _printk(puVar18,"syna_pal_mem_alloc");
            *(undefined8 *)(param_1 + 0x148) = 0;
          }
          else {
            lVar21 = syna_request_managed_device();
            if (lVar21 != 0) {
              devm_kfree(lVar21,pvVar17);
              goto LAB_001201e4;
            }
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            lVar21 = syna_request_managed_device();
            if (lVar21 == 0) goto LAB_00120c08;
LAB_001201ec:
            if ((int)uVar25 < 1) {
              puVar18 = &DAT_00138e98;
              goto LAB_00120c10;
            }
            pvVar17 = (void *)devm_kmalloc(lVar21,uVar23,0xdc0);
            *(void **)(param_1 + 0x148) = pvVar17;
            if (pvVar17 != (void *)0x0) {
              *(uint *)(param_1 + 0x150) = uVar25;
              uVar27 = uVar23;
              goto LAB_00120368;
            }
          }
          _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar23);
          *(undefined8 *)(param_1 + 0x150) = 0;
          puVar18 = &DAT_00135a41;
LAB_00120c44:
          _printk(puVar18,"syna_tcm_v1_dispatch_response");
        }
        else {
LAB_00120368:
          memset(pvVar17,0,uVar27);
          *(undefined4 *)(param_1 + 0x154) = 0;
          if (*(char *)(param_1 + 0x280) != '\0') {
            _printk(&DAT_00138e56,"syna_tcm_buf_lock");
          }
          mutex_lock(param_1 + 0x250);
          *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
          if ((*(void **)(param_1 + 0x148) != (void *)0x0) &&
             (pvVar17 = (void *)(*(long *)(param_1 + 0x240) + 4), pvVar17 != (void *)0x0)) {
            uVar25 = *(uint *)(param_1 + 0x200);
            if ((uVar25 <= *(uint *)(param_1 + 0x150)) && (uVar25 <= *(int *)(param_1 + 0x248) - 4U)
               ) {
              memcpy(*(void **)(param_1 + 0x148),pvVar17,(ulong)uVar25);
              *(undefined4 *)(param_1 + 0x154) = *(undefined4 *)(param_1 + 0x200);
              if (*(char *)(param_1 + 0x280) == '\x01') {
                cVar20 = '\0';
              }
              else {
                _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
                cVar20 = *(char *)(param_1 + 0x280) + -1;
              }
              *(char *)(param_1 + 0x280) = cVar20;
              mutex_unlock(param_1 + 0x250);
              if ((*(char *)(param_1 + 0x1fc) != '\x02') ||
                 (iVar13 = syna_tcm_v1_parse_idinfo
                                     (param_1,*(undefined8 *)(param_1 + 0x148),
                                      *(undefined4 *)(param_1 + 0x150),
                                      *(undefined4 *)(param_1 + 0x154)), -1 < iVar13)) {
                if (*(char *)(param_1 + 0x188) == '\x01') {
                  cVar20 = '\0';
                }
                else {
                  _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
                  cVar20 = *(char *)(param_1 + 0x188) + -1;
                }
                *(char *)(param_1 + 0x188) = cVar20;
                mutex_unlock(param_1 + 0x158);
                cVar20 = *(char *)(param_1 + 0x1fe);
                goto joined_r0x0012035c;
              }
              puVar18 = &DAT_00138532;
              goto LAB_00120c44;
            }
            _printk(&DAT_0013a172,"syna_pal_mem_cpy");
          }
          _printk(&DAT_0013b9b5,"syna_tcm_v1_dispatch_response");
          syna_tcm_buf_unlock(plVar3);
        }
        syna_tcm_buf_unlock(param_1 + 0x148);
        cVar20 = *(char *)(param_1 + 0x1fe);
      }
joined_r0x0012035c:
      if (cVar20 == '\0') goto joined_r0x00120900;
      if (cVar20 == '\x01') goto LAB_00120c68;
      if (cVar20 == '\x03') {
        _printk(&DAT_0013ac01,"syna_tcm_v1_dispatch_response");
        goto joined_r0x00120900;
      }
      _printk(&DAT_0013291c,"syna_tcm_v1_dispatch_response",cVar20,*(undefined1 *)(param_1 + 0x1fc))
      ;
      *(undefined4 *)(param_1 + 0x1f8) = 0xffffffff;
LAB_00120c6c:
      uVar27 = completion_done(param_1 + 0x220);
      if ((uVar27 & 1) == 0) {
        complete(param_1 + 0x220);
      }
    }
    else if (*(int *)(param_1 + 0x200) == 0) {
      *(undefined4 *)(param_1 + 0x10c) = 0;
    }
    else {
      if (*(char *)(param_1 + 0x140) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(param_1 + 0x110);
      uVar25 = *(uint *)(param_1 + 0x200);
      uVar28 = (ulong)uVar25;
      uVar23 = (ulong)*(uint *)(param_1 + 0x108);
      pvVar17 = *(void **)(param_1 + 0x100);
      *(char *)(param_1 + 0x140) = *(char *)(param_1 + 0x140) + '\x01';
      if (*(uint *)(param_1 + 0x108) < uVar25) {
        if (pvVar17 == (void *)0x0) {
LAB_00120158:
          lVar21 = syna_request_managed_device();
          if (lVar21 != 0) goto LAB_00120160;
LAB_00120a48:
          puVar18 = &DAT_0013ccb3;
LAB_00120a50:
          _printk(puVar18,"syna_pal_mem_alloc");
          *(undefined8 *)(param_1 + 0x100) = 0;
        }
        else {
          lVar21 = syna_request_managed_device();
          if (lVar21 != 0) {
            devm_kfree(lVar21,pvVar17);
            goto LAB_00120158;
          }
          _printk(&DAT_0013ccb3,"syna_pal_mem_free");
          lVar21 = syna_request_managed_device();
          if (lVar21 == 0) goto LAB_00120a48;
LAB_00120160:
          if ((int)uVar25 < 1) {
            puVar18 = &DAT_00138e98;
            goto LAB_00120a50;
          }
          pvVar17 = (void *)devm_kmalloc(lVar21,uVar28,0xdc0);
          *(void **)(param_1 + 0x100) = pvVar17;
          if (pvVar17 != (void *)0x0) {
            *(uint *)(param_1 + 0x108) = uVar25;
            uVar23 = uVar28;
            goto LAB_00120220;
          }
        }
        _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar28);
        *(undefined8 *)(param_1 + 0x108) = 0;
        _printk(&DAT_001384f3,"syna_tcm_v1_dispatch_report");
      }
      else {
LAB_00120220:
        memset(pvVar17,0,uVar23);
        *(undefined4 *)(param_1 + 0x10c) = 0;
        if (*(char *)(param_1 + 0x280) != '\0') {
          _printk(&DAT_00138e56,"syna_tcm_buf_lock");
        }
        mutex_lock(param_1 + 0x250);
        *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
        if ((*(void **)(param_1 + 0x100) != (void *)0x0) &&
           (pvVar17 = (void *)(*(long *)(param_1 + 0x240) + 4), pvVar17 != (void *)0x0)) {
          uVar25 = *(uint *)(param_1 + 0x200);
          if ((uVar25 <= *(uint *)(param_1 + 0x108)) && (uVar25 <= *(int *)(param_1 + 0x248) - 4U))
          {
            memcpy(*(void **)(param_1 + 0x100),pvVar17,(ulong)uVar25);
            *(undefined4 *)(param_1 + 0x10c) = *(undefined4 *)(param_1 + 0x200);
            if (*(char *)(param_1 + 0x280) == '\x01') {
              cVar20 = '\0';
            }
            else {
              _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
              cVar20 = *(char *)(param_1 + 0x280) + -1;
            }
            *(char *)(param_1 + 0x280) = cVar20;
            mutex_unlock(param_1 + 0x250);
            if (*(char *)(param_1 + 0x140) == '\x01') {
              cVar20 = '\0';
            }
            else {
              _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
              cVar20 = *(char *)(param_1 + 0x140) + -1;
            }
            *(char *)(param_1 + 0x140) = cVar20;
            mutex_unlock(param_1 + 0x110);
            if ((uint)uVar27 == 0x10) {
              if (*(char *)(param_1 + 0x280) != '\0') {
                _printk(&DAT_00138e56,"syna_tcm_buf_lock");
              }
              mutex_lock(param_1 + 0x250);
              *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
              iVar13 = syna_tcm_v1_parse_idinfo
                                 (param_1,*(long *)(param_1 + 0x240) + 4,
                                  *(int *)(param_1 + 0x248) + -4,*(undefined4 *)(param_1 + 0x200));
              if (iVar13 < 0) {
                _printk(&DAT_0013abd0,"syna_tcm_v1_dispatch_report");
                syna_tcm_buf_unlock(plVar3);
                goto joined_r0x00120900;
              }
              if (*(char *)(param_1 + 0x280) == '\x01') {
                cVar20 = '\0';
              }
              else {
                _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
                cVar20 = *(char *)(param_1 + 0x280) + -1;
              }
              *(char *)(param_1 + 0x280) = cVar20;
              mutex_unlock(param_1 + 0x250);
              if (*(int *)(param_1 + 0x1f8) == 1) {
                bVar8 = *(byte *)(param_1 + 0x1fc);
                if (bVar8 < 0x1f) {
                  if ((bVar8 == 4) || (bVar8 == 0x14)) {
LAB_00120c68:
                    *(undefined4 *)(param_1 + 0x1f8) = 0;
                    goto LAB_00120c6c;
                  }
                }
                else if ((bVar8 == 0x1f) || (bVar8 == 0x31)) goto LAB_00120c68;
                if (*(char *)(param_1 + 0x1f0) == '\x01') {
                  *(undefined4 *)(param_1 + 0x1f8) = 0;
                }
                else {
                  _printk(&DAT_0013c768,"syna_tcm_v1_dispatch_report",0x10);
                  *(undefined4 *)(param_1 + 0x1f8) = 0xffffffff;
                }
                uVar23 = completion_done(param_1 + 0x220);
                if ((uVar23 & 1) == 0) {
                  complete(param_1 + 0x220);
                }
              }
            }
            lVar21 = param_1 + uVar27 * 0x10;
            if (*(long *)(lVar21 + 0x3e0) == 0) goto joined_r0x00120900;
            if (*(char *)(param_1 + 0x140) != '\0') {
              _printk(&DAT_00138e56,"syna_tcm_buf_lock");
            }
            mutex_lock(param_1 + 0x110);
            uVar4 = *(undefined8 *)(lVar21 + 0x3d8);
            pcVar22 = *(code **)(lVar21 + 0x3e0);
            *(char *)(param_1 + 0x140) = *(char *)(param_1 + 0x140) + '\x01';
            if (*(int *)(pcVar22 + -4) != -0x606c3bf6) {
                    /* WARNING: Does not return */
              pcVar22 = (code *)SoftwareBreakpoint(0x8229,0x120538);
              (*pcVar22)();
            }
            (*pcVar22)(uVar27,*(undefined8 *)(param_1 + 0x100),*(undefined4 *)(param_1 + 0x10c),
                       uVar4);
            goto LAB_00120a90;
          }
          _printk(&DAT_0013a172,"syna_pal_mem_cpy");
        }
        _printk(&DAT_001333ac,"syna_tcm_v1_dispatch_report");
        if (*(char *)(param_1 + 0x280) == '\x01') {
          cVar20 = '\0';
        }
        else {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
          cVar20 = *(char *)(param_1 + 0x280) + -1;
        }
        *(char *)(param_1 + 0x280) = cVar20;
        mutex_unlock(param_1 + 0x250);
      }
LAB_00120a90:
      if (*(char *)(param_1 + 0x140) == '\x01') {
        cVar20 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar20 = *(char *)(param_1 + 0x140) + -1;
      }
      *(char *)(param_1 + 0x140) = cVar20;
      mutex_unlock(param_1 + 0x110);
    }
joined_r0x00120900:
    if (param_2 != (undefined1 *)0x0) {
      *param_2 = *(undefined1 *)(param_1 + 0x1fd);
    }
    iVar13 = 0;
    if (bVar12) {
      uVar31 = *(uint *)(param_1 + 0x200);
      uVar9 = *(int *)(param_1 + 0x3c) - 5;
      uVar25 = uVar31;
      if (uVar9 <= uVar31) {
        uVar25 = uVar9;
      }
      if (*(int *)(param_1 + 0x3c) != 0) {
        uVar31 = uVar25;
      }
      uVar25 = 0;
      if (0xf < *(byte *)(param_1 + 0x1fd)) {
        uVar25 = uVar31;
      }
      *(uint *)(param_1 + 0x37c) = uVar25;
    }
    goto LAB_00120cc0;
  }
  if (puVar30[1] != '\x03') {
    uVar9 = 0;
    if (uVar25 - 4 <= uVar31) {
      uVar9 = uVar31 - (uVar25 - 4);
    }
    if (uVar25 < 5) {
      uVar9 = uVar31;
    }
    if (uVar9 == 0) goto LAB_0011ff88;
    if (((uVar9 ^ 0xffffffff) & 0xffff) == 0) {
      iVar13 = -0xf1;
    }
    else {
      iVar13 = uVar9 + 3;
      iVar14 = *(byte *)(param_1 + 900) + 1;
      uVar25 = uVar31 + 7;
      if (*(byte *)(param_1 + 0x380) == 0) {
        iVar13 = uVar9 + 1;
        uVar25 = uVar31 + 5;
      }
      uVar32 = iVar13 + iVar14;
      uVar25 = uVar25 + iVar14;
      if (((*(byte *)(param_1 + 0x380) | *(byte *)(param_1 + 900)) & 1) == 0) {
        uVar32 = uVar9 + 1;
        uVar25 = uVar31 + 5;
      }
      if (*(char *)(param_1 + 0x280) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(param_1 + 0x250);
      uVar26 = *(uint *)(param_1 + 0x248);
      uVar31 = uVar25 + 1;
      *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
      if (uVar26 < uVar31) {
        pvVar17 = (void *)*plVar3;
        lVar21 = syna_request_managed_device();
        if (lVar21 == 0) {
          puVar18 = &DAT_0013ccb3;
LAB_0012086c:
          _printk(puVar18,"syna_pal_mem_alloc");
          *plVar3 = 0;
LAB_00120880:
          _printk(&DAT_00137ba6,"syna_tcm_buf_realloc",uVar31);
          lVar21 = syna_request_managed_device();
          if (lVar21 == 0) {
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
          }
          else if (pvVar17 != (void *)0x0) {
LAB_00120b94:
            devm_kfree(lVar21,pvVar17);
          }
        }
        else {
          if (0x7ffffffe < uVar25) {
            puVar18 = &DAT_00138e98;
            goto LAB_0012086c;
          }
          __dest = (void *)devm_kmalloc(lVar21,uVar31,0xdc0);
          *plVar3 = (long)__dest;
          if (__dest == (void *)0x0) goto LAB_00120880;
          if (pvVar17 != (void *)0x0) {
            memcpy(__dest,pvVar17,(ulong)uVar26);
            lVar21 = syna_request_managed_device();
            if (lVar21 == 0) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else {
              devm_kfree(lVar21,pvVar17);
            }
            *puVar1 = uVar31;
            goto LAB_0011fba8;
          }
          _printk(&DAT_0013225a,"syna_tcm_buf_realloc");
          lVar21 = syna_request_managed_device();
          if (lVar21 == 0) {
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
          }
          pvVar17 = (void *)*plVar3;
          lVar21 = syna_request_managed_device();
          if (lVar21 != 0) {
            if (pvVar17 == (void *)0x0) goto LAB_00120b98;
            goto LAB_00120b94;
          }
          _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        }
LAB_00120b98:
        *puVar1 = 0;
        _printk(&DAT_0013b97a,"syna_tcm_v1_continued_read");
        syna_tcm_buf_unlock(plVar3);
        iVar13 = -0xf3;
      }
      else {
LAB_0011fba8:
        uVar31 = uVar25;
        if (*(uint *)(param_1 + 0x3c) != 0) {
          uVar31 = *(uint *)(param_1 + 0x3c);
        }
        if (*(char *)(*(long *)(param_1 + 0x48) + 0x15) == '\x01') {
          uVar26 = 0;
          if (uVar31 == 0) {
            uVar24 = 0;
          }
          else {
            uVar5 = *(uint *)(*(long *)(param_1 + 0x48) + 0x18);
            uVar24 = 0;
            if (uVar5 != 0) {
              uVar26 = 0;
              if (uVar5 != 0) {
                uVar26 = uVar31 / uVar5;
              }
              uVar26 = uVar26 * uVar5;
              if (uVar26 != 0) goto LAB_0011fc08;
              goto LAB_0011fbe8;
            }
          }
        }
        else {
          uVar26 = uVar31;
          if (uVar31 == 0) {
LAB_0011fbe8:
            uVar24 = 0;
          }
          else {
LAB_0011fc08:
            uVar24 = 0;
            if (uVar26 != 0) {
              uVar24 = ((uVar25 + uVar26) - 1) / uVar26;
            }
          }
        }
        if (uVar24 < 2) {
          uVar24 = 1;
        }
        uVar25 = (*(int *)(param_1 + 0x200) - uVar9) + 4;
        if (*(char *)(param_1 + 0x310) != '\0') {
          _printk(&DAT_00138e56,"syna_tcm_buf_lock");
        }
        mutex_lock(param_1 + 0x2e0);
        iVar13 = 0;
        cVar20 = -1;
        *(char *)(param_1 + 0x310) = *(char *)(param_1 + 0x310) + '\x01';
        uVar31 = 0;
        do {
          uVar5 = uVar31 + 1;
          uVar29 = uVar26 - 2;
          if (uVar32 <= uVar26) {
            uVar29 = uVar32;
          }
          if (uVar29 != 1) {
            if (((uVar5 == uVar24) &&
                (lVar21 = *(long *)(param_1 + 0x48), (*(byte *)(lVar21 + 0x15) & 1) != 0)) &&
               (*(uint *)(lVar21 + 0x1c) < uVar29)) {
              uVar6 = *(uint *)(lVar21 + 0x18);
              iVar14 = 0;
              if (uVar6 != 0) {
                uVar10 = 0;
                if (uVar6 != 0) {
                  uVar10 = uVar29 / uVar6;
                }
                iVar14 = uVar10 * uVar6;
              }
              uVar29 = iVar14 - 2;
              if (uVar29 != uVar32) {
                uVar24 = uVar24 + 1;
              }
            }
            uVar6 = uVar29 + 2;
            pvVar17 = *(void **)(param_1 + 0x2d0);
            uVar27 = (ulong)*(uint *)(param_1 + 0x2d8);
            if (*(uint *)(param_1 + 0x2d8) < uVar6) {
              if (pvVar17 == (void *)0x0) {
LAB_0011fdc0:
                lVar21 = syna_request_managed_device();
                if (lVar21 != 0) goto LAB_0011fdc8;
LAB_0011ff28:
                puVar18 = &DAT_0013ccb3;
LAB_00120b40:
                _printk(puVar18,"syna_pal_mem_alloc");
                *(undefined8 *)(param_1 + 0x2d0) = 0;
              }
              else {
                lVar21 = syna_request_managed_device();
                if (lVar21 != 0) {
                  devm_kfree(lVar21,pvVar17);
                  goto LAB_0011fdc0;
                }
                _printk(&DAT_0013ccb3,"syna_pal_mem_free");
                lVar21 = syna_request_managed_device();
                if (lVar21 == 0) goto LAB_0011ff28;
LAB_0011fdc8:
                if ((int)uVar6 < 1) {
                  puVar18 = &DAT_00138e98;
                  goto LAB_00120b40;
                }
                pvVar17 = (void *)devm_kmalloc(lVar21,(ulong)uVar6,0xdc0);
                *(void **)(param_1 + 0x2d0) = pvVar17;
                if (pvVar17 != (void *)0x0) {
                  *(uint *)(param_1 + 0x2d8) = uVar6;
                  uVar27 = (ulong)uVar6;
                  goto LAB_0011fdf0;
                }
              }
              _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar6);
              *(undefined8 *)(param_1 + 0x2d8) = 0;
              _printk(&DAT_0013e297,"syna_tcm_v1_continued_read");
              iVar13 = -0xf3;
              bVar11 = true;
            }
            else {
LAB_0011fdf0:
              memset(pvVar17,0,uVar27);
              *(undefined4 *)(param_1 + 0x2dc) = 0;
              iVar14 = 5;
              if (5 < iVar13 + 1) {
                iVar14 = iVar13 + 1;
              }
              do {
                uVar10 = *(uint *)(param_1 + 0x210);
                if ((0 < (int)uVar10) && (uVar7 = *(uint *)(param_1 + 0x214), 0 < (int)uVar7)) {
                  if (uVar7 <= uVar10) {
                    uVar7 = uVar10;
                  }
                  usleep_range_state(uVar10,uVar7,2);
                }
                iVar15 = syna_tcm_v1_read(param_1,uVar6,*(undefined8 *)(param_1 + 0x2d0),
                                          *(undefined4 *)(param_1 + 0x2d8));
                if (iVar15 < 0) {
                  _printk(&DAT_00137d70,"syna_tcm_v1_continued_read",uVar6);
                }
                else {
                  lVar21 = *(long *)(param_1 + 0x2d0);
                  *(uint *)(param_1 + 0x2dc) = uVar6;
                  cVar20 = *(char *)(lVar21 + 1);
                  if (cVar20 == '\x03') goto joined_r0x0011feb8;
                }
                iVar13 = iVar13 + 1;
              } while (iVar13 < 5);
              if (cVar20 == '\x03') {
                lVar21 = *(long *)(param_1 + 0x2d0);
                iVar13 = iVar14;
joined_r0x0011feb8:
                if (((void *)(lVar21 + 2) != (void *)0x0) &&
                   ((void *)(*plVar3 + (ulong)uVar25) != (void *)0x0)) {
                  uVar31 = *(int *)(param_1 + 0x2d8) - 2;
                  uVar6 = *(int *)(param_1 + 0x248) - uVar25;
                  if ((uVar29 <= uVar31) && (uVar29 <= uVar6)) {
                    memcpy((void *)(*plVar3 + (ulong)uVar25),(void *)(lVar21 + 2),(ulong)uVar29);
                    uVar25 = uVar29 + uVar25;
                    uVar32 = uVar32 - uVar29;
                    cVar20 = '\x03';
                    goto LAB_0011fd38;
                  }
                  _printk(&DAT_0013a172,"syna_pal_mem_cpy",uVar31,uVar6,uVar29);
                }
                _printk(&DAT_0013cf04,"syna_tcm_v1_continued_read");
                iVar13 = -0x16;
                bVar11 = true;
              }
              else {
                _printk(&DAT_001360f8,"syna_tcm_v1_continued_read",cVar20,uVar31,uVar24);
                iVar13 = -0xf2;
                bVar11 = true;
              }
            }
            goto LAB_0011ff40;
          }
          uVar32 = uVar32 - 1;
          *(undefined1 *)(*plVar3 + (ulong)uVar25) = 0x5a;
          uVar25 = uVar25 + 1;
LAB_0011fd38:
          uVar31 = uVar5;
        } while (uVar5 < uVar24);
        bVar11 = false;
        iVar13 = 0;
        *(uint *)(param_1 + 0x24c) = uVar25;
LAB_0011ff40:
        if (*(char *)(param_1 + 0x310) == '\x01') {
          cVar20 = '\0';
        }
        else {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
          cVar20 = *(char *)(param_1 + 0x310) + -1;
        }
        *(char *)(param_1 + 0x310) = cVar20;
        mutex_unlock(param_1 + 0x2e0);
        if (*(char *)(param_1 + 0x280) == '\x01') {
          cVar20 = '\0';
        }
        else {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
          cVar20 = *(char *)(param_1 + 0x280) + -1;
        }
        *(char *)(param_1 + 0x280) = cVar20;
        mutex_unlock(param_1 + 0x250);
        if (!bVar11) goto LAB_0011ff88;
      }
    }
    _printk(&DAT_0013b92f,"syna_tcm_v1_read_message",uVar9,*puVar30,puVar30[1],puVar30[2],puVar30[3]
           );
    goto LAB_00120cc0;
  }
  uVar25 = 0x40;
  if (*(uint *)(param_1 + 0x3c) != 0) {
    uVar25 = *(uint *)(param_1 + 0x3c);
  }
  lVar21 = syna_request_managed_device();
  if (lVar21 == 0) {
    puVar18 = &DAT_0013ccb3;
LAB_001205ec:
    _printk(puVar18,"syna_pal_mem_alloc");
LAB_001205f8:
    puVar18 = &DAT_00138b41;
    pcVar19 = "syna_tcm_v1_discard_message";
  }
  else {
    if (0x7ffffffe < uVar25) {
      puVar18 = &DAT_00138e98;
      goto LAB_001205ec;
    }
    lVar21 = devm_kmalloc(lVar21,uVar25 + 1,0xdc0);
    if (lVar21 == 0) goto LAB_001205f8;
    iVar13 = 100;
    do {
      lVar16 = *(long *)(param_1 + 0x48);
      puVar18 = &DAT_001389db;
      if ((lVar16 == 0) ||
         (pcVar22 = *(code **)(lVar16 + 0x20), puVar18 = &DAT_00136c67, pcVar22 == (code *)0x0)) {
        _printk(puVar18,"syna_tcm_read");
LAB_00120768:
        _printk(&DAT_0013222b,"syna_tcm_v1_discard_message",uVar25);
        lVar16 = syna_request_managed_device();
        goto joined_r0x00120784;
      }
      if (*(int *)(pcVar22 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
        pcVar22 = (code *)SoftwareBreakpoint(0x8228,0x11fa7c);
        (*pcVar22)();
      }
      iVar14 = (*pcVar22)(lVar16,lVar21,uVar25);
      if (iVar14 < 0) goto LAB_00120768;
      if (*(char *)(lVar21 + 1) == '\0') break;
      usleep_range_state(1000,2000,2);
      iVar13 = iVar13 + -1;
    } while (iVar13 != 0);
    lVar16 = syna_request_managed_device();
joined_r0x00120784:
    if (lVar16 != 0) {
      devm_kfree(lVar16,lVar21);
      iVar13 = -0xf2;
      goto LAB_00120cc0;
    }
    puVar18 = &DAT_0013ccb3;
    pcVar19 = "syna_pal_mem_free";
  }
  _printk(puVar18,pcVar19);
  iVar13 = -0xf2;
LAB_00120cc0:
  uVar25 = *(uint *)(param_1 + 0x210);
  if ((0 < (int)uVar25) && (uVar31 = *(uint *)(param_1 + 0x214), 0 < (int)uVar31)) {
    if (uVar31 <= uVar25) {
      uVar31 = uVar25;
    }
    usleep_range_state(uVar25,uVar31,2);
  }
  mutex_unlock(param_1 + 0x348);
  return iVar13;
}

