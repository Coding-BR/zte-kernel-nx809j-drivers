int syna_dev_set_play_game(struct syna_tcm *tcm, int value,
                           unsigned int delay_ms)
{
  _QWORD *a1 = (_QWORD *)tcm;
  unsigned int a2 = (unsigned int)value;
  unsigned int a3 = delay_ms;
  int v6; // w0

  printk(unk_35F27, "syna_dev_set_play_game", a2);
  if ( !a1 )
    return -22;
  v6 = syna_tcm_set_dynamic_config(*a1, 213, a2 | (2 * a2), a3);
  return v6 & (unsigned int)(v6 >> 31);
}
