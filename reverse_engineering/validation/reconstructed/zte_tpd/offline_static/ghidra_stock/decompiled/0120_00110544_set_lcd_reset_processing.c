
void set_lcd_reset_processing(byte param_1)

{
  *(byte *)(tpd_cdev + 0x18) = param_1;
  _printk(&DAT_00139a18,param_1 & 1);
  return;
}

