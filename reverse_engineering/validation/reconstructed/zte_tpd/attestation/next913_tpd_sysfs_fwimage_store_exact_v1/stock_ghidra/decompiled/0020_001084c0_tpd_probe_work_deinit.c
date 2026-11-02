
void tpd_probe_work_deinit(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_probe_work_deinit");
  cancel_delayed_work_sync(lVar1 + 0x8d0);
  return;
}

