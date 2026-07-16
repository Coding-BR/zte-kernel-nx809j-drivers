int tpd_get_sensibility_level(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v1; // x9

  v1 = *(_QWORD *)(a1 + 3072);
  *(_BYTE *)(a1 + 64) = *(_DWORD *)(v1 + 1532);
  return 0;
}
