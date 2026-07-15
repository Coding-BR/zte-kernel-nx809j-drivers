
undefined8 attr_store(undefined8 param_1,long param_2)

{
  undefined8 uVar1;
  code *pcVar2;
  
  pcVar2 = *(code **)(param_2 + 0x18);
  if (pcVar2 == (code *)0x0) {
    return 0xfffffffffffffffb;
  }
  if (*(int *)(pcVar2 + -4) != 0x7a5b5d2f) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x100d60);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)();
  return uVar1;
}

