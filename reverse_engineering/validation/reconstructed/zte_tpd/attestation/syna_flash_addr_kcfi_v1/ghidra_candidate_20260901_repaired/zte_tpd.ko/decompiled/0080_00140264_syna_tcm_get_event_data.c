
undefined8 syna_tcm_get_event_data(long param_1,byte *param_2,long param_3)

{
  byte bVar1;
  code *pcVar2;
  int iVar3;
  undefined8 uVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  
  if (param_1 == 0) {
    puVar5 = &DAT_0017eb2d;
LAB_00140328:
    uVar4 = _printk(puVar5,"syna_tcm_get_event_data");
    return uVar4;
  }
  if (param_2 == (byte *)0x0) {
    puVar5 = &DAT_00180da7;
    goto LAB_00140328;
  }
  if (*(int *)(*(code **)(param_1 + 0x390) + -4) != -0x1ef225df) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1402ac);
    (*pcVar2)();
  }
  uVar4 = (**(code **)(param_1 + 0x390))(param_1,param_2);
  if ((int)uVar4 < 0) {
    uVar4 = _printk(&DAT_00181fd3,"syna_tcm_get_event_data");
    return uVar4;
  }
  if (param_3 != 0) {
    bVar1 = *param_2;
    if (0xffffff10 < bVar1 - 0xff) {
      if (*(int *)(param_1 + 0x10c) == 0) {
        return uVar4;
      }
      iVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x100);
      bVar1 = *param_2;
      if (iVar3 < 0) {
        puVar6 = &DAT_0018266b;
        goto LAB_00140374;
      }
      uVar4 = 0;
    }
    if ((bVar1 - 1 < 0xf) && (*(int *)(param_1 + 0x154) != 0)) {
      iVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x148);
      if (iVar3 < 0) {
        bVar1 = *param_2;
        puVar6 = &DAT_00182e6d;
LAB_00140374:
        uVar4 = _printk(puVar6,"syna_tcm_get_event_data",bVar1);
        return uVar4;
      }
      uVar4 = 0;
    }
  }
  return uVar4;
}

