
ulong syna_tcm_get_event_data(long param_1,byte *param_2,long param_3)

{
  byte bVar1;
  code *pcVar2;
  ulong uVar3;
  undefined1 *puVar4;
  undefined *puVar5;
  
  if (param_1 == 0) {
    puVar4 = &DAT_00133fd6;
LAB_00121b98:
    _printk(puVar4,"syna_tcm_get_event_data");
    return 0xffffff0f;
  }
  if (param_2 == (byte *)0x0) {
    puVar4 = &DAT_00138e98;
    goto LAB_00121b98;
  }
  if (*(int *)(*(code **)(param_1 + 0x390) + -4) != -0x1ef225df) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x121b1c);
    (*pcVar2)();
  }
  uVar3 = (**(code **)(param_1 + 0x390))(param_1,param_2);
  if ((int)uVar3 < 0) {
    _printk(&DAT_0013ba45,"syna_tcm_get_event_data");
    goto LAB_00121bf8;
  }
  if (param_3 == 0) {
    return uVar3;
  }
  bVar1 = *param_2;
  if (bVar1 - 0xff < 0xffffff11) {
LAB_00121b58:
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
    puVar5 = &DAT_0013dbf7;
  }
  else {
    if (*(int *)(param_1 + 0x10c) == 0) {
      return uVar3;
    }
    uVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x100);
    bVar1 = *param_2;
    if (-1 < (int)uVar3) {
      uVar3 = 0;
      goto LAB_00121b58;
    }
    puVar5 = &DAT_0013c81f;
  }
  _printk(puVar5,"syna_tcm_get_event_data",bVar1);
LAB_00121bf8:
  return uVar3 & 0xffffffff;
}

