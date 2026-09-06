
undefined8 tp_ghost_check(void)

{
  long lVar1;
  uint uVar2;
  byte bVar3;
  byte bVar4;
  int iVar5;
  int iVar6;
  char *__s;
  undefined8 uVar7;
  uint uVar8;
  ulong uVar9;
  ushort uVar10;
  uint uVar12;
  long lVar13;
  ushort uVar11;
  
  lVar13 = tpd_cdev;
  __s = (char *)vmalloc_noprof(0x800);
  if (__s == (char *)0x0) {
    uVar7 = _printk(&DAT_0016e062);
    return uVar7;
  }
  uVar9 = (ulong)(ushort)point_report_info._94_2_;
  bVar4 = point_report_info._230_2_ != 0;
  if (point_report_info._94_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (point_report_info._366_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  iVar5 = *(int *)(lVar13 + 0x498);
  if (point_report_info._502_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (point_report_info._638_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (point_report_info._774_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (point_report_info._910_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (point_report_info._1046_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (point_report_info._1182_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (point_report_info._1318_2_ != 0) {
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
    uVar9 = 0;
LAB_0014d828:
    if ((ushort)point_report_info._228_2_ < uVar10) {
      if (point_report_info._230_2_ != 0) {
        uVar8 = (uint)(ushort)point_report_info._230_2_ + (int)uVar9;
        uVar9 = (ulong)uVar8;
        if ((5 < bVar4) && (uVar8 = uVar8 & 0xffff, uVar12 < uVar8)) {
          uVar9 = (ulong)uVar8;
          goto LAB_0014dac8;
        }
      }
      uVar8 = (uint)uVar9;
      if (iVar5 == 2) {
LAB_0014d898:
        if ((ushort)point_report_info._500_2_ < uVar10) {
          if (((point_report_info._502_2_ != 0) &&
              (uVar8 = (ushort)point_report_info._502_2_ + uVar8, 5 < bVar4)) &&
             (uVar12 < (uVar8 & 0xffff))) {
            uVar9 = (ulong)(uVar8 & 0xffff);
            goto LAB_0014dac8;
          }
          if (iVar5 != 4) goto LAB_0014d8d0;
LAB_0014d908:
          if ((ushort)point_report_info._772_2_ < uVar11) {
            if (((point_report_info._774_2_ == 0) ||
                (uVar8 = (ushort)point_report_info._774_2_ + uVar8, bVar4 < 6)) ||
               ((uVar8 & 0xffff) <= uVar12)) {
              if (iVar5 != 6) goto LAB_0014d940;
LAB_0014d978:
              if (uVar11 <= (ushort)point_report_info._1044_2_) {
                uVar7 = 7;
                goto LAB_0014da7c;
              }
              if (((point_report_info._1046_2_ == 0) ||
                  (uVar8 = (ushort)point_report_info._1046_2_ + uVar8, bVar4 < 6)) ||
                 ((uVar8 & 0xffff) <= uVar12)) {
                if (iVar5 != 8) goto LAB_0014d9b0;
LAB_0014d9e8:
                if (uVar10 <= (ushort)point_report_info._1316_2_) {
                  uVar7 = 9;
                  goto LAB_0014da7c;
                }
                if (((point_report_info._1318_2_ == 0) || (bVar4 < 6)) ||
                   (uVar8 = (ushort)point_report_info._1318_2_ + uVar8 & 0xffff,
                   uVar9 = (ulong)uVar8, uVar8 <= uVar12)) {
LAB_0014da18:
                  vfree(__s);
                  return 0;
                }
              }
              else {
                uVar9 = (ulong)(uVar8 & 0xffff);
              }
            }
            else {
              uVar9 = (ulong)(uVar8 & 0xffff);
            }
LAB_0014dac8:
            iVar5 = snprintf(__s,0x800,"multi ghost detect,ghost_count:%d. ",uVar9);
            goto LAB_0014dadc;
          }
          uVar7 = 5;
        }
        else {
          uVar7 = 3;
        }
      }
      else {
LAB_0014d860:
        uVar8 = (uint)uVar9;
        if ((ushort)point_report_info._364_2_ < uVar10) {
          if (((point_report_info._366_2_ != 0) &&
              (uVar8 = (ushort)point_report_info._366_2_ + uVar8, 5 < bVar4)) &&
             (uVar12 < (uVar8 & 0xffff))) {
            uVar9 = (ulong)(uVar8 & 0xffff);
            goto LAB_0014dac8;
          }
          if (iVar5 != 3) goto LAB_0014d898;
LAB_0014d8d0:
          if ((ushort)point_report_info._636_2_ < uVar10) {
            if (((point_report_info._638_2_ != 0) &&
                (uVar8 = (ushort)point_report_info._638_2_ + uVar8, 5 < bVar4)) &&
               (uVar12 < (uVar8 & 0xffff))) {
              uVar9 = (ulong)(uVar8 & 0xffff);
              goto LAB_0014dac8;
            }
            if (iVar5 != 5) goto LAB_0014d908;
LAB_0014d940:
            if ((ushort)point_report_info._908_2_ < uVar11) {
              if (((point_report_info._910_2_ == 0) ||
                  (uVar8 = (ushort)point_report_info._910_2_ + uVar8, bVar4 < 6)) ||
                 ((uVar8 & 0xffff) <= uVar12)) {
                if (iVar5 != 7) goto LAB_0014d978;
LAB_0014d9b0:
                if (uVar11 <= (ushort)point_report_info._1180_2_) {
                  uVar7 = 8;
                  goto LAB_0014da7c;
                }
                if (((point_report_info._1182_2_ == 0) ||
                    (uVar8 = (ushort)point_report_info._1182_2_ + uVar8, bVar4 < 6)) ||
                   ((uVar8 & 0xffff) <= uVar12)) {
                  if (iVar5 == 9) goto LAB_0014da18;
                  goto LAB_0014d9e8;
                }
                uVar9 = (ulong)(uVar8 & 0xffff);
              }
              else {
                uVar9 = (ulong)(uVar8 & 0xffff);
              }
              goto LAB_0014dac8;
            }
            uVar7 = 6;
          }
          else {
            uVar7 = 4;
          }
        }
        else {
          uVar7 = 2;
        }
      }
    }
    else {
      uVar7 = 1;
    }
  }
  else {
    if ((uint)(ushort)point_report_info._92_2_ < (uint)bVar3) {
      if (((point_report_info._94_2_ == 0) || (bVar4 < 6)) ||
         ((ushort)point_report_info._94_2_ <= uVar12)) {
        if (iVar5 != 1) goto LAB_0014d828;
        goto LAB_0014d860;
      }
      goto LAB_0014dac8;
    }
    uVar7 = 0;
  }
LAB_0014da7c:
  iVar5 = snprintf(__s,0x800,"single ghost detect,touch id:%d, count:%d ",uVar7);
LAB_0014dadc:
  iVar6 = snprintf(__s + iVar5,(long)(0x800 - iVar5),"point_down_num: %d.",(ulong)uVar2);
  uVar12 = 0;
  lVar13 = -0x550;
  iVar6 = iVar6 + iVar5;
  do {
    if (*(short *)(dummy_task_struct + lVar13 + 0x46) != 0) {
      iVar5 = snprintf(__s + iVar6,(long)(0x800 - iVar6)," point[%d] down: %d, %d. ",(ulong)uVar12,
                       (ulong)*(uint *)(dummy_task_struct + lVar13),
                       (ulong)*(uint *)(dummy_task_struct + lVar13 + 4));
      iVar5 = iVar5 + iVar6;
      iVar6 = snprintf(__s + iVar5,(long)(0x800 - iVar5)," point[%d] up: %d, %d. ",(ulong)uVar12,
                       (ulong)*(uint *)(dummy_task_struct + lVar13 + 0xc),
                       (ulong)*(uint *)(dummy_task_struct + lVar13 + 0x10));
      iVar6 = iVar6 + iVar5;
    }
    lVar13 = lVar13 + 0x88;
    uVar12 = uVar12 + 1;
  } while (lVar13 != 0);
  uVar7 = _printk(&DAT_0016c622,"tp_ghost_check",__s);
  return uVar7;
}

