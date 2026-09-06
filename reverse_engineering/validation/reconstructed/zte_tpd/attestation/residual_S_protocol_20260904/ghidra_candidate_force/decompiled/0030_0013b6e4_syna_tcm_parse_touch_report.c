
void syna_tcm_parse_touch_report(long param_1,long param_2,uint param_3,uint *param_4)

{
  uint *__s;
  uint uVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  char cVar6;
  byte bVar7;
  uint uVar8;
  uint uVar9;
  bool bVar10;
  ulong uVar11;
  ulong uVar12;
  bool bVar13;
  int iVar14;
  undefined1 *puVar15;
  uint uVar16;
  uint uVar17;
  uint uVar18;
  ulong uVar19;
  ulong uVar20;
  undefined *puVar21;
  uint uVar22;
  code *pcVar23;
  uint uVar24;
  uint uVar25;
  undefined2 uVar26;
  uint uVar27;
  uint uVar28;
  long lVar29;
  undefined1 uVar30;
  ulong uVar31;
  uint uVar32;
  undefined8 local_98;
  uint local_70;
  uint uStack_6c;
  long local_68;
  
  lVar29 = sp_el0;
  local_68 = *(long *)(lVar29 + 0x710);
  if (param_1 == 0) {
    puVar15 = &DAT_00168a84;
  }
  else if (param_2 == 0) {
    puVar15 = &DAT_0016ca62;
  }
  else if (param_4 == (uint *)0x0) {
    puVar15 = &DAT_0016e9da;
  }
  else {
    if (*(int *)(param_1 + 0x18) != 0) {
      if (*(int *)(param_1 + 0x38c) == 1) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016ca86,"syna_tcm_parse_touch_report");
      }
      lVar29 = *(long *)(param_1 + 400);
      __s = param_4 + 2;
      if ((lVar29 == 0) || (uVar2 = *(uint *)(param_1 + 0x19c), uVar2 == 0)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016d22a,"syna_tcm_parse_touch_report");
      }
      memset(__s,0,0x208);
      uVar3 = *(uint *)(param_1 + 0x1d8);
      iVar4 = *(int *)(param_1 + 0x1e4);
      iVar5 = *(int *)(param_1 + 0x1e0);
      uVar16 = 0;
      local_98 = 0;
      uVar8 = param_3 << 3;
      local_70 = 0;
      uStack_6c = 0;
      uVar12 = 0;
      uVar25 = 0;
      bVar13 = false;
LAB_0013b7d0:
      bVar10 = bVar13;
      uVar32 = uVar25;
      uVar19 = uVar12;
      uVar11 = local_98;
      uVar31 = uVar19 & 0xffffffff;
