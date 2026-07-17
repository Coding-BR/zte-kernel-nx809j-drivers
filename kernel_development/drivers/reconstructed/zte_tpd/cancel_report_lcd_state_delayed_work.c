void cancel_report_lcd_state_delayed_work(void)
{
  cancel_delayed_work_sync(tpd_cdev + 2528);
}
