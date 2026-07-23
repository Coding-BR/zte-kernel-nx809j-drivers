
void syna_ioctl(long param_1,int param_2,ulong param_3)

{
  long lVar1;
  undefined8 uVar2;
  ulong uVar3;
  undefined8 *puVar4;
  ulong uVar5;
  long lVar6;
  undefined8 local_58;
  undefined8 local_50;
  undefined8 uStack_48;
  undefined8 local_40;
  undefined8 uStack_38;
  undefined4 local_2c;
  long local_28;
  
  lVar6 = sp_el0;
  local_28 = *(long *)(lVar6 + 0x710);
  lVar6 = *(long *)(param_1 + 0x20);
  local_2c = 0;
  if (param_2 == -0x3ffb8ffd) {
    local_2c = *(undefined4 *)(lVar6 + 0x438);
    mutex_lock(lVar6 + 0x470);
    puVar4 = (undefined8 *)sp_el0;
    if (((*(byte *)((long)puVar4 + 0x46) >> 5 & 1) != 0) ||
       (uVar5 = param_3, ((uint)*puVar4 >> 0x1a & 1) != 0)) {
      uVar5 = param_3 & (long)(param_3 << 8) >> 8;
    }
    if (uVar5 < 0x7ffffffffd) {
      uVar2 = daif;
      uVar5 = daif;
      daif = uVar5 | 0xc0;
      uVar3 = puVar4[1];
      uVar5 = ttbr1_el1;
      ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar5 & 0xffffffffffff;
      ttbr0_el1 = uVar3;
      InstructionSynchronizationBarrier();
      daif = uVar2;
      lVar1 = __arch_copy_to_user(uVar3,param_3 & 0xff7fffffffffffff,&local_2c,4);
      puVar4 = (undefined8 *)daif;
      uVar5 = daif;
      daif = uVar5 | 0xc0;
      uVar5 = ttbr1_el1;
      ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar5 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = puVar4;
LAB_00147744:
      if (lVar1 == 0) {
        mutex_unlock(puVar4,lVar6 + 0x470);
        uVar2 = 0;
        goto LAB_0014778c;
      }
    }
  }
  else {
    if (param_2 != -0x3ffb8ffe) {
      if (param_2 == -0x3ffb8fff) {
        if (*(int *)(lVar6 + 0x5e0) == 0) {
          uVar2 = 0xfffffffffffffff5;
        }
        else {
          if (*(int *)(lVar6 + 0x468) == 0) {
            local_40 = 0;
            uStack_38 = 0;
            local_50 = 0;
            uStack_48 = 0;
            local_58 = 0;
            init_wait_entry(&local_58,0);
            while( true ) {
              lVar1 = prepare_to_wait_event(lVar6 + 0x448,&local_58,1);
              if (*(int *)(lVar6 + 0x468) != 0) break;
              if (lVar1 != 0) goto LAB_00147784;
              schedule();
            }
            finish_wait(lVar6 + 0x448,&local_58);
          }
LAB_00147784:
          uVar2 = 0;
          *(undefined4 *)(lVar6 + 0x468) = 0;
        }
      }
      else {
        uVar2 = 0xffffffffffffffe7;
      }
      goto LAB_0014778c;
    }
    local_2c = *(undefined4 *)(lVar6 + 0x5e0);
    mutex_lock(lVar6 + 0x470);
    puVar4 = (undefined8 *)sp_el0;
    if (((*(byte *)((long)puVar4 + 0x46) >> 5 & 1) != 0) ||
       (uVar5 = param_3, ((uint)*puVar4 >> 0x1a & 1) != 0)) {
      uVar5 = param_3 & (long)(param_3 << 8) >> 8;
    }
    if (uVar5 < 0x7ffffffffd) {
      uVar2 = daif;
      uVar5 = daif;
      daif = uVar5 | 0xc0;
      uVar3 = puVar4[1];
      uVar5 = ttbr1_el1;
      ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar5 & 0xffffffffffff;
      ttbr0_el1 = uVar3;
      InstructionSynchronizationBarrier();
      daif = uVar2;
      lVar1 = __arch_copy_to_user(uVar3,param_3 & 0xff7fffffffffffff,&local_2c,4);
      puVar4 = (undefined8 *)daif;
      uVar5 = daif;
      daif = uVar5 | 0xc0;
      uVar5 = ttbr1_el1;
      ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar5 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = puVar4;
      goto LAB_00147744;
    }
  }
  mutex_unlock(puVar4,lVar6 + 0x470);
  uVar2 = 0xfffffffffffffff2;
LAB_0014778c:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

