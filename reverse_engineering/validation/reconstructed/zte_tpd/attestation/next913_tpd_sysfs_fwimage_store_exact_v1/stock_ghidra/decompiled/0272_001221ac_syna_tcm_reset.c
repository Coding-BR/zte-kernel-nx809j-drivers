
int syna_tcm_reset(long param_1,uint param_2)

{
  code *pcVar1;
  int iVar2;
  uint uVar3;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_reset");
    return -0xf1;
  }
  if (param_2 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      param_2 = *(uint *)(param_1 + 0x1ec);
      _printk(&DAT_0013c851,"syna_tcm_reset");
      if (param_2 != 0) goto LAB_001221c8;
    }
    uVar3 = 0;
  }
  else {
LAB_001221c8:
    uVar3 = *(uint *)(param_1 + 0x1ec);
    if (*(uint *)(param_1 + 0x1ec) <= param_2) {
      uVar3 = param_2;
    }
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x122218);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,4,0,0,0,uVar3);
  if (iVar2 < 0) {
    _printk(&DAT_0013a7db,"syna_tcm_reset",4);
  }
  else {
    pcVar1 = *(code **)(param_1 + 0x3b0);
    *(undefined1 *)(param_1 + 9) = *(undefined1 *)(param_1 + 0x81);
    if (pcVar1 != (code *)0x0) {
      if (*(int *)(pcVar1 + -4) != -0x2a859af7) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x12224c);
        (*pcVar1)();
      }
      (*pcVar1)(param_1);
    }
    pcVar1 = *(code **)(param_1 + 0x23e0);
    if (pcVar1 != (code *)0x0) {
      if (*(int *)(pcVar1 + -4) != -0x3f961b9c) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x122274);
        (*pcVar1)();
      }
      iVar2 = (*pcVar1)(*(undefined8 *)(param_1 + 0x23d8));
      if (iVar2 < 0) {
        _printk(&DAT_0013341e,"syna_tcm_reset");
        return iVar2;
      }
    }
    iVar2 = 0;
  }
  return iVar2;
}

