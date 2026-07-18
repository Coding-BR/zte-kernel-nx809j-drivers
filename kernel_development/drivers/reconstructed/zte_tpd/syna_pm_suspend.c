int syna_pm_suspend(struct device *dev)
{
  __int64 a1 = (__int64)dev;
  __int64 v3; // x19

  v3 = *(_QWORD *)(a1 + 152);
  printk(unk_32FD5, "syna_pm_suspend");
  *(_BYTE *)(v3 + 1400) = 1;
  *(_DWORD *)(v3 + 1368) = 0;
  return 0;
}
