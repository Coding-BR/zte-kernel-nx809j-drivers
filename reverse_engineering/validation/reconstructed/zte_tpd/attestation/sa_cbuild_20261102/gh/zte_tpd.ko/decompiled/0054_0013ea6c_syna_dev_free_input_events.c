
void syna_dev_free_input_events(long param_1)

{
  if (*(long *)(param_1 + 0x3b0) != 0) {
                    /* WARNING: Subroutine does not return */
    mutex_lock(param_1 + 0x278);
  }
  return;
}

