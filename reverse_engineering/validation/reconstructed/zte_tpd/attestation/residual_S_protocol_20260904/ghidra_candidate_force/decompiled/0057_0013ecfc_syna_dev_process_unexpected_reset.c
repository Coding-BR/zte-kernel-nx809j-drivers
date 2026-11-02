
undefined8 syna_dev_process_unexpected_reset(void)

{
  long in_x3;
  
  if (in_x3 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&unk_38D56,"syna_dev_process_unexpected_reset");
  }
  if (*(int *)(in_x3 + 0x57c) != 1) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_32499,"syna_dev_process_unexpected_reset");
}

