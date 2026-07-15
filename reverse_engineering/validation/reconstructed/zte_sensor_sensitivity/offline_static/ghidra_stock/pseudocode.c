/* 001005b4 sensors_sensitivity_register */

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



/* 00100944 sensor_create_sysfs_interfaces */

undefined8 sensor_create_sysfs_interfaces(undefined8 param_1,long param_2)

{
  long lVar1;
  int iVar2;
  int iVar3;
  undefined8 uVar4;
  long lVar5;
  
  iVar2 = device_create_file();
  if (iVar2 == 0) {
    iVar3 = device_create_file(param_1,param_2 + 0x20);
    if (iVar3 == 0) {
      iVar3 = device_create_file(param_1,param_2 + 0x40);
      if (iVar3 == 0) {
        uVar4 = device_create_file(param_1,param_2 + 0x60);
        if ((int)uVar4 == 0) {
          return uVar4;
        }
        lVar5 = 3;
      }
      else {
        lVar5 = 2;
      }
    }
    else {
      lVar5 = 1;
    }
  }
  else {
    lVar5 = 0;
  }
  lVar1 = param_2 + lVar5 * 0x20;
  device_remove_file(param_1,lVar1);
  if (((iVar2 == 0) && (device_remove_file(param_1,param_2 + (lVar5 + -1) * 0x20), lVar5 + -1 != 0))
     && (device_remove_file(param_1,param_2 + (lVar5 + -2) * 0x20), lVar5 + -2 != 0)) {
    device_remove_file(param_1,lVar1 + -0x60);
  }
  _printk(&DAT_00101baf,"NUBIA_SENSORS_SENS","sensor_create_sysfs_interfaces",0x39);
  return 0xffffffed;
}



/* 00100a44 sensors_sensitivity_unregister */

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



/* 00100afc accel_enable_show */

long accel_enable_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_001018a8,"NUBIA_SENSORS_SENS","accel_enable_show",0x69,
            *(undefined1 *)(lVar2 + 0x40));
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(byte *)(lVar2 + 0x40));
  return (long)iVar1;
}



/* 00100b80 accel_enable_store */

undefined8 accel_enable_store(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined1 uVar3;
  int local_3c;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtoint(param_3,0,&local_3c);
  if (iVar1 == 0) {
    if (SENSORS_SENS_LOG_LEVEL < 2) {
      if (local_3c != 0) goto LAB_00100be8;
LAB_00100c24:
      uVar3 = 0;
    }
    else {
      _printk(&DAT_00101955,"NUBIA_SENSORS_SENS","accel_enable_store",0x51,local_3c);
      if (local_3c == 0) goto LAB_00100c24;
LAB_00100be8:
      if (local_3c != 1) goto LAB_00100bc8;
      uVar3 = 1;
    }
    mutex_lock(lVar2 + 0x10);
    *(undefined1 *)(lVar2 + 0x40) = uVar3;
    mutex_unlock(lVar2 + 0x10);
  }
  else {
LAB_00100bc8:
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00100c74 accel_x_axial_show */

long accel_x_axial_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_00101db1,"NUBIA_SENSORS_SENS","accel_x_axial_show",0x86,
            *(undefined4 *)(lVar2 + 0x44));
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(uint *)(lVar2 + 0x44));
  return (long)iVar1;
}



/* 00100cf8 accel_x_axial_store */

undefined8
accel_x_axial_store(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtoint(param_3,0,&local_2c);
  if (iVar1 == 0) {
    if (1 < SENSORS_SENS_LOG_LEVEL) {
      _printk(&DAT_00101af4,"NUBIA_SENSORS_SENS","accel_x_axial_store",0x78,local_2c);
    }
    if (local_2c < 0xc9) {
      *(uint *)(lVar2 + 0x44) = local_2c;
    }
    else {
      _printk(&DAT_001019b7,"NUBIA_SENSORS_SENS","accel_x_axial_store",0x7a);
      param_4 = 0xffffffffffffffea;
    }
  }
  else {
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00100de8 accel_y_axial_show */

long accel_y_axial_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_0010181c,"NUBIA_SENSORS_SENS","accel_y_axial_show",0xa3,
            *(undefined4 *)(lVar2 + 0x48));
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(uint *)(lVar2 + 0x48));
  return (long)iVar1;
}



/* 00100e6c accel_y_axial_store */

undefined8
accel_y_axial_store(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtoint(param_3,0,&local_2c);
  if (iVar1 == 0) {
    if (1 < SENSORS_SENS_LOG_LEVEL) {
      _printk(&DAT_00101e9f,"NUBIA_SENSORS_SENS","accel_y_axial_store",0x95,local_2c);
    }
    if (local_2c < 0xc9) {
      *(uint *)(lVar2 + 0x48) = local_2c;
    }
    else {
      _printk(&DAT_001018de,"NUBIA_SENSORS_SENS","accel_y_axial_store",0x97);
      param_4 = 0xffffffffffffffea;
    }
  }
  else {
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00100f5c accel_z_axial_show */

long accel_z_axial_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_00101e3e,"NUBIA_SENSORS_SENS","accel_z_axial_show",0xc0,
            *(undefined4 *)(lVar2 + 0x4c));
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(uint *)(lVar2 + 0x4c));
  return (long)iVar1;
}



