/* 001002bc __zte_lock_task_sighand */

long __zte_lock_task_sighand(long param_1,undefined8 *param_2)

{
  undefined8 uVar1;
  long lVar2;
  long lVar3;
  
  __rcu_read_lock();
  lVar2 = *(long *)(param_1 + 0x960);
  if (lVar2 == 0) {
    lVar3 = 0;
  }
  else {
    do {
      uVar1 = _raw_spin_lock_irqsave(lVar2);
      *param_2 = uVar1;
      lVar3 = lVar2;
      if (lVar2 == *(long *)(param_1 + 0x960)) break;
      _raw_spin_unlock_irqrestore(lVar2,uVar1);
      lVar2 = *(long *)(param_1 + 0x960);
      lVar3 = 0;
    } while (lVar2 != 0);
  }
  __rcu_read_unlock();
  return lVar3;
}



/* 00100344 zte_taskstats_user_cmd */

void zte_taskstats_user_cmd(undefined8 param_1,long param_2)

{
  uint *puVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  char cVar5;
  bool bVar6;
  undefined4 uVar7;
  uint uVar8;
  ulong uVar9;
  undefined2 *puVar10;
  long lVar11;
  long lVar12;
  long lVar13;
  undefined8 uVar14;
  long lVar15;
  ulong uVar16;
  long local_68;
  long local_60;
  long local_58;
  
  lVar15 = sp_el0;
  local_58 = *(long *)(lVar15 + 0x710);
  lVar15 = *(long *)(param_2 + 0x20);
  if (*(long *)(lVar15 + 0x18) != 0) {
    local_60 = 0;
    uVar9 = zte_parse(*(long *)(lVar15 + 0x18),&local_60);
    if (-1 < (int)uVar9) {
      uVar9 = zte_add_del_listener(*(undefined4 *)(param_2 + 4),&local_60,0);
    }
    goto LAB_00100a60;
  }
  if (*(long *)(lVar15 + 0x20) != 0) {
    local_60 = 0;
    uVar9 = zte_parse(*(long *)(lVar15 + 0x20),&local_60);
    if (-1 < (int)uVar9) {
      uVar9 = zte_add_del_listener(*(undefined4 *)(param_2 + 4),&local_60,1);
    }
    goto LAB_00100a60;
  }
  if (*(long *)(lVar15 + 8) == 0) {
    if (*(long *)(lVar15 + 0x10) == 0) {
      uVar9 = 0xffffffea;
      goto LAB_00100a60;
    }
    local_68 = 0;
    uVar9 = zte_prepare_reply(param_2,&local_68,0x170);
    lVar15 = local_68;
    if ((int)uVar9 < 0) goto LAB_00100a60;
    uVar7 = *(undefined4 *)(*(long *)(*(long *)(param_2 + 0x20) + 0x10) + 4);
    puVar10 = (undefined2 *)zte_mk_reply(local_68,2,uVar7);
    if (puVar10 != (undefined2 *)0x0) {
      __rcu_read_lock();
      lVar11 = find_task_by_vpid(uVar7);
      if (lVar11 != 0) {
        __rcu_read_lock();
        lVar12 = *(long *)(lVar11 + 0x960);
        while (lVar12 != 0) {
          uVar14 = _raw_spin_lock_irqsave(lVar12);
          if (lVar12 == *(long *)(lVar11 + 0x960)) {
            __rcu_read_unlock();
            if (*(long *)(*(long *)(lVar11 + 0x958) + 0x3a0) == 0) {
              memset(puVar10,0,0x160);
            }
            else {
              memcpy(puVar10,*(void **)(*(long *)(lVar11 + 0x958) + 0x3a0),0x160);
            }
            lVar13 = ktime_get();
            lVar12 = lVar11;
            goto LAB_001008ac;
          }
          _raw_spin_unlock_irqrestore(lVar12,uVar14);
          lVar12 = *(long *)(lVar11 + 0x960);
        }
        __rcu_read_unlock();
      }
      __rcu_read_unlock();
      *puVar10 = 10;
      goto LAB_00100690;
    }
LAB_0010067c:
    uVar9 = 0xffffffea;
LAB_00100694:
    sk_skb_reason_drop(0,lVar15,2);
    goto LAB_00100a60;
  }
  local_60 = 0;
  uVar9 = zte_prepare_reply(param_2,&local_60,0x170);
  lVar15 = local_60;
  if ((int)uVar9 < 0) goto LAB_00100a60;
  uVar7 = *(undefined4 *)(*(long *)(*(long *)(param_2 + 0x20) + 8) + 4);
  puVar10 = (undefined2 *)zte_mk_reply(local_60,1,uVar7);
  if (puVar10 == (undefined2 *)0x0) goto LAB_0010067c;
  __rcu_read_lock();
  lVar11 = find_task_by_vpid(uVar7);
  if (lVar11 == 0) {
    __rcu_read_unlock();
LAB_00100690:
    uVar9 = 0xfffffffd;
    goto LAB_00100694;
  }
  puVar1 = (uint *)(lVar11 + 0x40);
  Hint_Prefetch(puVar1,2,0,1);
  do {
    uVar8 = *puVar1;
    cVar5 = '\x01';
    bVar6 = (bool)ExclusiveMonitorPass(puVar1,0x10);
    if (bVar6) {
      *puVar1 = uVar8 + 1;
      cVar5 = ExclusiveMonitorsStatus();
    }
  } while (cVar5 != '\0');
  if (uVar8 == 0) {
    uVar14 = 2;
LAB_001009f8:
    refcount_warn_saturate(puVar1,uVar14);
  }
  else if ((int)(uVar8 + 1 | uVar8) < 0) {
    uVar14 = 1;
    goto LAB_001009f8;
  }
  __rcu_read_unlock();
  uVar14 = sp_el0;
  uVar14 = task_active_pid_ns(uVar14);
  memset(puVar10,0,0x160);
  uVar9 = *(long *)(lVar11 + 0x7f0) + *(long *)(lVar11 + 0x7e8);
  *(ulong *)(puVar10 + 0x20) = uVar9 & ((long)uVar9 >> 0x3f ^ 0xffffffffffffffffU);
  uVar9 = *(long *)(lVar11 + 0x7f0) + *(long *)(lVar11 + 0x7e8);
  *(ulong *)(puVar10 + 0x98) = uVar9 & ((long)uVar9 >> 0x3f ^ 0xffffffffffffffffU);
  uVar9 = *(ulong *)(lVar11 + 0x620);
  uVar16 = *(ulong *)(lVar11 + 0x120);
  *(undefined8 *)(puVar10 + 8) = *(undefined8 *)(lVar11 + 0x618);
  *(ulong *)(puVar10 + 0xc) = uVar9 & ((long)uVar9 >> 0x3f ^ 0xffffffffffffffffU);
  *(ulong *)(puVar10 + 0x24) = uVar16 & ((long)uVar16 >> 0x3f ^ 0xffffffffffffffffU);
  *puVar10 = 10;
  *(undefined8 *)(puVar10 + 0x88) = *(undefined8 *)(lVar11 + 0x828);
  *(undefined8 *)(puVar10 + 0x8c) = *(undefined8 *)(lVar11 + 0x830);
  lVar12 = ktime_get();
  uVar9 = lVar12 - *(long *)(lVar11 + 0x838);
  *(ulong *)(puVar10 + 0x48) = uVar9 / 1000;
  lVar12 = ktime_get_real_seconds();
  lVar12 = lVar12 - uVar9 / 1000000000;
  *(long *)(puVar10 + 0xac) = lVar12;
  uVar8 = (uint)lVar12 & ((uint)(lVar12 >> 0x3f) ^ 0xffffffff);
  if (0xfffffffe < lVar12) {
    uVar8 = 0xffffffff;
  }
  *(uint *)(puVar10 + 0x44) = uVar8;
  uVar8 = *(uint *)(lVar11 + 0x44);
  if ((uVar8 >> 2 & 1) != 0) {
    *(undefined4 *)(puVar10 + 2) = *(undefined4 *)(lVar11 + 0x6a4);
    uVar8 = *(uint *)(lVar11 + 0x44);
  }
  if ((-1 < *(int *)(lVar11 + 0x6a8)) && ((uVar8 >> 6 & 1) != 0)) {
    *(byte *)(puVar10 + 4) = *(byte *)(puVar10 + 4) | 1;
    uVar8 = *(uint *)(lVar11 + 0x44);
  }
  if ((uVar8 >> 8 & 1) != 0) {
    *(byte *)(puVar10 + 4) = *(byte *)(puVar10 + 4) | 2;
    uVar8 = *(uint *)(lVar11 + 0x44);
  }
  if ((uVar8 >> 9 & 1) != 0) {
    *(byte *)(puVar10 + 4) = *(byte *)(puVar10 + 4) | 8;
    uVar8 = *(uint *)(lVar11 + 0x44);
  }
  if ((uVar8 >> 10 & 1) != 0) {
    *(byte *)(puVar10 + 4) = *(byte *)(puVar10 + 4) | 0x10;
  }
  *(char *)((long)puVar10 + 9) = *(char *)(lVar11 + 0x98) + -0x78;
  *(char *)(puVar10 + 0x38) = (char)*(undefined4 *)(lVar11 + 0x548);
  uVar7 = __task_pid_nr_ns(lVar11,0,uVar14);
  *(undefined4 *)(puVar10 + 0x40) = uVar7;
  __rcu_read_lock();
  lVar12 = *(long *)(lVar11 + 0x8f8);
  *(undefined4 *)(puVar10 + 0x3c) = *(undefined4 *)(lVar12 + 8);
  *(undefined4 *)(puVar10 + 0x3e) = *(undefined4 *)(lVar12 + 0xc);
  if (*(long *)(lVar11 + 0x770) == 0) {
    uVar7 = 0;
  }
  else {
    uVar7 = __task_pid_nr_ns(*(undefined8 *)(lVar11 + 0x718),1,uVar14);
  }
  *(undefined4 *)(puVar10 + 0x42) = uVar7;
  __rcu_read_unlock();
  uVar9 = *(ulong *)(lVar11 + 0x7f0);
  *(ulong *)(puVar10 + 0x4c) = *(ulong *)(lVar11 + 0x7e8) / 1000;
  *(ulong *)(puVar10 + 0x50) = uVar9 / 1000;
  uVar9 = *(ulong *)(lVar11 + 0x7f0);
  *(ulong *)(puVar10 + 0x90) = *(ulong *)(lVar11 + 0x7e8) / 1000;
  *(ulong *)(puVar10 + 0x94) = uVar9 / 1000;
  *(undefined8 *)(puVar10 + 0x54) = *(undefined8 *)(lVar11 + 0x848);
  *(undefined8 *)(puVar10 + 0x58) = *(undefined8 *)(lVar11 + 0x850);
  strncpy((char *)(puVar10 + 0x28),(char *)(lVar11 + 0x910),0x20);
  *(ulong *)(puVar10 + 0x5c) = (*(ulong *)(lVar11 + 0xb10) >> 1 & 0x7ffffffffffff) / 0x7d;
  *(ulong *)(puVar10 + 0x60) = (*(ulong *)(lVar11 + 0xb18) >> 1 & 0x7ffffffffffff) / 0x7d;
  lVar12 = get_task_mm(lVar11);
  if (lVar12 != 0) {
    uVar9 = (*(ulong *)(lVar12 + 0x350) &
            ((long)*(ulong *)(lVar12 + 0x350) >> 0x3f ^ 0xffffffffffffffffU)) +
            (*(ulong *)(lVar12 + 0x328) &
            ((long)*(ulong *)(lVar12 + 0x328) >> 0x3f ^ 0xffffffffffffffffU)) +
            (*(ulong *)(lVar12 + 0x3a0) &
            ((long)*(ulong *)(lVar12 + 0x3a0) >> 0x3f ^ 0xffffffffffffffffU));
    uVar16 = *(ulong *)(lVar12 + 0xe8);
    if (*(ulong *)(lVar12 + 0xe8) <= uVar9) {
      uVar16 = uVar9;
    }
    *(ulong *)(puVar10 + 100) = (uVar16 & 0xfffffffffffff) << 2;
    uVar9 = *(ulong *)(lVar12 + 0xf0);
    if (*(ulong *)(lVar12 + 0xf0) <= *(ulong *)(lVar12 + 0xf8)) {
      uVar9 = *(ulong *)(lVar12 + 0xf8);
    }
    *(ulong *)(puVar10 + 0x68) = (uVar9 & 0xfffffffffffff) << 2;
    mmput();
  }
  *(ulong *)(puVar10 + 0x6c) = *(ulong *)(lVar11 + 0xac8) & 0xfffffffffffffc00;
  *(ulong *)(puVar10 + 0x70) = *(ulong *)(lVar11 + 0xad0) & 0xfffffffffffffc00;
  *(ulong *)(puVar10 + 0x74) = *(ulong *)(lVar11 + 0xad8) & 0xfffffffffffffc00;
  *(ulong *)(puVar10 + 0x78) = *(ulong *)(lVar11 + 0xae0) & 0xfffffffffffffc00;
  *(ulong *)(puVar10 + 0x7c) = *(ulong *)(lVar11 + 0xaf0) & 0xfffffffffffffc00;
  *(ulong *)(puVar10 + 0x80) = *(ulong *)(lVar11 + 0xaf8) & 0xfffffffffffffc00;
  *(ulong *)(puVar10 + 0x84) = *(ulong *)(lVar11 + 0xb00) & 0xfffffffffffffc00;
  Hint_Prefetch(puVar1,2,0,1);
  do {
    uVar8 = *puVar1;
    cVar5 = '\x01';
    bVar6 = (bool)ExclusiveMonitorPass(puVar1,0x10);
    if (bVar6) {
      *puVar1 = uVar8 - 1;
      cVar5 = ExclusiveMonitorsStatus();
    }
  } while (cVar5 != '\0');
  if (uVar8 == 1) {
    DataMemoryBarrier(2,1);
    __put_task_struct(lVar11);
  }
  else if ((int)uVar8 < 1) {
    refcount_warn_saturate(puVar1,3);
  }
  goto LAB_00100a2c;
  while (lVar12 = *(long *)(lVar12 + 0x748), lVar12 != lVar11) {
LAB_001008ac:
    if (*(int *)(lVar12 + 0x6a0) == 0) {
      lVar2 = *(long *)(lVar12 + 0x7f0) + *(long *)(lVar12 + 0x7e8) + *(long *)(puVar10 + 0x20);
      lVar3 = 0;
      if (*(long *)(puVar10 + 0x20) <= lVar2) {
        lVar3 = lVar2;
      }
      *(long *)(puVar10 + 0x20) = lVar3;
      lVar2 = *(long *)(lVar12 + 0x7f0) + *(long *)(lVar12 + 0x7e8) + *(long *)(puVar10 + 0x98);
      lVar3 = 0;
      if (*(long *)(puVar10 + 0x98) <= lVar2) {
        lVar3 = lVar2;
      }
      *(long *)(puVar10 + 0x98) = lVar3;
      lVar2 = *(long *)(puVar10 + 0xc) + *(long *)(lVar12 + 0x620);
      lVar3 = *(long *)(puVar10 + 0x24) + *(long *)(lVar12 + 0x120);
      lVar4 = 0;
      if (*(long *)(puVar10 + 0xc) <= lVar2) {
        lVar4 = lVar2;
      }
      lVar2 = 0;
      if (*(long *)(puVar10 + 0x24) <= lVar3) {
        lVar2 = lVar3;
      }
      *(long *)(puVar10 + 8) = *(long *)(puVar10 + 8) + *(long *)(lVar12 + 0x618);
      *(long *)(puVar10 + 0xc) = lVar4;
      *(long *)(puVar10 + 0x24) = lVar2;
      *(ulong *)(puVar10 + 0x48) =
           *(long *)(puVar10 + 0x48) + (ulong)(lVar13 - *(long *)(lVar12 + 0x838)) / 1000;
      uVar9 = *(ulong *)(lVar12 + 0x7f0);
      *(ulong *)(puVar10 + 0x4c) = *(long *)(puVar10 + 0x4c) + *(ulong *)(lVar12 + 0x7e8) / 1000;
      *(ulong *)(puVar10 + 0x50) = *(long *)(puVar10 + 0x50) + uVar9 / 1000;
      *(long *)(puVar10 + 0x88) = *(long *)(puVar10 + 0x88) + *(long *)(lVar12 + 0x828);
      *(long *)(puVar10 + 0x8c) = *(long *)(puVar10 + 0x8c) + *(long *)(lVar12 + 0x830);
    }
    local_60 = *(long *)(lVar12 + 0x7b8);
    if ((local_60 != *(long *)(lVar12 + 0x958) + 0x10) && (lVar2 = local_60 + -0x7b8, lVar2 != 0)) {
      lVar12 = lVar2;
      if (lVar2 == lVar11) break;
      goto LAB_001008ac;
    }
  }
  _raw_spin_unlock_irqrestore(*(undefined8 *)(lVar11 + 0x960),uVar14);
  __rcu_read_unlock();
  *puVar10 = 10;
LAB_00100a2c:
  **(int **)(lVar15 + 0xe0) =
       (*(int *)(lVar15 + 0xd8) + *(int *)(lVar15 + 0xd0)) - (int)*(int **)(lVar15 + 0xe0);
  uVar8 = netlink_unicast(*(undefined8 *)(*(long *)(param_2 + 0x28) + 0x120),lVar15,
                          *(undefined4 *)(param_2 + 4),0x40);
  uVar9 = (ulong)(uVar8 & (int)uVar8 >> 0x1f);
LAB_00100a60:
  lVar15 = sp_el0;
  if (*(long *)(lVar15 + 0x710) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar9);
}



