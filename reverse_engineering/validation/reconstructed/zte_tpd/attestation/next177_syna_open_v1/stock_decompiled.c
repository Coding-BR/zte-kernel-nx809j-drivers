
undefined8 syna_open(undefined8 param_1,long param_2)

{
  *(long *)(param_2 + 0x20) = *(long *)(param_2 + 0x20) + -0x4a0;
  _printk(&DAT_0013cdd8,"syna_open");
  return 0;
}

