
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
  void *pvVar9;
  long lVar10;
  undefined1 *puVar11;
  undefined *puVar12;
  undefined8 uVar13;
  ulong uVar14;
  char cVar15;
  uint uVar16;
  ushort uVar17;
  int iVar18;
  long lVar19;
  uint uVar20;
  uint uVar21;
  uint uVar22;
  uint uVar23;
  uint uVar24;
  uint uVar25;
  
  if (param_1 == 0) {
    puVar11 = &DAT_00133fd6;
LAB_0011f358:
    _printk(puVar11,"syna_tcm_v1_write_message");
    return -0xf1;
  }
  if (*(long *)(param_1 + 0x48) == 0) {
    puVar11 = &DAT_0013d534;
    goto LAB_0011f358;
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
    lVar19 = *(long *)(param_1 + 0x48);
    if (lVar19 == 0) {
      _printk(&DAT_001389db,"syna_tcm_enable_irq");
      iVar8 = -0xf1;
    }
    else if (*(long *)(lVar19 + 0x38) == 0) {
      iVar8 = 0;
    }
    else {
      mutex_lock(param_1 + 0x50);
      if (*(int *)(*(code **)(lVar19 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x11ef68);
        (*pcVar6)();
      }
      iVar8 = (**(code **)(lVar19 + 0x38))(lVar19,0);
      mutex_unlock(param_1 + 0x50);
    }
    bVar1 = 0 < iVar8;
  }
  if (*(char *)(param_1 + 0x380) == '\x01') {
    uVar17 = *(ushort *)
              (&syna_tcm_crc16_crc16_table +
              (ulong)((param_4 ^ (uint)*(ushort *)
                                        (&syna_tcm_crc16_crc16_table + (ulong)(byte)~param_2 * 2) <<
                                 8 ^
                      (uint)*(ushort *)
                             (&syna_tcm_crc16_crc16_table +
                             (ulong)(param_4 & 0xff ^
                                    ((*(ushort *)
                                       (&syna_tcm_crc16_crc16_table + (ulong)(byte)~param_2 * 2) ^
                                     0xffffffff) & 0xff00) >> 8) * 2)) >> 8 & 0xff) * 2);
    uVar21 = (uint)uVar17 ^
             (uint)*(ushort *)
                    (&syna_tcm_crc16_crc16_table +
                    (ulong)(param_4 & 0xff ^
                           ((*(ushort *)(&syna_tcm_crc16_crc16_table + (ulong)(byte)~param_2 * 2) ^
                            0xffffffff) & 0xff00) >> 8) * 2) << 8;
    pbVar5 = param_3;
    for (uVar20 = param_4; uVar20 != 0; uVar20 = uVar20 - 1) {
      uVar17 = *(ushort *)
                (&syna_tcm_crc16_crc16_table + (ulong)((uint)*pbVar5 ^ (uVar21 & 0xff00) >> 8) * 2);
      uVar21 = (uint)uVar17 ^ uVar21 << 8;
      pbVar5 = pbVar5 + 1;
    }
    uVar20 = uVar21 >> 8 & 0xff;
    uVar21 = param_4 + 5;
  }
  else {
    uVar20 = 0;
    uVar17 = 0;
    uVar21 = param_4 + 3;
  }
  uVar22 = uVar21;
  if (*(uint *)(param_1 + 0x38) != 0) {
    uVar22 = *(uint *)(param_1 + 0x38);
  }
  uVar23 = uVar22;
  if (*(char *)(*(long *)(param_1 + 0x48) + 0x15) == '\x01') {
    uVar23 = 0;
    if (uVar22 == 0) {
      uVar16 = 0;
      goto LAB_0011f07c;
    }
    uVar24 = *(uint *)(*(long *)(param_1 + 0x48) + 0x18);
    uVar16 = 0;
    if (uVar24 == 0) goto LAB_0011f07c;
    uVar23 = 0;
    if (uVar24 != 0) {
      uVar23 = uVar22 / uVar24;
    }
    uVar23 = uVar23 * uVar24;
  }
  if (uVar23 == 0) {
    uVar16 = 0;
  }
  else {
    uVar16 = 0;
    if (uVar23 != 0) {
      uVar16 = ((uVar21 + uVar23) - 1) / uVar23;
    }
  }
LAB_0011f07c:
  if (uVar16 < 2) {
    uVar16 = 1;
  }
  if (*(char *)(param_1 + 0x2c8) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 0x298);
  uVar21 = 0;
  *(char *)(param_1 + 0x2c8) = *(char *)(param_1 + 0x2c8) + '\x01';
  uVar24 = 0;
  uVar22 = param_4;
  do {
    uVar2 = uVar24 + 1;
    iVar8 = -3;
    if (uVar24 != 0) {
      iVar8 = -1;
    }
    uVar25 = iVar8 + uVar23;
    if (uVar22 <= uVar23) {
      uVar25 = uVar22;
    }
    bVar7 = uVar2 == uVar16;
    if ((bVar7) && (lVar19 = *(long *)(param_1 + 0x48), (*(byte *)(lVar19 + 0x15) & 1) != 0)) {
      if (*(uint *)(lVar19 + 0x1c) < uVar25) {
        uVar3 = *(uint *)(lVar19 + 0x18);
        iVar8 = 0;
        if (uVar3 != 0) {
          uVar4 = 0;
          if (uVar3 != 0) {
            uVar4 = uVar25 / uVar3;
          }
          iVar8 = uVar4 * uVar3;
        }
        uVar25 = iVar8 - 1;
        bVar7 = uVar25 == uVar22;
        if (!bVar7) {
          uVar16 = uVar16 + 1;
        }
      }
      else {
        bVar7 = true;
      }
    }
    uVar14 = (ulong)*(uint *)(param_1 + 0x290);
    pvVar9 = *(void **)(param_1 + 0x288);
    if (*(uint *)(param_1 + 0x290) < uVar23) {
      if (pvVar9 != (void *)0x0) {
        lVar19 = syna_request_managed_device();
        if (lVar19 == 0) {
          _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        }
        else {
          devm_kfree(lVar19,pvVar9);
        }
      }
      lVar19 = syna_request_managed_device();
      if (((int)uVar23 < 1) || (lVar19 == 0)) {
        puVar12 = &DAT_0013ccb3;
        if (lVar19 != 0) {
          puVar12 = &DAT_00138e98;
        }
        _printk(puVar12,"syna_pal_mem_alloc");
        *(undefined8 *)(param_1 + 0x288) = 0;
      }
      else {
        pvVar9 = (void *)devm_kmalloc(lVar19,(ulong)uVar23,0xdc0);
        *(void **)(param_1 + 0x288) = pvVar9;
        if (pvVar9 != (void *)0x0) {
          *(uint *)(param_1 + 0x290) = uVar23;
          uVar14 = (ulong)uVar23;
          goto LAB_0011f1c4;
        }
      }
      _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar23);
      *(undefined8 *)(param_1 + 0x290) = 0;
      _printk(&DAT_00133352,"syna_tcm_v1_write");
      iVar8 = -0xf3;
      break;
    }
LAB_0011f1c4:
    memset(pvVar9,0,uVar14);
    *(undefined4 *)(param_1 + 0x294) = 0;
    if (uVar24 != 0) {
      **(byte **)(param_1 + 0x288) = 1;
      if ((param_3 + uVar21 != (byte *)0x0) &&
         (pvVar9 = (void *)(*(long *)(param_1 + 0x288) + 1), pvVar9 != (void *)0x0)) {
        uVar3 = param_4 - uVar21;
        uVar24 = *(int *)(param_1 + 0x290) - 1;
        if ((uVar25 <= uVar3) && (uVar25 <= uVar24)) {
          memcpy(pvVar9,param_3 + uVar21,(ulong)uVar25);
          iVar18 = 1;
          goto LAB_0011f280;
        }
LAB_0011f494:
        _printk(&DAT_0013a172,"syna_pal_mem_cpy",uVar3,uVar24,uVar25);
      }
LAB_0011f49c:
      puVar12 = &DAT_0013e236;
LAB_0011f4a4:
      _printk(puVar12,"syna_tcm_v1_write");
      iVar8 = -0x16;
      break;
    }
    **(byte **)(param_1 + 0x288) = param_2;
    *(char *)(*(long *)(param_1 + 0x288) + 1) = (char)param_4;
    *(char *)(*(long *)(param_1 + 0x288) + 2) = (char)(param_4 >> 8);
    if (param_4 != 0) {
      if ((param_3 == (byte *)0x0) ||
         (pvVar9 = (void *)(*(long *)(param_1 + 0x288) + 3), pvVar9 == (void *)0x0))
      goto LAB_0011f49c;
      uVar24 = *(int *)(param_1 + 0x290) - 3;
      uVar3 = param_4;
      if ((param_4 < uVar25) || (uVar24 < uVar25)) goto LAB_0011f494;
      memcpy(pvVar9,param_3,(ulong)uVar25);
    }
    iVar18 = 3;
LAB_0011f280:
    lVar19 = *(long *)(param_1 + 0x288);
    iVar18 = iVar18 + uVar25;
    if ((bVar7 & *(byte *)(param_1 + 0x380)) == 1) {
      uVar14 = (ulong)uVar21;
      if ((ushort *)(lVar19 + uVar14) != (ushort *)0x0) {
        uVar24 = *(int *)(param_1 + 0x290) - uVar21;
        if (1 < uVar24) {
          uVar21 = uVar21 + 2;
          iVar18 = iVar18 + 2;
          *(ushort *)(lVar19 + uVar14) = uVar17 & 0xff | (ushort)(uVar20 << 8);
          lVar19 = *(long *)(param_1 + 0x288);
          goto LAB_0011f2c4;
        }
        _printk(&DAT_0013a172,"syna_pal_mem_cpy",2,uVar24,2);
      }
      puVar12 = &DAT_0013e273;
      goto LAB_0011f4a4;
    }
LAB_0011f2c4:
    lVar10 = *(long *)(param_1 + 0x48);
    if (lVar10 == 0) {
      iVar8 = -0xf1;
      puVar12 = &DAT_001389db;
LAB_0011f3a0:
      _printk(puVar12,"syna_tcm_write");
LAB_0011f3ac:
      _printk(&DAT_00135a11,"syna_tcm_v1_write",iVar18);
      break;
    }
    pcVar6 = *(code **)(lVar10 + 0x28);
    if (pcVar6 == (code *)0x0) {
      iVar8 = -0xf5;
      puVar12 = &DAT_00138a0e;
      goto LAB_0011f3a0;
    }
    if (*(int *)(pcVar6 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x11f2f0);
      (*pcVar6)();
    }
    iVar8 = (*pcVar6)(lVar10,lVar19,iVar18);
    if (iVar8 < 0) goto LAB_0011f3ac;
    if (((bVar7 == false) && (uVar24 = *(uint *)(param_1 + 0x210), 0 < (int)uVar24)) &&
       (uVar3 = *(uint *)(param_1 + 0x214), 0 < (int)uVar3)) {
      if (uVar3 <= uVar24) {
        uVar3 = uVar24;
      }
      usleep_range_state(uVar24,uVar3,2);
    }
    uVar21 = uVar21 + uVar25;
    uVar22 = uVar22 - uVar25;
    uVar24 = uVar2;
  } while (uVar2 < uVar16);
  if (*(char *)(param_1 + 0x2c8) == '\x01') {
    cVar15 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar15 = *(char *)(param_1 + 0x2c8) + -1;
  }
  *(char *)(param_1 + 0x2c8) = cVar15;
  mutex_unlock(param_1 + 0x298);
  mutex_unlock(param_1 + 0x348);
  if (-1 < iVar8) {
    uVar21 = 0;
    do {
      if (param_6 == 0) {
        pcVar6 = *(code **)(*(long *)(param_1 + 0x48) + 0x30);
        uVar20 = *(uint *)(param_1 + 0x208) >> 2;
        if (pcVar6 == (code *)0x0) {
          uVar13 = __msecs_to_jiffies(*(uint *)(param_1 + 0x208));
          wait_for_completion_timeout(param_1 + 0x220,uVar13);
        }
        else {
          if (*(int *)(pcVar6 + -4) != 0xf989a7b) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x11f554);
            (*pcVar6)();
          }
          (*pcVar6)();
        }
      }
      else {
        uVar20 = param_6;
        if (0 < (int)param_6) {
          msleep(param_6);
        }
      }
      if (*(int *)(param_1 + 0x1f8) == 2) goto LAB_0011f5a8;
      uVar21 = uVar20 + uVar21;
    } while ((((*(int *)(param_1 + 0x1f8) == 1) &&
              (iVar8 = syna_tcm_v1_read_message(param_1,0), iVar8 < 0)) ||
             (*(int *)(param_1 + 0x1f8) == 1)) && (uVar21 < *(uint *)(param_1 + 0x208)));
    if (*(int *)(param_1 + 0x1f8) == 0) {
LAB_0011f5a8:
      iVar8 = 0;
    }
    else if (uVar21 < *(uint *)(param_1 + 0x208)) {
      _printk(&DAT_001376e5,"syna_tcm_v1_write_message",*(undefined1 *)(param_1 + 0x1fd),param_2);
      iVar8 = -0xf2;
    }
    else {
      _printk(&DAT_00137281,"syna_tcm_v1_write_message",param_2);
      iVar8 = -0xf4;
    }
  }
  if (param_5 != (undefined1 *)0x0) {
    *param_5 = *(undefined1 *)(param_1 + 0x1fe);
  }
  *(undefined1 *)(param_1 + 0x1fc) = 0;
  if (bVar1) {
    lVar19 = *(long *)(param_1 + 0x48);
    if (lVar19 == 0) {
      _printk(&DAT_001389db,"syna_tcm_enable_irq");
    }
    else if (*(long *)(lVar19 + 0x38) != 0) {
      mutex_lock(param_1 + 0x50);
      if (*(int *)(*(code **)(lVar19 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x11f5fc);
        (*pcVar6)();
      }
      (**(code **)(lVar19 + 0x38))(lVar19,1);
      mutex_unlock(param_1 + 0x50);
    }
  }
  *(undefined4 *)(param_1 + 0x1f8) = 0;
  *(undefined4 *)(param_1 + 500) = 0;
  mutex_unlock(param_1 + 0x318);
  return iVar8;
}

