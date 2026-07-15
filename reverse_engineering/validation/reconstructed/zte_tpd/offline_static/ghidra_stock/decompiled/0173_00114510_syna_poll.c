
undefined4 syna_poll(long param_1,undefined8 *param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x20);
  if (((param_2 != (undefined8 *)0x0) && (lVar3 != -0x448)) &&
     (pcVar2 = (code *)*param_2, pcVar2 != (code *)0x0)) {
    if (*(int *)(pcVar2 + -4) != -0x1a5eeedd) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x114554);
      (*pcVar2)();
    }
    (*pcVar2)();
    DataMemoryBarrier(2,3);
  }
  uVar1 = 0;
  if (*(int *)(lVar3 + 0x468) != 0) {
    uVar1 = 0x41;
  }
  return uVar1;
}

