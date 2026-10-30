
void tpd_goodix_ts_resume(long param_1)

{
  syna_dev_resume(*(long *)(param_1 + 8) + 0x10);
  return;
}

