
void edge_long_press_up(undefined8 param_1,ushort param_2)

{
  long lVar1;
  code *pcVar2;
  ulong uVar3;
  
  lVar1 = tpd_cdev;
  if (9 < param_2) goto LAB_00110318;
  uVar3 = ((ulong)param_2 + (ulong)param_2 * 0x10) * 8;
  if (*(char *)((long)&DAT_00131678 + uVar3 + 4) == '\0') {
    return;
  }
  mutex_lock(tpd_cdev + 0xc90);
  input_event(param_1,3,0x2f,param_2);
  input_mt_report_slot_state(param_1,0,0);
  if (param_2 == 0) {
LAB_00110158:
    if (((DAT_00131700._3_1_ & 1) == 0) && ((DAT_00131700._4_1_ & 1) == 0)) {
      if (param_2 != 2) goto LAB_001101c8;
LAB_0011017c:
      if (((DAT_00131810._3_1_ & 1) == 0) && ((DAT_00131810._4_1_ & 1) == 0)) {
        if (param_2 != 4) goto LAB_001101ec;
LAB_00110210:
        if (((DAT_00131920._3_1_ & 1) == 0) && ((DAT_00131920._4_1_ & 1) == 0)) {
          if (param_2 != 6) goto LAB_00110234;
LAB_00110258:
          if (((DAT_00131a30._3_1_ & 1) == 0) && ((DAT_00131a30._4_1_ & 1) == 0)) {
            if (param_2 != 8) goto LAB_0011027c;
LAB_001102a0:
            if (((DAT_00131b40._3_1_ & 1) == 0) && ((DAT_00131b40._4_1_ & 1) == 0)) {
LAB_001102b8:
              input_event(param_1,1,0x14a,0);
            }
          }
        }
      }
    }
  }
  else if (((DAT_00131678._3_1_ & 1) == 0) && ((DAT_00131678._4_1_ & 1) == 0)) {
    if (param_2 != 1) goto LAB_00110158;
LAB_001101c8:
    if (((DAT_00131788._3_1_ & 1) == 0) && ((DAT_00131788._4_1_ & 1) == 0)) {
      if (param_2 != 3) goto LAB_0011017c;
LAB_001101ec:
      if (((DAT_00131898._3_1_ & 1) == 0) && ((DAT_00131898._4_1_ & 1) == 0)) {
        if (param_2 != 5) goto LAB_00110210;
LAB_00110234:
        if (((DAT_001319a8._3_1_ & 1) == 0) && ((DAT_001319a8._4_1_ & 1) == 0)) {
          if (param_2 != 7) goto LAB_00110258;
LAB_0011027c:
          if (((DAT_00131ab8._3_1_ & 1) == 0) && ((DAT_00131ab8._4_1_ & 1) == 0)) {
            if (param_2 != 9) goto LAB_001102a0;
            goto LAB_001102b8;
          }
        }
      }
    }
  }
  input_event(param_1,0,0,0);
  mutex_unlock(lVar1 + 0xc90);
  *(undefined1 *)((long)&DAT_00131678 + uVar3 + 4) = 0;
  if ((uVar3 | 4) < 0x551) {
    _printk(&DAT_0013a4f6,"edge_long_press_up",param_2,*(undefined4 *)(&point_report_info + uVar3),
            *(undefined4 *)(&DAT_0013162c + uVar3));
    return;
  }
LAB_00110318:
                    /* WARNING: Does not return */
  pcVar2 = (code *)SoftwareBreakpoint(1,0x11031c);
  (*pcVar2)();
}

