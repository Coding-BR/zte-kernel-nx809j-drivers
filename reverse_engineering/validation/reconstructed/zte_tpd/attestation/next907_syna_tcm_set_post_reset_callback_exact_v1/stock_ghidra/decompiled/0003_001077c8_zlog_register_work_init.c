
void zlog_register_work_init(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"zlog_register_work_init");
  *(undefined8 *)(lVar1 + 0xa50) = 0xfffffffe00000;
  *(long *)(lVar1 + 0xa58) = lVar1 + 0xa58;
  *(long *)(lVar1 + 0xa60) = lVar1 + 0xa58;
  *(code **)(lVar1 + 0xa68) = zlog_register_work;
  init_timer_key(lVar1 + 0xa70,&delayed_work_timer_fn,0x200000,0,0);
  return;
}

