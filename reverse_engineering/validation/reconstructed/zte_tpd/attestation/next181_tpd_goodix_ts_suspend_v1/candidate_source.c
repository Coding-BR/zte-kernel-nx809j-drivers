int tpd_goodix_ts_suspend(void *pdev)
{
  __int64 a1 = (__int64)pdev;
  return syna_dev_suspend((struct device *)(*(_QWORD *)(a1 + 8) + 16LL));
}
