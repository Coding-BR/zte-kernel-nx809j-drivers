
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_touch_release(long param_1,ushort param_2)

{
  long lVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  char cVar6;
  char cVar7;
  byte bVar8;
  undefined2 uVar9;
  undefined2 uVar10;
  int iVar11;
  long lVar12;
  code *pcVar13;
  uint uVar14;
  ulong uVar15;
  undefined *puVar16;
  long lVar17;
  short sVar18;
  undefined8 uVar19;
  ulong uVar20;
  
  lVar12 = tpd_cdev;
  if (10 < param_2) {
                    /* WARNING: Does not return */
    pcVar13 = (code *)SoftwareBreakpoint(0x5512,0x10f1fc);
    (*pcVar13)();
  }
  if (param_1 == 0) {
    _printk(&DAT_0013aeb8,"tpd_touch_release",param_2);
    return;
  }
  if (param_2 == 10) {
LAB_0010f1fc:
                    /* WARNING: Does not return */
    pcVar13 = (code *)SoftwareBreakpoint(1,0x10f200);
    (*pcVar13)();
  }
  lVar1 = (ulong)param_2 + (ulong)param_2 * 0x10;
  uVar20 = lVar1 * 8;
  puVar2 = (undefined4 *)(&point_report_info + uVar20);
  if (*(char *)((long)&DAT_00131678 + uVar20 + 3) == '\x01') {
    mutex_lock(tpd_cdev + 0xc90);
    input_event(param_1,3,0x2f,param_2);
    input_mt_report_slot_state(param_1,0,0);
    uVar15 = jiffies_to_msecs(_jiffies - *(long *)(&DAT_00131688 + uVar20));
    uVar4 = (&DAT_0013164c)[lVar1 * 2];
    uVar5 = (&DAT_00131650)[lVar1 * 2];
    *(ulong *)(&DAT_001316a0 + uVar20) = uVar15 & 0xffffffff;
    _printk(&DAT_0013cb8f,param_2,uVar4,uVar5);
    if ((is_fake_sleep_mode != 0) &&
       (uVar14 = jiffies_to_msecs(_jiffies - *(long *)(&DAT_00131688 + uVar20)), uVar14 < 0x96)) {
      iVar11 = (&DAT_00131640)[lVar1 * 2] - (&DAT_0013164c)[lVar1 * 2];
      iVar3 = -iVar11;
      if (-1 < iVar11) {
        iVar3 = iVar11;
      }
      if (iVar3 < 0x32) {
        iVar11 = (&DAT_00131644)[lVar1 * 2] - (&DAT_00131650)[lVar1 * 2];
        iVar3 = -iVar11;
        if (-1 < iVar11) {
          iVar3 = iVar11;
        }
        if (iVar3 < 0x32) {
          ufp_report_gesture_uevent("single_tap=true");
        }
      }
    }
    if (((is_fake_sleep_mode != 0 || is_screen_off_awake_mode != 0) &&
        (uVar14 = jiffies_to_msecs(_jiffies - *(long *)(&DAT_00131670 + uVar20)), uVar14 < 300)) &&
       (uVar14 = jiffies_to_msecs(_jiffies - *(long *)(&DAT_00131688 + uVar20)), uVar14 < 0x96)) {
      iVar11 = (&DAT_00131640)[lVar1 * 2] - (&DAT_0013164c)[lVar1 * 2];
      iVar3 = -iVar11;
      if (-1 < iVar11) {
        iVar3 = iVar11;
      }
      if (iVar3 < 0x32) {
        iVar11 = (&DAT_00131644)[lVar1 * 2] - (&DAT_00131650)[lVar1 * 2];
        iVar3 = -iVar11;
        if (-1 < iVar11) {
          iVar3 = iVar11;
        }
        if (iVar3 < 0x32) {
          iVar11 = (&DAT_00131640)[lVar1 * 2] - *(int *)(&DAT_00131664 + uVar20);
          iVar3 = -iVar11;
          if (-1 < iVar11) {
            iVar3 = iVar11;
          }
          if (iVar3 < 1000) {
            iVar11 = (&DAT_00131644)[lVar1 * 2] - *(int *)(&DAT_00131668 + uVar20);
            iVar3 = -iVar11;
            if (-1 < iVar11) {
              iVar3 = iVar11;
            }
            if (iVar3 < 1000) {
              ufp_report_gesture_uevent("double_tap=true");
            }
          }
        }
      }
    }
    mutex_unlock(lVar12 + 0xc90);
    if ((*(ulong *)(&DAT_001316a0 + uVar20) < (ulong)*(byte *)(lVar12 + 0x495)) &&
       (((&DAT_00131682)[uVar20] & 1) == 0)) {
      if ((*(byte *)(lVar12 + 0x488) & 1) == 0) {
        _printk(&DAT_0013df38);
        *(undefined1 *)(lVar12 + 0x488) = 1;
        queue_delayed_work_on(0x20,*(undefined8 *)(lVar12 + 0x4b0),lVar12 + 0x938,500);
      }
      lVar17 = 0x491;
      if (2 < *(int *)(lVar12 + 0x48c)) {
        lVar17 = 0x492;
      }
      bVar8 = *(byte *)(lVar12 + lVar17);
      uVar15 = ghost_check_area(puVar2);
      if ((uVar15 & 1) == 0) {
        sVar18 = *(short *)((long)&DAT_00131684 + uVar20 + 2);
      }
      else {
        if (*(ulong *)(&DAT_001316a0 + uVar20) < (ulong)bVar8) {
          sVar18 = *(short *)((long)&DAT_00131684 + uVar20 + 2);
          *(short *)(&DAT_00131684 + lVar1 * 2) = *(short *)(&DAT_00131684 + lVar1 * 2) + 1;
        }
        else {
          sVar18 = *(short *)((long)&DAT_00131684 + uVar20 + 2);
        }
        sVar18 = sVar18 + 1;
        *(short *)((long)&DAT_00131684 + uVar20 + 2) = sVar18;
      }
      _printk(&DAT_0013b543,param_2,*(undefined2 *)(&DAT_00131684 + lVar1 * 2),sVar18);
    }
    *(int *)(lVar12 + 0x48c) = *(int *)(lVar12 + 0x48c) + -1;
  }
  if (((*(char *)(lVar12 + 0x25) != '\x01') ||
      ((*(byte *)((long)&DAT_00131678 + uVar20 + 6) & 1) != 0)) ||
     ((*(long *)(&DAT_00131698 + uVar20) == 0 ||
      (uVar14 = jiffies_to_msecs(_jiffies - *(long *)(&DAT_00131698 + uVar20)), lVar17 = tpd_cdev,
      *(ushort *)(lVar12 + 0x3c) <= uVar14)))) goto LAB_0010ed1c;
  _printk(&DAT_00138d2b,"edge_point_report",param_2);
  if (*(long *)(lVar17 + 0x4b8) == 0) {
    puVar16 = &DAT_0013d9bb;
  }
  else {
    if ((((((((DAT_00131678._3_1_ & 1) == 0) && ((DAT_00131700._3_1_ & 1) == 0)) &&
           ((DAT_00131788._3_1_ & 1) == 0)) &&
          (((DAT_00131810._3_1_ & 1) == 0 && ((DAT_00131898._3_1_ & 1) == 0)))) &&
         (((DAT_00131920._3_1_ & 1) == 0 &&
          (((DAT_001319a8._3_1_ & 1) == 0 && ((DAT_00131a30._3_1_ & 1) == 0)))))) &&
        ((DAT_00131ab8._3_1_ & 1) == 0)) && (DAT_00131b40._3_1_ != '\x01')) {
      mutex_lock(lVar17 + 0xc90);
      if ((0x550 < ((ulong)param_2 * 0x88 | 4)) || (0x550 < (uVar20 | 4))) goto LAB_0010f1fc;
      uVar19 = (&DAT_001316a8)[lVar1];
      uVar9 = *(undefined2 *)puVar2;
      uVar10 = *(undefined2 *)(&DAT_0013162c + uVar20);
      cVar6 = (&DAT_00131630)[uVar20];
      cVar7 = (&DAT_00131631)[uVar20];
      input_event(uVar19,3,0x2f,param_2);
      input_mt_report_slot_state(uVar19,0,1);
      input_event(uVar19,1,0x14a,1);
      input_event(uVar19,3,0x35,uVar9);
      input_event(uVar19,3,0x36,uVar10);
      if (cVar7 != '\0') {
        input_event(uVar19,3,0x3a,cVar7);
      }
      if (cVar6 != '\0') {
        input_event(uVar19,3,0x30,cVar6);
      }
      input_event((&DAT_001316a8)[lVar1],0,0,0);
      uVar4 = *puVar2;
      uVar5 = *(undefined4 *)(&DAT_0013162c + uVar20);
      *(undefined1 *)((long)&DAT_00131678 + uVar20 + 4) = 1;
      _printk(&DAT_00136450,"edge_point_report",param_2,uVar4,uVar5);
      mutex_unlock(lVar17 + 0xc90);
      if (param_2 < 5) {
        if (param_2 < 2) {
          if (param_2 == 0) {
            uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
            lVar17 = lVar17 + 0x4c0;
          }
          else {
            if (param_2 != 1) {
LAB_0010f290:
              _printk(&DAT_00134a75,"edge_point_report",param_2);
              goto LAB_0010ed1c;
            }
            uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
            lVar17 = lVar17 + 0x528;
          }
        }
        else if (param_2 == 2) {
          uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
          lVar17 = lVar17 + 0x590;
        }
        else if (param_2 == 3) {
          uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
          lVar17 = lVar17 + 0x5f8;
        }
        else {
          if (param_2 != 4) goto LAB_0010f290;
          uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
          lVar17 = lVar17 + 0x660;
        }
      }
      else if (param_2 < 7) {
        if (param_2 == 5) {
          uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
          lVar17 = lVar17 + 0x6c8;
        }
        else {
          if (param_2 != 6) goto LAB_0010f290;
          uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
          lVar17 = lVar17 + 0x730;
        }
      }
      else if (param_2 == 7) {
        uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
        lVar17 = lVar17 + 0x798;
      }
      else if (param_2 == 8) {
        uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
        lVar17 = lVar17 + 0x800;
      }
      else {
        if (param_2 != 9) goto LAB_0010f290;
        uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
        lVar17 = lVar17 + 0x868;
      }
      queue_delayed_work_on(0x20,uVar19,lVar17,0xd);
      goto LAB_0010ed1c;
    }
    puVar16 = &DAT_0013c525;
  }
  _printk(puVar16,"edge_point_report");
LAB_0010ed1c:
  iVar11 = is_screen_off_awake_mode;
  iVar3 = is_fake_sleep_mode;
  *(undefined8 *)(&DAT_00131698 + uVar20) = 0;
  *(undefined1 *)((long)&DAT_00131678 + uVar20 + 3) = 0;
  *(undefined2 *)(&DAT_00131678 + lVar1) = 0;
  *(undefined4 *)((long)&DAT_00131678 + uVar20 + 5) = 0;
  *(undefined2 *)(&DAT_00131681 + uVar20) = 0;
  if (iVar3 != 0 || iVar11 != 0) {
    uVar4 = (&DAT_00131644)[lVar1 * 2];
    *(undefined4 *)(&DAT_00131664 + uVar20) = (&DAT_00131640)[lVar1 * 2];
    *(undefined4 *)(&DAT_00131668 + uVar20) = uVar4;
    *(undefined8 *)(&DAT_00131670 + uVar20) = *(undefined8 *)(&DAT_00131688 + uVar20);
  }
  return;
}

