
bool zte_power_supply_match_device_by_name(undefined8 *param_1,char *param_2)

{
  int iVar1;
  char *__s1;
  
  __s1 = (char *)param_1[0xe];
  if (__s1 == (char *)0x0) {
    __s1 = (char *)*param_1;
  }
  iVar1 = strcmp(__s1,param_2);
  return iVar1 == 0;
}

