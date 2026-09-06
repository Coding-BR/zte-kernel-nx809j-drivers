
void syna_tcm_v1_terminate(long param_1)

{
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&unk_3365A,"syna_tcm_v1_terminate");
  }
  if (*(int *)(param_1 + 0x1f8) != 1) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_3B33C,"syna_tcm_v1_terminate",*(undefined1 *)(param_1 + 0x1fc));
}

