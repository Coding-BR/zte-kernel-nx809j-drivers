int tpd_enable_wakegesture(struct ztp_device *cdev, int a2)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v3; // x8

  v3 = *(_QWORD *)(a1 + 3072);
  if ( *(_DWORD *)(v3 + 1404) == 1 )
  {
    *(_DWORD *)(v3 + 1476) = a2;
    return 0;
  }
  else
  {
    printk(unk_3B5E0, "tpd_enable_wakegesture");
    return 0;
  }
}
