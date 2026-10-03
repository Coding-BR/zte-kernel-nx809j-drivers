int syna_recovery_game_mode_after_reset(struct syna_tcm *tcm)
{
  int *a1 = (int *)tcm;
  __int64 mode_context;
  unsigned int delay_ms;
  int result;
  void *error_format;
  void *success_format;

  if (!a1)
    return -22;

  mode_context = *((_QWORD *)a1 + 78);
  if (mode_context != -168 && *(_DWORD *)(mode_context + 184) &&
      (*(_BYTE *)(mode_context + 188) & 1) != 0)
    delay_ms = 0;
  else
    delay_ms = *(_DWORD *)(*(_QWORD *)a1 + 524LL);

  if (a1[375] == 0) {
    result = syna_dev_set_tp_report_rate(tcm, a1[382], delay_ms);
    success_format = unk_3A258;
    if (result < 0) {
      error_format = unk_37D46;
      printk(error_format, "syna_recovery_game_mode_after_reset");
    }
  } else {
    printk(unk_35F27, "syna_dev_set_play_game", 1);
    result = syna_tcm_set_dynamic_config(*(_QWORD *)a1, 213, 3, delay_ms);
    if (result < 0)
      printk(unk_34708, "syna_recovery_game_mode_after_reset");

    result = syna_dev_set_tp_report_rate(tcm, a1[382], delay_ms);
    if (result < 0)
      printk(unk_37D46, "syna_recovery_game_mode_after_reset");

    result = syna_dev_set_sensibility_level(tcm, a1[383], delay_ms);
    if (result < 0)
      printk(unk_34708, "syna_recovery_game_mode_after_reset");

    result = syna_dev_set_follow_hand_level(tcm, a1[384], delay_ms);
    if (result < 0)
      printk(unk_34708, "syna_recovery_game_mode_after_reset");

    result = syna_dev_set_stability_level(tcm, a1[385], delay_ms);
    success_format = unk_3BDE4;
    if (result < 0)
      printk(unk_34708, "syna_recovery_game_mode_after_reset");
  }

  printk(success_format, "syna_recovery_game_mode_after_reset");
  return 0;
}
