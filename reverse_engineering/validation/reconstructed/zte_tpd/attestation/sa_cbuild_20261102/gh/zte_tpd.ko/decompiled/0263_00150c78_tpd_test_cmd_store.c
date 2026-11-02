
void tpd_test_cmd_store(long param_1)

{
  if (*(int *)(*(long *)(param_1 + 0xdb8) + 0x57c) == 1) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00169dfe,"tpd_test_cmd_store");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017109e,"tpd_test_cmd_store");
}

