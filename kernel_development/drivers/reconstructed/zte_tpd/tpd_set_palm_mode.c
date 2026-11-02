int tpd_set_palm_mode(struct ztp_device *cdev, int a2)
{
  unsigned long a1 = (unsigned long)cdev;
  *(_DWORD *)(*(_QWORD *)(a1 + 0xdb8) + 0x5e4) = a2;
  printk(unk_37B5F, "tpd_set_palm_mode", a2);
  return 0;
}
