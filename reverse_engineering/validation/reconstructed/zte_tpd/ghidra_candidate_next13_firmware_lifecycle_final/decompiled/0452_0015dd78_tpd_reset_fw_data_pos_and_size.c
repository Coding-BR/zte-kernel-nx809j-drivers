
void tpd_reset_fw_data_pos_and_size(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  **(ulong **)(tpd_cdev + 0xc58) = (ulong)*(uint *)(tpd_cdev + 0x448);
  *(undefined4 *)(lVar1 + 0x448) = 0;
  return;
}

