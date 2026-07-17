void ztp_probe_work(struct work_struct *work)
{
  (void)work;
  __int64 v3; // x0

  v3 = printk(unk_33A5E);
  syna_dev_module_init(v3);
}
