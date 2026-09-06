int tpd_get_follow_hand_level(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v1; // x9

  v1 = *(_QWORD *)(a1 + 0xdb8);
  *(_DWORD *)(a1 + 0x468) = *(_DWORD *)(v1 + 0x600);
  return 0;
}
