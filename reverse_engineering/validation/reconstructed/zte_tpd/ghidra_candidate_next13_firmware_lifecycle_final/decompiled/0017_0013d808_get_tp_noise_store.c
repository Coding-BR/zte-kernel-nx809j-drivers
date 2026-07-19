
undefined8 get_tp_noise_store(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  
  lVar1 = tpd_cdev;
  mutex_lock(tpd_cdev + 0xc60);
  lVar2 = *(long *)(lVar1 + 0xc58);
  if (lVar2 != 0) {
    if (*(long *)(lVar2 + 8) != 0) {
      vfree(*(long *)(lVar2 + 8));
      *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = 0;
      lVar2 = *(long *)(lVar1 + 0xc58);
    }
    kfree(lVar2);
    *(undefined8 *)(lVar1 + 0xc58) = 0;
  }
  *(undefined4 *)(lVar1 + 0x448) = 0;
  mutex_unlock(lVar1 + 0xc60);
  return param_3;
}

