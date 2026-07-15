
undefined8 attr_show(undefined8 param_1,long param_2)

{
  undefined8 uVar1;
  code *pcVar2;
  
  pcVar2 = *(code **)(param_2 + 0x10);
  if (pcVar2 == (code *)0x0) {
    return 0xfffffffffffffffb;
  }
  if (*(int *)(pcVar2 + -4) != 0x618e6a55) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x101128);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)();
  return uVar1;
}

