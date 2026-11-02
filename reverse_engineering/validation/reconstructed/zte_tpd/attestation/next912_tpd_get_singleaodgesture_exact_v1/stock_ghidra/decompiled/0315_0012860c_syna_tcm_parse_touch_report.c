
void syna_tcm_parse_touch_report(long param_1,long param_2,uint param_3,uint *param_4)

{
  uint *__s;
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  char cVar5;
  byte bVar6;
  uint uVar7;
  uint uVar8;
  long lVar9;
  bool bVar10;
  ulong uVar11;
  bool bVar12;
  int iVar13;
  ulong uVar14;
  undefined *puVar15;
  uint uVar16;
  ulong uVar17;
  ulong uVar18;
  uint uVar19;
  uint uVar20;
  ulong uVar21;
  code *pcVar22;
  uint uVar23;
  uint uVar24;
  uint uVar25;
  undefined2 uVar26;
  uint uVar27;
  uint uVar28;
  undefined1 *puVar29;
  uint uVar30;
  ulong uVar31;
  uint uVar32;
  undefined8 local_98;
  undefined8 local_70;
  long local_68;
  
  lVar9 = sp_el0;
  local_68 = *(long *)(lVar9 + 0x710);
  if (param_1 == 0) {
    puVar15 = &DAT_00133fd6;
  }
  else if (param_2 == 0) {
    puVar15 = &DAT_00137ecb;
  }
  else if (param_4 == (uint *)0x0) {
    puVar15 = &DAT_00139da1;
  }
  else {
    if (*(int *)(param_1 + 0x18) != 0) {
      if (*(int *)(param_1 + 0x38c) != 1) {
        puVar29 = *(undefined1 **)(param_1 + 400);
        __s = param_4 + 2;
        if ((puVar29 == (undefined1 *)0x0) || (uVar32 = *(uint *)(param_1 + 0x19c), uVar32 == 0)) {
          _printk(&DAT_00138652,"syna_tcm_parse_touch_report");
          uVar32 = 0x15;
          puVar29 = &default_custom_touch_format;
        }
        memset(__s,0,0x208);
        uVar2 = *(undefined4 *)(param_1 + 0x1d8);
        iVar3 = *(int *)(param_1 + 0x1e4);
        uVar30 = 0;
        iVar4 = *(int *)(param_1 + 0x1e0);
        uVar16 = 0;
        local_98 = 0;
        uVar7 = param_3 << 3;
        local_70 = 0;
        uVar18 = 0;
        uVar24 = 0;
        bVar12 = false;
LAB_001286f8:
        bVar10 = bVar12;
        uVar20 = uVar24;
        uVar17 = uVar18;
        uVar11 = local_98;
        uVar31 = uVar17 & 0xffffffff;
LAB_00128704:
        uVar14 = local_70;
        uVar25 = local_70._4_4_;
        uVar21 = (ulong)local_70._4_4_;
        if (uVar32 <= local_70._4_4_) {
switchD_001287bc_caseD_0:
          uVar14 = local_70 & 0xffffffff;
          goto LAB_00129eb4;
        }
        uVar18 = uVar21 + 1;
        local_70 = CONCAT44((int)uVar18,(uint)local_70);
        cVar5 = puVar29[uVar21];
        uVar24 = uVar20;
        bVar12 = bVar10;
        switch(cVar5) {
        case '\0':
          goto switchD_001287bc_caseD_0;
        case '\x01':
          bVar12 = true;
          goto joined_r0x001289ec;
        case '\x02':
          bVar12 = false;
joined_r0x001289ec:
          uVar24 = 0;
          if (uVar7 <= (uint)(iVar4 + iVar3)) {
LAB_001286e4:
            local_70 = CONCAT44(uVar2,(uint)local_70);
            uVar18 = uVar31;
            uVar24 = uVar20;
            bVar12 = bVar10;
          }
          goto LAB_001286f8;
        case '\x03':
          uVar14 = uVar14 & 0xffffffff;
          uVar25 = (uint)local_70 + iVar3;
          if (uVar7 <= uVar25 && uVar25 != uVar7) goto LAB_00129eb4;
          if (uVar25 == uVar7) goto LAB_001286e4;
          if (bVar10) {
            if ((local_98 & 0x100000000) != 0) {
              uVar16 = uVar16 + 1;
              local_98 = CONCAT44(1,(uint)local_98);
              uVar18 = uVar31;
              uVar24 = uVar20 + 1;
              bVar12 = true;
              if (uVar16 < (uint)local_98) {
                local_70 = CONCAT44((int)uVar17,(uint)local_70);
                local_98 = CONCAT44(1,(uint)local_98);
                uVar18 = uVar17 & 0xffffffff;
              }
              goto LAB_001286f8;
            }
            bVar12 = true;
            local_98 = local_98 & 0xffffffff;
            uVar18 = uVar31;
            if (uVar7 <= (uint)local_70) goto LAB_001286f8;
            local_98 = uVar11 & 0xffffffff;
          }
          else {
            uVar18 = uVar31;
            uVar24 = uVar20 + 1;
            bVar12 = false;
            if (*(uint *)(param_1 + 0x18) <= uVar20 + 1) goto LAB_001286f8;
            bVar12 = false;
          }
          local_70 = CONCAT44((int)uVar17,(uint)local_70);
          uVar18 = uVar31;
          uVar24 = uVar20 + 1;
          goto LAB_001286f8;
        case '\x04':
          uVar20 = (uint)local_70 + 7 & 0xfffffff8;
          goto LAB_001288f8;
        case '\x05':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00135bea;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x87] = uVar30;
          break;
        case '\x06':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00134e9e;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar25 = (uint)local_70 >> 3;
            uVar20 = 8 - ((uint)local_70 & 7);
            uVar19 = (uint)bVar6;
            if (uVar19 <= uVar20) {
              uVar20 = uVar19;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar25) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar20 & 0x1f);
            for (uVar20 = uVar19 - uVar20; uVar20 != 0; uVar20 = uVar20 - uVar28) {
              uVar25 = uVar25 + 1;
              uVar28 = uVar20;
              if (7 < uVar20) {
                uVar28 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar28 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar25)) << (ulong)(uVar19 - uVar20 & 0x1f)
                       | uVar30;
            }
          }
          *param_4 = uVar30;
          uVar20 = uVar30;
          break;
        case '\a':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013b363;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          *(char *)(__s + (ulong)uVar20 * 0xd) = (char)uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\b':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013d096;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          __s[(ulong)uVar20 * 0xd + 1] = uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\t':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00135529;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          __s[(ulong)uVar20 * 0xd + 2] = uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\n':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00135556;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          __s[(ulong)uVar20 * 0xd + 5] = uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\v':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00133532;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          __s[(ulong)uVar20 * 0xd + 3] = uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\f':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013d6d8;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          __s[(ulong)uVar20 * 0xd + 4] = uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\r':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00133bb2;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          __s[(ulong)uVar20 * 0xd + 6] = uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\x0e':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013355c;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          __s[(ulong)uVar20 * 0xd + 7] = uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\x0f':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00133be0;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x88] = uVar30;
          break;
        case '\x10':
          pcVar22 = *(code **)(param_1 + 0x3d0);
          if (pcVar22 == (code *)0x0) {
            local_70._4_4_ = uVar25 + 2;
            bVar6 = puVar29[uVar18];
            if (bVar6 - 0x21 < 0xffffffe0) {
              _printk(&DAT_00134319,"syna_tcm_get_touch_data",(uint)bVar6);
              uVar14 = 0xffffff0f;
              uVar20 = (uint)local_70 + bVar6;
            }
            else {
              uVar20 = (uint)local_70 + bVar6;
              if (uVar7 < uVar20) {
                uVar30 = 0;
              }
              else {
                uVar19 = (uint)local_70 >> 3;
                uVar25 = 8 - ((uint)local_70 & 7);
                uVar28 = (uint)bVar6;
                if (uVar28 <= uVar25) {
                  uVar25 = uVar28;
                }
                uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                         0xffU >> (ulong)(8 - uVar25 & 0x1f);
                for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
                  uVar19 = uVar19 + 1;
                  uVar23 = uVar25;
                  if (7 < uVar25) {
                    uVar23 = 8;
                  }
                  uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                           (uint)*(byte *)(param_2 + (ulong)uVar19)) <<
                           (ulong)(uVar28 - uVar25 & 0x1f) | uVar30;
                }
              }
              uVar14 = 0;
            }
            local_70 = CONCAT44(local_70._4_4_,uVar20);
            param_4[0x84] = uVar30;
          }
          else {
            if (*(int *)(pcVar22 + -4) != 0x5464818f) {
                    /* WARNING: Does not return */
              pcVar22 = (code *)SoftwareBreakpoint(0x822a,0x128878);
              (*pcVar22)();
            }
            uVar14 = (*pcVar22)(0x10,puVar29,(long)&local_70 + 4,param_2,&local_70,param_3,
                                *(undefined8 *)(param_1 + 0x3c8));
          }
          uVar18 = uVar31;
          if ((int)uVar14 < 0) {
            puVar15 = &DAT_0013bbdb;
LAB_0012a240:
            uVar14 = uVar14 & 0xffffffff;
            _printk(puVar15,"syna_tcm_parse_touch_report");
            goto LAB_00129eb4;
          }
          goto LAB_001286f8;
        case '\x11':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_001378a4;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x89] = uVar30;
          break;
        case '\x12':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013358a;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x8a] = uVar30;
          break;
        case '\x13':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00135c10;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x8b] = uVar30;
          break;
        case '\x14':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00138688;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x8c] = uVar30;
          break;
        case '\x15':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00133c0c;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x8d] = uVar30;
          break;
        case '\x16':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00133c37;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x8e] = uVar30;
          break;
        case '\x17':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_001378ca;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x8f] = uVar30;
          break;
        case '\x18':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013248d;
            goto LAB_00129ea4;
          }
          uVar20 = (uint)local_70 + bVar6;
          if (uVar7 < uVar20) {
            local_70 = (ulong)uVar20;
            param_4[1] = 0;
            goto LAB_00129144;
          }
          uVar28 = (uint)local_70 >> 3;
          uVar19 = 8 - ((uint)local_70 & 7);
          uVar23 = (uint)bVar6;
          if (uVar23 <= uVar19) {
            uVar19 = uVar23;
          }
          uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar28) >> (ulong)((uint)local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar19 & 0x1f);
          for (uVar19 = uVar23 - uVar19; uVar19 != 0; uVar19 = uVar19 - uVar27) {
            uVar28 = uVar28 + 1;
            uVar27 = uVar19;
            if (7 < uVar19) {
              uVar27 = 8;
            }
            uVar30 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar28)
                     ) << (ulong)(uVar23 - uVar19 & 0x1f) | uVar30;
          }
          local_70 = CONCAT44(uVar25 + 2,uVar20);
          param_4[1] = uVar30;
          local_98 = CONCAT44(1,uVar30);
          uVar18 = uVar31;
          if (uVar30 == 0) {
LAB_00129144:
            uVar30 = 0;
            local_70 = CONCAT44(uVar2,(uint)local_70);
            local_98 = 0x100000000;
            uVar18 = uVar31;
          }
          goto LAB_001286f8;
        case '\x19':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013d0c3;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x90] = uVar30;
          break;
        case '\x1a':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_001378ef;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x91] = uVar30;
          break;
        case '\x1b':
          goto switchD_001287bc_caseD_1b;
        case '\x1c':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00134342;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x92] = uVar30;
          break;
        case '\x1d':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013c345;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x93] = uVar30;
          break;
        case '\x1e':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013ca11;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x94] = uVar30;
          break;
        default:
          pcVar22 = *(code **)(param_1 + 0x3c0);
          if (pcVar22 != (code *)0x0) goto code_r0x00128730;
          goto LAB_00128774;
        }
        local_70 = CONCAT44(local_70._4_4_,uVar24);
        uVar18 = uVar31;
        uVar24 = uVar20;
        goto LAB_001286f8;
      }
      _printk(&DAT_00137eee,"syna_tcm_parse_touch_report");
      uVar14 = 0;
      goto LAB_00129eb4;
    }
    puVar15 = &DAT_00134e71;
  }
