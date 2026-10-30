
undefined8 tpd_report_work_init(void)

{
  long lVar1;
  long lVar2;
  undefined8 uVar3;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_report_work_init");
  lVar2 = alloc_workqueue(&DAT_00136fcb,0x6000a,1,"tpd_report_wq");
  *(long *)(lVar1 + 0x4b8) = lVar2;
  if (lVar2 == 0) {
    _printk(&DAT_00133e5d,"tpd_report_work_init");
    uVar3 = 0xfffffff4;
  }
  else {
    *(undefined8 *)(lVar1 + 0x4c0) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x4c8) = lVar1 + 0x4c8;
    *(long *)(lVar1 + 0x4d0) = lVar1 + 0x4c8;
    *(code **)(lVar1 + 0x4d8) = tpd_id0_report_work;
    init_timer_key(lVar1 + 0x4e0,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x528) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x530) = lVar1 + 0x530;
    *(long *)(lVar1 + 0x538) = lVar1 + 0x530;
    *(code **)(lVar1 + 0x540) = tpd_id1_report_work;
    init_timer_key(lVar1 + 0x548,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x590) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x598) = lVar1 + 0x598;
    *(long *)(lVar1 + 0x5a0) = lVar1 + 0x598;
    *(code **)(lVar1 + 0x5a8) = tpd_id2_report_work;
    init_timer_key(lVar1 + 0x5b0,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x5f8) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x600) = lVar1 + 0x600;
    *(long *)(lVar1 + 0x608) = lVar1 + 0x600;
    *(code **)(lVar1 + 0x610) = tpd_id3_report_work;
    init_timer_key(lVar1 + 0x618,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x660) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x668) = lVar1 + 0x668;
    *(long *)(lVar1 + 0x670) = lVar1 + 0x668;
    *(code **)(lVar1 + 0x678) = tpd_id4_report_work;
    init_timer_key(lVar1 + 0x680,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x6c8) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x6d0) = lVar1 + 0x6d0;
    *(long *)(lVar1 + 0x6d8) = lVar1 + 0x6d0;
    *(code **)(lVar1 + 0x6e0) = tpd_id5_report_work;
    init_timer_key(lVar1 + 0x6e8,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x730) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x738) = lVar1 + 0x738;
    *(long *)(lVar1 + 0x740) = lVar1 + 0x738;
    *(code **)(lVar1 + 0x748) = tpd_id6_report_work;
    init_timer_key(lVar1 + 0x750,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x798) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x7a0) = lVar1 + 0x7a0;
    *(long *)(lVar1 + 0x7a8) = lVar1 + 0x7a0;
    *(code **)(lVar1 + 0x7b0) = tpd_id7_report_work;
    init_timer_key(lVar1 + 0x7b8,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x800) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x808) = lVar1 + 0x808;
    *(long *)(lVar1 + 0x810) = lVar1 + 0x808;
    *(code **)(lVar1 + 0x818) = tpd_id8_report_work;
    init_timer_key(lVar1 + 0x820,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x868) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x870) = lVar1 + 0x870;
    *(long *)(lVar1 + 0x878) = lVar1 + 0x870;
    *(code **)(lVar1 + 0x880) = tpd_id9_report_work;
    init_timer_key(lVar1 + 0x888,&delayed_work_timer_fn,0x200000,0,0);
    uVar3 = 0;
  }
  return uVar3;
}

