
int tpd_test_cmd_store(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0xdb8);
  if (*(int *)(lVar3 + 0x57c) == 1) {
    _printk(&DAT_001352c7,"tpd_test_cmd_store");
    iVar1 = syna_testing_pt01_zte(lVar3);
    if (iVar1 < 0) {
      puVar2 = &DAT_00134f46;
    }
    else {
      iVar1 = syna_testing_pt05_zte(lVar3);
      if (iVar1 < 0) {
        puVar2 = &DAT_0013d70a;
      }
      else {
        iVar1 = syna_testing_pt0a_zte(lVar3);
        if (-1 < iVar1) goto LAB_0012bfe4;
        puVar2 = &DAT_0013b41e;
      }
    }
  }
  else {
    iVar1 = 0;
    puVar2 = &DAT_0013c39a;
  }
  _printk(puVar2,"tpd_test_cmd_store");
LAB_0012bfe4:
  syna_spi_hw_reset(*(undefined8 *)(lVar3 + 0x270));
  _printk(&DAT_0013984b,"tpd_test_cmd_store");
  return iVar1;
}

