
/* WARNING: Control flow encountered bad instruction data */

undefined8 zlog_comm_write(undefined8 param_1,ulong param_2,long param_3)

{
  int iVar1;
  ulong uVar2;
  ulong uVar3;
  code *pcVar4;
  undefined8 *puVar5;
  ulong uVar6;
  undefined8 uVar7;
  undefined4 *puVar8;
  long lVar9;
  ulong local_48 [2];
  long local_38;
  
  lVar9 = sp_el0;
  local_38 = *(long *)(lVar9 + 0x710);
  local_48[0] = 0;
  local_48[1] = 0;
  if (param_3 == 0x10) {
    puVar5 = (undefined8 *)sp_el0;
    if (((*(byte *)((long)puVar5 + 0x46) >> 5 & 1) != 0) ||
       (uVar6 = param_2, ((uint)*puVar5 >> 0x1a & 1) != 0)) {
      uVar6 = param_2 & (long)(param_2 << 8) >> 8;
    }
    if (uVar6 < 0x7ffffffff1) {
      uVar7 = daif;
      uVar6 = daif;
      daif = uVar6 | 0xc0;
      uVar3 = puVar5[1];
      uVar6 = ttbr1_el1;
      ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar6 & 0xffffffffffff;
      ttbr0_el1 = uVar3;
      InstructionSynchronizationBarrier();
      daif = uVar7;
      uVar6 = __arch_copy_from_user(uVar3,local_48,param_2 & 0xff7fffffffffffff,0x10);
      uVar2 = local_48[0];
      puVar5 = (undefined8 *)daif;
      uVar3 = daif;
      daif = uVar3 | 0xc0;
      uVar3 = ttbr1_el1;
      ttbr0_el1 = (uVar3 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar3 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = puVar5;
      if (uVar6 == 0) {
        iVar1 = (int)local_48[0];
        puVar8 = &g_zlog_server;
        lVar9 = 0x20;
        uVar7 = 0x10;
        do {
          if ((((*(char *)(puVar8 + 0x46) != '\0') && (puVar8[0x38] == iVar1)) &&
              (*(long *)(puVar8 + 0x2a) != 0)) &&
             (pcVar4 = *(code **)(*(long *)(puVar8 + 0x2a) + 8), pcVar4 != (code *)0x0)) {
            if (*(int *)(pcVar4 + -4) != -0x3d5937bb) {
                    /* WARNING: Does not return */
              pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x1010cc);
              (*pcVar4)();
            }
            (*pcVar4)(puVar8,uVar2 & 0xffffffff);
          }
          lVar9 = lVar9 + -1;
          puVar8 = puVar8 + 0x48;
        } while (lVar9 != 0);
        goto LAB_0010112c;
      }
    }
    else {
      uVar6 = 0x10;
    }
    if (0x10 < uVar6) {
      __fortify_panic(puVar5,0xf,0);
                    /* WARNING: Bad instruction - Truncating control flow here */
      halt_baddata();
    }
    memset((void *)((long)&local_38 - uVar6),0,uVar6);
    _printk(&DAT_00103d02,"zlog_comm_write");
    uVar7 = 0xfffffffffffffff4;
  }
  else {
    _printk(&DAT_00103fac,"zlog_comm_write",param_3,0x10);
    uVar7 = 0xffffffffffffffea;
  }
LAB_0010112c:
  lVar9 = sp_el0;
  if (*(long *)(lVar9 + 0x710) == local_38) {
    return uVar7;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

