
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_power_supply_deferred_register_work(long param_1)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  long *plVar4;
  
  plVar4 = (long *)(param_1 + -0x350);
  lVar3 = *plVar4;
  if (lVar3 != 0) {
    while (iVar1 = mutex_trylock(lVar3 + 0xa0), iVar1 == 0) {
      if ((*(byte *)(param_1 + 0x6e) & 1) != 0) {
        return;
      }
      msleep(10);
      lVar3 = *plVar4;
    }
  }
  uVar2 = _raw_spin_lock_irqsave(param_1 + 0x68);
  *(undefined1 *)(param_1 + 0x6c) = 1;
  pm_stay_awake(param_1 + -0x3b0);
  _raw_spin_unlock_irqrestore(param_1 + 0x68,uVar2);
  queue_work_on(0x20,_system_wq,param_1 + -0x20);
  if (*plVar4 != 0) {
    mutex_unlock(*plVar4 + 0xa0);
  }
  return;
}

