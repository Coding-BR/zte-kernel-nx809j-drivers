
void point_report_reset(uint param_1)

{
  ulong uVar1;
  long lVar2;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  if (param_1 < 10) {
    uVar1 = (ulong)param_1;
    if (*(char *)((long)&DAT_00131678 + uVar1 * 0x88 + 4) == '\x01') {
      _printk(&DAT_001375a3,"point_report_reset",param_1);
      *(undefined1 *)((long)&DAT_00131678 + uVar1 * 0x88 + 4) = 0;
      mutex_lock(lVar2 + 0xc90);
      input_event((&DAT_001316a8)[uVar1 * 0x11],3,0x2f,param_1);
      input_mt_report_slot_state((&DAT_001316a8)[uVar1 * 0x11],0,0);
      input_event((&DAT_001316a8)[uVar1 * 0x11],0,0,0);
      mutex_unlock(lVar2 + 0xc90);
      usleep_range_state(1000,0x44c,2);
    }
    return;
  }
                    /* WARNING: Does not return */
  pcVar3 = (code *)SoftwareBreakpoint(1,0x10eb70);
  (*pcVar3)();
}

