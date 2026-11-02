
void sensors_sensitivity_unregister(void)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  
  puVar1 = sensors_sens_data_ptr;
  uVar2 = *sensors_sens_data_ptr;
  device_remove_file(uVar2,accel_attrs);
  device_remove_file(uVar2,0x100038);
  device_remove_file(uVar2,0x100058);
  device_remove_file(uVar2,0x100078);
  uVar2 = puVar1[1];
  device_remove_file(uVar2,gyro_attrs);
  device_remove_file(uVar2,0x1000b8);
  device_remove_file(uVar2,0x1000d8);
  device_remove_file(uVar2,0x1000f8);
  kfree(puVar1);
  return;
}

