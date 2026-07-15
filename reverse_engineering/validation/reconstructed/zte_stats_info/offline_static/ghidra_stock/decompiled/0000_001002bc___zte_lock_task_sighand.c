
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

