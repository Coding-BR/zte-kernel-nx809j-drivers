void tpd_resume_work_deinit(void)
{
  __int64 v3; // x19

  v3 = tpd_cdev;
  printk(unk_322AA, "tpd_resume_work_deinit");
  cancel_work_sync(v3 + 2496);
  cancel_work_sync(v3 + 2464);
  cancel_delayed_work_sync(v3 + 2528);
}
