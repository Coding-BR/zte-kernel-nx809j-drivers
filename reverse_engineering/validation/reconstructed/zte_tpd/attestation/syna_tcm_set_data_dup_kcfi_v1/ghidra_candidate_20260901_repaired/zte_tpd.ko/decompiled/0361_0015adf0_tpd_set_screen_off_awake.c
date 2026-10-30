
undefined8 tpd_set_screen_off_awake(long param_1,undefined4 param_2)

{
  undefined8 uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xdb8);
  *(undefined4 *)(lVar2 + 0x5f4) = param_2;
  if (*(int *)(lVar2 + 0x57c) == 1) {
    *(undefined4 *)(lVar2 + 0x5f0) = param_2;
    is_screen_off_awake_mode = param_2;
    return 0;
  }
  uVar1 = _printk(&DAT_0017105e,"tpd_set_screen_off_awake");
  return uVar1;
}

