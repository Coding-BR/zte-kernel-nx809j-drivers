
undefined8 syna_tcm_reset(long param_1,uint param_2)

{
  code *pcVar1;
  int iVar2;
  undefined8 uVar3;
  uint uVar4;
  
  if (param_1 == 0) {
    uVar3 = _printk(&DAT_00168a84,"syna_tcm_reset");
    return uVar3;
  }
  if (param_2 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar3 = _printk(&DAT_00171524,"syna_tcm_reset");
      return uVar3;
    }
    uVar4 = 0;
  }
  else {
    uVar4 = *(uint *)(param_1 + 0x1ec);
    if (*(uint *)(param_1 + 0x1ec) <= param_2) {
      uVar4 = param_2;
    }
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1489c4);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,4,0,0,0,uVar4);
  if (iVar2 < 0) {
    uVar3 = _printk(&DAT_0016f442,"syna_tcm_reset",4);
    return uVar3;
  }
  pcVar1 = *(code **)(param_1 + 0x3b0);
  *(undefined1 *)(param_1 + 9) = *(undefined1 *)(param_1 + 0x81);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != -0x2a859af7) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1489f8);
      (*pcVar1)();
    }
    (*pcVar1)(param_1);
  }
  pcVar1 = *(code **)(param_1 + 0x23e0);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != -0x3f961b9c) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x148a20);
      (*pcVar1)();
    }
    iVar2 = (*pcVar1)(*(undefined8 *)(param_1 + 0x23d8));
    if (iVar2 < 0) {
      uVar3 = _printk(&DAT_00167ea4,"syna_tcm_reset");
      return uVar3;
    }
  }
  return 0;
}

