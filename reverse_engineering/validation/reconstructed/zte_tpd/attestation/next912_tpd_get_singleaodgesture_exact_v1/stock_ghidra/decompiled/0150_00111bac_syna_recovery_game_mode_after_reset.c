
undefined8 syna_recovery_game_mode_after_reset(long *param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  undefined4 uVar4;
  undefined *puVar5;
  
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
    puVar5 = &DAT_0013afb0;
    if (-1 < iVar1) goto LAB_00111d1c;
    puVar2 = &DAT_00138927;
  }
  else {
    _printk(&DAT_00136a10,"syna_dev_set_play_game",1);
    iVar1 = syna_tcm_set_dynamic_config(*param_1,0xd5,3,uVar4);
    if (iVar1 < 0) {
      _printk(&DAT_00135157,"syna_recovery_game_mode_after_reset");
    }
    iVar1 = syna_dev_set_tp_report_rate(param_1,(int)param_1[0xbf],uVar4);
    if (iVar1 < 0) {
      _printk(&DAT_00138927,"syna_recovery_game_mode_after_reset");
    }
    iVar1 = syna_dev_set_sensibility_level(param_1,*(undefined4 *)((long)param_1 + 0x5fc),uVar4);
    if (iVar1 < 0) {
      _printk(&DAT_00135157,"syna_recovery_game_mode_after_reset");
    }
    iVar1 = syna_dev_set_follow_hand_level(param_1,(int)param_1[0xc0],uVar4);
    if (iVar1 < 0) {
      _printk(&DAT_00135157,"syna_recovery_game_mode_after_reset");
    }
    iVar1 = syna_dev_set_stability_level(param_1,*(undefined4 *)((long)param_1 + 0x604),uVar4);
    puVar5 = &DAT_0013cc54;
    if (-1 < iVar1) goto LAB_00111d1c;
    puVar2 = &DAT_00135157;
  }
  _printk(puVar2,"syna_recovery_game_mode_after_reset");
LAB_00111d1c:
  _printk(puVar5,"syna_recovery_game_mode_after_reset");
  return 0;
}

