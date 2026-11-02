
undefined8 syna_tcm_get_event_data(long param_1,byte *param_2,long param_3)

{
  byte bVar1;
  code *pcVar2;
  int iVar3;
  undefined8 uVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  
  if (param_1 == 0) {
    puVar5 = &DAT_0017eb6d;
LAB_00140368:
                    /* WARNING: Subroutine does not return */
    _printk(puVar5,"syna_tcm_get_event_data");
  }
  if (param_2 == (byte *)0x0) {
    puVar5 = &DAT_00180de7;
    goto LAB_00140368;
  }
  if (*(int *)(*(code **)(param_1 + 0x390) + -4) != -0x1ef225df) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1402ec);
    (*pcVar2)();
  }
  uVar4 = (**(code **)(param_1 + 0x390))(param_1,param_2);
  if ((int)uVar4 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00182013,"syna_tcm_get_event_data");
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
        puVar6 = &DAT_001826ab;
        goto LAB_001403b4;
      }
      uVar4 = 0;
    }
    if ((bVar1 - 1 < 0xf) && (*(int *)(param_1 + 0x154) != 0)) {
      iVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x148);
      if (iVar3 < 0) {
        bVar1 = *param_2;
        puVar6 = &DAT_00182ead;
LAB_001403b4:
                    /* WARNING: Subroutine does not return */
        _printk(puVar6,"syna_tcm_get_event_data",bVar1);
      }
      uVar4 = 0;
    }
  }
  return uVar4;
}

