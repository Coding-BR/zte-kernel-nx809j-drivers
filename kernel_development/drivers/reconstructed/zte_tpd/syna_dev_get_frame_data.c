int syna_dev_get_frame_data(struct syna_tcm *tcm, int value,
                            unsigned int delay_ms)
{
  _QWORD *a1 = (_QWORD *)tcm;
  unsigned int a2 = (unsigned int)value;
  unsigned int a3 = delay_ms;
  __int64 v6; // x2
  int v7; // w0

  printk(unk_35F27, "syna_dev_get_frame_data", a2);
  if ( !a1 )
    return -22;
  if ( a2 )
    v6 = 6;
  else
    v6 = 0;
  v7 = syna_tcm_set_dynamic_config(*a1, 243, v6, a3);
  return v7 & (unsigned int)(v7 >> 31);
}
