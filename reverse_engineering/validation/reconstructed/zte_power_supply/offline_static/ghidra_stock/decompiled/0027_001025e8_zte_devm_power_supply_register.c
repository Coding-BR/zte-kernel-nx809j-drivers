
ulong zte_devm_power_supply_register(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  ulong *puVar1;
  ulong uVar2;
  
  puVar1 = (ulong *)__devres_alloc_node(zte_devm_power_supply_release,8,0xcc0,0xffffffff,
                                        "zte_devm_power_supply_release");
  if (puVar1 == (ulong *)0x0) {
    uVar2 = 0xfffffffffffffff4;
  }
  else {
    uVar2 = __zte_power_supply_register(param_1,param_2,param_3,1);
    if (uVar2 < 0xfffffffffffff001) {
      *puVar1 = uVar2;
      devres_add(param_1,puVar1);
    }
    else {
      devres_free(puVar1);
    }
  }
  return uVar2;
}

