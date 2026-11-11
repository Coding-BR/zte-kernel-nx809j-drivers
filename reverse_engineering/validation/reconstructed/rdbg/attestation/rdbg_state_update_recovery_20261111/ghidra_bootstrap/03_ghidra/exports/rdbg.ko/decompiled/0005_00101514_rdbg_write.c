
size_t rdbg_write(long param_1,ulong param_2,int param_3)

{
  uint uVar1;
  uint uVar2;
  byte bVar3;
  undefined8 *puVar4;
  undefined8 uVar5;
  bool bVar6;
  uint uVar7;
  code *pcVar8;
  bool bVar9;
  int iVar10;
  size_t __n;
  uint uVar11;
  uint uVar12;
  long lVar13;
  ulong uVar14;
  int *piVar15;
  uint uVar16;
  uint uVar17;
  uint uVar19;
  size_t sVar20;
  ulong uVar21;
  long lVar22;
  uint uVar23;
  ulong uVar18;
  
  if ((*(long **)(param_1 + 0x20) == (long *)0x0) ||
     (lVar22 = **(long **)(param_1 + 0x20), lVar22 == 0)) {
    _printk(&DAT_00101cfd);
    sVar20 = 0xffffffffffffffea;
  }
  else {
    uVar23 = 0;
    puVar4 = (undefined8 *)sp_el0;
    sVar20 = (size_t)param_3;
    uVar1 = param_3 + 0x7f;
    uVar2 = (int)uVar1 >> 7;
    do {
      mutex_lock(*(undefined8 *)(lVar22 + 0xa0));
      piVar15 = *(int **)(lVar22 + 0x88);
      if (((*piVar15 == -0xff00fe) && (*(char *)(*(long *)(lVar22 + 0x78) + 1) == '\x01')) &&
         (lVar13 = *(long *)(lVar22 + 0x80), *(int *)(lVar13 + 4) == piVar15[1])) {
        while( true ) {
          uVar12 = *(uint *)(lVar13 + 0xc);
          if (uVar12 == piVar15[3]) break;
          uVar16 = *(uint *)(lVar22 + 0x98);
          if (uVar16 <= *(ushort *)(piVar15 + (ulong)uVar12 + 4)) goto LAB_001015fc;
          uVar11 = 0;
          if (uVar16 != 0) {
            uVar11 = (uVar12 + 1) / uVar16;
          }
          *(uint *)(lVar13 + 0xc) = (uVar12 + 1) - uVar11 * uVar16;
          uVar14 = (ulong)*(ushort *)(piVar15 + (ulong)uVar12 + 4);
          bVar3 = *(byte *)(*(long *)(lVar22 + 0xb8) + uVar14);
          uVar12 = (uint)bVar3;
          if (bVar3 != 0) {
            do {
              uVar12 = uVar12 - 1;
              *(undefined1 *)(*(long *)(lVar22 + 0xb8) + uVar14) = 0;
              uVar14 = uVar14 + 1;
            } while (uVar12 != 0);
          }
          DataSynchronizationBarrier(3,1,0);
          lVar13 = *(long *)(lVar22 + 0x80);
          piVar15 = *(int **)(lVar22 + 0x88);
        }
      }
      uVar12 = *(uint *)(lVar22 + 0xb0);
      uVar14 = (ulong)uVar12;
      if (uVar2 == 1) {
        uVar21 = uVar14;
        do {
          if (*(char *)(*(long *)(lVar22 + 0xb8) + uVar21) == '\0') {
            *(undefined1 *)(*(long *)(lVar22 + 0xb8) + uVar21) = 1;
            uVar16 = *(uint *)(lVar22 + 0xb4);
            uVar12 = *(int *)(lVar22 + 0xb0) + 1;
            uVar11 = 0;
            if (uVar16 != 0) {
              uVar11 = uVar12 / uVar16;
            }
            iVar10 = uVar12 - uVar11 * uVar16;
            goto LAB_0010172c;
          }
          uVar11 = *(uint *)(lVar22 + 0xb4);
          uVar16 = (int)uVar21 + 1;
          uVar17 = 0;
          if (uVar11 != 0) {
            uVar17 = uVar16 / uVar11;
          }
          uVar16 = uVar16 - uVar17 * uVar11;
          uVar21 = (ulong)uVar16;
          *(uint *)(lVar22 + 0xb0) = uVar16;
        } while (uVar12 != uVar16);
      }
      else {
        uVar12 = *(uint *)(lVar22 + 0xb4);
        uVar16 = 0;
        uVar21 = (ulong)uVar12;
        uVar18 = uVar14;
        do {
          uVar11 = (uint)uVar14;
          uVar17 = (uint)*(byte *)(*(long *)(lVar22 + 0xb8) + uVar14);
          if (uVar17 == 0) {
            uVar19 = (uint)uVar21;
            uVar17 = uVar11;
            uVar7 = 1;
            if (uVar19 <= uVar11) {
              uVar17 = (uint)uVar18;
              uVar7 = uVar16 + 1;
            }
            uVar16 = uVar7;
            uVar18 = (ulong)uVar17;
            uVar17 = uVar19;
            if (uVar11 <= uVar19) {
              uVar17 = uVar11;
            }
            uVar21 = (ulong)uVar17;
            if (uVar16 != uVar2) goto LAB_00101690;
            if (uVar1 < 0x80) {
              uVar12 = 0;
            }
            else {
              uVar14 = (ulong)uVar2;
              if (uVar11 <= uVar19) {
                uVar19 = uVar11;
              }
              do {
                *(char *)(*(long *)(lVar22 + 0xb8) + (ulong)uVar19) = (char)uVar14;
                uVar14 = uVar14 - 1;
                uVar19 = uVar19 + 1;
              } while (uVar14 != 0);
              uVar11 = *(uint *)(lVar22 + 0xb0);
              uVar12 = (uint)*(byte *)(*(long *)(lVar22 + 0xb8) + (ulong)uVar11);
            }
            iVar10 = uVar11 + uVar12 + -1;
LAB_0010172c:
            *(int *)(lVar22 + 0xb0) = iVar10;
            lVar13 = *(long *)(lVar22 + 0x90) + (ulong)(uint)((int)uVar21 << 7);
            if (param_3 < 0) {
                    /* WARNING: Does not return */
              pcVar8 = (code *)SoftwareBreakpoint(0x800,0x101894);
              (*pcVar8)();
            }
            __check_object_size(lVar13,sVar20,0);
            if (((*(byte *)((long)puVar4 + 0x46) >> 5 & 1) != 0) ||
               (uVar14 = param_2, ((uint)*puVar4 >> 0x1a & 1) != 0)) {
              uVar14 = param_2 & (long)(param_2 << 8) >> 8;
            }
            __n = sVar20;
            if (0x8000000000 - sVar20 < uVar14) {
LAB_0010177c:
              memset((void *)(lVar13 + (sVar20 - __n)),0,__n);
              if ((int)__n == 0) goto LAB_0010182c;
              if ((lVar13 != 0) &&
                 (bVar3 = *(byte *)(*(long *)(lVar22 + 0xb8) + uVar21), uVar12 = (uint)bVar3,
                 bVar3 != 0)) {
                do {
                  uVar12 = uVar12 - 1;
                  *(undefined1 *)(*(long *)(lVar22 + 0xb8) + uVar21) = 0;
                  uVar21 = (ulong)((int)uVar21 + 1);
                } while (uVar12 != 0);
              }
              break;
            }
            uVar5 = daif;
            uVar14 = daif;
            daif = uVar14 | 0xc0;
            uVar14 = ttbr1_el1;
            ttbr1_el1 = puVar4[1] & 0xffff000000000000 | uVar14 & 0xffffffffffff;
            ttbr0_el1 = puVar4[1];
            InstructionSynchronizationBarrier();
            daif = uVar5;
            __n = __arch_copy_from_user(lVar13,param_2 & 0xff7fffffffffffff,sVar20);
            uVar5 = daif;
            uVar14 = daif;
            daif = uVar14 | 0xc0;
            uVar14 = ttbr1_el1;
            ttbr0_el1 = (uVar14 & 0xffffffffffff) - 0x1000;
            ttbr1_el1 = uVar14 & 0xffffffffffff;
            InstructionSynchronizationBarrier();
            daif = uVar5;
            if (__n != 0) goto LAB_0010177c;
LAB_0010182c:
            *(short *)(*(long *)(lVar22 + 0x80) + (ulong)*(uint *)(*(long *)(lVar22 + 0x80) + 8) * 4
                      + 0x10) = (short)uVar21;
            bVar6 = true;
            *(short *)(*(long *)(lVar22 + 0x80) + (ulong)*(uint *)(*(long *)(lVar22 + 0x80) + 8) * 4
                      + 0x12) = (short)(uVar1 >> 7);
            uVar16 = *(uint *)(lVar22 + 0x98);
            uVar12 = *(int *)(*(long *)(lVar22 + 0x80) + 8) + 1;
            uVar11 = 0;
            if (uVar16 != 0) {
              uVar11 = uVar12 / uVar16;
            }
            *(uint *)(*(long *)(lVar22 + 0x80) + 8) = uVar12 - uVar11 * uVar16;
            goto LAB_00101874;
          }
          uVar16 = 0;
          uVar21 = (ulong)uVar12;
          uVar11 = (uVar11 + uVar17) - 1;
LAB_00101690:
          uVar17 = 0;
          if (uVar12 != 0) {
            uVar17 = (uVar11 + 1) / uVar12;
          }
          uVar11 = (uVar11 + 1) - uVar17 * uVar12;
          uVar14 = (ulong)uVar11;
          *(uint *)(lVar22 + 0xb0) = uVar11;
        } while ((uint)uVar18 != uVar11);
      }
LAB_001015fc:
      bVar6 = false;
LAB_00101874:
      mutex_unlock(*(undefined8 *)(lVar22 + 0xa0));
    } while ((!bVar6) && (bVar9 = uVar23 < 0x14, uVar23 = uVar23 + 1, bVar9));
    if (bVar6) {
      mutex_lock(&rdbg_smem_state_lock);
      uVar14 = *(ulong *)(lVar22 + 0x50);
      if ((uVar14 != 0) && (uVar14 < 0xfffffffffffff001)) {
        uVar1 = *(uint *)(lVar22 + 0x5c);
        if (0x1f < uVar1) {
          mutex_unlock(&rdbg_smem_state_lock);
                    /* WARNING: Does not return */
          pcVar8 = (code *)SoftwareBreakpoint(0x5512,0x10196c);
          (*pcVar8)();
        }
        lVar13 = 1L << ((ulong)(*(int *)(lVar22 + 0x48) + uVar1) & 0x3f);
        uVar23 = *(uint *)(lVar22 + 0x148 + (ulong)uVar1 * 4) ^ (uint)lVar13;
        iVar10 = qcom_smem_state_update_bits(uVar14,lVar13,uVar23);
        if (iVar10 == 0) {
          *(uint *)(lVar22 + 0x148 + (ulong)uVar1 * 4) = uVar23;
          *(uint *)(lVar22 + 0x5c) = uVar1 + 1 & 0x1f;
        }
      }
      mutex_unlock(&rdbg_smem_state_lock);
    }
    else {
      _printk(&DAT_00101fda);
      sVar20 = 0xffffffffffffffba;
    }
  }
  return sVar20;
}

