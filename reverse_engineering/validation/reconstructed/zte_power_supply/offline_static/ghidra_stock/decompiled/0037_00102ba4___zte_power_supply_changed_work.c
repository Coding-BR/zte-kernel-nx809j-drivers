
undefined8 __zte_power_supply_changed_work(long param_1,undefined8 *param_2)

{
  int iVar1;
  ulong uVar2;
  code *pcVar3;
  undefined8 *puVar4;
  char *pcVar5;
  long lVar6;
  undefined8 *puVar7;
  ulong uVar8;
  int iVar9;
  
  puVar4 = *(undefined8 **)(param_1 + 0x98);
  lVar6 = puVar4[3];
  if (lVar6 == 0) {
    lVar6 = param_2[1];
    if (lVar6 != 0) {
      puVar7 = (undefined8 *)*puVar4;
      pcVar5 = (char *)*puVar7;
      if ((pcVar5 != (char *)0x0) && (uVar8 = param_2[2], uVar8 != 0)) {
        uVar2 = 0;
        iVar9 = 1;
        do {
          iVar1 = strcmp(*(char **)(lVar6 + uVar2 * 8),pcVar5);
          if (iVar1 == 0) goto LAB_00102c54;
          uVar2 = (ulong)iVar9;
          iVar9 = iVar9 + 1;
        } while (uVar2 < uVar8);
      }
    }
  }
  else {
    pcVar5 = *(char **)*param_2;
    if ((pcVar5 != (char *)0x0) && (uVar8 = puVar4[4], uVar8 != 0)) {
      uVar2 = 0;
      iVar9 = 1;
      do {
        iVar1 = strcmp(pcVar5,*(char **)(lVar6 + uVar2 * 8));
        if (iVar1 == 0) {
          puVar7 = (undefined8 *)*puVar4;
LAB_00102c54:
          pcVar3 = (code *)puVar7[9];
          if (pcVar3 == (code *)0x0) {
            return 0;
          }
          if (*(int *)(pcVar3 + -4) == 0x6f39adef) {
            (*pcVar3)(puVar4);
            return 0;
          }
                    /* WARNING: Does not return */
          pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x102c78);
          (*pcVar3)();
        }
        uVar2 = (ulong)iVar9;
        iVar9 = iVar9 + 1;
      } while (uVar2 < uVar8);
    }
  }
  return 0;
}

