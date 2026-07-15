
undefined8 zte_ir_ioctl(long param_1,uint param_2,ulong param_3)

{
  int iVar1;
  undefined8 *puVar2;
  undefined8 uVar3;
  ulong uVar4;
  long lVar5;
  
  if ((param_2 >> 0x1e & 1) == 0) {
    uVar3 = 0xffffffffffffffe7;
    if (param_2 == 0x40046931) {
      _printk(&DAT_001012a2,"zte_ir_ioctl",0);
      uVar3 = 0xffffffffffffffea;
    }
  }
  else {
    puVar2 = (undefined8 *)sp_el0;
    lVar5 = *(long *)(param_1 + 0x20);
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
      iVar1 = *(int *)(param_3 & 0xff7fffffffffffff);
      uVar3 = daif;
      uVar4 = daif;
      daif = uVar4 | 0xc0;
      uVar4 = ttbr1_el1;
      ttbr0_el1 = (uVar4 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar4 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar3;
      uVar3 = 0xffffffffffffffe7;
      if (param_2 == 0x40046931) {
        _printk(&DAT_001012a2,"zte_ir_ioctl",iVar1);
        uVar3 = 0xffffffffffffffea;
        if (iVar1 != 0) {
          uVar3 = 0;
          *(int *)(lVar5 + 0x13888) = iVar1 << 4;
        }
      }
    }
  }
  return uVar3;
}

