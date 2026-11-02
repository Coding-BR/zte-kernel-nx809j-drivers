
undefined8 syna_tcm_buf_alloc(long *param_1,uint param_2)

{
  void *__s;
  long lVar1;
  undefined8 uVar2;
  ulong __n;
  
  __n = (ulong)*(uint *)(param_1 + 1);
  __s = (void *)*param_1;
  if (*(uint *)(param_1 + 1) < param_2) {
    __n = (ulong)param_2;
    if (__s != (void *)0x0) {
      lVar1 = syna_request_managed_device();
      if (lVar1 == 0) {
        uVar2 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return uVar2;
      }
      devm_kfree(lVar1,__s);
    }
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      uVar2 = _printk(&DAT_001828ba,"syna_pal_mem_alloc");
      return uVar2;
    }
    __s = (void *)devm_kmalloc(lVar1,__n,0xdc0);
    *param_1 = (long)__s;
    if (__s == (void *)0x0) {
      uVar2 = _printk(&DAT_00180576,"syna_tcm_buf_alloc",__n);
      return uVar2;
    }
    *(uint *)(param_1 + 1) = param_2;
  }
  memset(__s,0,__n);
  *(undefined4 *)((long)param_1 + 0xc) = 0;
  return 0;
}

