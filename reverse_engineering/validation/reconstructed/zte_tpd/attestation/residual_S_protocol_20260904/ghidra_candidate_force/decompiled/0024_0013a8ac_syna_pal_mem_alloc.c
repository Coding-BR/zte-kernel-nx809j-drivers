
void syna_pal_mem_alloc(int param_1)

{
  long lVar1;
  undefined *puVar2;
  
  lVar1 = syna_request_managed_device();
  if (lVar1 == 0) {
    puVar2 = &DAT_00171996;
  }
  else {
    if (0 < param_1) {
      devm_kmalloc(lVar1,param_1,0xdc0);
      return;
    }
    puVar2 = &DAT_0016da92;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_pal_mem_alloc");
}

