
undefined8 ufp_mac_init(void)

{
  DAT_00131c18 = alloc_workqueue(&DAT_00136fcb,0x6000a,1,"single_tap_cancel");
  DAT_00131bb0 = 0xfffffffe00000;
  DAT_00131bb8 = &DAT_00131bb8;
  DAT_00131bc0 = &DAT_00131bb8;
  DAT_00131bc8 = ufp_single_tap_work;
  init_timer_key(&DAT_00131bd0,&delayed_work_timer_fn,0x200000,0,0);
  DAT_00131ba8 = 0;
  wakeup_source_add(tp_wakeup);
  DAT_00131c20 = 0;
  __init_swait_queue_head(&DAT_00131c28,"&x->wait",&init_completion___key);
  DAT_00131c40 = 0;
  DAT_00131c42 = 0;
  if (*(long *)(tpd_cdev + 0xdd0) != 0) {
    ufp_tp_ops = *(long *)(tpd_cdev + 0xdd0);
  }
  return 0;
}

