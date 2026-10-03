
bool zte_power_supply_match_device_node(long param_1,long param_2)

{
  if (*(long *)(param_1 + 0x60) != 0) {
    return *(long *)(*(long *)(param_1 + 0x60) + 0x2e8) == param_2;
  }
  return false;
}

