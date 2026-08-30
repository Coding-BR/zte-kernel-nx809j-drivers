ssize_t syna_sysfs_debug_store(struct kobject *kobj,
                               struct kobj_attribute *attr,
                               const char *buf, size_t count)
{
  __int64 a1 = (__int64)kobj;
  __int64 a3 = (__int64)buf;
  __int64 a4 = (__int64)count;
  __int64 v5; // x9
  __int64 v6; // x20
  __int64 v8; // x0
  __int64 v11; // x0
  unsigned int v12; // [xsp+4h] [xbp-Ch] BYREF

  (void)attr;

  v5 = *(_QWORD *)(a1 + 24);
  v12 = 0;
  v6 = *(_QWORD *)(v5 + 152);
  if ( (unsigned int)kstrtouint(a3, 10, &v12) )
    goto LABEL_2;
  if ( v12 )
  {
    if ( v12 != 1 || *(_QWORD *)(v6 + 928) )
    {
      printk("\0014[warn ] %s: Unknown option %d (0:disable / 1:enable)\n",
             "syna_sysfs_debug_store", v12);
LABEL_2:
      a4 = -22;
      goto LABEL_3;
    }
    v8 = kobject_create_and_add("utility", *(_QWORD *)(v6 + 920));
    *(_QWORD *)(v6 + 928) = v8;
    if ( v8 )
    {
      if ( (sysfs_create_group(v8, &attr_debug_group) & 0x80000000) != 0 )
      {
        printk("\0013[error] %s: Fail to create sysfs debug group\n",
               "syna_sysfs_debug_store");
        kobject_put(*(_QWORD *)(v6 + 928));
        a4 = -20;
      }
    }
    else
    {
      printk("\0013[error] %s: Fail to create sysfs sub directory for debugging\n",
             "syna_sysfs_debug_store");
      a4 = -20;
    }
  }
  else
  {
    v11 = *(_QWORD *)(v6 + 928);
    if ( v11 )
    {
      sysfs_remove_group(v11, &attr_debug_group);
      kobject_put(*(_QWORD *)(v6 + 928));
      *(_QWORD *)(v6 + 928) = 0;
    }
  }
LABEL_3:
  return a4;
}
