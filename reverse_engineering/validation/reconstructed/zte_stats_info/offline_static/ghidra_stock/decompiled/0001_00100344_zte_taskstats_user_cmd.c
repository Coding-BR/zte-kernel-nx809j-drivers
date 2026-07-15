
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

