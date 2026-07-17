void zte_touch_shutdown(struct platform_device *pdev)
{
  __int64 v0; // x19
  void (__fastcall *v2)(_QWORD); // x8
  __int64 v3; // x21
  __int64 v6; // x20

  (void)pdev;
  v0 = tpd_cdev;
  printk(unk_38656, "zte_touch_shutdown", 2912);
  v2 = *(void (__fastcall **)(_QWORD))(v0 + 3544);
  if ( v2 )
  {
    /* CFI check removed */
    v2(v0);
  }
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
