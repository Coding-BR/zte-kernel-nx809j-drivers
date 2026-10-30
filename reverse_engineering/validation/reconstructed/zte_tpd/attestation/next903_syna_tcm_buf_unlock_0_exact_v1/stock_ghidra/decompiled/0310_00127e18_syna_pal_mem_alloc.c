
undefined8 syna_pal_mem_alloc(int param_1)

{
  long lVar1;
  undefined8 uVar2;
  undefined *puVar3;
  
  lVar1 = syna_request_managed_device();
  if (lVar1 == 0) {
    puVar3 = &DAT_0013ccb3;
  }
  else {
    if (0 < param_1) {
      uVar2 = devm_kmalloc(lVar1,param_1,0xdc0);
      return uVar2;
    }
    puVar3 = &DAT_00138e98;
  }
  _printk(puVar3,"syna_pal_mem_alloc");
  return 0;
}

