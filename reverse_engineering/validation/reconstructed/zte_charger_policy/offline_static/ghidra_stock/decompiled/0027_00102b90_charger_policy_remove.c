
void charger_policy_remove(long param_1)

{
  undefined8 *puVar1;
  
  puVar1 = *(undefined8 **)(param_1 + 0xa8);
  _printk(&DAT_00104ec0,"charger_policy_remove");
  if (puVar1 != (undefined8 *)0x0) {
    power_supply_unreg_notifier(puVar1 + 2);
    wakeup_source_unregister(puVar1[0x3c]);
    devm_kfree(*puVar1,puVar1);
  }
  _printk(&DAT_0010512d,"charger_policy_remove");
  return;
}

