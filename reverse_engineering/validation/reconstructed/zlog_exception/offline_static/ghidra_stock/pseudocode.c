/* 00100364 zlog_write_internal */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong zlog_write_internal(void *param_1,ulong param_2)

{
  undefined8 uVar1;
  undefined8 *puVar2;
  long lVar3;
  undefined1 *puVar4;
  ulong uVar5;
  undefined8 uVar6;
  
  if (DAT_00100fcc < 0x401) {
    puVar2 = (undefined8 *)__kmalloc_cache_noprof(_mutex_unlock,0xdc0,0x20);
    while (puVar2 != (undefined8 *)0x0) {
      *(int *)(puVar2 + 2) = (int)param_2 + 1;
      uVar5 = (ulong)*(uint *)(puVar2 + 2);
      lVar3 = __kmalloc_noprof(uVar5,0xdc0);
      puVar2[3] = lVar3;
      if (lVar3 == 0) {
        _printk(&DAT_0010100a,"zlog_write_internal");
        if (puVar2[3] != 0) {
          kfree();
        }
        kfree(puVar2);
        return 0;
      }
      if (param_2 <= uVar5) {
        memcpy((void *)puVar2[3],param_1,param_2);
        *(undefined1 *)(puVar2[3] + param_2) = 0;
        mutex_lock(&g_zlog_info);
        if (((DAT_00100f48 == puVar2) || ((undefined8 **)puVar2 == &DAT_00100f48)) ||
           ((undefined8 **)DAT_00100f48[1] != &DAT_00100f48)) {
          __list_add_valid_or_report(puVar2,&DAT_00100f48);
        }
        else {
          DAT_00100f48[1] = puVar2;
          *puVar2 = DAT_00100f48;
          puVar2[1] = &DAT_00100f48;
          DAT_00100f48 = puVar2;
        }
        DAT_00100fcc = DAT_00100fcc + 1;
        DAT_00100fc8 = 1;
        mutex_unlock(&g_zlog_info);
        __wake_up(&DAT_00100fb0,1,1,0);
        return param_2;
      }
      __fortify_panic(0x11,uVar5,param_2);
      uVar1 = _mutex_unlock;
      lVar3 = sp_el0;
      uVar6 = *(undefined8 *)(lVar3 + 0x50);
      *(undefined1 **)(lVar3 + 0x50) = &zlog_write_internal__alloc_tag;
      puVar2 = (undefined8 *)__kmalloc_cache_noprof(uVar1,0xdc0,0x20);
      *(undefined8 *)(lVar3 + 0x50) = uVar6;
    }
    puVar4 = &DAT_0010130b;
  }
  else {
    puVar4 = &DAT_0010116e;
  }
  _printk(puVar4,"zlog_write_internal");
  return 0xfffffffffffffff4;
}



/* 0010056c zlog_read */

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



/* 00100814 zlog_write */

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



/* 00100b08 zlog_poll */

undefined4 zlog_poll(long param_1,undefined8 *param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  
  if ((*(byte *)(param_1 + 0xc) & 1) == 0) {
    uVar1 = 0;
  }
  else {
    if ((param_2 != (undefined8 *)0x0) && (pcVar2 = (code *)*param_2, pcVar2 != (code *)0x0)) {
      if (*(int *)(pcVar2 + -4) != -0x1a5eeedd) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x100b58);
        (*pcVar2)();
      }
      (*pcVar2)(param_1,&DAT_00100fb0);
      DataMemoryBarrier(2,3);
    }
    mutex_lock(&g_zlog_info);
    uVar1 = 0;
    if ((undefined8 **)DAT_00100f48 != &DAT_00100f48) {
      uVar1 = 0x41;
    }
    mutex_unlock(&g_zlog_info);
  }
  return uVar1;
}



/* 00100ba4 zlog_ioctl */

undefined8 zlog_ioctl(void)

{
  return 0;
}



/* 00100bb0 zlog_open */

undefined8 zlog_open(void)

{
  char cVar1;
  bool bVar2;
  
  Hint_Prefetch(0x100fa8,2,0,1);
  do {
    cVar1 = '\x01';
    bVar2 = (bool)ExclusiveMonitorPass(0x100fa8,0x10);
    if (bVar2) {
      cVar1 = ExclusiveMonitorsStatus();
      DAT_00100fa8 = DAT_00100fa8 + 1;
    }
  } while (cVar1 != '\0');
  _printk(&DAT_001011a2,"zlog_open",DAT_00100fa8);
  return 0;
}



/* 00100c20 zlog_release */

undefined8 zlog_release(void)

{
  char cVar1;
  bool bVar2;
  
  Hint_Prefetch(0x100fa8,2,0,1);
  do {
    cVar1 = '\x01';
    bVar2 = (bool)ExclusiveMonitorPass(0x100fa8,0x10);
    if (bVar2) {
      cVar1 = ExclusiveMonitorsStatus();
      DAT_00100fa8 = DAT_00100fa8 + -1;
    }
  } while (cVar1 != '\0');
  _printk(&DAT_001011d3,"zlog_release",DAT_00100fa8);
  return 0;
}



/* 00100ca4 init_module */

int init_module(void)

{
  int iVar1;
  undefined *puVar2;
  
  iVar1 = zlog_create_log_dev();
  if (iVar1 == 0) {
    __init_waitqueue_head(&DAT_00100fb0,"&g_zlog_info.poll_wq",&zlog_init___key);
    __mutex_init(&g_zlog_info,"&g_zlog_info.list_mutex",&zlog_init___key_11);
    puVar2 = &DAT_001012b9;
    DAT_00100f48 = &DAT_00100f48;
    DAT_00100f50 = &DAT_00100f48;
    DAT_00100fa8 = 0;
  }
  else {
    puVar2 = &DAT_0010126f;
  }
  _printk(puVar2,"zlog_init");
  return iVar1;
}



/* 00100d3c zlog_create_log_dev */

int zlog_create_log_dev(void)

{
  int iVar1;
  
  DAT_00100f58 = 0xff;
  DAT_00100f60 = kstrdup("zlog_exception",0xcc0);
  if (DAT_00100f60 == 0) {
    iVar1 = -0xc;
  }
  else {
    DAT_00100f68 = &zlog_fops;
    DAT_00100f80 = 0;
    iVar1 = misc_register(&DAT_00100f58);
    if (iVar1 == 0) {
      _printk(&DAT_001010be,"zlog_create_log_dev",DAT_00100f60,0);
      iVar1 = 0;
    }
    else {
      _printk(&DAT_00101342,"zlog_create_log_dev",DAT_00100f60);
    }
  }
  return iVar1;
}



/* 00100df0 cleanup_module */

void cleanup_module(void)

{
  _printk(&DAT_00100fdc,"zlog_exit");
  return;
}



