void ztp_probe_work(struct work_struct *work)
{
  (void)work;
  printk("\0015tpd: ztp_probe_work in");
  syna_dev_module_init();
}
