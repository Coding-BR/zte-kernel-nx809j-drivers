
undefined8 tpd_get_frame_data(long param_1)

{
  *(undefined4 *)(param_1 + 0x460) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e0);
  return 0;
}

