int tpd_set_one_key(struct ztp_device *cdev, int a2)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v4; // x21

  v4 = *(_QWORD *)(a1 + 0xdb8);
  printk(unk_34878, "tpd_set_one_key");
  if ( !v4 )
    return -22;
  *(_DWORD *)(v4 + 0x5d4) = a2;
  *(_DWORD *)(a1 + 0x458) = a2;
  return 0;
}
