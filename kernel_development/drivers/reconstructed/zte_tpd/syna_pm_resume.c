int syna_pm_resume(struct device *dev)
{
  __int64 a1 = (__int64)dev;
  __int64 v3; // x19

  v3 = *(_QWORD *)(a1 + 152);
  printk("\0016[info ] %s: system resumes from pm_suspend", "syna_pm_resume");
  *(_BYTE *)(v3 + 1400) = 0;
  complete(v3 + 1368);
  return 0;
}
