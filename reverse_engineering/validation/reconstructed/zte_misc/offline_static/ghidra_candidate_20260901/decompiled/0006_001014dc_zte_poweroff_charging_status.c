
uint zte_poweroff_charging_status(void)

{
  _printk(&DAT_00101f13,zte_poweroff_charging,zte_poweroff_charging_param);
  return zte_poweroff_charging | zte_poweroff_charging_param;
}

