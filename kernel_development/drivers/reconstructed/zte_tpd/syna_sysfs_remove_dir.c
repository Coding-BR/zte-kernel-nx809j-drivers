void syna_sysfs_remove_dir(struct syna_tcm *tcm)
{
  __int64 result = (__int64)tcm;
  __int64 v3; // x19
  __int64 v4; // x0

  if ( !result )
  {
    printk(unk_3365A, "syna_sysfs_remove_dir");
    return;
  }
  v3 = result;
  if ( *(_QWORD *)(result + 920) )
  {
    syna_testing_remove_dir(tcm);
    v4 = *(_QWORD *)(v3 + 928);
    if ( v4 )
    {
      sysfs_remove_group(v4, &attr_debug_group);
      kobject_put(*(_QWORD *)(v3 + 928));
    }
    sysfs_remove_group(*(_QWORD *)(v3 + 920), &attr_group);
    kobject_put(*(_QWORD *)(v3 + 920));
  }
}
