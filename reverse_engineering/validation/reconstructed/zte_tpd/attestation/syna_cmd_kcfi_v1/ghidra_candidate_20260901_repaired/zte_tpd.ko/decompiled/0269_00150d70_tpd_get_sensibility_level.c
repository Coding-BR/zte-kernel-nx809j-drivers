
undefined8 tpd_get_sensibility_level(long param_1)

{
  *(char *)(param_1 + 0x40) = (char)*(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5fc);
  return 0;
}

