
undefined4 power_supply_attr_is_visible(long param_1,undefined8 param_2,uint param_3)

{
  int iVar1;
  long *plVar2;
  long lVar3;
  code *pcVar4;
  ulong uVar5;
  
  if (0x12 < (int)param_3) {
                    /* WARNING: Does not return */
    pcVar4 = (code *)SoftwareBreakpoint(0x800,0x10244c);
    (*pcVar4)();
  }
  if (0x12 < param_3) {
                    /* WARNING: Does not return */
    pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x102448);
    (*pcVar4)();
  }
  if ((&zte_power_supply_attrs)[(ulong)param_3 * 0xb] != (undefined *)0x0) {
    plVar2 = *(long **)(param_1 + 0x98);
    lVar3 = *plVar2;
    if (*(ulong *)(lVar3 + 0x28) != 0) {
      uVar5 = 0;
      iVar1 = 1;
      do {
        if (*(uint *)(*(long *)(lVar3 + 0x20) + uVar5 * 4) == param_3) {
          if (((int)plVar2[0x8b] < 1) || (pcVar4 = *(code **)(lVar3 + 0x40), pcVar4 == (code *)0x0))
          {
            return 0x124;
          }
          if (*(int *)(pcVar4 + -4) != 0x3f091c91) {
                    /* WARNING: Does not return */
            pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x102424);
            (*pcVar4)();
          }
          iVar1 = (*pcVar4)(plVar2,param_3);
          if (0 < iVar1) {
            return 0x1a4;
          }
          return 0x124;
        }
        uVar5 = (ulong)iVar1;
        iVar1 = iVar1 + 1;
      } while (uVar5 < *(ulong *)(lVar3 + 0x28));
    }
  }
  return 0;
}

