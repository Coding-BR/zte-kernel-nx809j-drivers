
undefined8 tpd_get_fake_sleep(long param_1)

{
  *(undefined4 *)(param_1 + 0x480) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e8);
  return 0;
}

