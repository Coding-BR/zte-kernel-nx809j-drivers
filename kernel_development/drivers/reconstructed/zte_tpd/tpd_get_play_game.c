int tpd_get_play_game(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v1; // x9

  v1 = *(_QWORD *)(a1 + 3072);
  *(_DWORD *)(a1 + 1116) = *(_DWORD *)(v1 + 1500);
  return 0;
}
