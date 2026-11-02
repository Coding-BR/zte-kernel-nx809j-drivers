
undefined8 get_aw22xxx_id(void)

{
  undefined8 uVar1;
  long *in_x3;
  
  if (*in_x3 != 0) {
    return 0;
  }
  uVar1 = _printk(&DAT_001073c6,"get_aw22xxx_id",0x9b3,g_chip_id);
  return uVar1;
}

