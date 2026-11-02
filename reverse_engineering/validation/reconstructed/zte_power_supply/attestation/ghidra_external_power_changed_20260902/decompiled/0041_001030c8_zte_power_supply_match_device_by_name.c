
bool zte_power_supply_match_device_by_name(long param_1,char *param_2)

{
  int iVar1;
  
  iVar1 = strcmp(*(char **)**(undefined8 **)(param_1 + 0x98),param_2);
  return iVar1 == 0;
}

