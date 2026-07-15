
undefined8 zte_power_supply_set_property(long *param_1)

{
  undefined8 uVar1;
  code *pcVar2;
  
  if ((0 < (int)param_1[0x8b]) && (pcVar2 = *(code **)(*param_1 + 0x38), pcVar2 != (code *)0x0)) {
    if (*(int *)(pcVar2 + -4) != 0x1c0179c9) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x102164);
      (*pcVar2)();
    }
    uVar1 = (*pcVar2)();
    return uVar1;
  }
  return 0xffffffed;
}

