void ufp_report_lcd_state_delayed_work(unsigned int delay_ms)
{
  long long cdev;
  struct workqueue_struct *workqueue;
  unsigned long delay;

  cdev = tpd_cdev;
  workqueue = *(struct workqueue_struct **)(cdev + 0x4b0);
  delay = msecs_to_jiffies(delay_ms);
  mod_delayed_work_on(32, workqueue,
                      (struct delayed_work *)(cdev + 0x9e0), delay);
}
