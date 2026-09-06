typedef int (*zte_touch_shutdown_callback_t)(struct ztp_device *cdev);

void zte_touch_shutdown(struct platform_device *pdev)
{
  __int64 v0; // x19
  __int64 v3; // x21
  __int64 v6; // x20
  __int64 v7; // x22
  zte_touch_shutdown_callback_t callback;

  (void)pdev;
  v0 = tpd_cdev;
  printk("\0015tpd: end %s, %d\n", "zte_touch_shutdown", 2912);
  callback = *(zte_touch_shutdown_callback_t *)(v0 + 3984);
  if ( callback )
    callback((struct ztp_device *)v0);

  v3 = tpd_cdev;
  printk("\0015tpd: %s enter", "tpd_workqueue_deinit");
  tpd_report_work_deinit();
  tpd_resume_work_deinit();

  v7 = tpd_cdev;
  printk("\0015tpd: %s enter", "tpd_probe_work_deinit");
  cancel_delayed_work_sync(v7 + 2256);

  v6 = tpd_cdev;
  printk("\0015tpd: %s enter", "zlog_register_work_deinit");
  cancel_delayed_work_sync(v6 + 2640);
  vfree(*(_QWORD *)(v6 + 3048));
  *(_QWORD *)(v6 + 3048) = 0;
  cancel_delayed_work_sync(v3 + 2360);
}
