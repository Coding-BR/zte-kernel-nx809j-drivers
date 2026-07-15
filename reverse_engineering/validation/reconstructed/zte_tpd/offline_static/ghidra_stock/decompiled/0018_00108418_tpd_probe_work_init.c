
void tpd_probe_work_init(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_probe_work_init");
  *(undefined8 *)(lVar1 + 0x8d0) = 0xfffffffe00000;
  *(long *)(lVar1 + 0x8d8) = lVar1 + 0x8d8;
  *(long *)(lVar1 + 0x8e0) = lVar1 + 0x8d8;
  *(code **)(lVar1 + 0x8e8) = ztp_probe_work;
  init_timer_key(lVar1 + 0x8f0,&delayed_work_timer_fn,0x200000,0,0);
  return;
}

