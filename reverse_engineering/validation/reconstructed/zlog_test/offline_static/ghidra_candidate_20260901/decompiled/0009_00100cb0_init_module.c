
undefined8 init_module(void)

{
  int iVar1;
  
  zlog_test1_workqueue = alloc_workqueue(&DAT_0010116a,0x6000a,1,"zlog_test1_workqueue");
  zlog_test1_work = 0xfffffffe00000;
  DAT_00101740 = &DAT_00101740;
  DAT_00101748 = &DAT_00101740;
  DAT_00101750 = zlog_test1_thread;
  init_timer_key(&DAT_00101758,&delayed_work_timer_fn,0x200000,0,0);
  zlog_test2_workqueue = alloc_workqueue(&DAT_0010116a,0x6000a,1,"zlog_test2_workqueue");
  zlog_test2_work = 0xfffffffe00000;
  DAT_001017b0 = &DAT_001017b0;
  DAT_001017b8 = &DAT_001017b0;
  DAT_001017c0 = zlog_test2_thread;
  init_timer_key(&DAT_001017c8,&delayed_work_timer_fn,0x200000,0,0);
  zlog_test3_workqueue = alloc_workqueue(&DAT_0010116a,0x6000a,1,"zlog_test3_workqueue");
  zlog_test3_work = 0xfffffffe00000;
  DAT_00101820 = &DAT_00101820;
  DAT_00101828 = &DAT_00101820;
  DAT_00101830 = zlog_test3_thread;
  init_timer_key(&DAT_00101838,&delayed_work_timer_fn,0x200000,0,0);
  zlog_test4_workqueue = alloc_workqueue(&DAT_0010116a,0x6000a,1,"zlog_test4_workqueue");
  zlog_test4_work = 0xfffffffe00000;
  DAT_00101890 = &DAT_00101890;
  DAT_00101898 = &DAT_00101890;
  DAT_001018a0 = zlog_test4_thread;
  init_timer_key(&DAT_001018a8,&delayed_work_timer_fn,0x200000,0,0);
  zlog_test5_workqueue = alloc_workqueue(&DAT_0010116a,0x6000a,1,"zlog_test5_workqueue");
  zlog_test5_work = 0xfffffffe00000;
  DAT_00101900 = &DAT_00101900;
  DAT_00101908 = &DAT_00101900;
  DAT_00101910 = zlog_test5_thread;
  init_timer_key(&DAT_00101918,&delayed_work_timer_fn,0x200000,0,0);
  iVar1 = zte_misc_register_callback(0x100000,0);
  if (iVar1 < 0) {
    _printk(&DAT_001010ce,"zlog_test_init","zlog_test_init",iVar1);
  }
  _printk(&DAT_0010120f,"zlog_test_init","zlog_test_init");
  return 0;
}

