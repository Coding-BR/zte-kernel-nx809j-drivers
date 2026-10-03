
undefined8 tpd_set_fake_sleep(long param_1,undefined4 param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  *(undefined4 *)(lVar1 + 0x5ec) = param_2;
  if (*(int *)(lVar1 + 0x57c) == 1) {
    *(undefined4 *)(lVar1 + 0x5e8) = param_2;
    is_fake_sleep_mode = param_2;
    return 0;
  }
  _printk(&DAT_0013c39a,"tpd_set_fake_sleep");
  return 0;
}

