
undefined8 zte_poweroff_charging_handle(char *param_1)

{
  int iVar1;
  
  iVar1 = strncmp(param_1,"charger",7);
  zte_poweroff_charging = (uint)(iVar1 == 0);
  _printk(&DAT_00101dbc,param_1);
  return 0;
}

