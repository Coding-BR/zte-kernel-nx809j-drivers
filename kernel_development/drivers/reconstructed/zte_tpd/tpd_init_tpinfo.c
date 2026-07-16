int tpd_init_tpinfo(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v4; // x20
  int v6; // w8

  v4 = *(_QWORD *)(a1 + 3072);
  printk(unk_34878, "tpd_init_tpinfo");
  *(_DWORD *)(a1 + 2872) = 1;
  strcpy((char *)(a1 + 2912), "synaptics_3910V");
  v6 = *(_DWORD *)(*(_QWORD *)v4 + 12LL);
  *(_DWORD *)(a1 + 2908) = 4;
  *(_DWORD *)(a1 + 2888) = v6;
  *(_DWORD *)(a1 + 2892) = __rev16(*(unsigned __int16 *)(*(_QWORD *)v4 + 198LL));
  return 0;
}
