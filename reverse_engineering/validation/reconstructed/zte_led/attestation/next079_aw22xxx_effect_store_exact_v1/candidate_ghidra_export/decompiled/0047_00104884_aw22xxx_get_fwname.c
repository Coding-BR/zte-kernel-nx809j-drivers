
void aw22xxx_get_fwname(ulong param_1)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00107cff,"aw22xxx_get_fwname",param_1 >> 0x18 & 0xff);
}

