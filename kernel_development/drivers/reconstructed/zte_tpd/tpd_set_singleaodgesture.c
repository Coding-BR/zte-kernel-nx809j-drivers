int tpd_set_singleaodgesture(struct ztp_device *cdev, int a2)
{
  unsigned long a1 = (unsigned long)cdev;
  _DWORD *v3; // x20
#if defined(ZTE_TPD_AARCH64_INPUT)
  register unsigned int v4 asm("w2"); // w2
  register int v5 asm("w8"); // w8
#else
  unsigned int v4;
  int v5;
#endif
  _BOOL4 v6; // w9

  v3 = *(_DWORD **)(a1 + 0xdb8);
  if ( v3[351] == 1 )
  {
    v4 = (unsigned int)v3[366];
    v5 = v3[367];
    asm volatile("" : "+r"(v4), "+r"(v5) : : "memory");
    v6 = a2 > 0;
    v5 = v4 | v5;
    asm volatile("" : "+r"(v5) : : "memory");
    v3[365] = v6;
    v5 |= v6;
    v3[364] = v5;
  }
  else
  {
    printk(unk_3B5E0, "tpd_set_singleaodgesture");
    v4 = (unsigned int)v3[366];
  }
  printk(unk_3526D, "tpd_set_singleaodgesture", v4);
  printk(unk_33365, "tpd_set_singleaodgesture", (unsigned int)v3[365]);
  printk(unk_35831, "tpd_set_singleaodgesture", (unsigned int)v3[364]);
  return 0;
}
