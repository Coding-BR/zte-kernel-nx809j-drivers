
uint zte_poweroff_charging_status(void)

{
  _printk(&DAT_0010273b,zte_poweroff_charging,zte_poweroff_charging_param);
  return zte_poweroff_charging | zte_poweroff_charging_param;
}

