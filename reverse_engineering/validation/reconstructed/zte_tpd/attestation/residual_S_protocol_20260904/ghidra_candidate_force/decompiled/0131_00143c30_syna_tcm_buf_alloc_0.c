
undefined8 syna_tcm_buf_alloc_0(long *param_1)

{
  void *__s;
  long lVar1;
  uint uVar2;
  
  uVar2 = *(uint *)(param_1 + 1);
  __s = (void *)*param_1;
  if (uVar2 < 0x10) {
    if (__s != (void *)0x0) {
      lVar1 = syna_request_managed_device();
      if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001828ba,"syna_pal_mem_free");
      }
      devm_kfree(lVar1,__s);
    }
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001828ba,"syna_pal_mem_alloc");
    }
    uVar2 = 0x10;
    __s = (void *)devm_kmalloc(lVar1,0x10,0xdc0);
    *param_1 = (long)__s;
    if (__s == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00180576,"syna_tcm_buf_alloc",0x10);
    }
    *(undefined4 *)(param_1 + 1) = 0x10;
  }
  memset(__s,0,(ulong)uVar2);
  *(undefined4 *)((long)param_1 + 0xc) = 0;
  return 0;
}

