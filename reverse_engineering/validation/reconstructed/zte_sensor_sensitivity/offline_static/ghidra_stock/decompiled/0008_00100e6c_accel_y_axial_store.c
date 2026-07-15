
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

