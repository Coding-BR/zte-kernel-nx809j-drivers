
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_power_supply_changed(long param_1)

{
  undefined8 uVar1;
  
  uVar1 = _raw_spin_lock_irqsave(param_1 + 0x450);
  *(undefined1 *)(param_1 + 0x454) = 1;
  pm_stay_awake(param_1 + 0x38);
  _raw_spin_unlock_irqrestore(param_1 + 0x450,uVar1);
  queue_work_on(0x20,_system_wq,param_1 + 0x3c8);
  return;
}

