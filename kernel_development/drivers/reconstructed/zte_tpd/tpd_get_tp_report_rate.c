int tpd_get_tp_report_rate(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v1; // x9

  v1 = *(_QWORD *)(a1 + 0xdb8);
  *(_DWORD *)(a1 + 0x464) = *(_DWORD *)(v1 + 0x5f8);
  return 0;
}
