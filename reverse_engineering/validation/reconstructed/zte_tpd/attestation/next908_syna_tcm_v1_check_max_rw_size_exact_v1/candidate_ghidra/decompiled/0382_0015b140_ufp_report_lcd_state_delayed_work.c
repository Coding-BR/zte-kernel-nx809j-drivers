
void ufp_report_lcd_state_delayed_work(void)

{
  long lVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  
  lVar1 = tpd_cdev;
  uVar3 = *(undefined8 *)(tpd_cdev + 0x4b0);
  uVar2 = __msecs_to_jiffies();
  mod_delayed_work_on(0x20,uVar3,lVar1 + 0x9e0,uVar2);
  return;
}

