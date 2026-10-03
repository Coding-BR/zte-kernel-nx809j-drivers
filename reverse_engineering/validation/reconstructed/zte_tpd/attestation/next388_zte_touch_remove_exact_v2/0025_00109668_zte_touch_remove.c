
void zte_touch_remove(void)

{
  _printk(&DAT_00139313,"zte_touch_remove",0xb57);
  zte_touch_deinit();
  return;
}

