
void aw22xxx_get_fwname(ulong param_1)

{
  _printk("\x016aw22xxx: %s mode=%d\n","aw22xxx_get_fwname",param_1 >> 0x18 & 0xff);
  return;
}

