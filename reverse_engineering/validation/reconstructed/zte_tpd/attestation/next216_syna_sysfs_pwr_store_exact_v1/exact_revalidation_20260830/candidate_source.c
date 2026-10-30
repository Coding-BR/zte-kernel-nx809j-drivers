ssize_t syna_sysfs_pwr_store(struct kobject *kobj,
                             struct kobj_attribute *attr,
                             const char *buf, size_t count)
{
  __int64 a1 = (__int64)kobj;
  const char *s1 = buf;
  __int64 a4 = (__int64)count;
  struct device *device; // x20
  __int64 tcm; // x22
  int (*power_cb)(struct device *); // x8

  (void)attr;

  device = (struct device *)*(_QWORD *)(*(_QWORD *)(a1 + 24) + 24LL);
  tcm = *(_QWORD *)((char *)device + 152);
  if ( (*(_BYTE *)(tcm + 1410) & 1) == 0 )
  {
    printk("\0014[warn ] %s: Device is NOT connected\n",
           "syna_sysfs_pwr_store");
    return a4;
  }
  if ( strncmp(s1, "resume", 6u) )
  {
    if ( strncmp(s1, "suspend", 7u) )
    {
      printk("\0014[warn ] %s: Unknown option %s\n",
             "syna_sysfs_pwr_store", s1);
      return -22;
    }
    power_cb = *(int (**)(struct device *))(tcm + 1736);
    if ( !power_cb )
      return (int)a4;
    goto invoke_power_callback;
  }
  power_cb = *(int (**)(struct device *))(tcm + 1728);
  if ( power_cb )
  {
invoke_power_callback:
    (void)power_cb(device);
  }
  return (int)a4;
}
