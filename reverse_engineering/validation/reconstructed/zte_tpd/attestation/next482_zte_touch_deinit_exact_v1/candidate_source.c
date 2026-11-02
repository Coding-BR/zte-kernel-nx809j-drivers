void zte_touch_deinit(void)
{
  __int64 v3; // x22
  __int64 v8; // x24
  __int64 v12; // x25
  __int64 v14; // x19
  void (__fastcall *v15)(__int64); // x8

  v3 = tpd_cdev;
  if ( !tpd_cdev || zte_touch_deinit_ztp_release == 1 )
  {
    printk(unk_323A0);
    return;
  }
  ufp_mac_exit();
  v8 = tpd_cdev;
  printk(unk_322AA, "zlog_register_work_deinit");
  cancel_delayed_work_sync(v8 + 2640);
  vfree(*(_QWORD *)(v8 + 3048));
  *(_QWORD *)(v8 + 3048) = 0;
  tpd_proc_deinit();
  v8 = tpd_cdev;
  printk(unk_322AA, "tpd_workqueue_deinit");
  tpd_report_work_deinit();
  tpd_resume_work_deinit();
  v12 = tpd_cdev;
  printk(unk_322AA, "tpd_probe_work_deinit");
  cancel_delayed_work_sync(v12 + 2256);
  v12 = tpd_cdev;
  printk(unk_322AA, "zlog_register_work_deinit");
  cancel_delayed_work_sync(v12 + 2640);
  vfree(*(_QWORD *)(v12 + 3048));
  *(_QWORD *)(v12 + 3048) = 0;
  cancel_delayed_work_sync(v8 + 2360);
  if ( !*(_QWORD *)(v3 + 1200) )
    destroy_workqueue(0);
  v14 = tpd_cdev;
  if ( *(_QWORD *)(tpd_cdev + 3152) )
  {
    sysfs_remove_bin_file(*(_QWORD *)(tpd_cdev + 3152), &fwimage_attr);
    kobject_put(*(_QWORD *)(v14 + 3152));
    v14 = tpd_cdev;
  }
  if ( !*(_QWORD *)(v14 + 3536) )
  {
    v15 = (void (__fastcall *)(__int64))off_338;
    if ( *((_DWORD *)off_338 - 1) != 1820440776 )
      __break(0x8228u);
    v15(16);
    platform_device_unregister(*(struct platform_device **)(v14 + 3536));
  }
  zte_touch_deinit_ztp_release = 1;
}
