void tpd_reset_fw_data_pos_and_size(void)
{
  __int64 v0; // x8

  v0 = tpd_cdev;
  **(_QWORD **)(tpd_cdev + 0xc58) = *(unsigned int *)(tpd_cdev + 0x448);
  *(_DWORD *)(v0 + 0x448) = 0;
}
