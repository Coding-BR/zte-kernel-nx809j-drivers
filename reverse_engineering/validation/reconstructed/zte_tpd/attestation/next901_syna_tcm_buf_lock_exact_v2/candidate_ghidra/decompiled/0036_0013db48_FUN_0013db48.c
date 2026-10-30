
size_t FUN_0013db48(undefined8 *param_1,undefined8 param_2,ulong param_3)

{
  undefined8 uVar1;
  ulong uVar2;
  ulong uVar3;
  ulong unaff_x19;
  long unaff_x20;
  
  if (((uint)*param_1 >> 0x1a & 1) != 0) {
    param_3 = param_3 & (long)(param_3 << 8) >> 8;
  }
  uVar2 = unaff_x19;
  if ((unaff_x19 < 0x8000000001) && (param_3 <= 0x8000000000 - unaff_x19)) {
    uVar1 = daif;
    uVar2 = daif;
    daif = uVar2 | 0xc0;
    uVar3 = param_1[1];
    uVar2 = ttbr1_el1;
    ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar2 & 0xffffffffffff;
    ttbr0_el1 = uVar3;
    InstructionSynchronizationBarrier();
    daif = uVar1;
    uVar2 = __arch_copy_from_user(uVar3);
    uVar1 = daif;
    uVar3 = daif;
    daif = uVar3 | 0xc0;
    uVar3 = ttbr1_el1;
    ttbr0_el1 = (uVar3 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar3 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar1;
    if (uVar2 == 0) {
      return 0;
    }
  }
  memset((void *)(unaff_x20 + (unaff_x19 - uVar2)),0,uVar2);
  return uVar2;
}

