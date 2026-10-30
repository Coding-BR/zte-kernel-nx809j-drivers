
size_t rdbg_write(long param_1,ulong param_2,int param_3)

{
  uint uVar1;
  uint uVar2;
  byte bVar3;
  int iVar4;
  undefined8 *puVar5;
  undefined8 uVar6;
  bool bVar7;
  uint uVar8;
  code *pcVar9;
  bool bVar10;
  size_t __n;
  long lVar11;
  uint uVar12;
  uint uVar13;
  long lVar14;
  ulong uVar15;
  int *piVar16;
  uint uVar17;
  uint uVar18;
  uint uVar20;
  size_t sVar21;
  ulong uVar22;
  long lVar23;
  uint uVar24;
  ulong uVar19;
  
  lVar23 = *(long *)(param_1 + 0x20);
  if (lVar23 == 0) {
    _printk(&DAT_001017e8);
    sVar21 = 0xffffffffffffffea;
  }
  else {
    sVar21 = (size_t)param_3;
    uVar1 = param_3 + 0x7f;
    uVar2 = (int)uVar1 >> 7;
    uVar24 = 0;
    puVar5 = (undefined8 *)sp_el0;
    do {
      mutex_lock(*(undefined8 *)(lVar23 + 0xa0));
      piVar16 = *(int **)(lVar23 + 0x88);
      if (((*piVar16 == -0xff00fe) && (*(char *)(*(long *)(lVar23 + 0x78) + 1) == '\x01')) &&
         (lVar14 = *(long *)(lVar23 + 0x80), *(int *)(lVar14 + 4) == piVar16[1])) {
        while( true ) {
          uVar13 = *(uint *)(lVar14 + 0xc);
          if (uVar13 == piVar16[3]) break;
          uVar17 = *(uint *)(lVar23 + 0x98);
          if (uVar17 <= *(ushort *)(piVar16 + (ulong)uVar13 + 4)) goto LAB_001011e4;
          uVar12 = 0;
          if (uVar17 != 0) {
            uVar12 = (uVar13 + 1) / uVar17;
          }
          *(uint *)(lVar14 + 0xc) = (uVar13 + 1) - uVar12 * uVar17;
          uVar15 = (ulong)*(ushort *)(piVar16 + (ulong)uVar13 + 4);
          bVar3 = *(byte *)(*(long *)(lVar23 + 0xb8) + uVar15);
          uVar13 = (uint)bVar3;
          if (bVar3 != 0) {
            do {
              uVar13 = uVar13 - 1;
              *(undefined1 *)(*(long *)(lVar23 + 0xb8) + uVar15) = 0;
              uVar15 = uVar15 + 1;
            } while (uVar13 != 0);
          }
          DataSynchronizationBarrier(3,1,0);
          lVar14 = *(long *)(lVar23 + 0x80);
          piVar16 = *(int **)(lVar23 + 0x88);
        }
      }
      uVar13 = *(uint *)(lVar23 + 0xb0);
      uVar15 = (ulong)uVar13;
      if (uVar2 == 1) {
        uVar22 = uVar15;
        do {
          if (*(char *)(*(long *)(lVar23 + 0xb8) + uVar22) == '\0') {
            *(undefined1 *)(*(long *)(lVar23 + 0xb8) + uVar22) = 1;
            uVar17 = *(uint *)(lVar23 + 0xb4);
            uVar13 = *(int *)(lVar23 + 0xb0) + 1;
            uVar12 = 0;
            if (uVar17 != 0) {
              uVar12 = uVar13 / uVar17;
            }
            iVar4 = uVar13 - uVar12 * uVar17;
            goto LAB_00101314;
          }
          uVar12 = *(uint *)(lVar23 + 0xb4);
          uVar17 = (int)uVar22 + 1;
          uVar18 = 0;
          if (uVar12 != 0) {
            uVar18 = uVar17 / uVar12;
          }
          uVar17 = uVar17 - uVar18 * uVar12;
          uVar22 = (ulong)uVar17;
          *(uint *)(lVar23 + 0xb0) = uVar17;
        } while (uVar13 != uVar17);
      }
      else {
        uVar13 = *(uint *)(lVar23 + 0xb4);
        uVar17 = 0;
        uVar22 = (ulong)uVar13;
        uVar19 = uVar15;
        do {
          uVar12 = (uint)uVar15;
          uVar18 = (uint)*(byte *)(*(long *)(lVar23 + 0xb8) + uVar15);
          if (uVar18 == 0) {
            uVar20 = (uint)uVar22;
            uVar18 = uVar12;
            uVar8 = 1;
            if (uVar20 <= uVar12) {
              uVar18 = (uint)uVar19;
              uVar8 = uVar17 + 1;
            }
            uVar17 = uVar8;
            uVar19 = (ulong)uVar18;
            uVar18 = uVar20;
            if (uVar12 <= uVar20) {
              uVar18 = uVar12;
            }
            uVar22 = (ulong)uVar18;
            if (uVar17 != uVar2) goto LAB_00101278;
            if (uVar1 < 0x80) {
              uVar13 = 0;
            }
            else {
              uVar15 = (ulong)uVar2;
              if (uVar12 <= uVar20) {
                uVar20 = uVar12;
              }
              do {
                *(char *)(*(long *)(lVar23 + 0xb8) + (ulong)uVar20) = (char)uVar15;
                uVar15 = uVar15 - 1;
                uVar20 = uVar20 + 1;
              } while (uVar15 != 0);
              uVar12 = *(uint *)(lVar23 + 0xb0);
              uVar13 = (uint)*(byte *)(*(long *)(lVar23 + 0xb8) + (ulong)uVar12);
            }
            iVar4 = uVar12 + uVar13 + -1;
LAB_00101314:
            *(int *)(lVar23 + 0xb0) = iVar4;
            lVar14 = *(long *)(lVar23 + 0x90) + (ulong)(uint)((int)uVar22 << 7);
            if (param_3 < 0) {
                    /* WARNING: Does not return */
              pcVar9 = (code *)SoftwareBreakpoint(0x800,0x101480);
              (*pcVar9)();
            }
            __check_object_size(lVar14,sVar21,0);
            if (((*(byte *)((long)puVar5 + 0x46) >> 5 & 1) != 0) ||
               (uVar15 = param_2, ((uint)*puVar5 >> 0x1a & 1) != 0)) {
              uVar15 = param_2 & (long)(param_2 << 8) >> 8;
            }
            __n = sVar21;
            if (0x8000000000 - sVar21 < uVar15) {
LAB_00101360:
              memset((void *)(lVar14 + (sVar21 - __n)),0,__n);
              if ((int)__n == 0) goto LAB_00101414;
              if (lVar14 == 0) {
                bVar7 = false;
                goto LAB_00101460;
              }
              bVar3 = *(byte *)(*(long *)(lVar23 + 0xb8) + uVar22);
              uVar13 = (uint)bVar3;
              if (bVar3 != 0) {
                do {
                  uVar13 = uVar13 - 1;
                  *(undefined1 *)(*(long *)(lVar23 + 0xb8) + uVar22) = 0;
                  uVar22 = (ulong)((int)uVar22 + 1);
                } while (uVar13 != 0);
              }
              break;
            }
            uVar6 = daif;
            uVar15 = daif;
            daif = uVar15 | 0xc0;
            uVar15 = ttbr1_el1;
            ttbr1_el1 = puVar5[1] & 0xffff000000000000 | uVar15 & 0xffffffffffff;
            ttbr0_el1 = puVar5[1];
            InstructionSynchronizationBarrier();
            daif = uVar6;
            __n = __arch_copy_from_user(lVar14,param_2 & 0xff7fffffffffffff,sVar21);
            uVar6 = daif;
            uVar15 = daif;
            daif = uVar15 | 0xc0;
            uVar15 = ttbr1_el1;
            ttbr0_el1 = (uVar15 & 0xffffffffffff) - 0x1000;
            ttbr1_el1 = uVar15 & 0xffffffffffff;
            InstructionSynchronizationBarrier();
            daif = uVar6;
            if (__n != 0) goto LAB_00101360;
LAB_00101414:
            *(short *)(*(long *)(lVar23 + 0x80) + (ulong)*(uint *)(*(long *)(lVar23 + 0x80) + 8) * 4
                      + 0x10) = (short)uVar22;
            bVar7 = true;
            *(short *)(*(long *)(lVar23 + 0x80) + (ulong)*(uint *)(*(long *)(lVar23 + 0x80) + 8) * 4
                      + 0x12) = (short)(uVar1 >> 7);
            uVar17 = *(uint *)(lVar23 + 0x98);
            uVar13 = *(int *)(*(long *)(lVar23 + 0x80) + 8) + 1;
            uVar12 = 0;
            if (uVar17 != 0) {
              uVar12 = uVar13 / uVar17;
            }
            *(uint *)(*(long *)(lVar23 + 0x80) + 8) = uVar13 - uVar12 * uVar17;
            goto LAB_00101460;
          }
          uVar17 = 0;
          uVar22 = (ulong)uVar13;
          uVar12 = (uVar12 + uVar18) - 1;
LAB_00101278:
          uVar18 = 0;
          if (uVar13 != 0) {
            uVar18 = (uVar12 + 1) / uVar13;
          }
          uVar12 = (uVar12 + 1) - uVar18 * uVar13;
          uVar15 = (ulong)uVar12;
          *(uint *)(lVar23 + 0xb0) = uVar12;
        } while ((uint)uVar19 != uVar12);
      }
LAB_001011e4:
      bVar7 = false;
LAB_00101460:
      mutex_unlock(*(undefined8 *)(lVar23 + 0xa0));
    } while ((!bVar7) && (bVar10 = uVar24 < 0x14, uVar24 = uVar24 + 1, bVar10));
    if (bVar7) {
      uVar1 = *(uint *)(lVar23 + 0x5c);
      if (0x1f < uVar1) {
                    /* WARNING: Does not return */
        pcVar9 = (code *)SoftwareBreakpoint(0x5512,0x10152c);
        (*pcVar9)();
      }
      lVar14 = lVar23 + (ulong)uVar1 * 4;
      lVar11 = 1L << ((ulong)(*(int *)(lVar23 + 0x48) + uVar1) & 0x3f);
      uVar24 = *(uint *)(lVar14 + 0x148) ^ (uint)lVar11;
      qcom_smem_state_update_bits(*(undefined8 *)(lVar23 + 0x50),lVar11,uVar24);
      *(uint *)(lVar14 + 0x148) = uVar24;
      *(uint *)(lVar23 + 0x5c) = uVar1 + 1 & 0x1f;
    }
    else {
      _printk(&DAT_00101a54);
      sVar21 = 0xffffffffffffffba;
    }
  }
  return sVar21;
}

