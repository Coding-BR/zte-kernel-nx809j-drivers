
undefined8 syna_recovery_game_mode_after_reset(long *param_1)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  undefined4 uVar4;
  
  if (param_1 == (long *)0x0) {
    return 0xffffffea;
  }
  lVar3 = param_1[0x4e];
  if (((lVar3 == -0xa8) || (*(int *)(lVar3 + 0xb8) == 0)) || ((*(byte *)(lVar3 + 0xbc) & 1) == 0)) {
    uVar4 = *(undefined4 *)(*param_1 + 0x20c);
  }
  else {
    uVar4 = 0;
  }
  if (*(int *)((long)param_1 + 0x5dc) == 0) {
    iVar1 = syna_dev_set_tp_report_rate(param_1,(int)param_1[0xbf],uVar4);
    if (iVar1 < 0) {
      uVar2 = _printk(&DAT_0016d508,"syna_recovery_game_mode_after_reset");
      return uVar2;
    }
    uVar2 = _printk(&DAT_0016fc36,"syna_recovery_game_mode_after_reset");
    return uVar2;
  }
  uVar2 = _printk(&DAT_0016b55c,"syna_dev_set_play_game",1);
  return uVar2;
}

