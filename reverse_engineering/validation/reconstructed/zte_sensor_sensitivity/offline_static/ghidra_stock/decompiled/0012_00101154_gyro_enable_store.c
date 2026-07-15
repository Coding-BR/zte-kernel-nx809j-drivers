
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

