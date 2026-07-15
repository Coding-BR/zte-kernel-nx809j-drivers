
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong zlog_write(undefined8 param_1,ulong param_2,ulong param_3)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  code *pcVar3;
  undefined8 *puVar4;
  long lVar5;
  undefined1 *puVar6;
  undefined *puVar7;
  ulong uVar8;
  ulong uVar9;
  ulong uVar10;
  ulong uVar11;
  undefined8 uVar12;
  
  if (DAT_00100fcc < 0x401) {
    puVar4 = (undefined8 *)__kmalloc_cache_noprof(_mutex_unlock,0xdc0,0x20);
    while (puVar4 != (undefined8 *)0x0) {
      *(int *)(puVar4 + 2) = (int)param_3 + 1;
      uVar11 = (ulong)*(uint *)(puVar4 + 2);
      lVar5 = __kmalloc_noprof(uVar11,0xdc0);
      puVar4[3] = lVar5;
      if (lVar5 == 0) {
        uVar11 = 0;
        puVar7 = &DAT_0010100a;
LAB_00100ae0:
        _printk(puVar7,"zlog_write");
        if (puVar4[3] != 0) {
          kfree();
        }
        kfree(puVar4);
        return uVar11;
      }
      if (param_3 >> 0x1f != 0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x800,0x100a2c);
        (*pcVar3)();
      }
      __check_object_size(lVar5,param_3,0);
      puVar1 = (undefined8 *)sp_el0;
      if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
         (uVar10 = param_2, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
        uVar10 = param_2 & (long)(param_2 << 8) >> 8;
      }
      uVar9 = param_3;
      if (uVar10 <= 0x8000000000 - param_3) {
        uVar2 = daif;
        uVar10 = daif;
        daif = uVar10 | 0xc0;
        uVar9 = puVar1[1];
        uVar10 = ttbr1_el1;
        ttbr1_el1 = uVar9 & 0xffff000000000000 | uVar10 & 0xffffffffffff;
        ttbr0_el1 = uVar9;
        InstructionSynchronizationBarrier();
        daif = uVar2;
        uVar9 = __arch_copy_from_user(uVar9,lVar5,param_2 & 0xff7fffffffffffff,param_3);
        uVar2 = daif;
        uVar10 = daif;
        daif = uVar10 | 0xc0;
        uVar10 = ttbr1_el1;
        ttbr0_el1 = (uVar10 & 0xffffffffffff) - 0x1000;
        ttbr1_el1 = uVar10 & 0xffffffffffff;
        InstructionSynchronizationBarrier();
        daif = uVar2;
        if (uVar9 == 0) goto LAB_00100980;
      }
      uVar8 = param_3 - uVar9;
      uVar10 = 0;
      if (uVar8 <= uVar11) {
        uVar10 = uVar11 - uVar8;
      }
      if (uVar9 <= uVar10) {
        memset((void *)(lVar5 + uVar8),0,uVar9);
        if (uVar9 == 0) {
LAB_00100980:
          *(undefined1 *)(puVar4[3] + param_3) = 0;
          mutex_lock(&g_zlog_info);
          if (((DAT_00100f48 == puVar4) || ((undefined8 **)puVar4 == &DAT_00100f48)) ||
             ((undefined8 **)DAT_00100f48[1] != &DAT_00100f48)) {
            __list_add_valid_or_report(puVar4,&DAT_00100f48);
          }
          else {
            DAT_00100f48[1] = puVar4;
            *puVar4 = DAT_00100f48;
            puVar4[1] = &DAT_00100f48;
            DAT_00100f48 = puVar4;
          }
          DAT_00100fcc = DAT_00100fcc + 1;
          DAT_00100fc8 = 1;
          mutex_unlock(&g_zlog_info);
          __wake_up(&DAT_00100fb0,1,1,0);
          return param_3;
        }
        uVar11 = 0xfffffffffffffff4;
        puVar7 = &DAT_00101056;
        goto LAB_00100ae0;
      }
      __fortify_panic(0xf,uVar10,uVar9);
      uVar2 = _mutex_unlock;
      lVar5 = sp_el0;
      uVar12 = *(undefined8 *)(lVar5 + 0x50);
      *(undefined1 **)(lVar5 + 0x50) = zlog_write__alloc_tag;
      puVar4 = (undefined8 *)__kmalloc_cache_noprof(uVar2,0xdc0,0x20);
      *(undefined8 *)(lVar5 + 0x50) = uVar12;
    }
    puVar6 = &DAT_0010130b;
  }
  else {
    puVar6 = &DAT_0010116e;
  }
  _printk(puVar6,"zlog_write");
  return 0xfffffffffffffff4;
}

