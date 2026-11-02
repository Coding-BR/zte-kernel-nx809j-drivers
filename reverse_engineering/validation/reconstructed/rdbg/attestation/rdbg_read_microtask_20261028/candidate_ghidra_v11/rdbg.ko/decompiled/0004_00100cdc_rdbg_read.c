
long rdbg_read(long param_1,ulong param_2,ulong param_3)

{
  long lVar1;
  uint *puVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  undefined8 uVar7;
  char *pcVar8;
  ulong uVar9;
  undefined8 *puVar10;
  ulong uVar11;
  long lVar12;
  ulong uVar13;
  undefined8 *puVar14;
  
  puVar14 = *(undefined8 **)(param_1 + 0x20);
  if (puVar14 == (undefined8 *)0x0) {
    _printk(&DAT_00101328);
    iVar6 = -0x16;
    goto LAB_00100fe0;
  }
  iVar6 = wait_for_completion_interruptible(puVar14 + 1);
  if (iVar6 != 0) {
    _dev_err(*puVar14,"%s: Error in wait\n","rdbg_read");
    goto LAB_00100fe0;
  }
  if (((*(int *)(puVar14 + 0x22) == 2) && (*(int *)puVar14[0x1a] == -0xff00ff)) &&
     (*(char *)puVar14[0x19] == '\x01')) {
    iVar6 = ((int *)puVar14[0x1a])[1];
    if (*(int *)(puVar14[0x1b] + 4) != iVar6) {
      *(int *)(puVar14[0x1b] + 4) = iVar6;
      if (*(int *)(puVar14 + 0x1d) != 0) {
        uVar9 = 0;
        lVar12 = 0x10;
        do {
          uVar9 = uVar9 + 1;
          *(undefined2 *)(puVar14[0x1b] + lVar12) = 0xffff;
          lVar12 = lVar12 + 4;
        } while (uVar9 < *(uint *)(puVar14 + 0x1d));
      }
      *(undefined4 *)(puVar14[0x1b] + 8) = 0;
      *(undefined4 *)(puVar14[0x1b] + 0xc) = 0;
      if (*(int *)(puVar14 + 0x18) == 1) {
        mutex_lock(puVar14[0x14]);
        if (*(int *)(puVar14[0x10] + 4) != iVar6) {
          *(int *)(puVar14[0x10] + 4) = iVar6;
          if (*(int *)(puVar14 + 0x13) != 0) {
            uVar9 = 0;
            lVar12 = 0x10;
            do {
              uVar9 = uVar9 + 1;
              *(undefined2 *)(puVar14[0x10] + lVar12) = 0xffff;
              lVar12 = lVar12 + 4;
            } while (uVar9 < *(uint *)(puVar14 + 0x13));
          }
          if (puVar14[0x17] != 0) {
            memset((void *)puVar14[0x17],0,(ulong)(*(int *)((long)puVar14 + 0xb4) + 1));
            *(undefined4 *)(puVar14 + 0x16) = 0;
          }
          *(undefined4 *)(puVar14[0x10] + 8) = 0;
          *(undefined4 *)(puVar14[0x10] + 0xc) = 0;
        }
        mutex_unlock(puVar14[0x14]);
      }
    }
  }
  puVar2 = (uint *)puVar14[0x1a];
  if ((*(char *)puVar14[0x19] == '\x01') ||
     (puVar10 = (undefined8 *)(ulong)*puVar2, *puVar2 == 0xff00ff01)) {
    puVar10 = (undefined8 *)puVar14[0x1b];
    uVar3 = *(uint *)(puVar10 + 1);
    if (uVar3 == puVar2[2]) goto LAB_00100ffc;
    uVar4 = *(uint *)(puVar14 + 0x1d);
    if (uVar4 <= (ushort)puVar2[(ulong)uVar3 + 4]) goto LAB_00100ffc;
    uVar5 = 0;
    if (uVar4 != 0) {
      uVar5 = (uVar3 + 1) / uVar4;
    }
    *(uint *)(puVar10 + 1) = (uVar3 + 1) - uVar5 * uVar4;
    DataSynchronizationBarrier(3,1,0);
    uVar11 = (ulong)*(ushort *)((long)puVar2 + (ulong)uVar3 * 4 + 0x12) << 7;
    lVar12 = puVar14[0x1c] + (ulong)(ushort)puVar2[(ulong)uVar3 + 4] * 0x80;
    if (param_3 <= uVar11) {
      uVar11 = param_3;
    }
    __check_object_size(lVar12,uVar11,1);
    puVar10 = (undefined8 *)sp_el0;
    if (((*(byte *)((long)puVar10 + 0x46) >> 5 & 1) != 0) ||
       (uVar13 = param_2, ((uint)*puVar10 >> 0x1a & 1) != 0)) {
      uVar13 = param_2 & (long)(param_2 << 8) >> 8;
    }
    uVar9 = uVar11;
    if (uVar13 <= 0x8000000000 - uVar11) {
      uVar7 = daif;
      uVar9 = daif;
      daif = uVar9 | 0xc0;
      uVar13 = puVar10[1];
      uVar9 = ttbr1_el1;
      ttbr1_el1 = uVar13 & 0xffff000000000000 | uVar9 & 0xffffffffffff;
      ttbr0_el1 = uVar13;
      InstructionSynchronizationBarrier();
      daif = uVar7;
      uVar9 = __arch_copy_to_user(uVar13,param_2 & 0xff7fffffffffffff,lVar12,uVar11);
      puVar10 = (undefined8 *)daif;
      uVar13 = daif;
      daif = uVar13 | 0xc0;
      uVar13 = ttbr1_el1;
      ttbr0_el1 = (uVar13 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar13 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = puVar10;
    }
    if ((int)uVar9 == 0) {
      if (puVar14[0x1e] != 0) {
        mutex_lock();
      }
      if ((*(char *)puVar14[0x19] == '\x01') || (*(int *)puVar14[0x1a] == -0xff00ff)) {
        lVar12 = lVar12 - puVar14[0x1c];
        lVar1 = lVar12 + 0x7f;
        if (-1 < lVar12) {
          lVar1 = lVar12;
        }
        if ((uint)(lVar1 >> 7) < *(uint *)(puVar14 + 0x1d)) {
          lVar12 = puVar14[0x1b] + (ulong)*(uint *)(puVar14[0x1b] + 0xc) * 4;
          *(short *)(lVar12 + 0x10) = (short)(lVar1 >> 7);
          *(undefined2 *)(lVar12 + 0x12) = 0;
          uVar4 = *(uint *)(puVar14 + 0x1d);
          uVar3 = *(int *)(puVar14[0x1b] + 0xc) + 1;
          uVar5 = 0;
          if (uVar4 != 0) {
            uVar5 = uVar3 / uVar4;
          }
          *(uint *)(puVar14[0x1b] + 0xc) = uVar3 - uVar5 * uVar4;
        }
      }
      if (puVar14[0x1e] != 0) {
        mutex_unlock();
      }
      iVar6 = (int)uVar11;
      goto LAB_00100fe0;
    }
    uVar7 = *puVar14;
    pcVar8 = "%s: Error in copy_to_user(). Err code = %d\n";
  }
  else {
LAB_00100ffc:
    uVar7 = *puVar14;
    pcVar8 = "%s: Error in smq_recv(). Err code = %d\n";
    uVar9 = 0;
  }
  _dev_err(puVar10,uVar7,pcVar8,"rdbg_read",uVar9);
  iVar6 = -0x3d;
LAB_00100fe0:
  return (long)iVar6;
}

