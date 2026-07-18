void set_lcd_reset_processing(unsigned char value)
{
  *(_BYTE *)(tpd_cdev + 24) = value;
  printk(unk_38D27, value & 1);
}
