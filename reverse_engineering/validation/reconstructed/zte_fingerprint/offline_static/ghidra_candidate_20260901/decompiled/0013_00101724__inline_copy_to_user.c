
undefined8 _inline_copy_to_user(ulong param_1,undefined8 param_2)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  puVar1 = (undefined8 *)sp_el0;
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar3 = param_1, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar3 = param_1 & (long)(param_1 << 8) >> 8;
  }
  uVar4 = 1;
  if (uVar3 >> 0x27 == 0) {
    uVar4 = daif;
    uVar3 = daif;
    daif = uVar3 | 0xc0;
    uVar3 = ttbr1_el1;
    ttbr1_el1 = puVar1[1] & 0xffff000000000000 | uVar3 & 0xffffffffffff;
    ttbr0_el1 = puVar1[1];
    InstructionSynchronizationBarrier();
    daif = uVar4;
    uVar4 = __arch_copy_to_user(uVar4,param_1 & 0xff7fffffffffffff,param_2,1);
    uVar2 = daif;
    uVar3 = daif;
    daif = uVar3 | 0xc0;
    uVar3 = ttbr1_el1;
    ttbr0_el1 = (uVar3 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar3 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar2;
  }
  return uVar4;
}

