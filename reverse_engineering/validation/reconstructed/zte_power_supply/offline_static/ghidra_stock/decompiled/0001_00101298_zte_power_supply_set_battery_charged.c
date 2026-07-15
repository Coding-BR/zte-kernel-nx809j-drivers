
undefined8 zte_power_supply_set_battery_charged(long *param_1)

{
  code *pcVar1;
  
  if (((-1 < (int)param_1[0x8b]) && (*(int *)(*param_1 + 8) == 1)) &&
     (pcVar1 = *(code **)(*param_1 + 0x50), pcVar1 != (code *)0x0)) {
    if (*(int *)(pcVar1 + -4) != 0x6f39adef) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1012dc);
      (*pcVar1)();
    }
    (*pcVar1)();
    return 0;
  }
  return 0xffffffea;
}