/* 00100fe0 accel_z_axial_store */

undefined8
accel_z_axial_store(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtoint(param_3,0,&local_2c);
  if (iVar1 == 0) {
    if (1 < SENSORS_SENS_LOG_LEVEL) {
      _printk(&DAT_00101a37,"NUBIA_SENSORS_SENS","accel_z_axial_store",0xb2,local_2c);
    }
    if (local_2c < 0xc9) {
      *(uint *)(lVar2 + 0x4c) = local_2c;
    }
    else {
      _printk(&DAT_00101cae,"NUBIA_SENSORS_SENS","accel_z_axial_store",0xb4);
      param_4 = 0xffffffffffffffea;
    }
  }
  else {
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001010d0 gyro_enable_show */

long gyro_enable_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_001018a8,"NUBIA_SENSORS_SENS","gyro_enable_show",0xef,*(undefined1 *)(lVar2 + 0x50)
           );
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(byte *)(lVar2 + 0x50));
  return (long)iVar1;
}



/* 00101154 gyro_enable_store */

undefined8 gyro_enable_store(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined1 uVar3;
  int local_3c;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtoint(param_3,0,&local_3c);
  if (iVar1 == 0) {
    if (SENSORS_SENS_LOG_LEVEL < 2) {
      if (local_3c != 0) goto LAB_001011bc;
LAB_001011f8:
      uVar3 = 0;
    }
    else {
      _printk(&DAT_00101955,"NUBIA_SENSORS_SENS","gyro_enable_store",0xd7,local_3c);
      if (local_3c == 0) goto LAB_001011f8;
LAB_001011bc:
      if (local_3c != 1) goto LAB_0010119c;
      uVar3 = 1;
    }
    mutex_lock(lVar2 + 0x10);
    *(undefined1 *)(lVar2 + 0x50) = uVar3;
    mutex_unlock(lVar2 + 0x10);
  }
  else {
LAB_0010119c:
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101248 gyro_x_axial_show */

long gyro_x_axial_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_00101d3a,"NUBIA_SENSORS_SENS","gyro_x_axial_show",0x10c,
            *(undefined4 *)(lVar2 + 0x54));
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(uint *)(lVar2 + 0x54));
  return (long)iVar1;
}



/* 001012cc gyro_x_axial_store */

undefined8 gyro_x_axial_store(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtoint(param_3,0,&local_2c);
  if (iVar1 == 0) {
    if (1 < SENSORS_SENS_LOG_LEVEL) {
      _printk(&DAT_00101e68,"NUBIA_SENSORS_SENS","gyro_x_axial_store",0xfe,local_2c);
    }
    if (local_2c < 0xc9) {
      *(uint *)(lVar2 + 0x54) = local_2c;
    }
    else {
      _printk(&DAT_00101b1f,"NUBIA_SENSORS_SENS","gyro_x_axial_store",0x100);
      param_4 = 0xffffffffffffffea;
    }
  }
  else {
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001013bc gyro_y_axial_show */

long gyro_y_axial_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_00101c5c,"NUBIA_SENSORS_SENS","gyro_y_axial_show",0x129,
            *(undefined4 *)(lVar2 + 0x58));
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(uint *)(lVar2 + 0x58));
  return (long)iVar1;
}



/* 00101440 gyro_y_axial_store */

undefined8 gyro_y_axial_store(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtoint(param_3,0,&local_2c);
  if (iVar1 == 0) {
    if (1 < SENSORS_SENS_LOG_LEVEL) {
      _printk(&DAT_00101910,"NUBIA_SENSORS_SENS","gyro_y_axial_store",0x11b,local_2c);
    }
    if (local_2c < 0xc9) {
      *(uint *)(lVar2 + 0x58) = local_2c;
    }
    else {
      _printk(&DAT_00101a74,"NUBIA_SENSORS_SENS","gyro_y_axial_store",0x11d);
      param_4 = 0xffffffffffffffea;
    }
  }
  else {
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101530 gyro_z_axial_show */

long gyro_z_axial_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_00101c85,"NUBIA_SENSORS_SENS","gyro_z_axial_show",0x146,
            *(undefined4 *)(lVar2 + 0x5c));
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(uint *)(lVar2 + 0x5c));
  return (long)iVar1;
}



/* 001015b4 gyro_z_axial_store */

undefined8 gyro_z_axial_store(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtoint(param_3,0,&local_2c);
  if (iVar1 == 0) {
    if (1 < SENSORS_SENS_LOG_LEVEL) {
      _printk(&DAT_00101aa5,"NUBIA_SENSORS_SENS","gyro_z_axial_store",0x138,local_2c);
    }
    if (local_2c < 0xc9) {
      *(uint *)(lVar2 + 0x5c) = local_2c;
    }
    else {
      _printk(&DAT_00101846,"NUBIA_SENSORS_SENS","gyro_z_axial_store",0x13a);
      param_4 = 0xffffffffffffffea;
    }
  }
  else {
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001016a4 init_module */

undefined8 init_module(void)

{
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_00101d76,"NUBIA_SENSORS_SENS","sensors_sensitivity_init",0x1a8);
  }
  sensors_sensitivity_register();
  return 0;
}



/* 001016fc cleanup_module */

void cleanup_module(void)

{
  sensors_sensitivity_unregister();
  return;
}



