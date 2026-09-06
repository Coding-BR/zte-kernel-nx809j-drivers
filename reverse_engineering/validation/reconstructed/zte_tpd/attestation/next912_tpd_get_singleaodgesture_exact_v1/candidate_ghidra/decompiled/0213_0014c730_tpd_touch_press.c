
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_touch_press(long param_1,uint param_2,uint param_3,ulong param_4,undefined4 param_5,
                    undefined4 param_6)

{
  uint *puVar1;
  int iVar2;
  byte bVar3;
  ushort uVar4;
  int iVar5;
  code *pcVar6;
  uint uVar7;
  uint uVar8;
  ulong uVar9;
  undefined *puVar10;
  uint uVar11;
  uint uVar12;
  long lVar13;
  long lVar14;
  ulong uVar15;
  ulong uVar16;
  
  lVar13 = tpd_cdev;
  uVar7 = param_2 & 0xffff;
  uVar12 = param_3 & 0xffff;
  if ((param_2 & 0xfffe) == 0) {
    uVar7 = 1;
  }
  if ((param_3 & 0xfffe) == 0) {
    uVar12 = 1;
  }
  if (*(int *)(tpd_cdev + 0x10) != 0) {
    param_2 = uVar7;
    param_3 = uVar12;
  }
  uVar7 = (uint)param_4 & 0xffff;
  if ((param_1 == 0) || (9 < uVar7)) {
    _printk(&DAT_0016fb3c,"tpd_touch_press");
    return;
  }
  uVar15 = param_4 & 0xffffffff;
  uVar16 = ((param_4 & 0xffff) + (param_4 & 0xffff) * 0x10) * 8;
  puVar1 = (uint *)(point_report_info + uVar16);
  *(long *)(point_report_info + uVar16 + 0x80) = param_1;
  if (point_report_info[uVar16 + 0x50] == '\x01') {
    if (((*(char *)(lVar13 + 0x25) != '\0') && ((point_report_info[uVar16 + 0x59] & 1) == 0)) &&
       ((*(uint *)(lVar13 + 0x10) | 2) != 3)) {
      uVar4 = *(ushort *)(lVar13 + 0x442);
      uVar11 = (uint)uVar4;
      uVar12 = param_2 & 0xffff;
      uVar8 = (uint)(uVar4 >> 2);
      if ((uVar8 < uVar12) && (uVar12 < (uint)uVar4 * 3 >> 2)) {
        point_report_info[uVar16 + 0x59] = 1;
        uVar11 = (uint)*(ushort *)(lVar13 + 0x442);
        uVar8 = (uint)(*(ushort *)(lVar13 + 0x442) >> 2);
      }
      if (((int)*(uint *)(point_report_info + uVar16 + 0x18) < (int)uVar8) ||
         (uVar11 * 3 >> 2 < *(uint *)(point_report_info + uVar16 + 0x18))) {
        if (*(char *)(lVar13 + 0x25) == '\0') {
LAB_0014ce90:
          point_report_info[uVar16 + 0x58] = 0;
        }
        else {
          if ((*(uint *)(lVar13 + 0x10) | 2) == 3) {
            if (((((uint)*(byte *)(lVar13 + 0x34) <= (param_2 & 0xffff)) &&
                 ((int)uVar12 <= (int)(uVar11 - *(byte *)(lVar13 + 0x35)))) &&
                ((uint)*(byte *)(lVar13 + 0x36) <= (param_3 & 0xffff))) &&
               ((int)(param_3 & 0xffff) <=
                (int)((uint)*(ushort *)(lVar13 + 0x444) - (uint)*(byte *)(lVar13 + 0x37)))) {
              if ((*(char *)(lVar13 + 0x38) == '\0') ||
                 ((param_3 & 0xffff) <= (uint)*(ushort *)(lVar13 + 0x2e))) goto LAB_0014ce90;
              uVar8 = (uint)*(ushort *)(lVar13 + 0x2c);
              if ((uint)*(ushort *)(lVar13 + 0x2c) <= (param_2 & 0xffff)) goto LAB_0014ce84;
            }
          }
          else if ((uint)*(byte *)(lVar13 + 0x34) <= (param_2 & 0xffff)) {
            uVar8 = (uint)*(byte *)(lVar13 + 0x35);
LAB_0014ce84:
            if ((int)uVar12 <= (int)(uVar11 - uVar8)) goto LAB_0014ce90;
          }
          if (point_report_info[uVar16 + 0x58] == '\x01') {
            lVar14 = *(long *)(point_report_info + uVar16 + 0x68);
          }
          else {
            *(uint *)(point_report_info + uVar16 + 0x30) = uVar12;
            *(uint *)(point_report_info + uVar16 + 0x34) = param_3 & 0xffff;
            point_report_info[uVar16 + 0x58] = 1;
            lVar14 = _jiffies;
            *(long *)(point_report_info + uVar16 + 0x68) = _jiffies;
          }
          uVar8 = jiffies_to_msecs(_jiffies - lVar14);
          if (800 < uVar8) {
            iVar5 = *(int *)(point_report_info + uVar16 + 0x30) - uVar12;
            iVar2 = -iVar5;
            if (-1 < iVar5) {
              iVar2 = iVar5;
            }
            if (iVar2 < 0x15) {
              iVar5 = *(int *)(point_report_info + uVar16 + 0x34) - (param_3 & 0xffff);
              iVar2 = -iVar5;
              if (-1 < iVar5) {
                iVar2 = iVar5;
              }
              if (iVar2 < 0x15) {
                tpd_touch_release(*(undefined8 *)(point_report_info + uVar16 + 0x80),uVar15);
                point_report_info[uVar16 + 0x58] = 0;
                return;
              }
            }
            *(uint *)(point_report_info + uVar16 + 0x30) = uVar12;
            *(uint *)(point_report_info + uVar16 + 0x34) = param_3 & 0xffff;
            *(long *)(point_report_info + uVar16 + 0x68) = _jiffies;
          }
        }
      }
    }
  }
  else {
    uVar9 = FUN_0014e854(param_2,param_3);
    if ((uVar9 & 1) != 0) goto LAB_0014c8c0;
    if (*(char *)(tpd_cdev + 0x25) != '\0') {
      if ((*(uint *)(tpd_cdev + 0x10) | 2) == 3) {
        uVar12 = param_2 & 0xffff;
        if (((uVar12 < *(byte *)(tpd_cdev + 0x34)) ||
            ((((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35)) <
               (int)uVar12 || ((param_3 & 0xffff) < (uint)*(byte *)(tpd_cdev + 0x36))) ||
             ((int)((uint)*(ushort *)(tpd_cdev + 0x444) - (uint)*(byte *)(tpd_cdev + 0x37)) <
              (int)(param_3 & 0xffff))))) ||
           (((*(char *)(tpd_cdev + 0x38) != '\0' &&
             ((uint)*(ushort *)(tpd_cdev + 0x2e) < (param_3 & 0xffff))) &&
            (((param_2 & 0xffff) < (uint)*(ushort *)(tpd_cdev + 0x2c) ||
             ((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(ushort *)(tpd_cdev + 0x2c)) <
              (int)uVar12)))))) {
LAB_0014c8c0:
          uVar9 = FUN_0014e844(param_2,param_3);
          if (((uVar9 & 1) == 0) && (*(char *)(tpd_cdev + 0x25) != '\0')) {
            if ((*(uint *)(tpd_cdev + 0x10) | 2) == 3) {
              uVar12 = param_2 & 0xffff;
              if (((*(byte *)(tpd_cdev + 0x34) <= uVar12) &&
                  ((((int)uVar12 <=
                     (int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35))
                    && ((uint)*(byte *)(tpd_cdev + 0x36) <= (param_3 & 0xffff))) &&
                   ((int)(param_3 & 0xffff) <=
                    (int)((uint)*(ushort *)(tpd_cdev + 0x444) - (uint)*(byte *)(tpd_cdev + 0x37)))))
                  ) && (((*(char *)(tpd_cdev + 0x38) == '\0' ||
                         ((param_3 & 0xffff) <= (uint)*(ushort *)(tpd_cdev + 0x2e))) ||
                        (((uint)*(ushort *)(tpd_cdev + 0x2c) <= (param_2 & 0xffff) &&
                         ((int)uVar12 <=
                          (int)((uint)*(ushort *)(tpd_cdev + 0x442) -
                               (uint)*(ushort *)(tpd_cdev + 0x2c)))))))) goto LAB_0014cb10;
            }
            else if (((uint)*(byte *)(tpd_cdev + 0x34) <= (param_2 & 0xffff)) &&
                    ((int)(param_2 & 0xffff) <=
                     (int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35))))
            goto LAB_0014cb10;
            if ((point_report_info[uVar16 + 0x55] & 1) == 0) {
              point_report_info[uVar16 + 0x55] = 1;
              *(long *)(point_report_info + uVar16 + 0x70) = _jiffies;
              _printk(&DAT_0017022c,uVar7,param_2 & 0xffff,param_3 & 0xffff);
              return;
            }
            if ((((((point_report_info[0x53] & 1) == 0) && ((point_report_info[0xdb] & 1) == 0)) &&
                 (((point_report_info[0x163] & 1) == 0 &&
                  (((((point_report_info[0x1eb] & 1) == 0 && ((point_report_info[0x273] & 1) == 0))
                    && ((point_report_info[0x2fb] & 1) == 0)) &&
                   (((point_report_info[899] & 1) == 0 && ((point_report_info[0x40b] & 1) == 0))))))
                 )) && ((point_report_info[0x493] & 1) == 0)) &&
               (point_report_info[0x51b] != '\x01')) goto LAB_0014cb18;
            point_report_info[uVar16 + 0x56] = 1;
            bVar3 = point_report_info[uVar16 + 0x51];
          }
          else {
LAB_0014cb10:
            if ((point_report_info[uVar16 + 0x55] & 1) == 0) {
              point_report_info[uVar16 + 0x55] = 1;
              _printk(&DAT_0016bbf6,uVar7,param_2 & 0xffff,param_3 & 0xffff);
              return;
            }
LAB_0014cb18:
            bVar3 = point_report_info[uVar16 + 0x51];
          }
          if ((bVar3 & 1) == 0) {
            *puVar1 = param_2 & 0xffff;
            if ((uVar16 | 4) < 0x551) {
              point_report_info[uVar16 + 8] = (char)param_5;
              *(uint *)(point_report_info + uVar16 + 4) = param_3 & 0xffff;
              point_report_info[uVar16 + 9] = (char)param_6;
              point_report_info[uVar16 + 0x51] = 1;
              return;
            }
            goto LAB_0014cd54;
          }
          iVar5 = *puVar1 - (param_2 & 0xffff);
          iVar2 = -iVar5;
          if (-1 < iVar5) {
            iVar2 = iVar5;
          }
          if (iVar2 < 0x65) {
            if (0x550 < (uVar16 | 4)) goto LAB_0014cd54;
            iVar5 = *(int *)(point_report_info + uVar16 + 4) - (param_3 & 0xffff);
            iVar2 = -iVar5;
            if (-1 < iVar5) {
              iVar2 = iVar5;
            }
            if (iVar2 < 0x65) {
              return;
            }
          }
        }
      }
      else if (((param_2 & 0xffff) < (uint)*(byte *)(tpd_cdev + 0x34)) ||
              ((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35)) <
               (int)(param_2 & 0xffff))) goto LAB_0014c8c0;
    }
    if ((point_report_info[uVar16 + 0x51] & 1) == 0) {
      point_report_info[uVar16 + 0x52] = 0;
    }
    else {
      point_report_info[uVar16 + 0x14] = (char)param_5;
      *(uint *)(point_report_info + uVar16 + 0xc) = param_2 & 0xffff;
      *(uint *)(point_report_info + uVar16 + 0x10) = param_3 & 0xffff;
      point_report_info[uVar16 + 0x15] = (char)param_6;
      point_report_info[uVar16 + 0x52] = 1;
    }
  }
  point_report_info[uVar16 + 0x50] = 1;
  if (point_report_info[uVar16 + 0x52] == '\x01') {
    if ((point_report_info[uVar16 + 0x53] & 1) == 0) {
      point_report_info[uVar16 + 0x53] = 1;
      lVar14 = _jiffies;
      point_report_info[uVar16 + 0x5a] = 1;
      *(long *)(point_report_info + uVar16 + 0x60) = lVar14;
      *(int *)(lVar13 + 0x48c) = *(int *)(lVar13 + 0x48c) + 1;
      *(uint *)(point_report_info + uVar16 + 0x18) = *puVar1;
      if ((uVar16 | 4) < 0x551) {
        *(undefined4 *)(point_report_info + uVar16 + 0x1c) =
             *(undefined4 *)(point_report_info + uVar16 + 4);
        point_report_reset(uVar7);
        _printk(&DAT_0016d40c,uVar7,*puVar1,*(undefined4 *)(point_report_info + uVar16 + 4));
        return;
      }
LAB_0014cd54:
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(1,0x14cd58);
      (*pcVar6)();
    }
    if (0x550 < (uVar16 | 4)) goto LAB_0014cd54;
    tpd_touch_report(param_1,*puVar1,*(undefined4 *)(point_report_info + uVar16 + 4),uVar15,param_5,
                     param_6);
    input_event(param_1,0,0,0);
    usleep_range_state(1000,0x5dc,2);
    if ((point_report_info[uVar16 + 0x53] & 1) == 0) {
      point_report_info[uVar16 + 0x53] = 1;
      lVar14 = _jiffies;
      point_report_info[uVar16 + 0x5a] = 1;
      *(long *)(point_report_info + uVar16 + 0x60) = lVar14;
      *(int *)(lVar13 + 0x48c) = *(int *)(lVar13 + 0x48c) + 1;
      *(uint *)(point_report_info + uVar16 + 0x18) = *puVar1;
      *(undefined4 *)(point_report_info + uVar16 + 0x1c) =
           *(undefined4 *)(point_report_info + uVar16 + 4);
      FUN_0014fd78(uVar7);
      _printk(&DAT_0016d40c,uVar7,*(undefined4 *)(point_report_info + uVar16 + 0xc),
              *(undefined4 *)(point_report_info + uVar16 + 0x10));
      return;
    }
    uVar12 = *(uint *)(point_report_info + uVar16 + 0xc);
    uVar8 = *(uint *)(point_report_info + uVar16 + 0x10);
  }
  else {
    uVar12 = param_2;
    uVar8 = param_3;
    if (*(char *)(lVar13 + 0x24) == '\0') {
      if ((point_report_info[uVar16 + 0x53] & 1) == 0) {
        point_report_info[uVar16 + 0x53] = 1;
        *(int *)(lVar13 + 0x48c) = *(int *)(lVar13 + 0x48c) + 1;
        *(uint *)(point_report_info + uVar16 + 0x18) = param_2 & 0xffff;
        *(uint *)(point_report_info + uVar16 + 0x1c) = param_3 & 0xffff;
        FUN_0014fe38(uVar7);
        puVar10 = &DAT_001701b0;
        lVar13 = _jiffies;
        goto LAB_0014ce68;
      }
    }
    else {
      if ((point_report_info[uVar16 + 0x53] & 1) == 0) {
        point_report_info[uVar16 + 0x53] = 1;
        *(int *)(lVar13 + 0x48c) = *(int *)(lVar13 + 0x48c) + 1;
        FUN_0014fd9c(uVar7);
        *(uint *)(point_report_info + uVar16 + 0x18) = param_2 & 0xffff;
        *(uint *)(point_report_info + uVar16 + 0x1c) = param_3 & 0xffff;
        lVar13 = _jiffies;
        puVar10 = &DAT_00171f92;
        point_report_info[uVar16 + 0x57] = 1;
LAB_0014ce68:
        *(long *)(point_report_info + uVar16 + 0x60) = lVar13;
        _printk(puVar10,uVar7,param_2 & 0xffff,param_3 & 0xffff);
        return;
      }
      if (point_report_info[uVar16 + 0x57] == '\x01') {
        uVar7 = jiffies_to_msecs(_jiffies - *(long *)(point_report_info + uVar16 + 0x60));
        iVar5 = *(int *)(point_report_info + uVar16 + 0x18) - (param_2 & 0xffff);
        iVar2 = -iVar5;
        if (-1 < iVar5) {
          iVar2 = iVar5;
        }
        uVar12 = (uint)*(byte *)(lVar13 + 0x24);
        if (uVar7 < 0x65) {
          uVar12 = (uint)*(byte *)(lVar13 + 0x24) * 3;
        }
        if (iVar2 <= (int)uVar12) {
          iVar5 = *(int *)(point_report_info + uVar16 + 0x1c) - (param_3 & 0xffff);
          iVar2 = -iVar5;
          if (-1 < iVar5) {
            iVar2 = iVar5;
          }
          if (iVar2 <= (int)uVar12) goto LAB_0014ccbc;
        }
        tpd_workqueue_deinit(param_1,param_2,param_3,uVar15,param_5,param_6);
        point_report_info[uVar16 + 0x57] = 0;
        goto LAB_0014ccbc;
      }
    }
  }
  tpd_workqueue_deinit(param_1,uVar12,uVar8,uVar15,param_5,param_6);
LAB_0014ccbc:
  point_report_info[uVar16 + 0x52] = 0;
  *(uint *)(point_report_info + uVar16 + 0x24) = param_2 & 0xffff;
  *(uint *)(point_report_info + uVar16 + 0x28) = param_3 & 0xffff;
  return;
}

