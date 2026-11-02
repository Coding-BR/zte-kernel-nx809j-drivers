
bool __zte_power_supply_find_supply_from_node(long param_1,long param_2)

{
  return *(long *)(*(long *)(param_1 + 0x98) + 0x28) == param_2;
}

