void tpd_workqueue_deinit(void)
{
  __int64 v3; // x21
  __int64 v6; // x20

  v3 = tpd_cdev;
  printk(unk_322AA, "tpd_workqueue_deinit");
  tpd_report_work_deinit();
  tpd_resume_work_deinit();
  v6 = tpd_cdev;
  printk(unk_322AA, "tpd_probe_work_deinit");
  cancel_delayed_work_sync(v6 + 2256);
  zlog_register_work_deinit();
  cancel_delayed_work_sync(v3 + 2360);
}
