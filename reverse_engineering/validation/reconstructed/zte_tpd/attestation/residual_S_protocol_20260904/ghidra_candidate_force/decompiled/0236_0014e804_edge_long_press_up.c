
void edge_long_press_up(undefined8 param_1,ushort param_2)

{
  long lVar1;
  code *pcVar2;
  ulong uVar3;
  
  lVar1 = tpd_cdev;
  if (9 < param_2) goto LAB_0014ea70;
  uVar3 = ((ulong)param_2 + (ulong)param_2 * 0x10) * 8;
  if (point_report_info[uVar3 + 0x54] == '\0') {
    return;
  }
  mutex_lock(tpd_cdev + 0xc90);
  input_event(param_1,3,0x2f,param_2);
  input_mt_report_slot_state(param_1,0,0);
  if (param_2 == 0) {
LAB_0014e8b0:
    if (((point_report_info[0xdb] & 1) == 0) && ((point_report_info[0xdc] & 1) == 0)) {
      if (param_2 != 2) goto LAB_0014e920;
LAB_0014e8d4:
      if (((point_report_info[0x1eb] & 1) == 0) && ((point_report_info[0x1ec] & 1) == 0)) {
        if (param_2 != 4) goto LAB_0014e944;
LAB_0014e968:
        if (((point_report_info[0x2fb] & 1) == 0) && ((point_report_info[0x2fc] & 1) == 0)) {
          if (param_2 != 6) goto LAB_0014e98c;
LAB_0014e9b0:
          if (((point_report_info[0x40b] & 1) == 0) && ((point_report_info[0x40c] & 1) == 0)) {
            if (param_2 != 8) goto LAB_0014e9d4;
LAB_0014e9f8:
            if (((point_report_info[0x51b] & 1) == 0) && ((point_report_info[0x51c] & 1) == 0)) {
LAB_0014ea10:
              input_event(param_1,1,0x14a,0);
            }
          }
        }
      }
    }
  }
  else if (((point_report_info[0x53] & 1) == 0) && ((point_report_info[0x54] & 1) == 0)) {
    if (param_2 != 1) goto LAB_0014e8b0;
LAB_0014e920:
    if (((point_report_info[0x163] & 1) == 0) && ((point_report_info[0x164] & 1) == 0)) {
      if (param_2 != 3) goto LAB_0014e8d4;
LAB_0014e944:
      if (((point_report_info[0x273] & 1) == 0) && ((point_report_info[0x274] & 1) == 0)) {
        if (param_2 != 5) goto LAB_0014e968;
LAB_0014e98c:
        if (((point_report_info[899] & 1) == 0) && ((point_report_info[900] & 1) == 0)) {
          if (param_2 != 7) goto LAB_0014e9b0;
LAB_0014e9d4:
          if (((point_report_info[0x493] & 1) == 0) && ((point_report_info[0x494] & 1) == 0)) {
            if (param_2 != 9) goto LAB_0014e9f8;
            goto LAB_0014ea10;
          }
        }
      }
    }
  }
  input_event(param_1,0,0,0);
  mutex_unlock(lVar1 + 0xc90);
  point_report_info[uVar3 + 0x54] = 0;
  if ((uVar3 | 4) < 0x551) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f152,"edge_long_press_up",param_2,*(undefined4 *)(point_report_info + uVar3),
            *(undefined4 *)(point_report_info + uVar3 + 4));
  }
LAB_0014ea70:
                    /* WARNING: Does not return */
  pcVar2 = (code *)SoftwareBreakpoint(1,0x14ea74);
  (*pcVar2)();
}

