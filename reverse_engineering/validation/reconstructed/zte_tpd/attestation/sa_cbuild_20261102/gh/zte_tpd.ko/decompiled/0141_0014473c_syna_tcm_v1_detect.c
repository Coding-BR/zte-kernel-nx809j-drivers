
void syna_tcm_v1_detect(long param_1,ulong param_2)

{
  long lVar1;
  long lVar2;
  
  lVar2 = sp_el0;
  lVar2 = *(long *)(lVar2 + 0x710);
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_v1_detect");
  }
  if ((param_2 & 1) != 0) {
    *(code **)(param_1 + 0x390) = syna_tcm_v1_read_message;
    *(code **)(param_1 + 0x398) = syna_tcm_v1_write_message;
    *(code **)(param_1 + 0x3a8) = syna_tcm_v1_set_up_max_rw_size;
    *(code **)(param_1 + 0x3b0) = syna_tcm_v1_check_max_rw_size;
    *(code **)(param_1 + 0x3a0) = syna_tcm_v1_terminate;
    *(undefined4 *)(param_1 + 0x37c) = 0;
    *(undefined1 *)(param_1 + 8) = 1;
    lVar1 = sp_el0;
    if (*(long *)(lVar1 + 0x710) == lVar2) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(0);
  }
                    /* WARNING: Subroutine does not return */
  mutex_lock(param_1 + 0x348);
}

