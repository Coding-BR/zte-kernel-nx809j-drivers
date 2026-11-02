/* 001005ac sensors_sensitivity_register */

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



/* 00100924 sensor_create_sysfs_interfaces */

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
  _printk(&DAT_00101a6e,"NUBIA_SENSORS_SENS","sensor_create_sysfs_interfaces",0x39);
  return 0xffffffed;
}



/* 00100a24 sensors_sensitivity_unregister */

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



/* 00100ad8 accel_enable_show */

long accel_enable_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_001016b7,"NUBIA_SENSORS_SENS","accel_enable_show",0x69);
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(byte *)(lVar2 + 0x40));
  return (long)iVar1;
}



/* 00100b58 accel_enable_store */

undefined8 accel_enable_store(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

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
      _printk(&DAT_001016fc,"NUBIA_SENSORS_SENS","accel_enable_store",0x51,local_2c);
    }
    if (local_2c < 2) {
      mutex_lock(lVar2 + 0x10);
      *(char *)(lVar2 + 0x40) = (char)local_2c;
      mutex_unlock(lVar2 + 0x10);
      goto LAB_00100bbc;
    }
  }
  param_4 = 0xffffffffffffffea;
LAB_00100bbc:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00100c34 accel_x_axial_show */

long accel_x_axial_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_001016b7,"NUBIA_SENSORS_SENS","accel_x_axial_show",0x86);
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(uint *)(lVar2 + 0x44));
  return (long)iVar1;
}



/* 00100cb4 accel_x_axial_store */

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
      _printk(&DAT_001016fc,"NUBIA_SENSORS_SENS","accel_x_axial_store",0x78,local_2c);
    }
    if (local_2c < 0xc9) {
      *(uint *)(lVar2 + 0x44) = local_2c;
    }
    else {
      _printk(&DAT_00101718,"NUBIA_SENSORS_SENS","accel_x_axial_store",0x7a);
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



/* 00100da4 accel_y_axial_show */

long accel_y_axial_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_001016b7,"NUBIA_SENSORS_SENS","accel_y_axial_show",0x86);
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(uint *)(lVar2 + 0x48));
  return (long)iVar1;
}



/* 00100e24 accel_y_axial_store */

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
      _printk(&DAT_001016fc,"NUBIA_SENSORS_SENS","accel_y_axial_store",0x78,local_2c);
    }
    if (local_2c < 0xc9) {
      *(uint *)(lVar2 + 0x48) = local_2c;
    }
    else {
      _printk(&DAT_00101ad1,"NUBIA_SENSORS_SENS","accel_y_axial_store",0xa5);
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



/* 00100f14 accel_z_axial_show */

long accel_z_axial_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_001016b7,"NUBIA_SENSORS_SENS","accel_z_axial_show",0x86);
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(uint *)(lVar2 + 0x4c));
  return (long)iVar1;
}



/* 00100f94 accel_z_axial_store */

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
      _printk(&DAT_001016fc,"NUBIA_SENSORS_SENS","accel_z_axial_store",0x78,local_2c);
    }
    if (local_2c < 0xc9) {
      *(uint *)(lVar2 + 0x4c) = local_2c;
    }
    else {
      _printk(&DAT_0010194b,"NUBIA_SENSORS_SENS","accel_z_axial_store",0xd2);
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



/* 00101084 gyro_enable_show */

long gyro_enable_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_001016b7,"NUBIA_SENSORS_SENS","gyro_enable_show",0x69);
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(byte *)(lVar2 + 0x50));
  return (long)iVar1;
}



/* 00101104 gyro_enable_store */

undefined8 gyro_enable_store(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

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
      _printk(&DAT_001016fc,"NUBIA_SENSORS_SENS","gyro_enable_store",0x51,local_2c);
    }
    if (local_2c < 2) {
      mutex_lock(lVar2 + 0x10);
      *(char *)(lVar2 + 0x50) = (char)local_2c;
      mutex_unlock(lVar2 + 0x10);
      goto LAB_00101168;
    }
  }
  param_4 = 0xffffffffffffffea;
LAB_00101168:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001011e0 gyro_x_axial_show */

long gyro_x_axial_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_001016b7,"NUBIA_SENSORS_SENS","gyro_x_axial_show",0x86);
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(uint *)(lVar2 + 0x54));
  return (long)iVar1;
}



/* 00101260 gyro_x_axial_store */

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
      _printk(&DAT_001016fc,"NUBIA_SENSORS_SENS","gyro_x_axial_store",0x78,local_2c);
    }
    if (local_2c < 0xc9) {
      *(uint *)(lVar2 + 0x54) = local_2c;
    }
    else {
      _printk(&DAT_001016cb,"NUBIA_SENSORS_SENS","gyro_x_axial_store",0x10c);
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



/* 00101350 gyro_y_axial_show */

long gyro_y_axial_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_001016b7,"NUBIA_SENSORS_SENS","gyro_y_axial_show",0x86);
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(uint *)(lVar2 + 0x58));
  return (long)iVar1;
}



/* 001013d0 gyro_y_axial_store */

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
      _printk(&DAT_001016fc,"NUBIA_SENSORS_SENS","gyro_y_axial_store",0x78,local_2c);
    }
    if (local_2c < 0xc9) {
      *(uint *)(lVar2 + 0x58) = local_2c;
    }
    else {
      _printk(&DAT_001019dc,"NUBIA_SENSORS_SENS","gyro_y_axial_store",0x139);
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



/* 001014c0 gyro_z_axial_show */

long gyro_z_axial_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_001016b7,"NUBIA_SENSORS_SENS","gyro_z_axial_show",0x86);
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(uint *)(lVar2 + 0x5c));
  return (long)iVar1;
}



/* 00101540 gyro_z_axial_store */

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
      _printk(&DAT_001016fc,"NUBIA_SENSORS_SENS","gyro_z_axial_store",0x78,local_2c);
    }
    if (local_2c < 0xc9) {
      *(uint *)(lVar2 + 0x5c) = local_2c;
    }
    else {
      _printk(&DAT_001018cf,"NUBIA_SENSORS_SENS","gyro_z_axial_store",0x166);
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



/* 00101630 init_module */

undefined8 init_module(void)

{
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_001016b7,"NUBIA_SENSORS_SENS","sensors_sensitivity_init",0x1a8);
  }
  sensors_sensitivity_register();
  return 0;
}



/* 00101688 cleanup_module */

void cleanup_module(void)

{
  sensors_sensitivity_unregister();
  return;
}



