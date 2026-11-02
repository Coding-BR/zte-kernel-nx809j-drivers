
void tpd_resume_work_init(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_resume_work_init");
  *(undefined8 *)(lVar1 + 0x9c0) = 0xfffffffe00000;
  *(long *)(lVar1 + 0x9c8) = lVar1 + 0x9c8;
  *(long *)(lVar1 + 0x9d0) = lVar1 + 0x9c8;
  *(code **)(lVar1 + 0x9d8) = tpd_resume_work;
  *(undefined8 *)(lVar1 + 0x9a0) = 0xfffffffe00000;
  *(long *)(lVar1 + 0x9a8) = lVar1 + 0x9a8;
  *(long *)(lVar1 + 0x9b0) = lVar1 + 0x9a8;
  *(undefined8 *)(lVar1 + 0x9e0) = 0xfffffffe00000;
  *(code **)(lVar1 + 0x9b8) = tpd_suspend_work;
  *(long *)(lVar1 + 0x9e8) = lVar1 + 0x9e8;
  *(long *)(lVar1 + 0x9f0) = lVar1 + 0x9e8;
  *(code **)(lVar1 + 0x9f8) = ufp_report_lcd_state_work;
  init_timer_key(lVar1 + 0xa00,&delayed_work_timer_fn,0x200000,0,0);
  return;
}

