
bool syna_tcm_testing_0100_check_data(byte *param_1,byte *param_2,int param_3)

{
  byte bVar1;
  byte bVar2;
  uint uVar3;
  bool bVar4;
  bool bVar5;
  bool bVar6;
  bool bVar7;
  bool bVar8;
  bool bVar9;
  bool bVar10;
  bool bVar11;
  
  bVar1 = *param_1;
  bVar2 = *param_2;
  uVar3 = param_3 << 3;
  bVar4 = (bVar1 & 1) == (bVar2 & 1);
  if (!bVar4) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3);
    bVar2 = *param_2;
  }
  bVar5 = (bVar1 >> 1 & 1) != (bVar2 >> 1 & 1);
  if (bVar5) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3 | 1);
    bVar2 = *param_2;
  }
  bVar6 = (bVar1 >> 2 & 1) != (bVar2 >> 2 & 1);
  if (bVar6) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3 | 2);
    bVar2 = *param_2;
  }
  bVar7 = (bVar1 >> 3 & 1) != (bVar2 >> 3 & 1);
  if (bVar7) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3 | 3);
    bVar2 = *param_2;
  }
  bVar8 = (bVar1 >> 4 & 1) != (bVar2 >> 4 & 1);
  if (bVar8) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3 | 4);
    bVar2 = *param_2;
  }
  bVar9 = (bVar1 >> 5 & 1) != (bVar2 >> 5 & 1);
  if (bVar9) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3 | 5);
    bVar2 = *param_2;
  }
  bVar10 = (bVar1 >> 6 & 1) != (bVar2 >> 6 & 1);
  if (bVar10) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3 | 6);
    bVar2 = *param_2;
  }
  bVar11 = bVar1 >> 7 != bVar2 >> 7;
  if (bVar11) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3 | 7);
  }
  return !bVar11 && (!bVar10 && (!bVar9 && (!bVar8 && (!bVar7 && (!bVar6 && (!bVar5 && bVar4))))));
}

