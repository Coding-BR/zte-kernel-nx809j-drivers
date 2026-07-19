int syna_sysfs_create_dir(struct syna_tcm *tcm, struct platform_device *parent)
{
  __int64 a1 = (__int64)tcm;
  __int64 a2 = (__int64)parent;
  __int64 v3; // x0
  unsigned int group; // w0
  unsigned int dir; // w0
  unsigned int v10; // w20

  v3 = kobject_create_and_add("sysfs", a2 + 16);
  *(_QWORD *)(a1 + 920) = v3;
  if ( !v3 )
  {
    printk("\0013[error] %s: Fail to create sysfs directory\n",
           "syna_sysfs_create_dir");
    return -20;
  }
  group = sysfs_create_group(v3, &attr_group);
  if ( (group & 0x80000000) != 0 )
  {
    v10 = group;
    printk("\0013[error] %s: Fail to create sysfs group\n",
           "syna_sysfs_create_dir");
LABEL_9:
    kobject_put(*(_QWORD *)(a1 + 920));
    return v10;
  }
  dir = syna_testing_create_dir((struct syna_tcm *)a1);
  if ( (dir & 0x80000000) != 0 )
  {
    v10 = dir;
    printk("\0013[error] %s: Fail to create testing sysfs\n",
           "syna_sysfs_create_dir");
    sysfs_remove_group(*(_QWORD *)(a1 + 920), &attr_group);
    goto LABEL_9;
  }
  return 0;
}
