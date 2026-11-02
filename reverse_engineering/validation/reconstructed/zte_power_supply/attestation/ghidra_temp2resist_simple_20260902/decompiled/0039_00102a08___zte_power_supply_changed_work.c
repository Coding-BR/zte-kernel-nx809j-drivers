
undefined8 __zte_power_supply_changed_work(long param_1,undefined8 *param_2)

{
  int iVar1;
  ulong uVar2;
  code *pcVar3;
  undefined8 *puVar4;
  char *pcVar5;
  long lVar6;
  ulong uVar7;
  undefined8 *puVar8;
  int iVar9;
  
  puVar4 = *(undefined8 **)(param_1 + 0x98);
  lVar6 = puVar4[3];
  if (lVar6 == 0) {
    lVar6 = param_2[1];
    if ((lVar6 != 0) && (uVar7 = param_2[2], uVar7 != 0)) {
      puVar8 = (undefined8 *)*puVar4;
      pcVar5 = (char *)*puVar8;
      if (pcVar5 != (char *)0x0) {
        uVar2 = 0;
        iVar9 = 1;
        do {
          iVar1 = strcmp(*(char **)(lVar6 + uVar2 * 8),pcVar5);
          if (iVar1 == 0) goto LAB_00102ab8;
          uVar2 = (ulong)iVar9;
          iVar9 = iVar9 + 1;
        } while (uVar2 < uVar7);
      }
    }
  }
  else {
    pcVar5 = *(char **)*param_2;
    if ((pcVar5 != (char *)0x0) && (uVar7 = puVar4[4], uVar7 != 0)) {
      uVar2 = 0;
      iVar9 = 1;
      do {
        iVar1 = strcmp(pcVar5,*(char **)(lVar6 + uVar2 * 8));
        if (iVar1 == 0) {
          puVar8 = (undefined8 *)*puVar4;
LAB_00102ab8:
          pcVar3 = (code *)puVar8[9];
          if (pcVar3 == (code *)0x0) {
            return 0;
          }
          if (*(int *)(pcVar3 + -4) == 0x6f39adef) {
            (*pcVar3)(puVar4);
            return 0;
          }
                    /* WARNING: Does not return */
          pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x102adc);
          (*pcVar3)();
        }
        uVar2 = (ulong)iVar9;
        iVar9 = iVar9 + 1;
      } while (uVar2 < uVar7);
    }
  }
  return 0;
}

