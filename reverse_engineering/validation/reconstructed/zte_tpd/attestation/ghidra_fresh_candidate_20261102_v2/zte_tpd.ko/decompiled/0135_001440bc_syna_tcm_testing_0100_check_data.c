
bool syna_tcm_testing_0100_check_data(byte *param_1,byte *param_2,int param_3)

{
  byte bVar1;
  byte bVar2;
  uint uVar3;
  bool bVar4;
  
  bVar1 = *param_1;
  bVar2 = *param_2;
  uVar3 = param_3 << 3;
  bVar4 = (bVar1 & 1) == (bVar2 & 1);
  if (!bVar4) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3);
  }
  if ((bVar1 >> 1 & 1) != (bVar2 >> 1 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3 | 1);
  }
  if ((bVar1 >> 2 & 1) != (bVar2 >> 2 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3 | 2);
  }
  if ((bVar1 >> 3 & 1) != (bVar2 >> 3 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3 | 3);
  }
  if ((bVar1 >> 4 & 1) != (bVar2 >> 4 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3 | 4);
  }
  if ((bVar1 >> 5 & 1) != (bVar2 >> 5 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3 | 5);
  }
  if ((bVar1 >> 6 & 1) != (bVar2 >> 6 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3 | 6);
  }
  if (bVar1 >> 7 == bVar2 >> 7) {
    return bVar4;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3 | 7);
}

