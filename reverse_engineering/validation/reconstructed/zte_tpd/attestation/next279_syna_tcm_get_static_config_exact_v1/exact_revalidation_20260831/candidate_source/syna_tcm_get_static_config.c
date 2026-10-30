int syna_tcm_get_static_config(struct tcm_dev *tcm, char *config,
                               unsigned int length, unsigned int delay_ms)
{
  __int64 a1 = (__int64)(unsigned long)tcm;
  char *a2 = config;
  unsigned int a3 = length;
  unsigned int a4 = delay_ms;
  unsigned int v4; // w20
  __int64 v5; // x2
  unsigned int v7; // w22
  tcm_write_message_fn v9; // x8
  int result; // w0
  __int64 v11; // x2
  const void *v12; // x1
  unsigned int v13; // w4
  __int64 v14; // x2
  __int64 v15; // x2
  char v16; // w8
  unsigned int v17; // w19

  if ( !a1 )
  {
    printk(unk_3365A, "syna_tcm_get_static_config");
    return -241;
  }
  v4 = a3;
  v5 = *(unsigned __int8 *)(a1 + 9);
  if ( (_DWORD)v5 != 1 )
  {
    printk(unk_33E1E, "syna_tcm_get_static_config");
    return -241;
  }
  v7 = a4;
  if ( !a4 )
  {
    if ( (*(_BYTE *)(*(_QWORD *)(a1 + 72) + 20LL) & 1) != 0 )
    {
      v7 = 0;
    }
    else
    {
      v7 = *(_DWORD *)(a1 + 524);
      printk(unk_3BA3F, "syna_tcm_get_static_config");
    }
  }
  if ( *(unsigned __int16 *)(a1 + 180) > v4 )
  {
    printk(unk_31ACA, "syna_tcm_get_static_config", v4);
    return -241;
  }
  v9 = tcm->write_message;
  if ( *(_DWORD *)((char *)v9 - 4) != 606091918 )
    __break(0x8228u);
  result = v9(tcm, 33, NULL, 0, NULL, v7);
  if ( result < 0 )
  {
    v17 = result;
    printk(unk_39AB7, "syna_tcm_get_static_config", 33);
    return v17;
  }
  if ( a2 && *(_DWORD *)(a1 + 340) <= v4 )
  {
    if ( *(_BYTE *)(a1 + 392) )
      printk(unk_38244, "syna_tcm_buf_lock");
    mutex_lock(a1 + 344);
    v12 = *(const void **)(a1 + 328);
    ++*(_BYTE *)(a1 + 392);
    if ( v12 )
    {
      v13 = *(_DWORD *)(a1 + 340);
      v14 = *(unsigned int *)(a1 + 336);
      if ( v13 <= v4 && v13 <= (unsigned int)v14 )
      {
        memcpy(a2, v12, *(unsigned int *)(a1 + 340));
        v15 = *(unsigned __int8 *)(a1 + 392);
        if ( (_DWORD)v15 == 1 )
        {
          v16 = 0;
        }
        else
        {
          printk(unk_38244, "syna_tcm_buf_unlock");
          v16 = *(_BYTE *)(a1 + 392) - 1;
        }
        *(_BYTE *)(a1 + 392) = v16;
        mutex_unlock(a1 + 344);
        return 0;
      }
      printk(unk_3944E, "syna_pal_mem_cpy", v14, v4);
    }
    printk(unk_39F12, "syna_tcm_get_static_config");
    syna_tcm_buf_unlock_0(a1 + 328);
    return -22;
  }
  return result;
}
