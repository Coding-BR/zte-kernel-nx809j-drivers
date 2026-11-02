
void zte_power_supply_put_battery_info(long param_1,long param_2)

{
  long lVar1;
  
  lVar1 = 0;
  do {
    if (*(long *)(param_2 + 200 + lVar1) != 0) {
      devm_kfree(param_1 + 0x38);
    }
    lVar1 = lVar1 + 8;
  } while (lVar1 != 0xa0);
  if (*(long *)(param_2 + 0x1b8) != 0) {
    devm_kfree(param_1 + 0x38);
  }
  return;
}

