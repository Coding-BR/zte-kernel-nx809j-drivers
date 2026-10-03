
void zte_power_supply_reg_notifier(undefined8 param_1)

{
  atomic_notifier_chain_register(zte_power_supply_notifier,param_1);
  return;
}

