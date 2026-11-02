
undefined8 ufp_mac_init(void)

{
  DAT_0015fb50 = alloc_workqueue(&DAT_0018019f,0x6000a,1,"single_tap_cancel");
  DAT_0015fae8 = 0xfffffffe00000;
  DAT_0015faf0 = &DAT_0015faf0;
  DAT_0015faf8 = &DAT_0015faf0;
  DAT_0015fb00 = ufp_single_tap_work;
  init_timer_key(&DAT_0015fb08,&delayed_work_timer_fn,0x200000,0,0);
  DAT_0015fae0 = 0;
  wakeup_source_add(tp_wakeup);
  DAT_0015fb58 = 0;
  __init_swait_queue_head(&DAT_0015fb60,"&x->wait",&init_completion___key);
  DAT_0015fb78 = 0;
  DAT_0015fb7a = 0;
  if (*(long *)(tpd_cdev + 0xdd0) != 0) {
    ufp_tp_ops = *(long *)(tpd_cdev + 0xdd0);
  }
  return 0;
}

