
void FUN_0014e86c(undefined8 param_1)

{
  long lVar1;
  code *pcVar2;
  short unaff_w20;
  undefined4 *unaff_x23;
  ulong unaff_x24;
  
  lVar1 = tpd_cdev;
  mutex_lock(tpd_cdev + 0xc90);
  input_event(param_1,3,0x2f,unaff_w20);
  input_mt_report_slot_state(param_1,0,0);
  if (unaff_w20 == 0) {
LAB_0014e8b0:
    if (((point_report_info[0xdb] & 1) != 0) || ((point_report_info[0xdc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 2) goto LAB_0014e920;
LAB_0014e8d4:
    if (((point_report_info[0x1eb] & 1) != 0) || ((point_report_info[0x1ec] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 4) goto LAB_0014e944;
LAB_0014e968:
    if (((point_report_info[0x2fb] & 1) != 0) || ((point_report_info[0x2fc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 6) goto LAB_0014e98c;
LAB_0014e9b0:
    if (((point_report_info[0x40b] & 1) != 0) || ((point_report_info[0x40c] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 8) goto LAB_0014e9d4;
LAB_0014e9f8:
    if (((point_report_info[0x51b] & 1) != 0) || ((point_report_info[0x51c] & 1) != 0))
    goto LAB_0014ea24;
  }
  else {
    if (((point_report_info[0x53] & 1) != 0) || ((point_report_info[0x54] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 1) goto LAB_0014e8b0;
LAB_0014e920:
    if (((point_report_info[0x163] & 1) != 0) || ((point_report_info[0x164] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 3) goto LAB_0014e8d4;
LAB_0014e944:
    if (((point_report_info[0x273] & 1) != 0) || ((point_report_info[0x274] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 5) goto LAB_0014e968;
LAB_0014e98c:
    if (((point_report_info[899] & 1) != 0) || ((point_report_info[900] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 7) goto LAB_0014e9b0;
LAB_0014e9d4:
    if (((point_report_info[0x493] & 1) != 0) || ((point_report_info[0x494] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 9) goto LAB_0014e9f8;
  }
  input_event(param_1,1,0x14a,0);
LAB_0014ea24:
  input_event(param_1,0,0,0);
  mutex_unlock(lVar1 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if (0x550 < (unaff_x24 | 4)) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(1,0x14ea74);
    (*pcVar2)();
  }
  _printk(&DAT_0016f152,"edge_long_press_up",unaff_w20,*unaff_x23,unaff_x23[1]);
  return;
}

