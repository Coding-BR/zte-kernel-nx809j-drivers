
undefined8 syna_dev_set_up_input_device(long *param_1)

{
  long lVar1;
  
  if (*(char *)(*param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e78e,"syna_dev_set_up_input_device");
  }
  syna_dev_free_input_events();
  lVar1 = *param_1;
  if ((*(int *)(lVar1 + 0x10) == 0) && (*(int *)(lVar1 + 0x14) == 0)) {
    return 0;
  }
  if (((int)param_1[0x77] == *(int *)(lVar1 + 0x10)) &&
     (*(int *)((long)param_1 + 0x3bc) == *(int *)(lVar1 + 0x14))) {
    if (*(uint *)(param_1 + 0x78) == *(uint *)(lVar1 + 0x18)) {
      if (10 < *(uint *)(param_1 + 0x78)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0018293b,"syna_dev_check_input_params");
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00182de9,"syna_dev_check_input_params");
    }
  }
                    /* WARNING: Subroutine does not return */
  mutex_lock(param_1 + 0x4f);
}

