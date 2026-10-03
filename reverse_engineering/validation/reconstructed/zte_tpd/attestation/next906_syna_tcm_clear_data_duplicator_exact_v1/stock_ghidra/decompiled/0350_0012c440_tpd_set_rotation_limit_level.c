
undefined8 tpd_set_rotation_limit_level(long param_1,int param_2)

{
  undefined8 uVar1;
  undefined *puVar2;
  undefined4 uVar3;
  long *plVar4;
  
  plVar4 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_rotation_limit_level");
  if (plVar4 == (long *)0x0) {
    uVar1 = 0xffffffea;
  }
  else {
    if ((*(int *)(plVar4[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar4[0x4e] + 0xbc) & 1) == 0)) {
      uVar3 = *(undefined4 *)(*plVar4 + 0x20c);
    }
    else {
      uVar3 = 0;
    }
    if (2 < param_2) {
      param_2 = 3;
    }
    *(int *)((long)plVar4 + 0x60c) = param_2;
    if (*(int *)((long)plVar4 + 0x57c) == 1) {
      uVar1 = syna_dev_set_display_rotation(plVar4,*(undefined4 *)(param_1 + 0x10),uVar3);
      if ((int)uVar1 == 0) {
        return uVar1;
      }
      puVar2 = &DAT_00132a2c;
    }
    else {
      puVar2 = &DAT_0013c39a;
    }
    _printk(puVar2,"tpd_set_rotation_limit_level");
    uVar1 = 0;
  }
  return uVar1;
}

