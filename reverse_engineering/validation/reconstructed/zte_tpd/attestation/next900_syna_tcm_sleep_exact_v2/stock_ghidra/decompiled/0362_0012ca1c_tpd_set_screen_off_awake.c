
undefined8 tpd_set_screen_off_awake(long param_1,undefined4 param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  *(undefined4 *)(lVar1 + 0x5f4) = param_2;
  if (*(int *)(lVar1 + 0x57c) == 1) {
    *(undefined4 *)(lVar1 + 0x5f0) = param_2;
    is_screen_off_awake_mode = param_2;
    return 0;
  }
  _printk(&DAT_0013c39a,"tpd_set_screen_off_awake");
  return 0;
}

