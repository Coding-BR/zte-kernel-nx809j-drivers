int tpd_get_stability_level(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v1; // x9

  v1 = *(_QWORD *)(a1 + 0xdb8);
  *(_DWORD *)(a1 + 0x46c) = *(_DWORD *)(v1 + 0x604);
  return 0;
}
