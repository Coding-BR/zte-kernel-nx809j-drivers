
undefined8 FUN_00144204(void)

{
  byte bVar1;
  uint unaff_w19;
  byte *unaff_x20;
  uint unaff_w21;
  
  bVar1 = *unaff_x20;
  if ((unaff_w21 >> 4 & 1) != (bVar1 >> 4 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",unaff_w19 | 4);
  }
  if ((unaff_w21 >> 5 & 1) != (bVar1 >> 5 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",unaff_w19 | 5);
  }
  if ((unaff_w21 >> 6 & 1) != (bVar1 >> 6 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",unaff_w19 | 6);
  }
  if (unaff_w21 >> 7 == (uint)(bVar1 >> 7)) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",unaff_w19 | 7);
}

