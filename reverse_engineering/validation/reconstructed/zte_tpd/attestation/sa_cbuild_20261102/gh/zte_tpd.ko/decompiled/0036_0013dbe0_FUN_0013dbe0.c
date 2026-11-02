
size_t FUN_0013dbe0(void)

{
  undefined8 uVar1;
  ulong uVar2;
  size_t __n;
  undefined8 in_x9;
  long unaff_x19;
  long unaff_x20;
  
  InstructionSynchronizationBarrier();
  daif = in_x9;
  __n = __arch_copy_from_user();
  uVar1 = daif;
  uVar2 = daif;
  daif = uVar2 | 0xc0;
  uVar2 = ttbr1_el1;
  ttbr0_el1 = (uVar2 & 0xffffffffffff) - 0x1000;
  ttbr1_el1 = uVar2 & 0xffffffffffff;
  InstructionSynchronizationBarrier();
  daif = uVar1;
  if (__n != 0) {
    memset((void *)(unaff_x20 + (unaff_x19 - __n)),0,__n);
  }
  return __n;
}

