
void change_tp_state(uint param_1)

{
  code *pcVar1;
  
  mutex_lock(tpd_cdev + 0xcc0);
  if ((param_1 < 4) && (current_lcd_state < 3)) {
    _printk(&DAT_00172c96,(&PTR_s_screen_on_001929f0)[current_lcd_state],
            (&PTR_s_lcd_exit_lp_00192a08)[param_1]);
    return;
  }
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x14ebf0);
  (*pcVar1)();
}

