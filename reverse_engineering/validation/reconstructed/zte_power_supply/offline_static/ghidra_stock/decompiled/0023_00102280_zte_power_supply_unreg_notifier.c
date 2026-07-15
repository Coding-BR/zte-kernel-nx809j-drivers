
void zte_power_supply_unreg_notifier(undefined8 param_1)

{
  atomic_notifier_chain_unregister(zte_power_supply_notifier,param_1);
  return;
}

