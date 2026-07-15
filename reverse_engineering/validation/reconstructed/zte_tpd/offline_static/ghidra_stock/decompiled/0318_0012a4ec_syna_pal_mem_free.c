
void syna_pal_mem_free(undefined8 param_1)

{
  long lVar1;
  
  lVar1 = syna_request_managed_device();
  if (lVar1 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
  }
  else {
    devm_kfree(lVar1,param_1);
  }
  return;
}

