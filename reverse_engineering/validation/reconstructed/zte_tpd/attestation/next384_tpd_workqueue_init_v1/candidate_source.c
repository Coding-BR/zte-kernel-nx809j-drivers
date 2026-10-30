int tpd_workqueue_init(void)
{
  volatile _QWORD *v3; // x21
  __int64 v4; // x0
  volatile _QWORD *v7; // x23

  v3 = (volatile _QWORD *)tpd_cdev;
  printk("\0015tpd: enter");
  v4 = alloc_workqueue("%s", 393226, 1, "tpd_wq");
  v3[150] = v4;
  if ( !v4 )
    goto LABEL_2;
  if ( (unsigned int)tpd_report_work_init() )
  {
    if ( !v3[150] )
      destroy_workqueue(0);
LABEL_2:
    printk("\0015tpd: %s: create tpd workqueue failed\n", "tpd_workqueue_init");
    return -ENOMEM;
  }
  v7 = (volatile _QWORD *)tpd_cdev;
  printk("\0015tpd: %s enter", "tpd_probe_work_init");
  v7[282] = 0xFFFFFFFE00000LL;
  v7[283] = v7 + 283;
  v7[284] = v7 + 283;
  v7[285] = ztp_probe_work;
  init_timer_key((void *)(v7 + 286), &delayed_work_timer_fn, 0x200000, 0, 0);
  tpd_resume_work_init();
  v7 = (volatile _QWORD *)tpd_cdev;
  printk("\0015tpd: %s enter", "zlog_register_work_init");
  v7[330] = 0xFFFFFFFE00000LL;
  v7[331] = v7 + 331;
  v7[332] = v7 + 331;
  v7[333] = zlog_register_work;
  init_timer_key((void *)(v7 + 334), &delayed_work_timer_fn, 0x200000, 0, 0);
  v3[295] = 0xFFFFFFFE00000LL;
  v3[296] = v3 + 296;
  v3[297] = v3 + 296;
  v3[298] = tp_ghost_check_work;
  init_timer_key((void *)(v3 + 299), &delayed_work_timer_fn, 0x200000, 0, 0);
  return 0;
}
