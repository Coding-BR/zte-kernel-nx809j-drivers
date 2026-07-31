void tpd_resume_work_deinit(void)
{
  long long cdev;

  cdev = tpd_cdev;
  printk("\0015tpd: %s enter", "tpd_resume_work_deinit");
  cancel_work_sync(cdev + 0x9c0);
  cancel_work_sync(cdev + 0x9a0);
  cancel_delayed_work_sync(cdev + 0x9e0);
}
