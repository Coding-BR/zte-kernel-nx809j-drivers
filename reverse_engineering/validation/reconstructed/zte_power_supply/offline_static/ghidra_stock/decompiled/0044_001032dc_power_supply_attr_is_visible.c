
undefined4 power_supply_attr_is_visible(long param_1,undefined8 param_2,uint param_3)

{
  int iVar1;
  long lVar2;
  code *pcVar3;
  ulong uVar4;
  
  if (0x12 < param_3) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x103398);
    (*pcVar3)();
  }
  if ((&zte_power_supply_attrs)[(ulong)param_3 * 0xb] != (undefined *)0x0) {
    lVar2 = **(long **)(param_1 + 0x98);
    if (*(ulong *)(lVar2 + 0x28) != 0) {
      uVar4 = 0;
      iVar1 = 1;
      do {
        if (*(uint *)(*(long *)(lVar2 + 0x20) + uVar4 * 4) == param_3) {
          pcVar3 = *(code **)(lVar2 + 0x40);
          if (pcVar3 == (code *)0x0) {
            return 0x124;
          }
          if (*(int *)(pcVar3 + -4) == 0x3f091c91) {
            iVar1 = (*pcVar3)(*(long **)(param_1 + 0x98),param_3);
            if (0 < iVar1) {
              return 0x1a4;
            }
            return 0x124;
          }
                    /* WARNING: Does not return */
          pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x103374);
          (*pcVar3)();
        }
        uVar4 = (ulong)iVar1;
        iVar1 = iVar1 + 1;
      } while (uVar4 < *(ulong *)(lVar2 + 0x28));
    }
  }
  return 0;
}

