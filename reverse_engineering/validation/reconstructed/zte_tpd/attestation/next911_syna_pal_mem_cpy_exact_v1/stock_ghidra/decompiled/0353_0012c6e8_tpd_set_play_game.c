
undefined4 tpd_set_play_game(long param_1,int param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined4 uVar3;
  long *plVar4;
  
  plVar4 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_play_game");
  if (plVar4 == (long *)0x0) {
    return 0xffffffea;
  }
  if ((*(int *)(plVar4[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar4[0x4e] + 0xbc) & 1) == 0)) {
    uVar3 = *(undefined4 *)(*plVar4 + 0x20c);
  }
  else {
    uVar3 = 0;
  }
  if (*(int *)((long)plVar4 + 0x57c) == 1) {
    if (*(int *)((long)plVar4 + 0x5dc) == param_2) {
      puVar2 = &DAT_00133617;
    }
    else {
      *(int *)((long)plVar4 + 0x5dc) = param_2;
      iVar1 = syna_dev_set_play_game(plVar4,param_2,uVar3);
      if (-1 < iVar1) goto LAB_0012c770;
      puVar2 = &DAT_00135616;
    }
  }
  else {
    puVar2 = &DAT_0013c39a;
  }
  _printk(puVar2,"tpd_set_play_game");
LAB_0012c770:
  return *(undefined4 *)(param_1 + 0x10);
}