LAB_00129ea4:
  _printk(puVar15,"syna_tcm_parse_touch_report");
  uVar14 = 0xffffff0f;
LAB_00129eb4:
  lVar9 = sp_el0;
  if (*(long *)(lVar9 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar14);
code_r0x00128730:
  if (*(int *)(pcVar22 + -4) != 0x5464818f) {
                    /* WARNING: Does not return */
    pcVar22 = (code *)SoftwareBreakpoint(0x8229,0x128764);
    (*pcVar22)();
  }
  iVar13 = (*pcVar22)(cVar5,puVar29,(long)&local_70 + 4,param_2,&local_70,param_3,
                      *(undefined8 *)(param_1 + 0x3b8));
  if (iVar13 < 0) goto code_r0x00128770;
  goto LAB_00128704;
code_r0x00128770:
  uVar18 = local_70 >> 0x20;
LAB_00128774:
  if (cVar5 != -0x36) {
    _printk(&DAT_00135c32,"syna_tcm_parse_touch_report",cVar5,puVar29[uVar18 & 0xffffffff]);
    uVar18 = local_70 >> 0x20;
  }
  local_70 = CONCAT44((int)uVar18 + 1,(uint)local_70 + (byte)puVar29[uVar18 & 0xffffffff]);
  uVar18 = uVar31;
  goto LAB_001286f8;
switchD_001287bc_caseD_1b:
  pcVar22 = *(code **)(param_1 + 0x3d0);
  if (pcVar22 != (code *)0x0) {
    if (*(int *)(pcVar22 + -4) != 0x5464818f) {
                    /* WARNING: Does not return */
      pcVar22 = (code *)SoftwareBreakpoint(0x822a,0x12881c);
      (*pcVar22)();
    }
    uVar14 = (*pcVar22)(0x1b,puVar29,(long)&local_70 + 4,param_2,&local_70,param_3,
                        *(undefined8 *)(param_1 + 0x3c8));
    uVar18 = uVar31;
    if (-1 < (int)uVar14) goto LAB_001286f8;
    puVar15 = &DAT_0013624f;
    goto LAB_0012a240;
  }
  local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
  bVar6 = puVar29[uVar18];
  uVar20 = (uint)local_70 + bVar6;
  if (uVar20 >> 3 <= param_3) {
    if ((uint)local_70 < uVar20) {
      uVar25 = (uint)local_70 + 0x10;
      uVar19 = (uint)local_70 & 7;
      if (uVar7 < uVar25) {
        uVar26 = 0;
      }
      else {
        uVar27 = (uint)local_70 >> 3;
        uVar28 = ((uint)local_70 | 0xfffffff8) + 0x10;
        uVar23 = (uint)(*(byte *)(param_2 + (ulong)uVar27) >> (ulong)uVar19);
        do {
          uVar27 = uVar27 + 1;
          uVar1 = uVar28;
          if (7 < uVar28) {
            uVar1 = 8;
          }
          uVar8 = 0x10 - uVar28;
          uVar28 = uVar28 - uVar1;
          uVar23 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar27))
                   << (ulong)(uVar8 & 0x1f) | uVar23;
          uVar26 = (undefined2)uVar23;
        } while (uVar28 != 0);
      }
      *(undefined2 *)(param_4 + 0x85) = uVar26;
      if (uVar25 < uVar20) {
        uVar28 = (uint)local_70 + 0x20;
        if (uVar7 < uVar28) {
          uVar26 = 0;
        }
        else {
          uVar25 = uVar25 >> 3;
          uVar23 = ((uint)local_70 | 0xfffffff8) + 0x10;
          uVar27 = (uint)(*(byte *)(param_2 + (ulong)uVar25) >> (ulong)uVar19);
          do {
            uVar25 = uVar25 + 1;
            uVar1 = uVar23;
            if (7 < uVar23) {
              uVar1 = 8;
            }
            uVar8 = 0x10 - uVar23;
            uVar23 = uVar23 - uVar1;
            uVar27 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar25))
                     << (ulong)(uVar8 & 0x1f) | uVar27;
            uVar26 = (undefined2)uVar27;
          } while (uVar23 != 0);
        }
        *(undefined2 *)((long)param_4 + 0x216) = uVar26;
        if (uVar28 < uVar20) {
          uVar25 = (uint)local_70 + 0x30;
          if (uVar7 < uVar25) {
            uVar26 = 0;
          }
          else {
            uVar28 = uVar28 >> 3;
            uVar23 = ((uint)local_70 | 0xfffffff8) + 0x10;
            uVar27 = (uint)(*(byte *)(param_2 + (ulong)uVar28) >> (ulong)uVar19);
            do {
              uVar28 = uVar28 + 1;
              uVar1 = uVar23;
              if (7 < uVar23) {
                uVar1 = 8;
              }
              uVar8 = 0x10 - uVar23;
              uVar23 = uVar23 - uVar1;
              uVar27 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar28)) << (ulong)(uVar8 & 0x1f) | uVar27;
              uVar26 = (undefined2)uVar27;
            } while (uVar23 != 0);
          }
          *(undefined2 *)(param_4 + 0x86) = uVar26;
          if (uVar25 < uVar20) {
            if (uVar7 < (uint)local_70 + 0x40) {
              uVar26 = 0;
            }
            else {
              uVar25 = uVar25 >> 3;
              uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar25) >> (ulong)uVar19);
              uVar19 = ((uint)local_70 | 0xfffffff8) + 0x10;
              do {
                uVar25 = uVar25 + 1;
                uVar23 = uVar19;
                if (7 < uVar19) {
                  uVar23 = 8;
                }
                uVar27 = 0x10 - uVar19;
                uVar19 = uVar19 - uVar23;
                uVar28 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                         (uint)*(byte *)(param_2 + (ulong)uVar25)) << (ulong)(uVar27 & 0x1f) |
                         uVar28;
                uVar26 = (undefined2)uVar28;
              } while (uVar19 != 0);
            }
            *(undefined2 *)((long)param_4 + 0x21a) = uVar26;
          }
        }
      }
    }
    if ((7 < param_4[0x84]) || ((1 << (ulong)(param_4[0x84] & 0x1f) & 199U) == 0)) {
      _printk(&DAT_0013a90b,"syna_tcm_get_gesture_data");
      uVar20 = (uint)local_70 + bVar6;
    }
  }
LAB_001288f8:
  local_70 = CONCAT44(local_70._4_4_,uVar20);
  uVar18 = uVar31;
  goto LAB_001286f8;
}

