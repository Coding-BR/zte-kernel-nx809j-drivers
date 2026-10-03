
void tpd_goodix_ts_suspend(long param_1)

{
  syna_dev_suspend(*(long *)(param_1 + 8) + 0x10);
  return;
}

