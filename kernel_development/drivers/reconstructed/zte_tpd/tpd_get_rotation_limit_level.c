int tpd_get_rotation_limit_level(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v1; // x9

  v1 = *(_QWORD *)(a1 + 3072);
  *(_DWORD *)(a1 + 12) = *(_DWORD *)(v1 + 1548);
  return 0;
}
