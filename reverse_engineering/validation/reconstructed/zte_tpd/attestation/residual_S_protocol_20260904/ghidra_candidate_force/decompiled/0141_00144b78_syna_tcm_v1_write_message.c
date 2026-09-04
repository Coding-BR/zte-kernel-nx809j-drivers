
int syna_tcm_v1_write_message
              (long param_1,byte param_2,byte *param_3,uint param_4,undefined1 *param_5,uint param_6
              )

{
  bool bVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  byte *pbVar5;
  code *pcVar6;
  bool bVar7;
  int iVar8;
  int iVar9;
  void *pvVar10;
  long lVar11;
  undefined1 *puVar12;
  undefined *puVar13;
  undefined8 uVar14;
  ulong uVar15;
  uint uVar16;
  ushort uVar17;
  long lVar18;
  uint uVar19;
  uint uVar20;
  uint uVar21;
  uint uVar22;
  uint uVar23;
  uint uVar24;
  
  if (param_1 == 0) {
    puVar12 = &DAT_00168a84;
LAB_00145024:
                    /* WARNING: Subroutine does not return */
    _printk(puVar12,"syna_tcm_v1_write_message");
  }
  if (*(long *)(param_1 + 0x48) == 0) {
    puVar12 = &DAT_00172230;
    goto LAB_00145024;
  }
  if (param_5 != (undefined1 *)0x0) {
    *param_5 = 0xff;
  }
  mutex_lock(param_1 + 0x318);
  mutex_lock(param_1 + 0x348);
  *(undefined4 *)(param_1 + 500) = 1;
  *(undefined4 *)(param_1 + 0x1f8) = 1;
  *(undefined4 *)(param_1 + 0x220) = 0;
  *(byte *)(param_1 + 0x1fc) = param_2;
  if (param_6 == 0) {
    bVar1 = false;
  }
  else {
    lVar18 = *(long *)(param_1 + 0x48);
    if (lVar18 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016d5c2,"syna_tcm_enable_irq");
    }
    if (*(long *)(lVar18 + 0x38) == 0) {
      iVar8 = 0;
    }
    else {
      mutex_lock(param_1 + 0x50);
      if (*(int *)(*(code **)(lVar18 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x144c34);
        (*pcVar6)();
      }
      iVar8 = (**(code **)(lVar18 + 0x38))(lVar18,0);
      mutex_unlock(param_1 + 0x50);
    }
    bVar1 = 0 < iVar8;
  }
  if (*(char *)(param_1 + 0x380) == '\x01') {
    uVar17 = *(ushort *)
              (&DAT_00190880 +
              (ulong)((param_4 ^ (uint)*(ushort *)(&DAT_00190880 + (ulong)(byte)~param_2 * 2) << 8 ^
                      (uint)*(ushort *)
                             (&DAT_00190880 +
                             (ulong)(param_4 & 0xff ^
                                    ((*(ushort *)(&DAT_00190880 + (ulong)(byte)~param_2 * 2) ^
                                     0xffffffff) & 0xff00) >> 8) * 2)) >> 8 & 0xff) * 2);
    uVar20 = (uint)uVar17 ^
             (uint)*(ushort *)
                    (&DAT_00190880 +
                    (ulong)(param_4 & 0xff ^
                           ((*(ushort *)(&DAT_00190880 + (ulong)(byte)~param_2 * 2) ^ 0xffffffff) &
                           0xff00) >> 8) * 2) << 8;
    pbVar5 = param_3;
    for (uVar19 = param_4; uVar19 != 0; uVar19 = uVar19 - 1) {
      uVar17 = *(ushort *)(&DAT_00190880 + (ulong)((uint)*pbVar5 ^ (uVar20 & 0xff00) >> 8) * 2);
      uVar20 = (uint)uVar17 ^ uVar20 << 8;
      pbVar5 = pbVar5 + 1;
    }
    uVar19 = uVar20 >> 8 & 0xff;
    uVar20 = param_4 + 5;
  }
  else {
    uVar19 = 0;
    uVar17 = 0;
    uVar20 = param_4 + 3;
  }
  uVar21 = uVar20;
  if (*(uint *)(param_1 + 0x38) != 0) {
    uVar21 = *(uint *)(param_1 + 0x38);
  }
  uVar22 = uVar21;
  if (*(char *)(*(long *)(param_1 + 0x48) + 0x15) == '\x01') {
    uVar22 = 0;
    if (uVar21 == 0) {
      uVar16 = 0;
      goto LAB_00144d48;
    }
    uVar23 = *(uint *)(*(long *)(param_1 + 0x48) + 0x18);
    uVar16 = 0;
    if (uVar23 == 0) goto LAB_00144d48;
    uVar22 = 0;
    if (uVar23 != 0) {
      uVar22 = uVar21 / uVar23;
    }
    uVar22 = uVar22 * uVar23;
  }
  if (uVar22 == 0) {
    uVar16 = 0;
  }
  else {
    uVar16 = 0;
    if (uVar22 != 0) {
      uVar16 = ((uVar20 + uVar22) - 1) / uVar22;
    }
  }
LAB_00144d48:
  if (uVar16 < 2) {
    uVar16 = 1;
  }
  if (*(char *)(param_1 + 0x2c8) != '\0') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 0x298);
  uVar20 = 0;
  *(char *)(param_1 + 0x2c8) = *(char *)(param_1 + 0x2c8) + '\x01';
  uVar23 = 0;
  uVar21 = param_4;
  do {
    uVar2 = uVar23 + 1;
    iVar8 = -3;
    if (uVar23 != 0) {
      iVar8 = -1;
    }
    uVar24 = iVar8 + uVar22;
    if (uVar21 <= uVar22) {
      uVar24 = uVar21;
    }
    bVar7 = uVar2 == uVar16;
    if ((bVar7) && (lVar18 = *(long *)(param_1 + 0x48), (*(byte *)(lVar18 + 0x15) & 1) != 0)) {
      if (*(uint *)(lVar18 + 0x1c) < uVar24) {
        uVar3 = *(uint *)(lVar18 + 0x18);
        iVar8 = 0;
        if (uVar3 != 0) {
          uVar4 = 0;
          if (uVar3 != 0) {
            uVar4 = uVar24 / uVar3;
          }
          iVar8 = uVar4 * uVar3;
        }
        uVar24 = iVar8 - 1;
        bVar7 = uVar24 == uVar21;
        if (!bVar7) {
          uVar16 = uVar16 + 1;
        }
      }
      else {
        bVar7 = true;
      }
    }
    uVar15 = (ulong)*(uint *)(param_1 + 0x290);
    pvVar10 = *(void **)(param_1 + 0x288);
    if (*(uint *)(param_1 + 0x290) < uVar22) {
      if (pvVar10 != (void *)0x0) {
        lVar18 = syna_request_managed_device();
        if (lVar18 == 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00171996,"syna_pal_mem_free");
        }
        devm_kfree(lVar18,pvVar10);
      }
      lVar18 = syna_request_managed_device();
      if (((int)uVar22 < 1) || (lVar18 == 0)) {
        puVar13 = &DAT_00171996;
        if (lVar18 != 0) {
          puVar13 = &DAT_0016da92;
        }
                    /* WARNING: Subroutine does not return */
        _printk(puVar13,"syna_pal_mem_alloc");
      }
      pvVar10 = (void *)devm_kmalloc(lVar18,(ulong)uVar22,0xdc0);
      *(void **)(param_1 + 0x288) = pvVar10;
      if (pvVar10 == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar22);
      }
      *(uint *)(param_1 + 0x290) = uVar22;
      uVar15 = (ulong)uVar22;
    }
    memset(pvVar10,0,uVar15);
    *(undefined4 *)(param_1 + 0x294) = 0;
    if (uVar23 == 0) {
      **(byte **)(param_1 + 0x288) = param_2;
      *(char *)(*(long *)(param_1 + 0x288) + 1) = (char)param_4;
      *(char *)(*(long *)(param_1 + 0x288) + 2) = (char)(param_4 >> 8);
      if (param_4 != 0) {
        if ((param_3 == (byte *)0x0) ||
           (pvVar10 = (void *)(*(long *)(param_1 + 0x288) + 3), pvVar10 == (void *)0x0))
        goto LAB_00145168;
        uVar23 = *(int *)(param_1 + 0x290) - 3;
        uVar3 = param_4;
        if ((param_4 < uVar24) || (uVar23 < uVar24)) goto LAB_00145160;
        memcpy(pvVar10,param_3,(ulong)uVar24);
      }
      iVar8 = 3;
    }
    else {
      **(byte **)(param_1 + 0x288) = 1;
      if ((param_3 + uVar20 == (byte *)0x0) ||
         (pvVar10 = (void *)(*(long *)(param_1 + 0x288) + 1), pvVar10 == (void *)0x0)) {
LAB_00145168:
        puVar13 = &DAT_00172f64;
        goto LAB_00145170;
      }
      uVar3 = param_4 - uVar20;
      uVar23 = *(int *)(param_1 + 0x290) - 1;
      if ((uVar3 < uVar24) || (uVar23 < uVar24)) {
LAB_00145160:
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016edc2,"syna_pal_mem_cpy",uVar3,uVar23,uVar24);
      }
      memcpy(pvVar10,param_3 + uVar20,(ulong)uVar24);
      iVar8 = 1;
    }
    lVar18 = *(long *)(param_1 + 0x288);
    iVar8 = iVar8 + uVar24;
    if ((bVar7 & *(byte *)(param_1 + 0x380)) == 1) {
      uVar15 = (ulong)uVar20;
      if ((ushort *)(lVar18 + uVar15) == (ushort *)0x0) {
        puVar13 = &DAT_00172fa2;
LAB_00145170:
                    /* WARNING: Subroutine does not return */
        _printk(puVar13,"syna_tcm_v1_write");
      }
      uVar23 = *(int *)(param_1 + 0x290) - uVar20;
      if (uVar23 < 2) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016edc2,"syna_pal_mem_cpy",2,uVar23,2);
      }
      uVar20 = uVar20 + 2;
      iVar8 = iVar8 + 2;
      *(ushort *)(lVar18 + uVar15) = uVar17 & 0xff | (ushort)(uVar19 << 8);
      lVar18 = *(long *)(param_1 + 0x288);
    }
    lVar11 = *(long *)(param_1 + 0x48);
    if (lVar11 == 0) {
      puVar13 = &DAT_0016d5c2;
LAB_0014506c:
                    /* WARNING: Subroutine does not return */
      _printk(puVar13,"syna_tcm_write");
    }
    pcVar6 = *(code **)(lVar11 + 0x28);
    if (pcVar6 == (code *)0x0) {
      puVar13 = &DAT_0016d5f6;
      goto LAB_0014506c;
    }
    if (*(int *)(pcVar6 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x144fbc);
      (*pcVar6)();
    }
    iVar9 = (*pcVar6)(lVar11,lVar18,iVar8);
    if (iVar9 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016a524,"syna_tcm_v1_write",iVar8);
    }
    if (((bVar7 == false) && (uVar23 = *(uint *)(param_1 + 0x210), 0 < (int)uVar23)) &&
       (uVar3 = *(uint *)(param_1 + 0x214), 0 < (int)uVar3)) {
      if (uVar3 <= uVar23) {
        uVar3 = uVar23;
      }
      usleep_range_state(uVar23,uVar3,2);
    }
    uVar20 = uVar20 + uVar24;
    uVar21 = uVar21 - uVar24;
    uVar23 = uVar2;
  } while (uVar2 < uVar16);
  if (*(char *)(param_1 + 0x2c8) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
  }
  *(undefined1 *)(param_1 + 0x2c8) = 0;
  mutex_unlock(param_1 + 0x298);
  mutex_unlock(param_1 + 0x348);
  if (-1 < iVar9) {
    uVar20 = 0;
    do {
      if (param_6 == 0) {
        pcVar6 = *(code **)(*(long *)(param_1 + 0x48) + 0x30);
        uVar19 = *(uint *)(param_1 + 0x208) >> 2;
        if (pcVar6 == (code *)0x0) {
          uVar14 = __msecs_to_jiffies(*(uint *)(param_1 + 0x208));
          wait_for_completion_timeout(param_1 + 0x220,uVar14);
        }
        else {
          if (*(int *)(pcVar6 + -4) != 0xf989a7b) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x145220);
            (*pcVar6)();
          }
          (*pcVar6)();
        }
      }
      else {
        uVar19 = param_6;
        if (0 < (int)param_6) {
          msleep(param_6);
        }
      }
      if (*(int *)(param_1 + 0x1f8) == 2) goto LAB_00145274;
      uVar20 = uVar19 + uVar20;
    } while ((((*(int *)(param_1 + 0x1f8) == 1) && (iVar8 = FUN_0014565c(param_1,0), iVar8 < 0)) ||
             (*(int *)(param_1 + 0x1f8) == 1)) && (uVar20 < *(uint *)(param_1 + 0x208)));
    if (*(int *)(param_1 + 0x1f8) != 0) {
      if (*(uint *)(param_1 + 0x208) <= uVar20) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016bdea,"syna_tcm_v1_write_message",param_2);
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016c25a,"syna_tcm_v1_write_message",*(undefined1 *)(param_1 + 0x1fd),param_2);
    }
LAB_00145274:
    iVar9 = 0;
  }
  if (param_5 != (undefined1 *)0x0) {
    *param_5 = *(undefined1 *)(param_1 + 0x1fe);
  }
  *(undefined1 *)(param_1 + 0x1fc) = 0;
  if (bVar1) {
    lVar18 = *(long *)(param_1 + 0x48);
    if (lVar18 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016d5c2,"syna_tcm_enable_irq");
    }
    if (*(long *)(lVar18 + 0x38) != 0) {
      mutex_lock(param_1 + 0x50);
      if (*(int *)(*(code **)(lVar18 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x1452c8);
        (*pcVar6)();
      }
      (**(code **)(lVar18 + 0x38))(lVar18,1);
      mutex_unlock(param_1 + 0x50);
    }
  }
  *(undefined4 *)(param_1 + 0x1f8) = 0;
  *(undefined4 *)(param_1 + 500) = 0;
  mutex_unlock(param_1 + 0x318);
  return iVar9;
}

