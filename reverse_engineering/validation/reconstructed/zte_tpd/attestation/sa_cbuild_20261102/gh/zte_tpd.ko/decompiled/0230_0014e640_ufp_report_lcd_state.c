
void ufp_report_lcd_state(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  if (ufp_tp_ops == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&uf_touch_report_missing_pdev_str);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&ufp_report_lcd_state_event_fmt);
}

