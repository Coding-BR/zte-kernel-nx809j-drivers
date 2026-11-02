void ufp_report_lcd_state_work(struct work_struct *work)
{
  (void)work;
  ufp_report_lcd_state();
}
