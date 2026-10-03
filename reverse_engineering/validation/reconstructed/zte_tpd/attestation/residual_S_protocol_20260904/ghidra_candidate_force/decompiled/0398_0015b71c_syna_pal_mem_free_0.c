
void syna_pal_mem_free_0(undefined8 param_1)

{
  long lVar1;
  
  lVar1 = syna_request_managed_device();
  if (lVar1 != 0) {
    devm_kfree(lVar1,param_1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00171996,"syna_pal_mem_free");
}

