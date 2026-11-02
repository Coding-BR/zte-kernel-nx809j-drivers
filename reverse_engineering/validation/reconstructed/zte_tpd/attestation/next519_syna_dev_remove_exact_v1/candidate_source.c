void syna_dev_remove(struct platform_device *pdev)
{
  __int64 a1 = (__int64)pdev;
  __int64 v3; // x19
  __int64 v4; // x0
  __int64 v5; // x20
  __int64 v6; // x0
  __int64 v9; // x20
  __int64 v10; // x0
  __int64 v12; // x0
#ifdef __aarch64__
  register unsigned int refs __asm__("w2");
#else
  unsigned int refs;
#endif

  v3 = *(_QWORD *)(a1 + 168);
  if ( !v3 )
    printk("\0014[warn ] %s: Invalid handle to remove\n", "syna_dev_remove");
  printk("\0016[info ] %s: enter\n", "syna_dev_remove");
  cancel_work_sync(v3 + 1320);
  _flush_workqueue(*(_QWORD *)(v3 + 1352));
  destroy_workqueue(*(_QWORD *)(v3 + 1352));
  if ( active_panel && *(_QWORD *)(v3 + 1360) )
    panel_event_notifier_unregister((void *)*(_QWORD *)(v3 + 1360));
  syna_sysfs_remove_dir((struct syna_tcm *)v3);
  syna_cdev_remove((struct syna_tcm *)v3);
  v4 = syna_dev_disconnect((struct syna_tcm *)v3);
  v5 = *(_QWORD *)(v3 + 1448);
  if ( v5 )
  {
    v6 = syna_request_managed_device();
    if ( !v6 )
    {
      printk("\0013[error] %s: Invalid managed device\n", "syna_pal_mem_free");
      refs = *(unsigned char *)(v3 + 744);
      if ( !refs )
        goto LABEL_10;
      goto LABEL_16;
    }
    v4 = devm_kfree(v6, v5);
  }
  refs = *(unsigned char *)(v3 + 744);
  if ( !refs )
    goto LABEL_10;
LABEL_16:
  printk("\0013[error] %s: Buffer still in used, %d references\n",
         "syna_tcm_buf_release", refs);
LABEL_10:
  v9 = *(_QWORD *)(v3 + 680);
  v10 = syna_request_managed_device();
  if ( v10 )
  {
    if ( v9 )
      devm_kfree(v10, v9);
  }
  else
  {
    printk("\0013[error] %s: Invalid managed device\n", "syna_pal_mem_free");
  }
  v12 = *(_QWORD *)(v3 + 1120);
  *(_QWORD *)(v3 + 688) = 0;
  *(_BYTE *)(v3 + 744) = 0;
  kfree(v12);
  syna_tcm_remove_device(*(_QWORD *)v3);
}
