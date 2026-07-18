int syna_dev_process_unexpected_reset(unsigned char a1,
                                      const unsigned char *a2,
                                      unsigned int a3, void *context)
{
  __int64 a4 = (__int64)(unsigned long)context;
  void *v5; // x0

  (void)a1;
  (void)a2;
  (void)a3;

  if ( !a4 )
  {
    v5 = unk_38D56;
    goto LABEL_6;
  }
  if ( *(_DWORD *)(a4 + 1404) == 1 )
  {
    printk(unk_32499, "syna_dev_process_unexpected_reset");
    if ( *(_QWORD *)(a4 + 1352) )
    {
      if ( !*(_DWORD *)(a4 + 1312) )
      {
        *(_DWORD *)(a4 + 1312) = 1;
        queue_work(*(_QWORD *)(a4 + 1352), a4 + 1320);
      }
      return 0;
    }
    v5 = unk_3BEBC;
LABEL_6:
    printk(v5, "syna_dev_process_unexpected_reset");
    return -22;
  }
  return 0;
}
