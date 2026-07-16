int tpd_get_one_key(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v1; // x9

  v1 = *(_QWORD *)(a1 + 3072);
  *(_DWORD *)(a1 + 1112) = *(_DWORD *)(v1 + 1492);
  return 0;
}