/* 00100aac zte_cgroupstats_user_cmd */

undefined8 zte_cgroupstats_user_cmd(void)

{
  return 0;
}



/* 00100ab4 zte_parse */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 zte_parse(ushort *param_1,undefined8 param_2)

{
  uint uVar1;
  undefined4 uVar2;
  long lVar3;
  
  if (param_1 == (ushort *)0x0) {
    uVar2 = 1;
  }
  else {
    uVar1 = *param_1 - 4;
    if (uVar1 < 0x125) {
      if ((uVar1 & 0xffff) == 0) {
        uVar2 = 0xffffffea;
      }
      else {
        lVar3 = __kmalloc_noprof(uVar1 & 0xffff,0xcc0);
        if (lVar3 == 0) {
          uVar2 = 0xfffffff4;
        }
        else {
          nla_strscpy(lVar3,param_1,uVar1 & 0xffff);
          uVar2 = bitmap_parselist(lVar3,param_2,_nr_cpu_ids);
          kfree(lVar3);
        }
      }
    }
    else {
      uVar2 = 0xfffffff9;
    }
  }
  return uVar2;
}



/* 00100b98 zte_add_del_listener */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 zte_add_del_listener(int param_1,uint *param_2,int param_3)

{
  uint uVar1;
  undefined *puVar2;
  undefined8 *puVar3;
  undefined8 *puVar4;
  ulong uVar5;
  long lVar6;
  undefined8 *puVar7;
  undefined8 *extraout_x9;
  undefined8 *puVar8;
  undefined8 uVar9;
  ulong uVar10;
  
  if ((*param_2 & (___cpu_possible_mask ^ 0xffffffff)) == 0) {
    uVar9 = sp_el0;
    puVar2 = (undefined *)task_active_pid_ns(uVar9);
    if (puVar2 == &init_pid_ns) {
      if (param_3 == 0) {
        uVar5 = 0;
        while( true ) {
          uVar1 = (uint)(-1L << (uVar5 & 0x3f)) & *param_2;
          if (uVar1 == 0) {
            return 0;
          }
          puVar7 = (undefined8 *)
                   __kmalloc_cache_node_noprof(___list_del_entry_valid_or_report,0xcc0,0,0x18);
          if (puVar7 == (undefined8 *)0x0) break;
          uVar5 = ((ulong)uVar1 & 0xaaaaaaaaaaaaaaaa) >> 1 |
                  ((ulong)uVar1 & 0x5555555555555555) << 1;
          uVar5 = (uVar5 & 0xcccccccccccccccc) >> 2 | (uVar5 & 0x3333333333333333) << 2;
          uVar5 = (uVar5 & 0xf0f0f0f0f0f0f0f0) >> 4 | (uVar5 & 0xf0f0f0f0f0f0f0f) << 4;
          uVar5 = (uVar5 & 0xff00ff00ff00ff00) >> 8 | (uVar5 & 0xff00ff00ff00ff) << 8;
          *(int *)(puVar7 + 2) = param_1;
          *(undefined1 *)((long)puVar7 + 0x14) = 1;
          uVar10 = LZCOUNT((uVar5 >> 0x10 | (uVar5 & 0xffff0000ffff) << 0x10) << 0x20);
          lVar6 = *(long *)(&__per_cpu_offset + uVar10 * 8);
          down_write(&zte_listener_array + lVar6);
          puVar8 = (undefined8 *)(&DAT_00101300 + lVar6);
          puVar3 = (undefined8 *)*puVar8;
          for (puVar4 = puVar3; puVar4 != puVar8; puVar4 = (undefined8 *)*puVar4) {
            if ((*(int *)(puVar4 + 2) == param_1) && (*(char *)((long)puVar4 + 0x14) != '\0'))
            goto LAB_00100c54;
          }
          if ((((undefined8 *)puVar3[1] == puVar8) && (puVar7 != puVar8)) && (puVar3 != puVar7)) {
            puVar3[1] = puVar7;
            *puVar7 = puVar3;
            puVar7[1] = puVar8;
            *puVar8 = puVar7;
          }
          else {
            __list_add_valid_or_report(puVar7);
          }
          puVar7 = (undefined8 *)0x0;
LAB_00100c54:
          up_write(&zte_listener_array + lVar6);
          kfree(puVar7);
          uVar5 = uVar10 + 1;
          if (0x1e < uVar10) {
            return 0;
          }
        }
        uVar9 = 0xfffffff4;
      }
      else {
        uVar9 = 0;
      }
      uVar5 = 0;
      do {
        uVar1 = (uint)(-1L << (uVar5 & 0x3f)) & *param_2;
        if (uVar1 == 0) {
          return uVar9;
        }
        uVar5 = ((ulong)uVar1 & 0xaaaaaaaaaaaaaaaa) >> 1 | ((ulong)uVar1 & 0x5555555555555555) << 1;
        uVar5 = (uVar5 & 0xcccccccccccccccc) >> 2 | (uVar5 & 0x3333333333333333) << 2;
        uVar5 = (uVar5 & 0xf0f0f0f0f0f0f0f0) >> 4 | (uVar5 & 0xf0f0f0f0f0f0f0f) << 4;
        uVar5 = (uVar5 & 0xff00ff00ff00ff00) >> 8 | (uVar5 & 0xff00ff00ff00ff) << 8;
        uVar10 = LZCOUNT((uVar5 >> 0x10 | (uVar5 & 0xffff0000ffff) << 0x10) << 0x20);
        lVar6 = *(long *)(&__per_cpu_offset + uVar10 * 8);
        down_write(&zte_listener_array + lVar6);
        puVar7 = *(undefined8 **)(&DAT_00101300 + lVar6);
        do {
          puVar4 = puVar7;
          if (puVar4 == (undefined8 *)(&DAT_00101300 + lVar6)) goto LAB_00100d90;
          puVar7 = (undefined8 *)*puVar4;
        } while (*(int *)(puVar4 + 2) != param_1);
        puVar8 = (undefined8 *)puVar4[1];
        if (((undefined8 *)*puVar8 == puVar4) && ((undefined8 *)puVar7[1] == puVar4)) {
          puVar7[1] = puVar8;
          *puVar8 = puVar7;
        }
        else {
          __list_del_entry_valid_or_report();
          puVar4 = extraout_x9;
        }
        *puVar4 = 0xdead000000000100;
        puVar4[1] = 0xdead000000000122;
        kfree();
LAB_00100d90:
        up_write(&zte_listener_array + lVar6);
        uVar5 = uVar10 + 1;
        if (0x1e < uVar10) {
          return uVar9;
        }
      } while( true );
    }
  }
  return 0xffffffea;
}



