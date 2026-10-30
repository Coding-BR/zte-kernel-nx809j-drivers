
void FUN_0014e928(ulong param_1)

{
  code *pcVar1;
  undefined4 unaff_w19;
  short unaff_w20;
  undefined4 *unaff_x23;
  ulong unaff_x24;
  long unaff_x25;
  
  if (((param_1 & 1) != 0) || ((point_report_info[0x164] & 1) != 0)) goto LAB_0014ea24;
  if (unaff_w20 == 3) {
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
  else {
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
  input_event();
LAB_0014ea24:
  input_event();
  mutex_unlock(unaff_x25 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if (0x550 < (unaff_x24 | 4)) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14ea74);
    (*pcVar1)();
  }
  _printk(&DAT_0016f152,"edge_long_press_up",unaff_w19,*unaff_x23,unaff_x23[1]);
  return;
}

