
undefined8 FUN_0014fe38(void)

{
  int iVar1;
  long unaff_x19;
  
  if (*(char *)(unaff_x19 + 0x581) == '\x01') {
    iVar1 = syna_dev_enable_lowpwr_gesture();
    if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016cdd8,"syna_dev_enter_normal_sensing");
    }
    msleep(100);
  }
  return 0;
}

