
void tpd_set_palm_mode(long param_1,undefined4 param_2)

{
  *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e4) = param_2;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016d2d2,"tpd_set_palm_mode",param_2);
}