LAB_0013b7dc:
      uVar24 = uStack_6c;
      if (uVar2 <= uStack_6c) {
switchD_0013b894_caseD_0:
        uStack_6c = uVar24;
LAB_0013cf8c:
        lVar29 = sp_el0;
        if (*(long *)(lVar29 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
          __stack_chk_fail(local_70);
        }
        return;
      }
      uVar20 = (ulong)uStack_6c + 1;
      uVar24 = (uint)uVar20;
      cVar6 = *(char *)(lVar29 + (ulong)uStack_6c);
      uVar12 = uVar31;
      uVar25 = uVar32;
      uVar18 = local_70;
      uVar22 = uVar3;
      bVar13 = bVar10;
      switch(cVar6) {
      case '\0':
        goto switchD_0013b894_caseD_0;
      case '\x01':
        bVar13 = true;
        goto joined_r0x0013bac4;
      case '\x02':
        bVar13 = false;
joined_r0x0013bac4:
        uVar12 = uVar20;
        uVar25 = 0;
        uStack_6c = uVar24;
        if ((uint)(iVar5 + iVar4) < uVar8) goto LAB_0013b7d0;
        goto LAB_0013b7c4;
      case '\x03':
        uVar28 = local_70 + iVar4;
        uStack_6c = uVar24;
        if (uVar8 <= uVar28 && uVar28 != uVar8) goto LAB_0013cf8c;
        if (uVar28 == uVar8) goto LAB_0013b7c4;
        if (bVar10) {
          if ((local_98 & 0x100000000) != 0) {
            uVar16 = uVar16 + 1;
            local_98 = CONCAT44(1,(uint)local_98);
            uVar25 = uVar32 + 1;
            bVar13 = true;
            if (uVar16 < (uint)local_98) {
              local_98 = CONCAT44(1,(uint)local_98);
              uVar12 = uVar19 & 0xffffffff;
              uStack_6c = (uint)uVar19;
            }
            goto LAB_0013b7d0;
          }
          bVar13 = true;
          local_98 = local_98 & 0xffffffff;
          if (uVar8 <= local_70) goto LAB_0013b7d0;
          local_98 = uVar11 & 0xffffffff;
        }
        else {
          uVar25 = uVar32 + 1;
          bVar13 = false;
          if (*(uint *)(param_1 + 0x18) <= uVar32 + 1) goto LAB_0013b7d0;
          bVar13 = false;
        }
        uVar25 = uVar32 + 1;
        uStack_6c = (uint)uVar19;
        goto LAB_0013b7d0;
      case '\x04':
        uVar18 = local_70 + 7 & 0xfffffff8;
        uVar22 = uVar24;
        goto LAB_0013b7c4;
      case '\x05':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x87] = uVar28;
        break;
      case '\x06':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar32 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar32 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar28) {
            uVar22 = uVar22 + 1;
            uVar28 = uVar25;
            if (7 < uVar25) {
              uVar28 = 8;
            }
            uVar32 = (0xffU >> (ulong)(8 - uVar28 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar32;
          }
        }
        *param_4 = uVar32;
        break;
      case '\a':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar30 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          uVar30 = (undefined1)uVar17;
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
            uVar30 = (undefined1)uVar17;
          }
        }
        *(undefined1 *)(__s + (ulong)uVar32 * 0xd) = uVar30;
        goto LAB_0013b7c4;
      case '\b':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar17 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
          }
        }
        __s[(ulong)uVar32 * 0xd + 1] = uVar17;
        goto LAB_0013b7c4;
      case '\t':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar17 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
          }
        }
        __s[(ulong)uVar32 * 0xd + 2] = uVar17;
        goto LAB_0013b7c4;
      case '\n':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar17 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
          }
        }
        __s[(ulong)uVar32 * 0xd + 5] = uVar17;
        goto LAB_0013b7c4;
      case '\v':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar17 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
          }
        }
        __s[(ulong)uVar32 * 0xd + 3] = uVar17;
        goto LAB_0013b7c4;
      case '\f':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar17 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
          }
        }
        __s[(ulong)uVar32 * 0xd + 4] = uVar17;
        goto LAB_0013b7c4;
      case '\r':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar17 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
          }
        }
        __s[(ulong)uVar32 * 0xd + 6] = uVar17;
        goto LAB_0013b7c4;
      case '\x0e':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar17 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
          }
        }
        __s[(ulong)uVar32 * 0xd + 7] = uVar17;
        goto LAB_0013b7c4;
      case '\x0f':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x88] = uVar28;
        break;
      case '\x10':
        pcVar23 = *(code **)(param_1 + 0x3d0);
        if (pcVar23 == (code *)0x0) {
          uStack_6c = uStack_6c + 2;
          bVar7 = *(byte *)(lVar29 + uVar20);
          if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00168dd4,"syna_tcm_get_touch_data",(uint)bVar7);
          }
          uVar32 = (uint)bVar7;
          if (uVar8 < local_70 + uVar32) {
            uVar18 = 0;
          }
          else {
            uVar22 = local_70 >> 3;
            uVar24 = 8 - (local_70 & 7);
            if (uVar32 <= uVar24) {
              uVar24 = (uint)bVar7;
            }
            uVar18 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar24 & 0x1f);
            for (uVar24 = bVar7 - uVar24; uVar24 != 0; uVar24 = uVar24 - uVar28) {
              uVar22 = uVar22 + 1;
              uVar28 = uVar24;
              if (7 < uVar24) {
                uVar28 = 8;
              }
              uVar18 = (0xffU >> (ulong)(8 - uVar28 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar22)) << (ulong)(uVar32 - uVar24 & 0x1f)
                       | uVar18;
            }
          }
          iVar14 = 0;
          param_4[0x84] = uVar18;
          local_70 = local_70 + uVar32;
        }
        else {
          if (*(int *)(pcVar23 + -4) != 0x5464818f) {
                    /* WARNING: Does not return */
            pcVar23 = (code *)SoftwareBreakpoint(0x822a,0x13b950);
            uStack_6c = uVar24;
            (*pcVar23)();
          }
          uStack_6c = uVar24;
          iVar14 = (*pcVar23)(0x10,lVar29,&uStack_6c,param_2,&local_70,param_3,
                              *(undefined8 *)(param_1 + 0x3c8));
        }
        if (iVar14 < 0) {
          puVar21 = &DAT_0017088a;
LAB_0013d318:
                    /* WARNING: Subroutine does not return */
          _printk(puVar21,"syna_tcm_parse_touch_report");
        }
        goto LAB_0013b7d0;
      case '\x11':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x89] = uVar28;
        break;
      case '\x12':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x8a] = uVar28;
        break;
      case '\x13':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x8b] = uVar28;
        break;
      case '\x14':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x8c] = uVar28;
        break;
      case '\x15':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x8d] = uVar28;
        break;
      case '\x16':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x8e] = uVar28;
        break;
      case '\x17':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x8f] = uVar28;
        break;
      case '\x18':
        uStack_6c = uStack_6c + 2;
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          param_4[1] = 0;
          goto LAB_0013c21c;
        }
        uVar28 = local_70 >> 3;
        uVar24 = 8 - (local_70 & 7);
        uVar17 = (uint)bVar7;
        if (uVar17 <= uVar24) {
          uVar24 = uVar17;
        }
        uVar27 = (uint)(*(byte *)(param_2 + (ulong)uVar28) >> (ulong)(local_70 & 7)) &
                 0xffU >> (ulong)(8 - uVar24 & 0x1f);
        for (uVar24 = uVar17 - uVar24; uVar24 != 0; uVar24 = uVar24 - uVar1) {
          uVar28 = uVar28 + 1;
          uVar1 = uVar24;
          if (7 < uVar24) {
            uVar1 = 8;
          }
          uVar27 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar28))
                   << (ulong)(uVar17 - uVar24 & 0x1f) | uVar27;
        }
        param_4[1] = uVar27;
        local_98 = CONCAT44(1,uVar27);
        local_70 = uVar18;
        if (uVar27 == 0) {
LAB_0013c21c:
          local_98 = 0x100000000;
LAB_0013b7c4:
          uStack_6c = uVar22;
          local_70 = uVar18;
          uVar12 = uVar31;
          uVar25 = uVar32;
          bVar13 = bVar10;
        }
        goto LAB_0013b7d0;
      case '\x19':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x90] = uVar28;
        break;
      case '\x1a':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x91] = uVar28;
        break;
      case '\x1b':
        goto switchD_0013b894_caseD_1b;
      case '\x1c':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x92] = uVar28;
        break;
      case '\x1d':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x93] = uVar28;
        break;
      case '\x1e':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x94] = uVar28;
        break;
      default:
        pcVar23 = *(code **)(param_1 + 0x3c0);
        uStack_6c = uVar24;
        if (pcVar23 != (code *)0x0) goto code_r0x0013b808;
        goto LAB_0013b84c;
      }
      uStack_6c = uStack_6c + 2;
      uVar25 = uVar32;
      local_70 = uVar24;
      goto LAB_0013b7d0;
    }
    puVar15 = &DAT_00169956;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar15,"syna_tcm_parse_touch_report");
