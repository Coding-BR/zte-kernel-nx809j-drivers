
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_touch_release(long param_1,ushort param_2)

{
  long lVar1;
  int iVar2;
  int iVar3;
  code *pcVar4;
  uint uVar5;
  long lVar6;
  
  lVar1 = tpd_cdev;
  if (10 < param_2) {
                    /* WARNING: Does not return */
    pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x14d5a0);
    (*pcVar4)();
  }
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016fb7c,"tpd_touch_release",param_2);
  }
  if (param_2 == 10) {
                    /* WARNING: Does not return */
    pcVar4 = (code *)SoftwareBreakpoint(1,0x14d5a4);
    (*pcVar4)();
  }
  lVar6 = ((ulong)param_2 + (ulong)param_2 * 0x10) * 8;
  if (point_report_info[lVar6 + 0x53] != '\x01') {
    if (((*(char *)(tpd_cdev + 0x25) == '\x01') && ((point_report_info[lVar6 + 0x56] & 1) == 0)) &&
       (*(long *)(point_report_info + lVar6 + 0x70) != 0)) {
      uVar5 = jiffies_to_msecs(_jiffies - *(long *)(point_report_info + lVar6 + 0x70));
      if (uVar5 < *(ushort *)(lVar1 + 0x3c)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016d960,"edge_point_report",param_2);
      }
    }
    iVar3 = is_screen_off_awake_mode;
    iVar2 = is_fake_sleep_mode;
    *(undefined8 *)(point_report_info + lVar6 + 0x70) = 0;
    point_report_info[lVar6 + 0x53] = 0;
    *(undefined2 *)(point_report_info + lVar6 + 0x50) = 0;
    *(undefined4 *)(point_report_info + lVar6 + 0x55) = 0;
    *(undefined2 *)(point_report_info + lVar6 + 0x59) = 0;
    if (iVar2 != 0 || iVar3 != 0) {
      *(undefined4 *)(point_report_info + lVar6 + 0x3c) =
           *(undefined4 *)(point_report_info + lVar6 + 0x18);
      *(undefined4 *)(point_report_info + lVar6 + 0x40) =
           *(undefined4 *)(point_report_info + lVar6 + 0x1c);
      *(undefined8 *)(point_report_info + lVar6 + 0x48) =
           *(undefined8 *)(point_report_info + lVar6 + 0x60);
    }
    return;
  }
                    /* WARNING: Subroutine does not return */
  mutex_lock(tpd_cdev + 0xc90);
}