/* 00100e20 zte_prepare_reply */

undefined8 zte_prepare_reply(int *param_1,long *param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  long lVar5;
  long lVar6;
  long lVar7;
  undefined8 uVar8;
  int iVar9;
  
  lVar6 = __alloc_skb((param_3 + 7U & 0xffc) + 0x13 & 0xffc,0xcc0,0,0xffffffff);
  if (lVar6 == 0) {
    uVar8 = 0xfffffff4;
  }
  else {
    if (param_1 == (int *)0x0) {
      lVar7 = sp_el0;
      *(int *)(lVar7 + 0x10) = *(int *)(lVar7 + 0x10) + 1;
      lVar5 = tpidr_el1;
      piVar1 = (int *)((long)&zte_taskstats_seqnum + lVar5);
      do {
        iVar2 = *piVar1;
        cVar3 = '\x01';
        bVar4 = (bool)ExclusiveMonitorPass(piVar1,0x10);
        if (bVar4) {
          *piVar1 = iVar2 + 1;
          cVar3 = ExclusiveMonitorsStatus();
        }
      } while (cVar3 != '\0');
      lVar5 = *(long *)(lVar7 + 0x10) + -1;
      *(int *)(lVar7 + 0x10) = (int)lVar5;
      if ((lVar5 == 0) || (*(long *)(lVar7 + 0x10) == 0)) {
        preempt_schedule_notrace();
      }
      iVar9 = 0;
    }
    else {
      iVar2 = *param_1;
      iVar9 = param_1[1];
    }
    lVar7 = genlmsg_put(lVar6,iVar9,iVar2,&zte_family,0,2);
    if (lVar7 == 0) {
      sk_skb_reason_drop(0,lVar6,2);
      uVar8 = 0xffffffea;
    }
    else {
      uVar8 = 0;
      *param_2 = lVar6;
    }
  }
  return uVar8;
}



