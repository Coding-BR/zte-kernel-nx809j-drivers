
undefined8 syna_ghost_check_reset(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  syna_dev_free_input_events(lVar1);
  syna_spi_hw_reset(*(undefined8 *)(lVar1 + 0x270));
  syna_recovery_game_mode_after_reset(lVar1);
  syna_dev_set_screen_on_fp_mode(lVar1,0);
  _printk(&DAT_0013bc68,"syna_ghost_check_reset");
  return 0;
}

