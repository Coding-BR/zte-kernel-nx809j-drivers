
size_t _inline_copy_from_user(long param_1,ulong param_2,ulong param_3)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  ulong uVar4;
  
  puVar1 = (undefined8 *)sp_el0;
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar4 = param_2, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar4 = param_2 & (long)(param_2 << 8) >> 8;
  }
  uVar3 = param_3;
  if ((param_3 < 0x8000000001) && (uVar4 <= 0x8000000000 - param_3)) {
    uVar2 = daif;
    uVar4 = daif;
    daif = uVar4 | 0xc0;
    uVar3 = puVar1[1];
    uVar4 = ttbr1_el1;
    ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar4 & 0xffffffffffff;
    ttbr0_el1 = uVar3;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    uVar3 = __arch_copy_from_user(uVar3,param_1,param_2 & 0xff7fffffffffffff,param_3);
    uVar2 = daif;
    uVar4 = daif;
    daif = uVar4 | 0xc0;
    uVar4 = ttbr1_el1;
    ttbr0_el1 = (uVar4 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar4 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    if (uVar3 == 0) {
      return 0;
    }
  }
  memset((void *)(param_1 + (param_3 - uVar3)),0,uVar3);
  return uVar3;
}

