
undefined8 syna_recovery_game_mode_after_reset(long *param_1)

{
  int iVar1;
  long lVar2;
  undefined4 uVar3;
  
  if (param_1 == (long *)0x0) {
    return 0xffffffea;
  }
  lVar2 = param_1[0x4e];
  if (((lVar2 == -0xa8) || (*(int *)(lVar2 + 0xb8) == 0)) || ((*(byte *)(lVar2 + 0xbc) & 1) == 0)) {
    uVar3 = *(undefined4 *)(*param_1 + 0x20c);
  }
  else {
    uVar3 = 0;
  }
  if (*(int *)((long)param_1 + 0x5dc) == 0) {
    iVar1 = syna_dev_set_tp_report_rate(param_1,(int)param_1[0xbf],uVar3);
    if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016d508,"syna_recovery_game_mode_after_reset");
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016fc36,"syna_recovery_game_mode_after_reset");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016b55c,"syna_dev_set_play_game",1);
}

