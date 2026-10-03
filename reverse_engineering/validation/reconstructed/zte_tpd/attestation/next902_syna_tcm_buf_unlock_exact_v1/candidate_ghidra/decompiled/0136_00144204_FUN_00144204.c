
undefined8 FUN_00144204(void)

{
  byte bVar1;
  undefined8 uVar2;
  uint unaff_w19;
  byte *unaff_x20;
  uint unaff_w21;
  
  bVar1 = *unaff_x20;
  if ((unaff_w21 >> 4 & 1) != (bVar1 >> 4 & 1)) {
    uVar2 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",unaff_w19 | 4);
    return uVar2;
  }
  if ((unaff_w21 >> 5 & 1) != (bVar1 >> 5 & 1)) {
    uVar2 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",unaff_w19 | 5);
    return uVar2;
  }
  if ((unaff_w21 >> 6 & 1) != (bVar1 >> 6 & 1)) {
    uVar2 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",unaff_w19 | 6);
    return uVar2;
  }
  if (unaff_w21 >> 7 == (uint)(bVar1 >> 7)) {
    return 0;
  }
  uVar2 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",unaff_w19 | 7);
  return uVar2;
}

