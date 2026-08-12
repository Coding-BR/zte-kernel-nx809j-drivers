int tpd_set_singlefpgesture(struct ztp_device *cdev, int a2)
{
  unsigned long a1 = (unsigned long)cdev;
  _DWORD *v3; // x20
#if defined(ZTE_TPD_AARCH64_INPUT)
  register int v4 asm("w8"); // w8
  register int v5 asm("w9"); // w9
  register int v6 asm("w2"); // w2
#else
  int v4; // w8
  int v5; // w9
  int v6; // w2
#endif

  v3 = *(_DWORD **)(a1 + 0xdb8);
  if ( v3[351] == 1 )
  {
    v4 = v3[365];
    v5 = v3[367];
    asm volatile("" : "+r"(v4), "+r"(v5) : : "memory");
    v6 = a2 > 0;
    v4 |= v5;
    asm volatile("" : "+r"(v4) : : "memory");
    v3[366] = v6;
    v4 |= v6;
    v3[364] = v4;
  }
  else
  {
    printk(unk_3B5E0, "tpd_set_singlefpgesture");
    v6 = (unsigned int)v3[366];
  }
  printk(unk_3526D, "tpd_set_singlefpgesture", v6);
  printk(unk_33365, "tpd_set_singlefpgesture", (unsigned int)v3[365]);
  printk(unk_35831, "tpd_set_singlefpgesture", (unsigned int)v3[364]);
  return 0;
}
