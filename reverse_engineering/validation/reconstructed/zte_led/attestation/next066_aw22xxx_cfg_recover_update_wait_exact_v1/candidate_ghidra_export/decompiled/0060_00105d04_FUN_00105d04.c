
void FUN_00105d04(void)

{
  byte bStack0000000000000004;
  
  bStack0000000000000004 = 0;
  FUN_00105cd0();
  bStack0000000000000004 = bStack0000000000000004 & 0xfe;
  FUN_00105b20();
  usleep_range_state(2000,3000,2);
  _printk(&DAT_00107b5d,"aw22xxx_led_init");
  return;
}