/* 00100f2c zte_mk_reply */

void zte_mk_reply(long param_1,int param_2,undefined4 param_3)

{
  short *psVar1;
  uint uVar2;
  code *pcVar3;
  int iVar4;
  long lVar5;
  undefined4 uVar6;
  short *psVar7;
  long lVar8;
  undefined4 local_3c;
  long local_38;
  
  lVar8 = sp_el0;
  local_38 = *(long *)(lVar8 + 0x710);
  lVar8 = *(long *)(param_1 + 0xd8);
  uVar2 = *(uint *)(param_1 + 0xd0);
  uVar6 = 4;
  if (param_2 != 1) {
    uVar6 = 5;
  }
  local_3c = param_3;
  iVar4 = nla_put(param_1,uVar6,0,0);
  lVar5 = 0;
  if ((-1 < iVar4) && (psVar1 = (short *)(lVar8 + (ulong)uVar2), psVar1 != (short *)0x0)) {
    iVar4 = nla_put(param_1,param_2,4,&local_3c);
    if (iVar4 < 0) {
      psVar7 = *(short **)(param_1 + 0xe0);
      if (psVar1 < psVar7) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x800,0x100fec);
        (*pcVar3)();
      }
    }
    else {
      lVar5 = nla_reserve_64bit(param_1,3,0x160,6);
      if (lVar5 != 0) {
        lVar5 = lVar5 + 4;
        *psVar1 = ((short)*(undefined4 *)(param_1 + 0xd8) + (short)*(undefined4 *)(param_1 + 0xd0))
                  - (short)psVar1;
        goto LAB_0010100c;
      }
      psVar7 = *(short **)(param_1 + 0xe0);
      if (psVar1 < psVar7) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x800,0x10103c);
        (*pcVar3)();
      }
    }
    skb_trim(param_1,(int)psVar1 - (int)psVar7);
    lVar5 = 0;
  }
