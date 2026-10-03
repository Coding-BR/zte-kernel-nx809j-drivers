
void tpd_test_cmd_store(long param_1)

{
  if (*(int *)(*(long *)(param_1 + 0xdb8) + 0x57c) == 1) {
    _printk(&DAT_00169dbe,"tpd_test_cmd_store");
    return;
  }
  _printk(&DAT_0017105e,"tpd_test_cmd_store");
  return;
}

