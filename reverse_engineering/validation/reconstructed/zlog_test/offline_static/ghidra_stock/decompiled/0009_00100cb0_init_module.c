
undefined8 init_module(void)

{
  int iVar1;
  
  zlog_test1_workqueue = alloc_workqueue(&DAT_0010123a,0x6000a,1,"zlog_test1_workqueue");
  zlog_test1_work = 0xfffffffe00000;
  DAT_00101720 = &DAT_00101720;
  DAT_00101728 = &DAT_00101720;
  DAT_00101730 = zlog_test1_thread;
  init_timer_key(&DAT_00101738,&delayed_work_timer_fn,0x200000,0,0);
  zlog_test2_workqueue = alloc_workqueue(&DAT_0010123a,0x6000a,1,"zlog_test2_workqueue");
  zlog_test2_work = 0xfffffffe00000;
  DAT_00101790 = &DAT_00101790;
  DAT_00101798 = &DAT_00101790;
  DAT_001017a0 = zlog_test2_thread;
  init_timer_key(&DAT_001017a8,&delayed_work_timer_fn,0x200000,0,0);
  zlog_test3_workqueue = alloc_workqueue(&DAT_0010123a,0x6000a,1,"zlog_test3_workqueue");
  zlog_test3_work = 0xfffffffe00000;
  DAT_00101800 = &DAT_00101800;
  DAT_00101808 = &DAT_00101800;
  DAT_00101810 = zlog_test3_thread;
  init_timer_key(&DAT_00101818,&delayed_work_timer_fn,0x200000,0,0);
  zlog_test4_workqueue = alloc_workqueue(&DAT_0010123a,0x6000a,1,"zlog_test4_workqueue");
  zlog_test4_work = 0xfffffffe00000;
  DAT_00101870 = &DAT_00101870;
  DAT_00101878 = &DAT_00101870;
  DAT_00101880 = zlog_test4_thread;
  init_timer_key(&DAT_00101888,&delayed_work_timer_fn,0x200000,0,0);
  zlog_test5_workqueue = alloc_workqueue(&DAT_0010123a,0x6000a,1,"zlog_test5_workqueue");
  zlog_test5_work = 0xfffffffe00000;
  DAT_001018e0 = &DAT_001018e0;
  DAT_001018e8 = &DAT_001018e0;
  DAT_001018f0 = zlog_test5_thread;
  init_timer_key(&DAT_001018f8,&delayed_work_timer_fn,0x200000,0,0);
  iVar1 = zte_misc_register_callback(0x100000,0);
  if (iVar1 < 0) {
    _printk(&DAT_00101196,"zlog_test_init","zlog_test_init",iVar1);
  }
  _printk(&DAT_001012da,"zlog_test_init","zlog_test_init");
  return 0;
}

