
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int sensors_sensitivity_register(void)

{
  undefined8 uVar1;
  int iVar2;
  ulong *puVar3;
  ulong uVar4;
  
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_001016b7,"NUBIA_SENSORS_SENS","sensors_sensitivity_register",0x157);
  }
  puVar3 = (ulong *)__kmalloc_cache_noprof(___kmalloc_cache_noprof,0xdc0,0x60);
  if (puVar3 == (ulong *)0x0) {
    _printk(&DAT_00101a0d,"NUBIA_SENSORS_SENS","sensors_sensitivity_register",0x15b);
    iVar2 = -0xc;
  }
  else {
    __mutex_init(puVar3 + 2,"&data->lock",&sensors_sensitivity_register___key);
    *(undefined1 *)(puVar3 + 8) = 0;
    *(undefined8 *)((long)puVar3 + 0x44) = 0x6400000064;
    *(undefined8 *)((long)puVar3 + 0x54) = 0x6400000064;
    *(undefined4 *)((long)puVar3 + 0x4c) = 100;
    *(undefined1 *)(puVar3 + 10) = 0;
    *(undefined4 *)((long)puVar3 + 0x5c) = 100;
    sensors_sens_data_ptr = puVar3;
    sensors_sens_class = class_create("sensors_sensitivity");
    alloc_chrdev_region(&sensors_accel_dev_t,0,1,"accel");
    uVar4 = device_create(sensors_sens_class,0,sensors_accel_dev_t,0,"accel");
    *puVar3 = uVar4;
    if (uVar4 < 0xfffffffffffff001) {
      *(ulong **)(uVar4 + 0x98) = puVar3;
      alloc_chrdev_region(&sensors_gyro_dev_t,0,1,&DAT_00101b5e);
      uVar4 = device_create(sensors_sens_class,0,sensors_gyro_dev_t,0,&DAT_00101b5e);
      puVar3[1] = uVar4;
      if (uVar4 < 0xfffffffffffff001) {
        *(ulong **)(uVar4 + 0x98) = puVar3;
        iVar2 = sensor_create_sysfs_interfaces(*puVar3,accel_attrs);
        if (iVar2 == 0) {
          iVar2 = sensor_create_sysfs_interfaces(puVar3[1],gyro_attrs);
          if (iVar2 == 0) {
            if (1 < SENSORS_SENS_LOG_LEVEL) {
              _printk(&DAT_00101771,"NUBIA_SENSORS_SENS","sensors_sensitivity_register",0x189);
            }
            return 0;
          }
          _printk(&DAT_00101900,"NUBIA_SENSORS_SENS","sensors_sensitivity_register",0x185);
          uVar4 = puVar3[1];
          device_remove_file(uVar4,gyro_attrs);
          device_remove_file(uVar4,0x1000b8);
          device_remove_file(uVar4,0x1000d8);
          device_remove_file(uVar4,0x1000f8);
        }
        else {
          _printk(&DAT_00101858,"NUBIA_SENSORS_SENS","sensors_sensitivity_register",0x180);
        }
        uVar4 = *puVar3;
        device_remove_file(uVar4,accel_attrs);
        device_remove_file(uVar4,0x100038);
        device_remove_file(uVar4,0x100058);
        device_remove_file(uVar4,0x100078);
      }
      else {
        _printk(&DAT_00101a9f,"NUBIA_SENSORS_SENS","sensors_sensitivity_register",0x179);
        iVar2 = 0;
      }
      uVar1 = sensors_sens_class;
      puVar3[1] = 0;
      device_destroy(uVar1,sensors_gyro_dev_t);
      class_destroy(sensors_sens_class);
    }
    else {
      _printk(&DAT_00101a3b,"NUBIA_SENSORS_SENS","sensors_sensitivity_register",0x170);
      iVar2 = 0;
    }
    uVar1 = sensors_sens_class;
    *puVar3 = 0;
    device_destroy(uVar1,sensors_accel_dev_t);
    class_destroy(sensors_sens_class);
  }
  return iVar2;
}

