
void syna_tcm_buf_copy(long *param_1,undefined8 *param_2)

{
  uint uVar1;
  uint uVar2;
  void *__s;
  long lVar3;
  undefined *puVar4;
  ulong __n;
  uint uVar5;
  
  if ((char)param_1[8] != '\0') {
    _printk(&DAT_00180d77,"syna_tcm_buf_lock");
    return;
  }
  mutex_lock(param_1 + 2);
  *(char *)(param_1 + 8) = (char)param_1[8] + '\x01';
  if (*(char *)(param_2 + 8) != '\0') {
    _printk(&DAT_00180d77,"syna_tcm_buf_lock");
    return;
  }
  mutex_lock(param_2 + 2);
  uVar5 = *(uint *)((long)param_2 + 0xc);
  *(char *)(param_2 + 8) = *(char *)(param_2 + 8) + '\x01';
  uVar2 = *(uint *)(param_1 + 1);
  __n = (ulong)uVar2;
  if (uVar2 < uVar5) {
    uVar1 = uVar5 + 1;
    __s = (void *)*param_1;
    if (uVar2 < uVar1) {
      if (__s != (void *)0x0) {
        lVar3 = syna_request_managed_device();
        if (lVar3 == 0) {
          _printk(&DAT_001828ba,"syna_pal_mem_free");
          return;
        }
        devm_kfree(lVar3,__s);
      }
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) {
        puVar4 = &DAT_001828ba;
LAB_00158eb8:
        _printk(puVar4,"syna_pal_mem_alloc");
        return;
      }
      if (0x7ffffffe < uVar5) {
        puVar4 = &DAT_00180da7;
        goto LAB_00158eb8;
      }
      __s = (void *)devm_kmalloc(lVar3,(ulong)uVar1,0xdc0);
      *param_1 = (long)__s;
      if (__s == (void *)0x0) {
        _printk(&DAT_00180576,"syna_tcm_buf_alloc",uVar1);
        return;
      }
      *(uint *)(param_1 + 1) = uVar1;
      __n = (ulong)uVar1;
    }
    memset(__s,0,__n);
    *(undefined4 *)((long)param_1 + 0xc) = 0;
    __n = (ulong)*(uint *)(param_1 + 1);
    uVar5 = *(uint *)((long)param_2 + 0xc);
  }
  if (((void *)*param_1 == (void *)0x0) || ((void *)*param_2 == (void *)0x0)) {
    _printk(&DAT_0017f87b,"syna_tcm_buf_copy",uVar5);
    return;
  }
  if ((uVar5 <= (uint)__n) && (uVar5 <= *(uint *)(param_2 + 1))) {
    memcpy((void *)*param_1,(void *)*param_2,(ulong)uVar5);
    *(undefined4 *)((long)param_1 + 0xc) = *(undefined4 *)((long)param_2 + 0xc);
    if (*(char *)(param_2 + 8) != '\x01') {
      _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
      return;
    }
    *(undefined1 *)(param_2 + 8) = 0;
    mutex_unlock(param_2 + 2);
    if ((char)param_1[8] != '\x01') {
      _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
      return;
    }
    *(undefined1 *)(param_1 + 8) = 0;
    mutex_unlock(param_1 + 2);
    return;
  }
  _printk(&DAT_00181608,"syna_pal_mem_cpy",*(uint *)(param_2 + 1),__n,uVar5);
  return;
}

