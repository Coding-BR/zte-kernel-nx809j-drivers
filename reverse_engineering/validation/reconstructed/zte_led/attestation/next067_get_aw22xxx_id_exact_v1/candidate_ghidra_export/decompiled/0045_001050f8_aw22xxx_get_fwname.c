
void aw22xxx_get_fwname(ulong param_1)

{
  _printk(&DAT_00108163,"aw22xxx_get_fwname",param_1 >> 0x18 & 0xff);
  return;
}

