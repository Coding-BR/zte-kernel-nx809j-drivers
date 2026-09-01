
void zte_power_supply_powers(long param_1,undefined8 param_2)

{
  sysfs_create_link(param_1 + 0x38,param_2,"powers");
  return;
}

