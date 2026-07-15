
void zte_power_supply_external_power_changed(long *param_1)

{
  code *pcVar1;
  
  if ((0 < (int)param_1[0x8b]) && (pcVar1 = *(code **)(*param_1 + 0x48), pcVar1 != (code *)0x0)) {
    if (*(int *)(pcVar1 + -4) != 0x6f39adef) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x102214);
      (*pcVar1)();
    }
    (*pcVar1)();
  }
  return;
}

