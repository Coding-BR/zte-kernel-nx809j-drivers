
ulong syna_tcm_get_event_data(long param_1,byte *param_2,long param_3)

{
  byte bVar1;
  code *pcVar2;
  ulong uVar3;
  undefined1 *puVar4;
  undefined *puVar5;
  
  if (param_1 == 0) {
    puVar4 = &DAT_00164e09;
LAB_0014d634:
    _printk(puVar4,"syna_tcm_get_event_data");
    return 0xffffff0f;
  }
  if (param_2 == (byte *)0x0) {
    puVar4 = &DAT_00167330;
    goto LAB_0014d634;
  }
  if (*(int *)(*(code **)(param_1 + 0x390) + -4) != -0x1ef225df) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x14d5b8);
    (*pcVar2)();
  }
  uVar3 = (**(code **)(param_1 + 0x390))(param_1,param_2);
  if ((int)uVar3 < 0) {
    _printk(&DAT_001683cb,"syna_tcm_get_event_data");
    goto LAB_0014d694;
  }
  if (param_3 == 0) {
    return uVar3;
  }
  bVar1 = *param_2;
  if (bVar1 - 0xff < 0xffffff11) {
LAB_0014d5f4:
    if (0xe < bVar1 - 1) {
      return uVar3;
    }
    if (*(int *)(param_1 + 0x154) == 0) {
      return uVar3;
    }
    uVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x148);
    if (-1 < (int)uVar3) {
      return 0;
    }
    bVar1 = *param_2;
    puVar5 = &DAT_0016946e;
  }
  else {
    if (*(int *)(param_1 + 0x10c) == 0) {
      return uVar3;
    }
    uVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x100);
    bVar1 = *param_2;
    if (-1 < (int)uVar3) {
      uVar3 = 0;
      goto LAB_0014d5f4;
    }
    puVar5 = &DAT_00168ac1;
  }
  _printk(puVar5,"syna_tcm_get_event_data",bVar1);
LAB_0014d694:
  return uVar3 & 0xffffffff;
}

