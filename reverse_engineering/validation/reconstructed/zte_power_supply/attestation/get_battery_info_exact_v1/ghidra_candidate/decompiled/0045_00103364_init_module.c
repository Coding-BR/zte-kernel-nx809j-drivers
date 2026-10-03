
ulong init_module(void)

{
  ulong uVar1;
  
  uVar1 = class_create("zte_power_supply");
  zte_power_supply_class = uVar1;
  if (uVar1 < 0xfffffffffffff001) {
    *(code **)(uVar1 + 0x18) = zte_power_supply_uevent;
    zte_power_supply_init_attrs(zte_power_supply_dev_type);
    uVar1 = 0;
  }
  return uVar1;
}

