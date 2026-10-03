
undefined8 tpd_get_tp_report_rate(long param_1)

{
  *(undefined4 *)(param_1 + 0x464) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5f8);
  return 0;
}

