
undefined8 tpd_get_screen_off_awake(long param_1)

{
  *(undefined4 *)(param_1 + 0x484) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5f0);
  return 0;
}

