int tpd_get_follow_hand_level(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v1; // x9

  v1 = *(_QWORD *)(a1 + 3072);
  *(_DWORD *)(a1 + 1128) = *(_DWORD *)(v1 + 1536);
  return 0;
}
