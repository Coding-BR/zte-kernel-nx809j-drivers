
undefined4 zte_ir_encode_pulses(long param_1,long param_2,ulong param_3,uint param_4,ulong *param_5)

{
  ulong uVar1;
  ulong uVar2;
  ulong uVar3;
  ulong uVar4;
  uint uVar5;
  undefined2 uVar6;
  code *pcVar7;
  bool bVar8;
  ulong uVar9;
  long lVar10;
  undefined4 uVar11;
  ulong uVar12;
  ulong uVar13;
  long lVar14;
  undefined2 *puVar15;
  long lVar16;
  
  if (param_5 == (ulong *)0x0) {
    uVar11 = 0xffffffea;
  }
  else {
    uVar11 = 0xffffffea;
    *param_5 = 0;
    if (((param_2 != 0) && (param_3 != 0)) && (0xffb3b4ce < param_4 - 0x4c4b41)) {
      uVar12 = 0;
      uVar13 = 0;
      do {
        uVar5 = *(uint *)(param_2 + uVar12 * 4);
        uVar9 = ((ulong)uVar5 * (ulong)(param_4 >> 4) + 500000) / 1000000;
        if (40000 - uVar13 <= uVar9) {
          return 0xfffffff9;
        }
        lVar14 = 0x13884;
        if ((uVar12 & 1) != 0) {
          lVar14 = 0x13886;
        }
        if (499999 < (ulong)uVar5 * (ulong)(param_4 >> 4)) {
          uVar6 = *(undefined2 *)(param_1 + lVar14);
          uVar1 = 0;
          if (uVar13 < 0x9c41) {
            uVar1 = 40000 - uVar13;
          }
          uVar4 = uVar9;
          if (uVar9 < 2) {
            uVar4 = 1;
          }
          uVar2 = uVar4 - 1;
          if (uVar1 <= uVar4 - 1) {
            uVar2 = uVar1;
          }
          lVar14 = 0;
          if (1 < uVar2) {
            uVar1 = uVar2 + 1 & 1;
            uVar3 = 2;
            if (uVar1 != 0) {
              uVar3 = uVar1;
            }
            lVar14 = (uVar2 + 1) - uVar3;
            lVar10 = ~uVar2 + uVar3;
            puVar15 = (undefined2 *)(param_1 + 6 + uVar13 * 2);
            do {
              lVar10 = lVar10 + 2;
              puVar15[-1] = uVar6;
              *puVar15 = uVar6;
              puVar15 = puVar15 + 2;
            } while (lVar10 != 0);
          }
          uVar1 = uVar13;
          if (39999 < uVar13) {
            uVar1 = 40000;
          }
          lVar10 = lVar14 - uVar4;
          lVar16 = lVar14 + -40000 + uVar1;
          puVar15 = (undefined2 *)(param_1 + 4 + (lVar14 + uVar13) * 2);
          do {
            if (lVar16 == 0) {
                    /* WARNING: Does not return */
              pcVar7 = (code *)SoftwareBreakpoint(0x5512,0x100a50);
              (*pcVar7)();
            }
            bVar8 = lVar10 != -1;
            lVar10 = lVar10 + 1;
            lVar16 = lVar16 + 1;
            *puVar15 = uVar6;
            puVar15 = puVar15 + 1;
          } while (bVar8);
        }
        uVar12 = uVar12 + 1;
        uVar13 = uVar9 + uVar13;
      } while (uVar12 != param_3);
      uVar11 = 0;
      *param_5 = uVar13;
    }
  }
  return uVar11;
}

