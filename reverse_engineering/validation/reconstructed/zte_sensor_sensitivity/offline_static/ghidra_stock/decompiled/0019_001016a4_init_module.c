
undefined8 init_module(void)

{
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_00101d76,"NUBIA_SENSORS_SENS","sensors_sensitivity_init",0x1a8);
  }
  sensors_sensitivity_register();
  return 0;
}

