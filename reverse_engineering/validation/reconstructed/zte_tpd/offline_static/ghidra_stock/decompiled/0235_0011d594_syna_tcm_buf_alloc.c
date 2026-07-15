
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
    if (__s == (void *)0x0) {
LAB_0011d5d8:
      lVar1 = syna_request_managed_device();
      if (lVar1 != 0) goto LAB_0011d5e0;
LAB_0011d640:
      _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
      *param_1 = 0;
    }
    else {
      lVar1 = syna_request_managed_device();
      if (lVar1 != 0) {
        devm_kfree(lVar1,__s);
        goto LAB_0011d5d8;
      }
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      lVar1 = syna_request_managed_device();
      if (lVar1 == 0) goto LAB_0011d640;
LAB_0011d5e0:
      __s = (void *)devm_kmalloc(lVar1,__n,0xdc0);
      *param_1 = (long)__s;
      if (__s != (void *)0x0) {
        *(uint *)(param_1 + 1) = param_2;
        goto LAB_0011d5fc;
      }
    }
    _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",__n);
    *(undefined4 *)(param_1 + 1) = 0;
    uVar2 = 0xffffff0d;
  }
  else {
LAB_0011d5fc:
    memset(__s,0,__n);
    uVar2 = 0;
  }
  *(undefined4 *)((long)param_1 + 0xc) = 0;
  return uVar2;
}

