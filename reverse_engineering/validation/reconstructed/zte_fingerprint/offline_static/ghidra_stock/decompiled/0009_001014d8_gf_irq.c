
undefined8 gf_irq(void)

{
  long lVar1;
  undefined1 local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 1;
  pm_wakeup_ws_event(fp_wakelock,0x9c4,0);
  _printk(&DAT_00103ad9);
  sendnlmsg(local_1c);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

