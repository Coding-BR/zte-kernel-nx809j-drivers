void tpd_probe_work_deinit(void)
{
  __int64 v3; // x19

  v3 = tpd_cdev;
  printk(unk_322AA, "tpd_probe_work_deinit");
  cancel_delayed_work_sync(v3 + 2256);
}
