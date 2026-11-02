
void syna_tcm_v1_write_message(long param_1)

{
  undefined1 *puVar1;
  undefined1 *in_x4;
  
  if (param_1 == 0) {
    puVar1 = &DAT_00168ac4;
  }
  else {
    if (*(long *)(param_1 + 0x48) != 0) {
      if (in_x4 != (undefined1 *)0x0) {
        *in_x4 = 0xff;
      }
                    /* WARNING: Subroutine does not return */
      mutex_lock(param_1 + 0x318);
    }
    puVar1 = &DAT_00172270;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar1,"syna_tcm_v1_write_message");
}

