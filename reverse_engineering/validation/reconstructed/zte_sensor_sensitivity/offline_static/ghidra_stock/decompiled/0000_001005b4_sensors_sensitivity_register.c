
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int sensors_sensitivity_register(void)

{
  ulong *puVar1;
  undefined8 uVar2;
  undefined4 uVar3;
  int iVar4;
  ulong uVar5;
  
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_00101b7c,"NUBIA_SENSORS_SENS","sensors_sensitivity_register",0x157);
  }
  sensors_sens_data = (ulong *)__kmalloc_cache_noprof(___kmalloc_cache_noprof,0xdc0,0x60);
  if (sensors_sens_data == (ulong *)0x0) {
    _printk(&DAT_00101ddb,"NUBIA_SENSORS_SENS","sensors_sensitivity_register",0x15b);
    iVar4 = -0xc;
  }
  else {
    __mutex_init(sensors_sens_data + 2,"&sensors_sens_data->sensors_sens_lock",
                 &sensors_sensitivity_register___key);
    puVar1 = sensors_sens_data;
    *(undefined1 *)(sensors_sens_data + 8) = 0;
    *(undefined8 *)((long)puVar1 + 0x44) = 0x6400000064;
    *(undefined4 *)((long)puVar1 + 0x4c) = 100;
    *(undefined1 *)(puVar1 + 10) = 0;
    *(undefined8 *)((long)puVar1 + 0x54) = 0x6400000064;
    *(undefined4 *)((long)puVar1 + 0x5c) = 100;
    sensors_sens_class = class_create("sensors_sensitivity");
    alloc_chrdev_region(&sensors_accel_dev_t,0,1,"accel");
    uVar5 = device_create(sensors_sens_class,0,sensors_accel_dev_t,0,"accel");
    puVar1 = sensors_sens_data;
    *sensors_sens_data = uVar5;
    if (uVar5 < 0xfffffffffffff001) {
      *(ulong **)(uVar5 + 0x98) = puVar1;
      alloc_chrdev_region(&sensors_gyro_dev_t,0,1,&DAT_00101e92);
      uVar5 = device_create(sensors_sens_class,0,sensors_gyro_dev_t,0,&DAT_00101e92);
      puVar1 = sensors_sens_data;
      sensors_sens_data[1] = uVar5;
      if (uVar5 < 0xfffffffffffff001) {
        *(ulong **)(uVar5 + 0x98) = puVar1;
        iVar4 = sensor_create_sysfs_interfaces(*puVar1,attrs_sensors_sens_accel_device);
        if (iVar4 < 0) {
          _printk(&DAT_00101c19,"NUBIA_SENSORS_SENS","sensors_sensitivity_register",0x180);
        }
        else {
          iVar4 = sensor_create_sysfs_interfaces
                            (sensors_sens_data[1],attrs_sensors_sens_gyro_device);
          if (-1 < iVar4) {
            if (1 < SENSORS_SENS_LOG_LEVEL) {
              _printk(&DAT_00101877,"NUBIA_SENSORS_SENS","sensors_sensitivity_register",0x189);
            }
            return 0;
          }
          _printk(&DAT_00101c19,"NUBIA_SENSORS_SENS","sensors_sensitivity_register",0x185);
          uVar5 = sensors_sens_data[1];
          device_remove_file(uVar5,attrs_sensors_sens_gyro_device);
          device_remove_file(uVar5,0x1000b8);
          device_remove_file(uVar5,0x1000d8);
          device_remove_file(uVar5,0x1000f8);
        }
        uVar5 = *sensors_sens_data;
        device_remove_file(uVar5,attrs_sensors_sens_accel_device);
        device_remove_file(uVar5,0x100038);
        device_remove_file(uVar5,0x100058);
        device_remove_file(uVar5,0x100078);
      }
      else {
        _printk(&DAT_00101a06,"NUBIA_SENSORS_SENS","sensors_sensitivity_register",0x179);
        iVar4 = 0;
      }
      uVar3 = sensors_gyro_dev_t;
      uVar2 = sensors_sens_class;
      sensors_sens_data[1] = 0;
      device_destroy(uVar2,uVar3);
      class_destroy(sensors_sens_class);
    }
    else {
      _printk(&DAT_00101a06,"NUBIA_SENSORS_SENS","sensors_sensitivity_register",0x170);
      iVar4 = 0;
    }
    *sensors_sens_data = 0;
    device_destroy(sensors_sens_class,sensors_accel_dev_t);
    class_destroy(sensors_sens_class);
  }
  return iVar4;
}