code_r0x0013b808:
  if (*(int *)(pcVar23 + -4) != 0x5464818f) {
                    /* WARNING: Does not return */
    pcVar23 = (code *)SoftwareBreakpoint(0x8229,0x13b83c);
    (*pcVar23)();
  }
  iVar14 = (*pcVar23)(cVar6,lVar29,&uStack_6c,param_2,&local_70,param_3,
                      *(undefined8 *)(param_1 + 0x3b8));
  if (iVar14 < 0) goto code_r0x0013b848;
  goto LAB_0013b7dc;
code_r0x0013b848:
  uVar20 = (ulong)uStack_6c;
LAB_0013b84c:
  if (cVar6 != -0x36) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016a74a,"syna_tcm_parse_touch_report",cVar6,
            *(undefined1 *)(lVar29 + (uVar20 & 0xffffffff)));
  }
  local_70 = local_70 + *(byte *)(lVar29 + (uVar20 & 0xffffffff));
  uStack_6c = (int)uVar20 + 1;
  goto LAB_0013b7d0;
switchD_0013b894_caseD_1b:
  pcVar23 = *(code **)(param_1 + 0x3d0);
  if (pcVar23 == (code *)0x0) {
    uStack_6c = uStack_6c + 2;
    uVar18 = local_70 + *(byte *)(lVar29 + uVar20);
    uVar22 = uStack_6c;
    if (uVar18 >> 3 <= param_3) {
      if (local_70 < uVar18) {
        uVar25 = local_70 + 0x10;
        uVar24 = local_70 & 7;
        if (uVar8 < uVar25) {
          uVar26 = 0;
        }
        else {
          uVar27 = local_70 >> 3;
          uVar28 = (local_70 | 0xfffffff8) + 0x10;
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar27) >> (ulong)uVar24);
          do {
            uVar27 = uVar27 + 1;
            uVar1 = uVar28;
            if (7 < uVar28) {
              uVar1 = 8;
            }
            uVar9 = 0x10 - uVar28;
            uVar28 = uVar28 - uVar1;
            uVar17 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar27))
                     << (ulong)(uVar9 & 0x1f) | uVar17;
            uVar26 = (undefined2)uVar17;
          } while (uVar28 != 0);
        }
        *(undefined2 *)(param_4 + 0x85) = uVar26;
        if (uVar25 < uVar18) {
          uVar28 = local_70 + 0x20;
          if (uVar8 < uVar28) {
            uVar26 = 0;
          }
          else {
            uVar25 = uVar25 >> 3;
            uVar17 = (local_70 | 0xfffffff8) + 0x10;
            uVar27 = (uint)(*(byte *)(param_2 + (ulong)uVar25) >> (ulong)uVar24);
            do {
              uVar25 = uVar25 + 1;
              uVar1 = uVar17;
              if (7 < uVar17) {
                uVar1 = 8;
              }
              uVar9 = 0x10 - uVar17;
              uVar17 = uVar17 - uVar1;
              uVar27 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar25)) << (ulong)(uVar9 & 0x1f) | uVar27;
              uVar26 = (undefined2)uVar27;
            } while (uVar17 != 0);
          }
          *(undefined2 *)((long)param_4 + 0x216) = uVar26;
          if (uVar28 < uVar18) {
            uVar25 = local_70 + 0x30;
            if (uVar8 < uVar25) {
              uVar26 = 0;
            }
            else {
              uVar28 = uVar28 >> 3;
              uVar17 = (local_70 | 0xfffffff8) + 0x10;
              uVar27 = (uint)(*(byte *)(param_2 + (ulong)uVar28) >> (ulong)uVar24);
              do {
                uVar28 = uVar28 + 1;
                uVar1 = uVar17;
                if (7 < uVar17) {
                  uVar1 = 8;
                }
                uVar9 = 0x10 - uVar17;
                uVar17 = uVar17 - uVar1;
                uVar27 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                         (uint)*(byte *)(param_2 + (ulong)uVar28)) << (ulong)(uVar9 & 0x1f) | uVar27
                ;
                uVar26 = (undefined2)uVar27;
              } while (uVar17 != 0);
            }
            *(undefined2 *)(param_4 + 0x86) = uVar26;
            if (uVar25 < uVar18) {
              if (uVar8 < local_70 + 0x40) {
                uVar26 = 0;
              }
              else {
                uVar25 = uVar25 >> 3;
                uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar25) >> (ulong)uVar24);
                uVar24 = (local_70 | 0xfffffff8) + 0x10;
                do {
                  uVar25 = uVar25 + 1;
                  uVar17 = uVar24;
                  if (7 < uVar24) {
                    uVar17 = 8;
                  }
                  uVar27 = 0x10 - uVar24;
                  uVar24 = uVar24 - uVar17;
                  uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) &
                           (uint)*(byte *)(param_2 + (ulong)uVar25)) << (ulong)(uVar27 & 0x1f) |
                           uVar28;
                  uVar26 = (undefined2)uVar28;
                } while (uVar24 != 0);
              }
              *(undefined2 *)((long)param_4 + 0x21a) = uVar26;
            }
          }
        }
      }
      if ((7 < param_4[0x84]) || ((1 << (ulong)(param_4[0x84] & 0x1f) & 199U) == 0)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016f574,"syna_tcm_get_gesture_data");
      }
    }
    goto LAB_0013b7c4;
  }
  if (*(int *)(pcVar23 + -4) != 0x5464818f) {
                    /* WARNING: Does not return */
    pcVar23 = (code *)SoftwareBreakpoint(0x822a,0x13b8f4);
    uStack_6c = uVar24;
    (*pcVar23)();
  }
  uStack_6c = uVar24;
  iVar14 = (*pcVar23)(0x1b,lVar29,&uStack_6c,param_2,&local_70,param_3,
                      *(undefined8 *)(param_1 + 0x3c8));
  if (-1 < iVar14) goto LAB_0013b7d0;
  puVar21 = &DAT_0016ad7e;
  goto LAB_0013d318;
}

