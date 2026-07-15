
void sensors_sensitivity_unregister(void)

{
  undefined8 uVar1;
  
  uVar1 = *sensors_sens_data;
  device_remove_file(uVar1,attrs_sensors_sens_accel_device);
  device_remove_file(uVar1,0x100038);
  device_remove_file(uVar1,0x100058);
  device_remove_file(uVar1,0x100078);
  uVar1 = sensors_sens_data[1];
  device_remove_file(uVar1,attrs_sensors_sens_gyro_device);
  device_remove_file(uVar1,0x1000b8);
  device_remove_file(uVar1,0x1000d8);
  device_remove_file(uVar1,0x1000f8);
  kfree(sensors_sens_data);
  return;
}

