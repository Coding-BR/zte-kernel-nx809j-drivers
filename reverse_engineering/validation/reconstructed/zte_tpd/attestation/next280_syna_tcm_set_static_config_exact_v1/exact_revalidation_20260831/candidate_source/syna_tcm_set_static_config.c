int syna_tcm_set_static_config(struct tcm_dev *tcm, char *config,
                               unsigned int length, unsigned int delay_ms)
{
  __int64 a1 = (__int64)(unsigned long)tcm;
  char *a2 = config;
  unsigned int a3 = length;
  unsigned int a4 = delay_ms;
  unsigned int v4; // w19
  __int64 v5; // x2
  tcm_write_message_fn v6; // x8
  unsigned int v7; // w0
  unsigned int v9; // w19
  __int64 v10; // x22

  if ( a1 )
  {
    v4 = a3;
    v5 = *(unsigned __int8 *)(a1 + 9);
    if ( (_DWORD)v5 == 1 )
    {
      if ( !a4 && (*(_BYTE *)(*(_QWORD *)(a1 + 72) + 20LL) & 1) == 0 )
      {
        v10 = a1;
        a4 = *(_DWORD *)(a1 + 524);
        printk(unk_3BA3F, "syna_tcm_set_static_config");
        a1 = v10;
      }
      if ( *(unsigned __int16 *)(a1 + 180) == v4 )
      {
        v6 = tcm->write_message;
        if ( *(_DWORD *)((char *)v6 - 4) != 606091918 )
          __break(0x8228u);
        v7 = v6(tcm, 34, (u8 *)a2, v4, NULL, a4);
        if ( (v7 & 0x80000000) != 0 )
        {
          v9 = v7;
          printk(unk_39AB7, "syna_tcm_set_static_config", 34);
          return v9;
        }
        else
        {
          return 0;
        }
      }
      else
      {
        printk(unk_3501F, "syna_tcm_set_static_config", v4);
        return -241;
      }
    }
    else
    {
      printk(unk_33E1E, "syna_tcm_set_static_config");
      return -241;
    }
  }
  else
  {
    printk(unk_3365A, "syna_tcm_set_static_config");
    return -241;
  }
}
