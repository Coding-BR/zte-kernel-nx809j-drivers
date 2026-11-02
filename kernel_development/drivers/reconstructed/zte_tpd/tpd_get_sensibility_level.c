int tpd_get_sensibility_level(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v1; // x9

  v1 = *(_QWORD *)(a1 + 0xdb8);
  *(_BYTE *)(a1 + 0x40) = *(_DWORD *)(v1 + 0x5fc);
  return 0;
}
