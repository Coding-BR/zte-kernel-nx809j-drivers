
undefined8 tpd_enable_wakegesture(long param_1,undefined4 param_2)

{
  if (*(int *)(*(long *)(param_1 + 0xdb8) + 0x57c) == 1) {
    *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5c4) = param_2;
    return 0;
  }
  _printk(&DAT_0013c39a,"tpd_enable_wakegesture");
  return 0;
}

