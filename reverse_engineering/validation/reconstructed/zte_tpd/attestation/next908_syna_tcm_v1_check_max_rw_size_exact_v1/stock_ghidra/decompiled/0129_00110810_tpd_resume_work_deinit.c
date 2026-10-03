
void tpd_resume_work_deinit(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_resume_work_deinit");
  cancel_work_sync(lVar1 + 0x9c0);
  cancel_work_sync(lVar1 + 0x9a0);
  cancel_delayed_work_sync(lVar1 + 0x9e0);
  return;
}

