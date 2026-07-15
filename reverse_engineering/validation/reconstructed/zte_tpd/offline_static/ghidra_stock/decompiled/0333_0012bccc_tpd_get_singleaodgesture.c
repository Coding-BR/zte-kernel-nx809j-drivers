
undefined8 tpd_get_singleaodgesture(long param_1)

{
  *(undefined4 *)(param_1 + 0x450) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5b4);
  _printk(&DAT_0013308d,"tpd_get_singleaodgesture");
  _printk(&DAT_0013adaf,"tpd_get_singleaodgesture",*(undefined4 *)(param_1 + 0x450));
  return 0;
}

