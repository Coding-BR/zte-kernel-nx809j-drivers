int tpd_get_one_key(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v1; // x9

  v1 = *(_QWORD *)(a1 + 0xdb8);
  *(_DWORD *)(a1 + 0x458) = *(_DWORD *)(v1 + 0x5d4);
  return 0;
}
