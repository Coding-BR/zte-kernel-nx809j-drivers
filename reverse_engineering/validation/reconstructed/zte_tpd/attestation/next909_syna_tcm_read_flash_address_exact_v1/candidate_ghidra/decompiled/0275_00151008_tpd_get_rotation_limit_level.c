
undefined8 tpd_get_rotation_limit_level(long param_1)

{
  *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x60c);
  return 0;
}

