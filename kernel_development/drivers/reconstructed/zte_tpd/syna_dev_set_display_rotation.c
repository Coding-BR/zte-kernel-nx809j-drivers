int syna_dev_set_display_rotation(struct syna_tcm *tcm, int value,
                                  unsigned int delay_ms)
{
  _QWORD *a1 = (_QWORD *)tcm;
  unsigned int a2 = (unsigned int)value;
  unsigned int a3 = delay_ms;
  unsigned int v6; // w22
  unsigned int v7; // w23
  __int64 result; // x0

  v6 = *((_DWORD *)a1 + 387);
  printk(unk_38188, "syna_dev_set_display_rotation", a2);
  if ( !a1 )
    return -22;
  if ( v6 )
    v7 = 3;
  else
    v7 = 0;
  result = syna_tcm_set_dynamic_config(*a1, 182, v7, a3);
  if ( (result & 0x80000000) == 0 )
  {
    printk(unk_387F8, "syna_dev_set_display_rotation", v7);
    result = syna_tcm_set_dynamic_config(*a1, 181, v6, a3);
    if ( (result & 0x80000000) == 0 )
    {
      printk(unk_3A221, "syna_dev_set_display_rotation", v6);
      result = syna_tcm_set_dynamic_config(*a1, 180, a2, a3);
      if ( (result & 0x80000000) == 0 )
      {
        printk(unk_31E36, "syna_dev_set_display_rotation", a2);
        return 0;
      }
    }
  }
  return result;
}
