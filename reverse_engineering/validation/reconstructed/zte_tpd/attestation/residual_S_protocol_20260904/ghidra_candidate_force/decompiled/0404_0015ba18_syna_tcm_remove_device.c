
void syna_tcm_remove_device(undefined8 *param_1)

{
  long lVar1;
  undefined1 *puVar2;
  long lVar3;
  
  if (param_1 == (undefined8 *)0x0) {
    puVar2 = &DAT_00168a84;
  }
  else {
    if (*(char *)(param_1 + 0x62) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x5a];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171996,"syna_pal_mem_free");
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x5b] = 0;
    *(undefined1 *)(param_1 + 0x62) = 0;
    if (*(char *)(param_1 + 0x59) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x51];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171996,"syna_pal_mem_free");
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x52] = 0;
    *(undefined1 *)(param_1 + 0x59) = 0;
    if (*(char *)(param_1 + 0x50) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x48];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171996,"syna_pal_mem_free");
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x49] = 0;
    *(undefined1 *)(param_1 + 0x50) = 0;
    if (*(char *)(param_1 + 0x3a) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x32];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171996,"syna_pal_mem_free");
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x33] = 0;
    *(undefined1 *)(param_1 + 0x3a) = 0;
    if (*(char *)(param_1 + 0x28) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x20];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171996,"syna_pal_mem_free");
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x21] = 0;
    *(undefined1 *)(param_1 + 0x28) = 0;
    if (*(char *)(param_1 + 0x31) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x29];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171996,"syna_pal_mem_free");
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x2a] = 0;
    *(undefined1 *)(param_1 + 0x31) = 0;
    *param_1 = 0;
    param_1[9] = 0;
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171996,"syna_pal_mem_free");
    }
    devm_kfree(lVar1,param_1);
    puVar2 = &DAT_001706c2;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_tcm_remove_device");
}

