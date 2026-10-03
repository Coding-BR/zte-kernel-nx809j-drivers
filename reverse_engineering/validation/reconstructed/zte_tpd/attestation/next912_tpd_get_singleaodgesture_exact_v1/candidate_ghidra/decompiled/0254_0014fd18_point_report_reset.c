
void point_report_reset(uint param_1)

{
  code *pcVar1;
  
  if (9 < param_1) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14fdf0);
    (*pcVar1)();
  }
  if (point_report_info[(ulong)param_1 * 0x88 + 0x54] != '\x01') {
    return;
  }
  _printk(&DAT_0016c114,"point_report_reset",param_1);
  return;
}

