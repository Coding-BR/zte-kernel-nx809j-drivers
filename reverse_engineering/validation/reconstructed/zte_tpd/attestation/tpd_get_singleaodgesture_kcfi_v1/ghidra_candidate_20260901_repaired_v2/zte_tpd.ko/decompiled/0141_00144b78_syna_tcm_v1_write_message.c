
ulong syna_tcm_v1_write_message
                (long param_1,byte param_2,byte *param_3,uint param_4,undefined1 *param_5,
                uint param_6)

{
  bool bVar1;
  uint uVar2;
  uint uVar3;
  byte *pbVar4;
  code *pcVar5;
  bool bVar6;
  int iVar7;
  uint uVar8;
  void *pvVar9;
  long lVar10;
  undefined1 *puVar11;
  undefined *puVar12;
  undefined8 uVar13;
  ulong uVar14;
  uint uVar15;
  ushort uVar16;
  long lVar17;
  uint uVar18;
  uint uVar19;
  uint uVar20;
  uint uVar21;
  uint uVar22;
  uint uVar23;
  
  if (param_1 == 0) {
    puVar11 = &DAT_00168a84;
LAB_00145024:
    uVar14 = _printk(puVar11,"syna_tcm_v1_write_message");
    return uVar14;
  }
  if (*(long *)(param_1 + 0x48) == 0) {
    puVar11 = &DAT_00172230;
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
    lVar17 = *(long *)(param_1 + 0x48);
    if (lVar17 == 0) {
      uVar14 = _printk(&DAT_0016d5c2,"syna_tcm_enable_irq");
      return uVar14;
    }
    if (*(long *)(lVar17 + 0x38) == 0) {
      iVar7 = 0;
    }
    else {
      mutex_lock(param_1 + 0x50);
      if (*(int *)(*(code **)(lVar17 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x144c34);
        (*pcVar5)();
      }
      iVar7 = (**(code **)(lVar17 + 0x38))(lVar17,0);
      mutex_unlock(param_1 + 0x50);
    }
    bVar1 = 0 < iVar7;
  }
  if (*(char *)(param_1 + 0x380) == '\x01') {
    uVar16 = *(ushort *)
              (&DAT_00190880 +
              (ulong)((param_4 ^ (uint)*(ushort *)(&DAT_00190880 + (ulong)(byte)~param_2 * 2) << 8 ^
                      (uint)*(ushort *)
                             (&DAT_00190880 +
                             (ulong)(param_4 & 0xff ^
                                    ((*(ushort *)(&DAT_00190880 + (ulong)(byte)~param_2 * 2) ^
                                     0xffffffff) & 0xff00) >> 8) * 2)) >> 8 & 0xff) * 2);
    uVar19 = (uint)uVar16 ^
             (uint)*(ushort *)
                    (&DAT_00190880 +
                    (ulong)(param_4 & 0xff ^
                           ((*(ushort *)(&DAT_00190880 + (ulong)(byte)~param_2 * 2) ^ 0xffffffff) &
                           0xff00) >> 8) * 2) << 8;
    pbVar4 = param_3;
    for (uVar18 = param_4; uVar18 != 0; uVar18 = uVar18 - 1) {
      uVar16 = *(ushort *)(&DAT_00190880 + (ulong)((uint)*pbVar4 ^ (uVar19 & 0xff00) >> 8) * 2);
      uVar19 = (uint)uVar16 ^ uVar19 << 8;
      pbVar4 = pbVar4 + 1;
    }
    uVar18 = uVar19 >> 8 & 0xff;
    uVar19 = param_4 + 5;
  }
  else {
    uVar18 = 0;
    uVar16 = 0;
    uVar19 = param_4 + 3;
  }
  uVar20 = uVar19;
  if (*(uint *)(param_1 + 0x38) != 0) {
    uVar20 = *(uint *)(param_1 + 0x38);
  }
  uVar21 = uVar20;
  if (*(char *)(*(long *)(param_1 + 0x48) + 0x15) == '\x01') {
    uVar21 = 0;
    if (uVar20 == 0) {
      uVar15 = 0;
      goto LAB_00144d48;
    }
    uVar22 = *(uint *)(*(long *)(param_1 + 0x48) + 0x18);
    uVar15 = 0;
    if (uVar22 == 0) goto LAB_00144d48;
    uVar21 = 0;
    if (uVar22 != 0) {
      uVar21 = uVar20 / uVar22;
    }
    uVar21 = uVar21 * uVar22;
  }
  if (uVar21 == 0) {
    uVar15 = 0;
  }
  else {
    uVar15 = 0;
    if (uVar21 != 0) {
      uVar15 = ((uVar19 + uVar21) - 1) / uVar21;
    }
  }
LAB_00144d48:
  if (uVar15 < 2) {
    uVar15 = 1;
  }
  if (*(char *)(param_1 + 0x2c8) != '\0') {
    uVar14 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar14;
  }
  mutex_lock(param_1 + 0x298);
  uVar19 = 0;
  *(char *)(param_1 + 0x2c8) = *(char *)(param_1 + 0x2c8) + '\x01';
  uVar22 = 0;
  uVar20 = param_4;
  do {
    uVar2 = uVar22 + 1;
    iVar7 = -3;
    if (uVar22 != 0) {
      iVar7 = -1;
    }
    uVar23 = iVar7 + uVar21;
    if (uVar20 <= uVar21) {
      uVar23 = uVar20;
    }
    bVar6 = uVar2 == uVar15;
    if ((bVar6) && (lVar17 = *(long *)(param_1 + 0x48), (*(byte *)(lVar17 + 0x15) & 1) != 0)) {
      if (*(uint *)(lVar17 + 0x1c) < uVar23) {
        uVar8 = *(uint *)(lVar17 + 0x18);
        iVar7 = 0;
        if (uVar8 != 0) {
          uVar3 = 0;
          if (uVar8 != 0) {
            uVar3 = uVar23 / uVar8;
          }
          iVar7 = uVar3 * uVar8;
        }
        uVar23 = iVar7 - 1;
        bVar6 = uVar23 == uVar20;
        if (!bVar6) {
          uVar15 = uVar15 + 1;
        }
      }
      else {
        bVar6 = true;
      }
    }
    uVar14 = (ulong)*(uint *)(param_1 + 0x290);
    pvVar9 = *(void **)(param_1 + 0x288);
    if (*(uint *)(param_1 + 0x290) < uVar21) {
      if (pvVar9 != (void *)0x0) {
        lVar17 = syna_request_managed_device();
        if (lVar17 == 0) {
          uVar14 = _printk(&DAT_00171996,"syna_pal_mem_free");
          return uVar14;
        }
        devm_kfree(lVar17,pvVar9);
      }
      lVar17 = syna_request_managed_device();
      if (((int)uVar21 < 1) || (lVar17 == 0)) {
        puVar12 = &DAT_00171996;
        if (lVar17 != 0) {
          puVar12 = &DAT_0016da92;
        }
        uVar14 = _printk(puVar12,"syna_pal_mem_alloc");
        return uVar14;
      }
      pvVar9 = (void *)devm_kmalloc(lVar17,(ulong)uVar21,0xdc0);
      *(void **)(param_1 + 0x288) = pvVar9;
      if (pvVar9 == (void *)0x0) {
        uVar14 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar21);
        return uVar14;
      }
      *(uint *)(param_1 + 0x290) = uVar21;
      uVar14 = (ulong)uVar21;
    }
    memset(pvVar9,0,uVar14);
    *(undefined4 *)(param_1 + 0x294) = 0;
    if (uVar22 == 0) {
      **(byte **)(param_1 + 0x288) = param_2;
      *(char *)(*(long *)(param_1 + 0x288) + 1) = (char)param_4;
      *(char *)(*(long *)(param_1 + 0x288) + 2) = (char)(param_4 >> 8);
      if (param_4 != 0) {
        if ((param_3 == (byte *)0x0) ||
           (pvVar9 = (void *)(*(long *)(param_1 + 0x288) + 3), pvVar9 == (void *)0x0))
        goto LAB_00145168;
        uVar22 = *(int *)(param_1 + 0x290) - 3;
        uVar8 = param_4;
        if ((param_4 < uVar23) || (uVar22 < uVar23)) goto LAB_00145160;
        memcpy(pvVar9,param_3,(ulong)uVar23);
      }
      iVar7 = 3;
    }
    else {
      **(byte **)(param_1 + 0x288) = 1;
      if ((param_3 + uVar19 == (byte *)0x0) ||
         (pvVar9 = (void *)(*(long *)(param_1 + 0x288) + 1), pvVar9 == (void *)0x0)) {
LAB_00145168:
        puVar12 = &DAT_00172f64;
        goto LAB_00145170;
      }
      uVar8 = param_4 - uVar19;
      uVar22 = *(int *)(param_1 + 0x290) - 1;
      if ((uVar8 < uVar23) || (uVar22 < uVar23)) {
LAB_00145160:
        uVar14 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",uVar8,uVar22,uVar23);
        return uVar14;
      }
      memcpy(pvVar9,param_3 + uVar19,(ulong)uVar23);
      iVar7 = 1;
    }
    lVar17 = *(long *)(param_1 + 0x288);
    iVar7 = iVar7 + uVar23;
    if ((bVar6 & *(byte *)(param_1 + 0x380)) == 1) {
      uVar14 = (ulong)uVar19;
      if ((ushort *)(lVar17 + uVar14) == (ushort *)0x0) {
        puVar12 = &DAT_00172fa2;
LAB_00145170:
        uVar14 = _printk(puVar12,"syna_tcm_v1_write");
        return uVar14;
      }
      uVar22 = *(int *)(param_1 + 0x290) - uVar19;
      if (uVar22 < 2) {
        uVar14 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",2,uVar22,2);
        return uVar14;
      }
      uVar19 = uVar19 + 2;
      iVar7 = iVar7 + 2;
      *(ushort *)(lVar17 + uVar14) = uVar16 & 0xff | (ushort)(uVar18 << 8);
      lVar17 = *(long *)(param_1 + 0x288);
    }
    lVar10 = *(long *)(param_1 + 0x48);
    if (lVar10 == 0) {
      puVar12 = &DAT_0016d5c2;
LAB_0014506c:
      uVar14 = _printk(puVar12,"syna_tcm_write");
      return uVar14;
    }
    pcVar5 = *(code **)(lVar10 + 0x28);
    if (pcVar5 == (code *)0x0) {
      puVar12 = &DAT_0016d5f6;
      goto LAB_0014506c;
    }
    if (*(int *)(pcVar5 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x144fbc);
      (*pcVar5)();
    }
    uVar8 = (*pcVar5)(lVar10,lVar17,iVar7);
    uVar14 = (ulong)uVar8;
    if ((int)uVar8 < 0) {
      uVar14 = _printk(&DAT_0016a524,"syna_tcm_v1_write",iVar7);
      return uVar14;
    }
    if (((bVar6 == false) && (uVar22 = *(uint *)(param_1 + 0x210), 0 < (int)uVar22)) &&
       (uVar3 = *(uint *)(param_1 + 0x214), 0 < (int)uVar3)) {
      if (uVar3 <= uVar22) {
        uVar3 = uVar22;
      }
      usleep_range_state(uVar22,uVar3,2);
    }
    uVar19 = uVar19 + uVar23;
    uVar20 = uVar20 - uVar23;
    uVar22 = uVar2;
  } while (uVar2 < uVar15);
  if (*(char *)(param_1 + 0x2c8) != '\x01') {
    uVar14 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    return uVar14;
  }
  *(undefined1 *)(param_1 + 0x2c8) = 0;
  mutex_unlock(param_1 + 0x298);
  mutex_unlock(param_1 + 0x348);
  if (-1 < (int)uVar8) {
    uVar19 = 0;
    do {
      if (param_6 == 0) {
        pcVar5 = *(code **)(*(long *)(param_1 + 0x48) + 0x30);
        uVar18 = *(uint *)(param_1 + 0x208) >> 2;
        if (pcVar5 == (code *)0x0) {
          uVar13 = __msecs_to_jiffies(*(uint *)(param_1 + 0x208));
          wait_for_completion_timeout(param_1 + 0x220,uVar13);
        }
        else {
          if (*(int *)(pcVar5 + -4) != 0xf989a7b) {
                    /* WARNING: Does not return */
            pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x145220);
            (*pcVar5)();
          }
          (*pcVar5)();
        }
      }
      else {
        uVar18 = param_6;
        if (0 < (int)param_6) {
          msleep(param_6);
        }
      }
      if (*(int *)(param_1 + 0x1f8) == 2) goto LAB_00145274;
      uVar19 = uVar18 + uVar19;
    } while ((((*(int *)(param_1 + 0x1f8) == 1) && (iVar7 = FUN_0014565c(param_1,0), iVar7 < 0)) ||
             (*(int *)(param_1 + 0x1f8) == 1)) && (uVar19 < *(uint *)(param_1 + 0x208)));
    if (*(int *)(param_1 + 0x1f8) != 0) {
      if (*(uint *)(param_1 + 0x208) <= uVar19) {
        uVar14 = _printk(&DAT_0016bdea,"syna_tcm_v1_write_message",param_2);
        return uVar14;
      }
      uVar14 = _printk(&DAT_0016c25a,"syna_tcm_v1_write_message",*(undefined1 *)(param_1 + 0x1fd),
                       param_2);
      return uVar14;
    }
LAB_00145274:
    uVar14 = 0;
  }
  if (param_5 != (undefined1 *)0x0) {
    *param_5 = *(undefined1 *)(param_1 + 0x1fe);
  }
  *(undefined1 *)(param_1 + 0x1fc) = 0;
  if (bVar1) {
    lVar17 = *(long *)(param_1 + 0x48);
    if (lVar17 == 0) {
      uVar14 = _printk(&DAT_0016d5c2,"syna_tcm_enable_irq");
      return uVar14;
    }
    if (*(long *)(lVar17 + 0x38) != 0) {
      mutex_lock(param_1 + 0x50);
      if (*(int *)(*(code **)(lVar17 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x1452c8);
        (*pcVar5)();
      }
      (**(code **)(lVar17 + 0x38))(lVar17,1);
      mutex_unlock(param_1 + 0x50);
    }
  }
  *(undefined4 *)(param_1 + 0x1f8) = 0;
  *(undefined4 *)(param_1 + 500) = 0;
  mutex_unlock(param_1 + 0x318);
  return uVar14;
}

