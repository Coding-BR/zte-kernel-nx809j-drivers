
void tpd_workqueue_deinit(void)

{
  long lVar1;
  long lVar2;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_workqueue_deinit");
  tpd_report_work_deinit();
  tpd_resume_work_deinit();
  lVar2 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_probe_work_deinit");
  cancel_delayed_work_sync(lVar2 + 0x8d0);
  lVar2 = tpd_cdev;
  _printk(&DAT_00132ab3,"zlog_register_work_deinit");
  cancel_delayed_work_sync(lVar2 + 0xa50);
  vfree(*(undefined8 *)(lVar2 + 0xbe8));
  *(undefined8 *)(lVar2 + 0xbe8) = 0;
  cancel_delayed_work_sync(lVar1 + 0x938);
  return;
}

