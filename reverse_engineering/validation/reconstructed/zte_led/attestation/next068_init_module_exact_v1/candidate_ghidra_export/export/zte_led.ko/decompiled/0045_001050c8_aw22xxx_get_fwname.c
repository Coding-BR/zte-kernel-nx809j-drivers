
void aw22xxx_get_fwname(ulong param_1)

{
  _printk(&DAT_0010810b,"aw22xxx_get_fwname",param_1 >> 0x18 & 0xff);
  return;
}

