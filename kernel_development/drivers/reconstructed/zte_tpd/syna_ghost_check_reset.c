int syna_ghost_check_reset(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v1; // x19
  __int64 v2; // x2
  __int64 v3; // x2

  v1 = *(_QWORD *)(a1 + 3072);
  syna_dev_free_input_events((struct syna_tcm *)v1);
  syna_spi_hw_reset(*(struct syna_hw_interface **)(v1 + 624));
  syna_recovery_game_mode_after_reset((struct syna_tcm *)v1);
  syna_dev_set_screen_on_fp_mode((struct syna_tcm *)v1, 0);
  printk(unk_3AEDE, "syna_ghost_check_reset", v3);
  return 0;
}
