
undefined8 zte_ir_release(undefined8 param_1,long param_2)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_2 + 0x20);
  if (lVar2 != 0) {
    mutex_lock(&device_list_lock);
    *(undefined8 *)(param_2 + 0x20) = 0;
    if (((*(int *)(lVar2 + 0x138e8) == 0) ||
        (iVar1 = *(int *)(lVar2 + 0x138e8) + -1, *(int *)(lVar2 + 0x138e8) = iVar1, iVar1 != 0)) ||
       ((*(byte *)(lVar2 + 0x138ec) & 1) == 0)) {
      mutex_unlock(&device_list_lock);
    }
    else {
      mutex_unlock(&device_list_lock);
      kfree(lVar2);
    }
    return 0;
  }
  return 0xffffffed;
}

