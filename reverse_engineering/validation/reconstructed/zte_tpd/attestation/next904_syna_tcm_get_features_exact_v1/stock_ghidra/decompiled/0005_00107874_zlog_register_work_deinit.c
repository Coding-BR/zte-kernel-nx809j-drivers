
void zlog_register_work_deinit(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"zlog_register_work_deinit");
  cancel_delayed_work_sync(lVar1 + 0xa50);
  vfree(*(undefined8 *)(lVar1 + 0xbe8));
  *(undefined8 *)(lVar1 + 0xbe8) = 0;
  return;
}

