
void aw86320_timecheck_work_handle(void)

{
  long lVar1;
  
  lVar1 = g_aw86320;
  *(undefined4 *)(g_aw86320 + 0x10) = 0;
  _printk(&DAT_0010408f,"aw86320",0x202,"aw86320_timecheck_work_handle");
  haptic_i2c_write(lVar1,0x25,0);
  return;
}

