
void zte_power_supply_changed_work(long param_1)

{
  byte bVar1;
  undefined8 uVar2;
  
  uVar2 = _raw_spin_lock_irqsave(param_1 + 0x88);
  bVar1 = *(byte *)(param_1 + 0x8c);
  if (bVar1 == 1) {
    *(undefined1 *)(param_1 + 0x8c) = 0;
    _raw_spin_unlock_irqrestore(param_1 + 0x88,uVar2);
    class_for_each_device(zte_power_supply_class,0,param_1 + -0x3c8,__zte_power_supply_changed_work)
    ;
    atomic_notifier_call_chain(zte_power_supply_notifier,0,param_1 + -0x3c8);
    kobject_uevent(param_1 + -0x390,2);
    uVar2 = _raw_spin_lock_irqsave(param_1 + 0x88);
    bVar1 = *(byte *)(param_1 + 0x8c);
  }
  if ((bVar1 & 1) == 0) {
    pm_relax(param_1 + -0x390);
  }
  _raw_spin_unlock_irqrestore(param_1 + 0x88,uVar2);
  return;
}

