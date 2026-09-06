
undefined8 tpd_set_palm_mode(long param_1,undefined4 param_2)

{
  *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e4) = param_2;
  _printk(&DAT_001386f8,"tpd_set_palm_mode",param_2);
  return 0;
}

