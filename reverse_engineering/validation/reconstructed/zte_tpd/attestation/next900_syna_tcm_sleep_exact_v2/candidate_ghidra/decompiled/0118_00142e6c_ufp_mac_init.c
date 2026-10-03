
undefined8 ufp_mac_init(void)

{
  DAT_0015fb10 = alloc_workqueue(&DAT_0018015f,0x6000a,1,"single_tap_cancel");
  DAT_0015faa8 = 0xfffffffe00000;
  DAT_0015fab0 = &DAT_0015fab0;
  DAT_0015fab8 = &DAT_0015fab0;
  DAT_0015fac0 = ufp_single_tap_work;
  init_timer_key(&DAT_0015fac8,&delayed_work_timer_fn,0x200000,0,0);
  DAT_0015faa0 = 0;
  wakeup_source_add(tp_wakeup);
  DAT_0015fb18 = 0;
  __init_swait_queue_head(&DAT_0015fb20,"&x->wait",&init_completion___key);
  DAT_0015fb38 = 0;
  DAT_0015fb3a = 0;
  if (*(long *)(tpd_cdev + 0xdd0) != 0) {
    ufp_tp_ops = *(long *)(tpd_cdev + 0xdd0);
  }
  return 0;
}

