
void aw86320_play_mode(long param_1,char param_2)

{
  if (param_2 == '\0') {
    _printk(&DAT_0010377d,"aw86320",0x123,"aw86320_play_mode");
    haptic_i2c_write(param_1,0x1b,0xe0e);
    haptic_i2c_write(param_1,0x25,0);
    __const_udelay(0xc49c08);
  }
  else {
    _printk(&DAT_00103e43,"aw86320",0x129,"aw86320_play_mode");
    if (*(char *)(param_1 + 0x346) == '\x01') {
      *(undefined1 *)(param_1 + 1) = 1;
    }
    if (*(char *)(param_1 + 0x345) == '\x01') {
      *(undefined1 *)(param_1 + 1) = 2;
    }
  }
  return;
}

