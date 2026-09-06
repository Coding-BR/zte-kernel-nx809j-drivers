
undefined8 FUN_0014fe38(void)

{
  int iVar1;
  undefined8 uVar2;
  long unaff_x19;
  
  if (*(char *)(unaff_x19 + 0x581) == '\x01') {
    iVar1 = syna_dev_enable_lowpwr_gesture();
    if (iVar1 < 0) {
      uVar2 = _printk(&DAT_0016cdd8,"syna_dev_enter_normal_sensing");
      return uVar2;
    }
    msleep(100);
  }
  return 0;
}

