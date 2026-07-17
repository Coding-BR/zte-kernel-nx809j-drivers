ssize_t syna_sysfs_pwr_store(struct kobject *kobj,
                             struct kobj_attribute *attr,
                             const char *buf, size_t count)
{
  __int64 a1 = (__int64)kobj;
  char *s1 = (char *)buf;
  __int64 a4 = (__int64)count;
  __int64 v5; // x20
  __int64 v6; // x22
  void (__fastcall *v8)(_QWORD); // x8

  (void)attr;

  v5 = *(_QWORD *)(*(_QWORD *)(a1 + 24) + 24LL);
  v6 = *(_QWORD *)(v5 + 152);
  if ( (*(_BYTE *)(v6 + 1410) & 1) == 0 )
  {
    printk(unk_35C01, "syna_sysfs_pwr_store", s1);
    return a4;
  }
  if ( strncmp(s1, "resume", 6u) )
  {
    if ( strncmp(s1, "suspend", 7u) )
    {
      printk(unk_32A60, "syna_sysfs_pwr_store", s1);
      return -22;
    }
    v8 = *(void (__fastcall **)(_QWORD))(v6 + 1736);
    if ( !v8 )
      return (int)a4;
    goto LABEL_5;
  }
  v8 = *(void (__fastcall **)(_QWORD))(v6 + 1728);
  if ( v8 )
  {
LABEL_5:
    /* CFI check removed */
    v8(v5);
  }
  return (int)a4;
}
