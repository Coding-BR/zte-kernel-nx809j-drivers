
undefined8 tpd_workqueue_init(void)

{
  long lVar1;
  int iVar2;
  long lVar3;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00136fbe);
  lVar3 = alloc_workqueue(&DAT_00136fcb,0x6000a,1,"tpd_wq");
  *(long *)(lVar1 + 0x4b0) = lVar3;
  if (lVar3 != 0) {
    iVar2 = tpd_report_work_init();
    lVar3 = tpd_cdev;
    if (iVar2 == 0) {
      _printk(&DAT_00132ab3,"tpd_probe_work_init");
      *(undefined8 *)(lVar3 + 0x8d0) = 0xfffffffe00000;
      *(long *)(lVar3 + 0x8d8) = lVar3 + 0x8d8;
      *(long *)(lVar3 + 0x8e0) = lVar3 + 0x8d8;
      *(code **)(lVar3 + 0x8e8) = ztp_probe_work;
      init_timer_key(lVar3 + 0x8f0,&delayed_work_timer_fn,0x200000,0,0);
      tpd_resume_work_init();
      lVar3 = tpd_cdev;
      _printk(&DAT_00132ab3,"zlog_register_work_init");
      *(undefined8 *)(lVar3 + 0xa50) = 0xfffffffe00000;
      *(long *)(lVar3 + 0xa58) = lVar3 + 0xa58;
      *(long *)(lVar3 + 0xa60) = lVar3 + 0xa58;
      *(code **)(lVar3 + 0xa68) = zlog_register_work;
      init_timer_key(lVar3 + 0xa70,&delayed_work_timer_fn,0x200000,0,0);
      *(undefined8 *)(lVar1 + 0x938) = 0xfffffffe00000;
      *(long *)(lVar1 + 0x940) = lVar1 + 0x940;
      *(long *)(lVar1 + 0x948) = lVar1 + 0x940;
      *(code **)(lVar1 + 0x950) = tp_ghost_check_work;
      init_timer_key(lVar1 + 0x958,&delayed_work_timer_fn,0x200000,0,0);
      return 0;
    }
    if (*(long *)(lVar1 + 0x4b0) == 0) {
      destroy_workqueue(0);
    }
  }
  _printk(&DAT_001398c6,"tpd_workqueue_init");
  return 0xfffffff4;
}