LAB_0010100c:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(lVar5);
}



/* 00101060 init_module */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int init_module(void)

{
  uint uVar1;
  int iVar2;
  ulong uVar3;
  long lVar4;
  ulong uVar5;
  
  uVar3 = 0;
  do {
    uVar1 = (uint)(-1L << (uVar3 & 0x3f)) & ___cpu_possible_mask;
    if (uVar1 == 0) break;
    uVar3 = ((ulong)uVar1 & 0xaaaaaaaaaaaaaaaa) >> 1 | ((ulong)uVar1 & 0x5555555555555555) << 1;
    uVar3 = (uVar3 & 0xcccccccccccccccc) >> 2 | (uVar3 & 0x3333333333333333) << 2;
    uVar3 = (uVar3 & 0xf0f0f0f0f0f0f0f0) >> 4 | (uVar3 & 0xf0f0f0f0f0f0f0f) << 4;
    uVar3 = (uVar3 & 0xff00ff00ff00ff00) >> 8 | (uVar3 & 0xff00ff00ff00ff) << 8;
    uVar5 = LZCOUNT((uVar3 >> 0x10 | (uVar3 & 0xffff0000ffff) << 0x10) << 0x20);
    lVar4 = *(long *)(&__per_cpu_offset + uVar5 * 8);
    *(undefined **)(&DAT_00101300 + lVar4) = &DAT_00101300 + lVar4;
    *(undefined **)(&DAT_00101308 + lVar4) = &DAT_00101300 + lVar4;
    __init_rwsem(&zte_listener_array + *(long *)(&__per_cpu_offset + uVar5 * 8),
                 "&(per_cpu(zte_listener_array, i).sem)",&zte_taskstats_init_early___key);
    uVar3 = uVar5 + 1;
  } while (uVar5 < 0x1f);
  iVar2 = genl_register_family(&zte_family);
  if (iVar2 == 0) {
    _printk(&DAT_0010120f,1);
  }
  return iVar2;
}



