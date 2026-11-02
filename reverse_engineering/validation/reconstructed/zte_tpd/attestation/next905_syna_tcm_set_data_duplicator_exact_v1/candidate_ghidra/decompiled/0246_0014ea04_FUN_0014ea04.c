
void FUN_0014ea04(void)

{
  code *pcVar1;
  undefined4 unaff_w19;
  undefined4 *unaff_x23;
  ulong unaff_x24;
  long unaff_x25;
  
  if ((point_report_info[0x51c] & 1) == 0) {
    input_event();
  }
  input_event();
  mutex_unlock(unaff_x25 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if ((unaff_x24 | 4) < 0x551) {
    _printk(&DAT_0016f152,"edge_long_press_up",unaff_w19,*unaff_x23,unaff_x23[1]);
    return;
  }
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(1,0x14ea74);
  (*pcVar1)();
}

