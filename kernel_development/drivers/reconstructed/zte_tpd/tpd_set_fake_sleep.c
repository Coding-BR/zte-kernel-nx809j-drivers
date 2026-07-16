int tpd_set_fake_sleep(struct ztp_device *cdev, int a2)
{
  unsigned long a1 = (unsigned long)cdev;
  _DWORD *v3; // x8
  int v4; // w9

  v3 = *(_DWORD **)(a1 + 3072);
  v4 = v3[351];
  v3[379] = a2;
  if ( v4 == 1 )
  {
    v3[378] = a2;
    is_fake_sleep_mode = a2;
  }
  else
  {
    printk(unk_3B5E0, "tpd_set_fake_sleep");
  }
  return 0;
}
