
void charger_policy_remove(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xa8);
  _printk(&DAT_0010503e,"charger_policy_remove");
  if (lVar1 != 0) {
    power_supply_unreg_notifier(lVar1 + 0x10);
    if (*(long *)(lVar1 + 0x1e0) != 0) {
      wakeup_source_unregister();
    }
    devm_kfree(param_1 + 0x10,lVar1);
  }
  _printk(&DAT_0010442e,"charger_policy_remove");
  return;
}

