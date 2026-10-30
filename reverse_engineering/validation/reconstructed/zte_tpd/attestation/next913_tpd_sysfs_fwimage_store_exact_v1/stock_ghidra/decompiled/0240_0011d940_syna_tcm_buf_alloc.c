
undefined8 syna_tcm_buf_alloc(long *param_1)

{
  void *__s;
  long lVar1;
  undefined8 uVar2;
  uint uVar3;
  
  uVar3 = *(uint *)(param_1 + 1);
  __s = (void *)*param_1;
  if (uVar3 < 0x10) {
    if (__s == (void *)0x0) {
LAB_0011d97c:
      lVar1 = syna_request_managed_device();
      if (lVar1 != 0) goto LAB_0011d984;
LAB_0011d9e0:
      _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
      *param_1 = 0;
    }
    else {
      lVar1 = syna_request_managed_device();
      if (lVar1 != 0) {
        devm_kfree(lVar1,__s);
        goto LAB_0011d97c;
      }
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      lVar1 = syna_request_managed_device();
      if (lVar1 == 0) goto LAB_0011d9e0;
LAB_0011d984:
      uVar3 = 0x10;
      __s = (void *)devm_kmalloc(lVar1,0x10,0xdc0);
      *param_1 = (long)__s;
      if (__s != (void *)0x0) {
        *(undefined4 *)(param_1 + 1) = 0x10;
        goto LAB_0011d9a0;
      }
    }
    _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",0x10);
    *(undefined4 *)(param_1 + 1) = 0;
    uVar2 = 0xffffff0d;
  }
  else {
LAB_0011d9a0:
    memset(__s,0,(ulong)uVar3);
    uVar2 = 0;
  }
  *(undefined4 *)((long)param_1 + 0xc) = 0;
  return uVar2;
}

