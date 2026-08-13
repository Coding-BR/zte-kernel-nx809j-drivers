int tpd_set_rotation_limit_level(struct ztp_device *cdev, int a2)
{
  unsigned long a1 = (unsigned long)cdev;
  _QWORD *v4; // x19
  _QWORD *v5; // x8
  __int64 v6; // x9
  __int64 v7; // x2
  int v8; // w8
  int v9; // w9
  __int64 result; // x0
  const char *v11; // x0

  v4 = *(_QWORD **)(a1 + 0xdb8);
  printk(unk_34878, "tpd_set_rotation_limit_level");
  if ( !v4 )
    return -22;
  else
  {
    v5 = (_QWORD *)*v4;
    v6 = v4[78];
    if ( !(*(_DWORD *)(v6 + 184) && (*(_BYTE *)(v6 + 188) & 1) != 0) )
      v7 = *(unsigned int *)((unsigned char *)v5 + 524LL);
    else
      v7 = 0;
    v8 = *((_DWORD *)v4 + 351);
    if ( a2 >= 3 )
      v9 = 3;
    else
      v9 = a2;
    *((_DWORD *)v4 + 387) = v9;
    if ( v8 == 1 )
    {
      result = syna_dev_set_display_rotation((struct syna_tcm *)v4,
                                             *(_DWORD *)(a1 + 16), v7);
      if ( (_DWORD)result == 0 )
        return result;
      v11 = unk_3220D;
    }
    else
    {
      v11 = unk_3B5E0;
    }
    printk(v11, "tpd_set_rotation_limit_level");
    result = 0;
  }
  return result;
}
