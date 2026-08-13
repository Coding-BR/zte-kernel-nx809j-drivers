
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_touch_deinit(void)

{
  long lVar1;
  long lVar2;
  long lVar3;
  code *pcVar4;
  
  lVar1 = tpd_cdev;
  if ((tpd_cdev == 0) || (zte_touch_deinit_ztp_release == '\x01')) {
    _printk(&DAT_00132c08);
  }
  else {
    ufp_mac_exit();
    lVar2 = tpd_cdev;
    _printk(&DAT_00132ab3,"zlog_register_work_deinit");
    cancel_delayed_work_sync(lVar2 + 0xa50);
    vfree(*(undefined8 *)(lVar2 + 0xbe8));
    *(undefined8 *)(lVar2 + 0xbe8) = 0;
    tpd_proc_deinit();
    lVar2 = tpd_cdev;
    _printk(&DAT_00132ab3,"tpd_workqueue_deinit");
    tpd_report_work_deinit();
    tpd_resume_work_deinit();
    lVar3 = tpd_cdev;
    _printk(&DAT_00132ab3,"tpd_probe_work_deinit");
    cancel_delayed_work_sync(lVar3 + 0x8d0);
    lVar3 = tpd_cdev;
    _printk(&DAT_00132ab3,"zlog_register_work_deinit");
    cancel_delayed_work_sync(lVar3 + 0xa50);
    vfree(*(undefined8 *)(lVar3 + 0xbe8));
    *(undefined8 *)(lVar3 + 0xbe8) = 0;
    cancel_delayed_work_sync(lVar2 + 0x938);
    if (*(long *)(lVar1 + 0x4b0) == 0) {
      destroy_workqueue(0);
    }
    lVar1 = tpd_cdev;
    if (*(long *)(tpd_cdev + 0xc50) != 0) {
      sysfs_remove_bin_file(*(long *)(tpd_cdev + 0xc50),fwimage_attr);
      kobject_put(*(undefined8 *)(lVar1 + 0xc50));
    }
    lVar1 = tpd_cdev;
    if (*(long *)(tpd_cdev + 0xdd0) == 0) {
      if (*(int *)(_DAT_00000338 + -4) != 0x6c81b8c8) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10e218);
        (*pcVar4)();
      }
      (*_DAT_00000338)(0x10);
      platform_device_unregister(*(undefined8 *)(lVar1 + 0xdd0));
    }
    zte_touch_deinit_ztp_release = '\x01';
  }
  return;
}

