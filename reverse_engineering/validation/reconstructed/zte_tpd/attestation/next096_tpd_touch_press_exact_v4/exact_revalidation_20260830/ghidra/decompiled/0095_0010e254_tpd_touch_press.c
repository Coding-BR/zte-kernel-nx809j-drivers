
/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_touch_press(long param_1,uint param_2,uint param_3,ulong param_4,undefined4 param_5,
                    undefined4 param_6)

{
  long lVar1;
  uint *puVar2;
  int iVar3;
  undefined4 uVar4;
  char cVar5;
  byte bVar6;
  ushort uVar7;
  int iVar8;
  code *pcVar9;
  uint uVar10;
  uint uVar11;
  ulong uVar12;
  undefined *puVar13;
  uint uVar14;
  uint uVar15;
  long lVar16;
  long lVar17;
  ulong uVar18;
  ulong uVar19;
  
  lVar16 = tpd_cdev;
  uVar10 = param_2 & 0xffff;
  uVar15 = param_3 & 0xffff;
  if ((param_2 & 0xfffe) == 0) {
    uVar10 = 1;
  }
  if ((param_3 & 0xfffe) == 0) {
    uVar15 = 1;
  }
  if (*(int *)(tpd_cdev + 0x10) != 0) {
    param_2 = uVar10;
    param_3 = uVar15;
  }
  uVar10 = (uint)param_4 & 0xffff;
  if ((param_1 == 0) || (9 < uVar10)) {
    _printk(&DAT_0013aeb8,"tpd_touch_press");
    return;
  }
  uVar18 = param_4 & 0xffffffff;
  lVar1 = (param_4 & 0xffff) + (param_4 & 0xffff) * 0x10;
  uVar19 = lVar1 * 8;
  puVar2 = (uint *)(&point_report_info + uVar19);
  (&DAT_001316a8)[lVar1] = param_1;
  if (*(char *)(&DAT_00131678 + lVar1) == '\x01') {
    if (((*(char *)(lVar16 + 0x25) != '\0') && (((&DAT_00131681)[uVar19] & 1) == 0)) &&
       ((*(uint *)(lVar16 + 0x10) | 2) != 3)) {
      uVar7 = *(ushort *)(lVar16 + 0x442);
      uVar14 = (uint)uVar7;
      uVar15 = param_2 & 0xffff;
      uVar11 = (uint)(uVar7 >> 2);
      if ((uVar11 < uVar15) && (uVar15 < (uint)uVar7 * 3 >> 2)) {
        (&DAT_00131681)[uVar19] = 1;
        uVar14 = (uint)*(ushort *)(lVar16 + 0x442);
        uVar11 = (uint)(*(ushort *)(lVar16 + 0x442) >> 2);
      }
      if (((int)(&DAT_00131640)[lVar1 * 2] < (int)uVar11) ||
         (uVar14 * 3 >> 2 < (uint)(&DAT_00131640)[lVar1 * 2])) {
        if (*(char *)(lVar16 + 0x25) == '\0') {
LAB_0010e9b4:
          (&DAT_00131680)[uVar19] = 0;
        }
        else {
          if ((*(uint *)(lVar16 + 0x10) | 2) == 3) {
            if (((((uint)*(byte *)(lVar16 + 0x34) <= (param_2 & 0xffff)) &&
                 ((int)uVar15 <= (int)(uVar14 - *(byte *)(lVar16 + 0x35)))) &&
                ((uint)*(byte *)(lVar16 + 0x36) <= (param_3 & 0xffff))) &&
               ((int)(param_3 & 0xffff) <=
                (int)((uint)*(ushort *)(lVar16 + 0x444) - (uint)*(byte *)(lVar16 + 0x37)))) {
              if ((*(char *)(lVar16 + 0x38) == '\0') ||
                 ((param_3 & 0xffff) <= (uint)*(ushort *)(lVar16 + 0x2e))) goto LAB_0010e9b4;
              uVar11 = (uint)*(ushort *)(lVar16 + 0x2c);
              if ((uint)*(ushort *)(lVar16 + 0x2c) <= (param_2 & 0xffff)) goto LAB_0010e9a8;
            }
          }
          else if ((uint)*(byte *)(lVar16 + 0x34) <= (param_2 & 0xffff)) {
            uVar11 = (uint)*(byte *)(lVar16 + 0x35);
LAB_0010e9a8:
            if ((int)uVar15 <= (int)(uVar14 - uVar11)) goto LAB_0010e9b4;
          }
          if ((&DAT_00131680)[uVar19] == '\x01') {
            lVar17 = *(long *)(&DAT_00131690 + uVar19);
          }
          else {
            *(uint *)(&DAT_00131658 + uVar19) = uVar15;
            *(uint *)(&DAT_0013165c + uVar19) = param_3 & 0xffff;
            (&DAT_00131680)[uVar19] = 1;
            lVar17 = _jiffies;
            *(long *)(&DAT_00131690 + uVar19) = _jiffies;
          }
          uVar11 = jiffies_to_msecs(_jiffies - lVar17);
          if (800 < uVar11) {
            iVar8 = *(int *)(&DAT_00131658 + uVar19) - uVar15;
            iVar3 = -iVar8;
            if (-1 < iVar8) {
              iVar3 = iVar8;
            }
            if (iVar3 < 0x15) {
              iVar8 = *(int *)(&DAT_0013165c + uVar19) - (param_3 & 0xffff);
              iVar3 = -iVar8;
              if (-1 < iVar8) {
                iVar3 = iVar8;
              }
              if (iVar3 < 0x15) {
                tpd_touch_release((&DAT_001316a8)[lVar1],uVar18);
                (&DAT_00131680)[uVar19] = 0;
                return;
              }
            }
            *(uint *)(&DAT_00131658 + uVar19) = uVar15;
            *(uint *)(&DAT_0013165c + uVar19) = param_3 & 0xffff;
            *(long *)(&DAT_00131690 + uVar19) = _jiffies;
          }
        }
      }
    }
  }
  else {
    uVar12 = point_is_in_limit_area(param_2,param_3);
    if ((uVar12 & 1) != 0) goto LAB_0010e3e4;
    if (*(char *)(tpd_cdev + 0x25) != '\0') {
      if ((*(uint *)(tpd_cdev + 0x10) | 2) == 3) {
        uVar15 = param_2 & 0xffff;
        if (((uVar15 < *(byte *)(tpd_cdev + 0x34)) ||
            ((((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35)) <
               (int)uVar15 || ((param_3 & 0xffff) < (uint)*(byte *)(tpd_cdev + 0x36))) ||
             ((int)((uint)*(ushort *)(tpd_cdev + 0x444) - (uint)*(byte *)(tpd_cdev + 0x37)) <
              (int)(param_3 & 0xffff))))) ||
           (((*(char *)(tpd_cdev + 0x38) != '\0' &&
             ((uint)*(ushort *)(tpd_cdev + 0x2e) < (param_3 & 0xffff))) &&
            (((param_2 & 0xffff) < (uint)*(ushort *)(tpd_cdev + 0x2c) ||
             ((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(ushort *)(tpd_cdev + 0x2c)) <
              (int)uVar15)))))) {
LAB_0010e3e4:
          uVar12 = point_is_in_limit_area(param_2,param_3);
          if (((uVar12 & 1) == 0) && (*(char *)(tpd_cdev + 0x25) != '\0')) {
            if ((*(uint *)(tpd_cdev + 0x10) | 2) == 3) {
              uVar15 = param_2 & 0xffff;
              if (((*(byte *)(tpd_cdev + 0x34) <= uVar15) &&
                  ((((int)uVar15 <=
                     (int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35))
                    && ((uint)*(byte *)(tpd_cdev + 0x36) <= (param_3 & 0xffff))) &&
                   ((int)(param_3 & 0xffff) <=
                    (int)((uint)*(ushort *)(tpd_cdev + 0x444) - (uint)*(byte *)(tpd_cdev + 0x37)))))
                  ) && (((*(char *)(tpd_cdev + 0x38) == '\0' ||
                         ((param_3 & 0xffff) <= (uint)*(ushort *)(tpd_cdev + 0x2e))) ||
                        (((uint)*(ushort *)(tpd_cdev + 0x2c) <= (param_2 & 0xffff) &&
                         ((int)uVar15 <=
                          (int)((uint)*(ushort *)(tpd_cdev + 0x442) -
                               (uint)*(ushort *)(tpd_cdev + 0x2c)))))))) goto LAB_0010e634;
            }
            else if (((uint)*(byte *)(tpd_cdev + 0x34) <= (param_2 & 0xffff)) &&
                    ((int)(param_2 & 0xffff) <=
                     (int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35))))
            goto LAB_0010e634;
            if ((*(byte *)((long)&DAT_00131678 + uVar19 + 5) & 1) == 0) {
              *(undefined1 *)((long)&DAT_00131678 + uVar19 + 5) = 1;
              *(long *)(&DAT_00131698 + uVar19) = _jiffies;
              _printk(&DAT_0013b590,uVar10,param_2 & 0xffff,param_3 & 0xffff);
            }
            if ((((((DAT_00131678._3_1_ & 1) == 0) && ((DAT_00131700._3_1_ & 1) == 0)) &&
                 (((DAT_00131788._3_1_ & 1) == 0 &&
                  (((((DAT_00131810._3_1_ & 1) == 0 && ((DAT_00131898._3_1_ & 1) == 0)) &&
                    ((DAT_00131920._3_1_ & 1) == 0)) &&
                   (((DAT_001319a8._3_1_ & 1) == 0 && ((DAT_00131a30._3_1_ & 1) == 0)))))))) &&
                ((DAT_00131ab8._3_1_ & 1) == 0)) && (DAT_00131b40._3_1_ != '\x01')) {
LAB_0010e63c:
              bVar6 = *(byte *)((long)&DAT_00131678 + uVar19 + 1);
            }
            else {
              *(undefined1 *)((long)&DAT_00131678 + uVar19 + 6) = 1;
              bVar6 = *(byte *)((long)&DAT_00131678 + uVar19 + 1);
            }
          }
          else {
LAB_0010e634:
            if ((*(byte *)((long)&DAT_00131678 + uVar19 + 5) & 1) != 0) goto LAB_0010e63c;
            *(undefined1 *)((long)&DAT_00131678 + uVar19 + 5) = 1;
            _printk(&DAT_00137091,uVar10,param_2 & 0xffff,param_3 & 0xffff);
            bVar6 = *(byte *)((long)&DAT_00131678 + uVar19 + 1);
          }
          if ((bVar6 & 1) == 0) {
            *puVar2 = param_2 & 0xffff;
            if ((uVar19 | 4) < 0x551) {
              (&DAT_00131630)[uVar19] = (char)param_5;
              *(uint *)(&DAT_0013162c + uVar19) = param_3 & 0xffff;
              (&DAT_00131631)[uVar19] = (char)param_6;
              *(undefined1 *)((long)&DAT_00131678 + uVar19 + 1) = 1;
              return;
            }
            goto LAB_0010e878;
          }
          iVar8 = *puVar2 - (param_2 & 0xffff);
          iVar3 = -iVar8;
          if (-1 < iVar8) {
            iVar3 = iVar8;
          }
          if (iVar3 < 0x65) {
            if (0x550 < (uVar19 | 4)) goto LAB_0010e878;
            iVar8 = *(int *)(&DAT_0013162c + uVar19) - (param_3 & 0xffff);
            iVar3 = -iVar8;
            if (-1 < iVar8) {
              iVar3 = iVar8;
            }
            if (iVar3 < 0x65) {
              return;
            }
          }
        }
      }
      else if (((param_2 & 0xffff) < (uint)*(byte *)(tpd_cdev + 0x34)) ||
              ((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35)) <
               (int)(param_2 & 0xffff))) goto LAB_0010e3e4;
    }
    if ((*(byte *)((long)&DAT_00131678 + uVar19 + 1) & 1) == 0) {
      *(undefined1 *)((long)&DAT_00131678 + uVar19 + 2) = 0;
    }
    else {
      (&DAT_0013163c)[uVar19] = (char)param_5;
      *(uint *)(&DAT_00131634 + uVar19) = param_2 & 0xffff;
      *(uint *)(&DAT_00131638 + uVar19) = param_3 & 0xffff;
      (&DAT_0013163d)[uVar19] = (char)param_6;
      *(undefined1 *)((long)&DAT_00131678 + uVar19 + 2) = 1;
    }
  }
  cVar5 = *(char *)((long)&DAT_00131678 + uVar19 + 2);
  *(undefined1 *)(&DAT_00131678 + lVar1) = 1;
  if (cVar5 == '\x01') {
    if ((*(byte *)((long)&DAT_00131678 + uVar19 + 3) & 1) == 0) {
      *(undefined1 *)((long)&DAT_00131678 + uVar19 + 3) = 1;
      lVar17 = _jiffies;
      (&DAT_00131682)[uVar19] = 1;
      *(long *)(&DAT_00131688 + uVar19) = lVar17;
      *(int *)(lVar16 + 0x48c) = *(int *)(lVar16 + 0x48c) + 1;
      (&DAT_00131640)[lVar1 * 2] = *puVar2;
      if (0x550 < (uVar19 | 4)) goto LAB_0010e878;
      (&DAT_00131644)[lVar1 * 2] = *(undefined4 *)(&DAT_0013162c + uVar19);
      point_report_reset(uVar10);
      _printk(&DAT_0013882f,uVar10,*puVar2,*(undefined4 *)(&DAT_0013162c + uVar19));
    }
    if (0x550 < (uVar19 | 4)) {
LAB_0010e878:
                    /* WARNING: Does not return */
      pcVar9 = (code *)SoftwareBreakpoint(1,0x10e87c);
      (*pcVar9)();
    }
    tpd_touch_report(param_1,*puVar2,*(undefined4 *)(&DAT_0013162c + uVar19),uVar18,param_5,param_6)
    ;
    input_event(param_1,0,0,0);
    usleep_range_state(1000,0x5dc,2);
    if ((*(byte *)((long)&DAT_00131678 + uVar19 + 3) & 1) == 0) {
      *(undefined1 *)((long)&DAT_00131678 + uVar19 + 3) = 1;
      lVar17 = _jiffies;
      (&DAT_00131682)[uVar19] = 1;
      *(long *)(&DAT_00131688 + uVar19) = lVar17;
      *(int *)(lVar16 + 0x48c) = *(int *)(lVar16 + 0x48c) + 1;
      uVar4 = *(undefined4 *)(&DAT_0013162c + uVar19);
      (&DAT_00131640)[lVar1 * 2] = *puVar2;
      (&DAT_00131644)[lVar1 * 2] = uVar4;
      point_report_reset(uVar10);
      _printk(&DAT_0013882f,uVar10,*(undefined4 *)(&DAT_00131634 + uVar19),
              *(undefined4 *)(&DAT_00131638 + uVar19));
    }
    uVar15 = *(uint *)(&DAT_00131634 + uVar19);
    uVar11 = *(uint *)(&DAT_00131638 + uVar19);
  }
  else {
    bVar6 = *(byte *)((long)&DAT_00131678 + uVar19 + 3);
    uVar15 = param_2;
    uVar11 = param_3;
    if (*(char *)(lVar16 + 0x24) == '\0') {
      if ((bVar6 & 1) == 0) {
        *(undefined1 *)((long)&DAT_00131678 + uVar19 + 3) = 1;
        *(int *)(lVar16 + 0x48c) = *(int *)(lVar16 + 0x48c) + 1;
        (&DAT_00131640)[lVar1 * 2] = param_2 & 0xffff;
        (&DAT_00131644)[lVar1 * 2] = param_3 & 0xffff;
        point_report_reset(uVar10);
        puVar13 = &DAT_0013b516;
        lVar16 = _jiffies;
        goto LAB_0010e98c;
      }
    }
    else if ((bVar6 & 1) == 0) {
      *(undefined1 *)((long)&DAT_00131678 + uVar19 + 3) = 1;
      *(int *)(lVar16 + 0x48c) = *(int *)(lVar16 + 0x48c) + 1;
      point_report_reset(uVar10);
      (&DAT_00131640)[lVar1 * 2] = param_2 & 0xffff;
      (&DAT_00131644)[lVar1 * 2] = param_3 & 0xffff;
      lVar16 = _jiffies;
      puVar13 = &DAT_0013d29d;
      *(undefined1 *)((long)&DAT_00131678 + uVar19 + 7) = 1;
LAB_0010e98c:
      *(long *)(&DAT_00131688 + uVar19) = lVar16;
      _printk(puVar13,uVar10,param_2 & 0xffff,param_3 & 0xffff);
    }
    else if (*(char *)((long)&DAT_00131678 + uVar19 + 7) == '\x01') {
      uVar10 = jiffies_to_msecs(_jiffies - *(long *)(&DAT_00131688 + uVar19));
      iVar8 = (&DAT_00131640)[lVar1 * 2] - (param_2 & 0xffff);
      iVar3 = -iVar8;
      if (-1 < iVar8) {
        iVar3 = iVar8;
      }
      uVar15 = (uint)*(byte *)(lVar16 + 0x24);
      if (uVar10 < 0x65) {
        uVar15 = (uint)*(byte *)(lVar16 + 0x24) * 3;
      }
      if (iVar3 <= (int)uVar15) {
        iVar8 = (&DAT_00131644)[lVar1 * 2] - (param_3 & 0xffff);
        iVar3 = -iVar8;
        if (-1 < iVar8) {
          iVar3 = iVar8;
        }
        if (iVar3 <= (int)uVar15) goto LAB_0010e7e0;
      }
      tpd_touch_report(param_1,param_2,param_3,uVar18,param_5,param_6);
      *(undefined1 *)((long)&DAT_00131678 + uVar19 + 7) = 0;
      goto LAB_0010e7e0;
    }
  }
  tpd_touch_report(param_1,uVar15,uVar11,uVar18,param_5,param_6);
LAB_0010e7e0:
  *(undefined1 *)((long)&DAT_00131678 + uVar19 + 2) = 0;
  (&DAT_0013164c)[lVar1 * 2] = param_2 & 0xffff;
  (&DAT_00131650)[lVar1 * 2] = param_3 & 0xffff;
  return;
}

