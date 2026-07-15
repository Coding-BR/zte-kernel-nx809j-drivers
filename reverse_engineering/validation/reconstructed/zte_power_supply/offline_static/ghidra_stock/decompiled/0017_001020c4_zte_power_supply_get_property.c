
ulong zte_power_supply_get_property(long *param_1)

{
  code *pcVar1;
  ulong uVar2;
  uint uVar3;
  
  if ((int)param_1[0x8b] < 1) {
    uVar3 = 0xffffffed;
    if (*(char *)((long)param_1 + 0x455) == '\0') {
      uVar3 = 0xfffffff5;
    }
    return (ulong)uVar3;
  }
  if (*(int *)(*(code **)(*param_1 + 0x30) + -4) != -0x7a95136b) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1020fc);
    (*pcVar1)();
  }
  uVar2 = (**(code **)(*param_1 + 0x30))();
  return uVar2;
}

