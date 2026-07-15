
undefined8 zte_ir_ioctl(long param_1,int param_2,ulong param_3)

{
  uint uVar1;
  undefined8 *puVar2;
  undefined8 uVar3;
  ulong uVar4;
  long lVar5;
  
  uVar3 = 0xffffffffffffffed;
  if (((param_1 != 0) && (lVar5 = *(long *)(param_1 + 0x20), lVar5 != 0)) &&
     (uVar3 = 0xffffffffffffffe7, param_2 == 0x40046931)) {
    puVar2 = (undefined8 *)sp_el0;
    if (((*(byte *)((long)puVar2 + 0x46) >> 5 & 1) != 0) ||
       (uVar4 = param_3, ((uint)*puVar2 >> 0x1a & 1) != 0)) {
      uVar4 = param_3 & (long)(param_3 << 8) >> 8;
    }
    uVar3 = 0xfffffffffffffff2;
    if (uVar4 < 0x7ffffffffd) {
      uVar3 = daif;
      uVar4 = daif;
      daif = uVar4 | 0xc0;
      uVar4 = ttbr1_el1;
      ttbr1_el1 = puVar2[1] & 0xffff000000000000 | uVar4 & 0xffffffffffff;
      ttbr0_el1 = puVar2[1];
      InstructionSynchronizationBarrier();
      daif = uVar3;
      uVar1 = *(uint *)(param_3 & 0xff7fffffffffffff);
      uVar3 = daif;
      uVar4 = daif;
      daif = uVar4 | 0xc0;
      uVar4 = ttbr1_el1;
      ttbr0_el1 = (uVar4 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar4 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar3;
      uVar3 = 0xffffffffffffffea;
      if ((0 < (int)uVar1) && (uVar1 < 0x4c4b5)) {
        mutex_lock(lVar5 + 0x138a8);
        if ((*(byte *)(lVar5 + 0x138ec) & 1) == 0) {
          uVar3 = 0;
          *(uint *)(lVar5 + 0x13888) = uVar1 << 4;
        }
        else {
          uVar3 = 0xffffffffffffff94;
        }
        mutex_unlock(lVar5 + 0x138a8);
      }
    }
  }
  return uVar3;
}

