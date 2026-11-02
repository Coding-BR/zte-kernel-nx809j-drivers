
void tpd_report_work_deinit(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_report_work_deinit");
  cancel_delayed_work_sync(lVar1 + 0x4c0);
  cancel_delayed_work_sync(lVar1 + 0x528);
  cancel_delayed_work_sync(lVar1 + 0x590);
  cancel_delayed_work_sync(lVar1 + 0x5f8);
  cancel_delayed_work_sync(lVar1 + 0x660);
  cancel_delayed_work_sync(lVar1 + 0x6c8);
  cancel_delayed_work_sync(lVar1 + 0x730);
  cancel_delayed_work_sync(lVar1 + 0x798);
  cancel_delayed_work_sync(lVar1 + 0x800);
  cancel_delayed_work_sync(lVar1 + 0x868);
  return;
}

