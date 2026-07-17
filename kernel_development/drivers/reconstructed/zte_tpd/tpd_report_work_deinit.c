void tpd_report_work_deinit(void)
{
  __int64 v3; // x19

  v3 = tpd_cdev;
  printk(unk_322AA, "tpd_report_work_deinit");
  cancel_delayed_work_sync(v3 + 1216);
  cancel_delayed_work_sync(v3 + 1320);
  cancel_delayed_work_sync(v3 + 1424);
  cancel_delayed_work_sync(v3 + 1528);
  cancel_delayed_work_sync(v3 + 1632);
  cancel_delayed_work_sync(v3 + 1736);
  cancel_delayed_work_sync(v3 + 1840);
  cancel_delayed_work_sync(v3 + 1944);
  cancel_delayed_work_sync(v3 + 2048);
  cancel_delayed_work_sync(v3 + 2152);
}
