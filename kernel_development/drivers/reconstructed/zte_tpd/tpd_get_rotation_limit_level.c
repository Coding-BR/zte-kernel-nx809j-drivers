int tpd_get_rotation_limit_level(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v1; // x9

  v1 = *(_QWORD *)(a1 + 0xdb8);
  *(_DWORD *)(a1 + 0xc) = *(_DWORD *)(v1 + 0x60c);
  return 0;
}
