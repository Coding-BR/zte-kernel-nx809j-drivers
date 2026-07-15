
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

