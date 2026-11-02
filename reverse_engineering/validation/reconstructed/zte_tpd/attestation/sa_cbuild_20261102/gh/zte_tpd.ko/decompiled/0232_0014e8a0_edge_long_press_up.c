
void edge_long_press_up(undefined8 param_1,ushort param_2)

{
  code *pcVar1;
  
  if (9 < param_2) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14eb10);
    (*pcVar1)();
  }
  if (point_report_info[((ulong)param_2 + (ulong)param_2 * 0x10) * 8 + 0x54] == '\0') {
    return;
  }
                    /* WARNING: Subroutine does not return */
  mutex_lock(tpd_cdev + 0xc90);
}

