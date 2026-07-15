
undefined8 zte_power_supply_property_is_writeable(long *param_1)

{
  undefined8 uVar1;
  code *pcVar2;
  
  if ((0 < (int)param_1[0x8b]) && (pcVar2 = *(code **)(*param_1 + 0x40), pcVar2 != (code *)0x0)) {
    if (*(int *)(pcVar2 + -4) != 0x3f091c91) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1021bc);
      (*pcVar2)();
    }
    uVar1 = (*pcVar2)();
    return uVar1;
  }
  return 0xffffffed;
}

