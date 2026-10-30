
undefined8 tp_ghost_check(void)

{
  long lVar1;
  uint uVar2;
  byte bVar3;
  byte bVar4;
  int iVar5;
  int iVar6;
  char *__s;
  uint uVar7;
  ulong uVar8;
  undefined8 uVar9;
  ushort uVar10;
  uint uVar12;
  long lVar13;
  ushort uVar11;
  
  lVar13 = tpd_cdev;
  __s = (char *)vmalloc_noprof(0x800);
  if (__s == (char *)0x0) {
    _printk(&DAT_0013944e);
    return 0;
  }
  uVar8 = (ulong)DAT_00131684._2_2_;
  bVar4 = DAT_0013170c._2_2_ != 0;
  if (DAT_00131684._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (DAT_00131794._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  iVar5 = *(int *)(lVar13 + 0x498);
  if (DAT_0013181c._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (DAT_001318a4._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (DAT_0013192c._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (DAT_001319b4._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (DAT_00131a3c._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (DAT_00131ac4._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (DAT_00131b4c._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  uVar12 = (uint)bVar4;
  uVar2 = *(uint *)(lVar13 + 0x48c);
  if ((int)*(uint *)(lVar13 + 0x48c) <= (int)uVar12) {
    uVar2 = uVar12;
  }
  lVar1 = 0x493;
  if (2 < uVar2) {
    lVar1 = 0x494;
  }
  bVar3 = *(byte *)(lVar13 + lVar1);
  uVar12 = bVar3 * uVar12;
  uVar10 = (ushort)bVar3;
  uVar11 = (ushort)bVar3;
  if (iVar5 == 0) {
    uVar8 = 0;
LAB_0010f520:
    if ((ushort)DAT_0013170c < uVar10) {
      if (DAT_0013170c._2_2_ != 0) {
        uVar7 = (uint)DAT_0013170c._2_2_ + (int)uVar8;
        uVar8 = (ulong)uVar7;
        if ((5 < bVar4) && (uVar7 = uVar7 & 0xffff, uVar12 < uVar7)) {
          uVar8 = (ulong)uVar7;
          goto LAB_0010f7c0;
        }
      }
      uVar7 = (uint)uVar8;
      if (iVar5 == 2) {
LAB_0010f590:
        if ((ushort)DAT_0013181c < uVar10) {
          if (((DAT_0013181c._2_2_ != 0) && (uVar7 = DAT_0013181c._2_2_ + uVar7, 5 < bVar4)) &&
             (uVar12 < (uVar7 & 0xffff))) {
            uVar8 = (ulong)(uVar7 & 0xffff);
            goto LAB_0010f7c0;
          }
          if (iVar5 != 4) goto LAB_0010f5c8;
LAB_0010f600:
          if ((ushort)DAT_0013192c < uVar11) {
            if (((DAT_0013192c._2_2_ == 0) || (uVar7 = DAT_0013192c._2_2_ + uVar7, bVar4 < 6)) ||
               ((uVar7 & 0xffff) <= uVar12)) {
              if (iVar5 != 6) goto LAB_0010f638;
LAB_0010f670:
              if (uVar11 <= (ushort)DAT_00131a3c) {
                uVar9 = 7;
                goto LAB_0010f774;
              }
              if (((DAT_00131a3c._2_2_ == 0) || (uVar7 = DAT_00131a3c._2_2_ + uVar7, bVar4 < 6)) ||
                 ((uVar7 & 0xffff) <= uVar12)) {
                if (iVar5 != 8) goto LAB_0010f6a8;
LAB_0010f6e0:
                if (uVar10 <= (ushort)DAT_00131b4c) {
                  uVar9 = 9;
                  goto LAB_0010f774;
                }
                if (((DAT_00131b4c._2_2_ == 0) || (bVar4 < 6)) ||
                   (uVar7 = DAT_00131b4c._2_2_ + uVar7 & 0xffff, uVar8 = (ulong)uVar7,
                   uVar7 <= uVar12)) {
LAB_0010f710:
                  vfree(__s);
                  return 0;
                }
              }
              else {
                uVar8 = (ulong)(uVar7 & 0xffff);
              }
            }
            else {
              uVar8 = (ulong)(uVar7 & 0xffff);
            }
LAB_0010f7c0:
            iVar5 = snprintf(__s,0x800,"multi ghost detect,ghost_count:%d. ",uVar8);
            goto LAB_0010f7d4;
          }
          uVar9 = 5;
        }
        else {
          uVar9 = 3;
        }
      }
      else {
LAB_0010f558:
        uVar7 = (uint)uVar8;
        if ((ushort)DAT_00131794 < uVar10) {
          if (((DAT_00131794._2_2_ != 0) && (uVar7 = DAT_00131794._2_2_ + uVar7, 5 < bVar4)) &&
             (uVar12 < (uVar7 & 0xffff))) {
            uVar8 = (ulong)(uVar7 & 0xffff);
            goto LAB_0010f7c0;
          }
          if (iVar5 != 3) goto LAB_0010f590;
LAB_0010f5c8:
          if ((ushort)DAT_001318a4 < uVar10) {
            if (((DAT_001318a4._2_2_ != 0) && (uVar7 = DAT_001318a4._2_2_ + uVar7, 5 < bVar4)) &&
               (uVar12 < (uVar7 & 0xffff))) {
              uVar8 = (ulong)(uVar7 & 0xffff);
              goto LAB_0010f7c0;
            }
            if (iVar5 != 5) goto LAB_0010f600;
LAB_0010f638:
            if ((ushort)DAT_001319b4 < uVar11) {
              if (((DAT_001319b4._2_2_ == 0) || (uVar7 = DAT_001319b4._2_2_ + uVar7, bVar4 < 6)) ||
                 ((uVar7 & 0xffff) <= uVar12)) {
                if (iVar5 != 7) goto LAB_0010f670;
LAB_0010f6a8:
                if (uVar11 <= (ushort)DAT_00131ac4) {
                  uVar9 = 8;
                  goto LAB_0010f774;
                }
                if (((DAT_00131ac4._2_2_ == 0) || (uVar7 = DAT_00131ac4._2_2_ + uVar7, bVar4 < 6))
                   || ((uVar7 & 0xffff) <= uVar12)) {
                  if (iVar5 == 9) goto LAB_0010f710;
                  goto LAB_0010f6e0;
                }
                uVar8 = (ulong)(uVar7 & 0xffff);
              }
              else {
                uVar8 = (ulong)(uVar7 & 0xffff);
              }
              goto LAB_0010f7c0;
            }
            uVar9 = 6;
          }
          else {
            uVar9 = 4;
          }
        }
        else {
          uVar9 = 2;
        }
      }
    }
    else {
      uVar9 = 1;
    }
  }
  else {
    if ((uint)(ushort)DAT_00131684 < (uint)bVar3) {
      if (((DAT_00131684._2_2_ == 0) || (bVar4 < 6)) || (DAT_00131684._2_2_ <= uVar12)) {
        if (iVar5 != 1) goto LAB_0010f520;
        goto LAB_0010f558;
      }
      goto LAB_0010f7c0;
    }
    uVar9 = 0;
  }
LAB_0010f774:
  iVar5 = snprintf(__s,0x800,"single ghost detect,touch id:%d, count:%d ",uVar9);
LAB_0010f7d4:
  iVar6 = snprintf(__s + iVar5,(long)(0x800 - iVar5),"point_down_num: %d.",(ulong)uVar2);
  uVar12 = 0;
  lVar13 = -0x550;
  iVar6 = iVar6 + iVar5;
  do {
    if (*(short *)(lVar13 + 0x131bd6) != 0) {
      iVar5 = snprintf(__s + iVar6,(long)(0x800 - iVar6)," point[%d] down: %d, %d. ",(ulong)uVar12,
                       (ulong)*(uint *)(tpd_nb + lVar13 + 8),(ulong)*(uint *)(tpd_nb + lVar13 + 0xc)
                      );
      iVar5 = iVar5 + iVar6;
      iVar6 = snprintf(__s + iVar5,(long)(0x800 - iVar5)," point[%d] up: %d, %d. ",(ulong)uVar12,
                       (ulong)*(uint *)(tpd_nb + lVar13 + 0x14),
                       (ulong)*(uint *)((long)&ufp_tp_ops + lVar13));
      iVar6 = iVar6 + iVar5;
    }
    lVar13 = lVar13 + 0x88;
    uVar12 = uVar12 + 1;
  } while (lVar13 != 0);
  _printk(&DAT_00137a9e,"tp_ghost_check",__s);
  if (*(char **)(tpd_cdev + 0xbe8) != (char *)0x0) {
    snprintf(*(char **)(tpd_cdev + 0xbe8),0x800,__s);
  }
  tpd_zlog_record_notify(0x10);
  vfree(__s);
  return 1;
}

