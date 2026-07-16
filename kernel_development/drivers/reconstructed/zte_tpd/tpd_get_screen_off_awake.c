int tpd_get_screen_off_awake(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v1; // x9

  v1 = *(_QWORD *)(a1 + 3072);
  *(_DWORD *)(a1 + 1156) = *(_DWORD *)(v1 + 1520);
  return 0;
}
