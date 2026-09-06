void syna_dev_helper_work(struct work_struct *work)
{
  __int64 result = (__int64)work;
  __int64 v1; // x19
  __int64 *v2; // x20
  int v3; // w8
  int (__fastcall *v4)(struct syna_tcm *); // x8
#ifdef ZTE_TPD_HOST_TEST
  unsigned int v5; // w2
#else
  register unsigned int v5 asm("w2");
#endif

  v1 = result;
  if ( (*(volatile unsigned int *)(result - 8) & 0xff) == 1 )
  {
    v2 = (__int64 *)(result - 1320);
    result = *(_QWORD *)(result - 1320);
    v3 = *(unsigned __int8 *)(result + 9);
    if ( v3 == 11 )
    {
      if ( (syna_tcm_get_boot_info((struct tcm_dev *)result, NULL, 20) & 0x80000000) == 0 )
        printk(unk_35A8D, "syna_dev_helper_work",
               *(unsigned __int8 *)(*v2 + 225),
               *(unsigned __int8 *)(*v2 + 233));
      result = *v2;
      v3 = *(unsigned __int8 *)(*v2 + 9);
      if ( v3 == 11 )
      {
        queue_delayed_work_on(32, *(_QWORD *)(v1 - 248), v1 - 352, 25);
        result = *v2;
        v3 = *(unsigned __int8 *)(*v2 + 9);
      }
    }
    if ( v3 == 1 )
    {
      v5 = *(unsigned __int16 *)(result + 178);
#ifndef ZTE_TPD_HOST_TEST
      asm volatile("" : "+r"(v5));
#endif
      if ( v5 )
      {
        result = printk(unk_32FB1, "syna_dev_helper_work");
        if ( *(_BYTE *)(*v2 + 9) == 11 )
          result = queue_delayed_work_on(32, *(_QWORD *)(v1 - 248), v1 - 352, 25);
      }
      else
      {
        printk(unk_34811, "syna_dev_helper_work");
        v4 = *(int (__fastcall **)(struct syna_tcm *))(v1 + 400);
        (void)v4((struct syna_tcm *)v2);
      }
    }
  }
  *(_DWORD *)(v1 - 8) = 0;
}
