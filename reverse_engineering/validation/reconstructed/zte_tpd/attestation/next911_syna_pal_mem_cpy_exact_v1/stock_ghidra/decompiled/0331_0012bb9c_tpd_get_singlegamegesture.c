
undefined8 tpd_get_singlegamegesture(long param_1)

{
  *(undefined4 *)(param_1 + 0x454) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5b8);
  _printk(&DAT_001335e5,"tpd_get_singlegamegesture",
          *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5bc));
  _printk(&DAT_0013dceb,"tpd_get_singlegamegesture",*(undefined4 *)(param_1 + 0x454));
  return 0;
}

