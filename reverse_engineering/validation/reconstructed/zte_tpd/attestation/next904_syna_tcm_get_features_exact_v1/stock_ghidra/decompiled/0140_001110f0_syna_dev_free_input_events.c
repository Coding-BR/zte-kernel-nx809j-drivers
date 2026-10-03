
void syna_dev_free_input_events(long param_1)

{
  long lVar1;
  int iVar2;
  
  lVar1 = *(long *)(param_1 + 0x3b0);
  if (lVar1 != 0) {
    mutex_lock(param_1 + 0x278);
    iVar2 = 0;
    do {
      input_event(lVar1,3,0x2f,iVar2);
      input_mt_report_slot_state(lVar1,0,0);
      tpd_touch_release(lVar1,iVar2);
      one_key_report(0,0xffffffff,0xffffffff,iVar2);
      iVar2 = iVar2 + 1;
    } while (iVar2 != 10);
    input_event(lVar1,1,0x14a,0);
    input_event(lVar1,1,0x145,0);
    if (DAT_00131c40._1_1_ != '\0' || (char)DAT_00131c40 != '\0') {
      DAT_00131c42 = 1;
      _printk(&DAT_0013aee5,"syna_dev_free_input_events");
    }
    report_ufp_uevent(0);
    input_event(lVar1,0,0,0);
    mutex_unlock(param_1 + 0x278);
  }
  return;
}

