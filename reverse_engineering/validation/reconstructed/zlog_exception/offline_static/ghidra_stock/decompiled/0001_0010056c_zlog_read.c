
ulong zlog_read(undefined8 param_1,ulong param_2,ulong param_3)

{
  undefined8 uVar1;
  long *plVar2;
  code *pcVar3;
  long lVar4;
  undefined *puVar5;
  long *plVar6;
  ulong uVar7;
  undefined8 *puVar8;
  ulong uVar9;
  ulong uVar10;
  undefined8 local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  long local_48;
  
  lVar4 = sp_el0;
  local_48 = *(long *)(lVar4 + 0x710);
  mutex_lock(&g_zlog_info);
  puVar8 = DAT_00100f48;
  mutex_unlock(&g_zlog_info);
  if ((undefined8 **)puVar8 == &DAT_00100f48) {
    DAT_00100fc8 = 0;
    local_58 = 0;
    uStack_50 = 0;
    local_68 = 0;
    uStack_60 = 0;
    local_70 = 0;
    init_wait_entry(&local_70,0);
    while (lVar4 = prepare_to_wait_event(&DAT_00100fb0,&local_70,1), DAT_00100fc8 == 0) {
      if (lVar4 != 0) {
        if ((int)lVar4 == 0) goto LAB_0010061c;
        puVar5 = &DAT_001010f0;
        goto LAB_001007c0;
      }
      schedule();
    }
    finish_wait(&DAT_00100fb0,&local_70);
  }
LAB_0010061c:
  mutex_lock(&g_zlog_info);
  plVar2 = DAT_00100f50;
  if ((undefined8 **)DAT_00100f48 == &DAT_00100f48) {
    mutex_unlock(&g_zlog_info);
  }
  else {
    plVar6 = (long *)DAT_00100f50[1];
    if (((long *)*plVar6 == DAT_00100f50) &&
       (lVar4 = *DAT_00100f50, *(long **)(lVar4 + 8) == DAT_00100f50)) {
      *(long **)(lVar4 + 8) = plVar6;
      *plVar6 = lVar4;
    }
    else {
      __list_del_entry_valid_or_report(DAT_00100f50);
    }
    *plVar2 = -0x2152ffffffffff00;
    plVar2[1] = -0x2152fffffffffede;
    DAT_00100fcc = DAT_00100fcc + -1;
    mutex_unlock(&g_zlog_info);
    if (plVar2 != (long *)0x0) {
      uVar10 = (ulong)*(uint *)(plVar2 + 2);
      if (param_3 <= *(uint *)(plVar2 + 2)) {
        uVar10 = param_3;
      }
      if (uVar10 >> 0x1f != 0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x800,0x1007e4);
        (*pcVar3)();
      }
      lVar4 = plVar2[3];
      __check_object_size(lVar4,uVar10,1);
      puVar8 = (undefined8 *)sp_el0;
      if (((*(byte *)((long)puVar8 + 0x46) >> 5 & 1) != 0) ||
         (uVar9 = param_2, ((uint)*puVar8 >> 0x1a & 1) != 0)) {
        uVar9 = param_2 & (long)(param_2 << 8) >> 8;
      }
      uVar7 = uVar10;
      if (uVar9 <= 0x8000000000 - uVar10) {
        uVar1 = daif;
        uVar9 = daif;
        daif = uVar9 | 0xc0;
        uVar7 = puVar8[1];
        uVar9 = ttbr1_el1;
        ttbr1_el1 = uVar7 & 0xffff000000000000 | uVar9 & 0xffffffffffff;
        ttbr0_el1 = uVar7;
        InstructionSynchronizationBarrier();
        daif = uVar1;
        uVar7 = __arch_copy_to_user(uVar7,param_2 & 0xff7fffffffffffff,lVar4,uVar10);
        puVar8 = (undefined8 *)daif;
        uVar9 = daif;
        daif = uVar9 | 0xc0;
        uVar9 = ttbr1_el1;
        ttbr0_el1 = (uVar9 & 0xffffffffffff) - 0x1000;
        ttbr1_el1 = uVar9 & 0xffffffffffff;
        InstructionSynchronizationBarrier();
        daif = puVar8;
      }
      if (uVar7 == 0) {
        lVar4 = plVar2[3];
      }
      else {
        _printk(puVar8,&DAT_00101127,"zlog_read","zlog_read");
        uVar10 = 0xfffffffffffffff2;
        lVar4 = plVar2[3];
      }
      if (lVar4 != 0) {
        kfree();
      }
      kfree(plVar2);
      goto LAB_00100768;
    }
  }
  puVar5 = &DAT_00101083;
LAB_001007c0:
  _printk(puVar5,"zlog_read");
  uVar10 = 0xfffffffffffffff5;
LAB_00100768:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_48) {
    return uVar10;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

