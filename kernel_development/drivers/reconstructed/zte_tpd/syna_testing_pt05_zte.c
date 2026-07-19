int syna_testing_pt05_zte(struct syna_tcm *tcm)
{
  _BYTE *a1 = (_BYTE *)tcm;
  __int64 v2; // x0
  __int64 v3; // x2
  char *v4; // x19
  struct testing_item *testing_0500; // x0
  __int64 v6; // x21
  int v7; // w8
  __int64 v9; // x0
  const char *v10; // x5
  unsigned int v13; // w22
  __int64 v14; // x26
  unsigned int v15; // w25
  unsigned int v16; // w28
  int v17; // w0
  __int64 v18; // x20
  __int64 v19; // x0
  __int64 v20; // x2
  void *v22; // [xsp+0h] [xbp-70h] BYREF
  __int64 v23; // [xsp+8h] [xbp-68h]
  void *v24; // [xsp+10h] [xbp-60h] BYREF
  __int64 v25; // [xsp+18h] [xbp-58h]
  __int64 v26; // [xsp+20h] [xbp-50h] BYREF
  __int64 v27; // [xsp+28h] [xbp-48h]
  _QWORD v28[6]; // [xsp+30h] [xbp-40h] BYREF
  __int64 v29; // [xsp+60h] [xbp-10h]
  __int64 v30; // [xsp+68h] [xbp-8h]

  v30 = *(_QWORD *)(_ReadStatusReg(SP_EL0) + 1808);
  v25 = 0;
  v23 = 0;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v2 = _kmalloc_cache_noprof(init_timer_key, 3520, 4096);
  v4 = (char *)v2;
  if ( v2 )
  {
    if ( (a1[1410] & 1) != 0 )
    {
      testing_0500 = syna_tcm_get_testing_0500();
      if ( testing_0500 )
      {
        v6 = (__int64)testing_0500;
        v7 = *(_DWORD *)(*(_QWORD *)a1 + 32LL);
        v26 = 0;
        v27 = 0;
        *(_DWORD *)(v6 + 36) = v7;
        *(_DWORD *)(v6 + 32) = *(_DWORD *)(*(_QWORD *)a1 + 28LL);
        LOBYTE(v29) = 0;
        _mutex_init(v28, "(struct mutex *)ptr", &syna_pal_mutex_alloc___key_3);
        v24 = &pt05_hi_limits;
        LODWORD(v25) = 3200;
        v22 = &pt05_lo_limits;
        LODWORD(v23) = 3200;
        *(_QWORD *)(v6 + 216) = &v26;
        *(_QWORD *)(v6 + 56) = &v24;
        *(_QWORD *)(v6 + 64) = &v22;
        v9 = *(_QWORD *)a1;
        if ( ((struct testing_item *)v6)->run((struct tcm_dev *)v9,
                                               (struct testing_item *)v6,
                                               false) < 0 )
        {
          printk(unk_3D2FD, "syna_testing_pt05_zte", *(_QWORD *)(v6 + 8));
          v10 = "Fail";
        }
        else if ( *(_BYTE *)(v6 + 16) )
        {
          v10 = "Pass";
        }
        else
        {
          v10 = "Fail";
        }
        v13 = scnprintf(v4, 4096, "\n%s (version.%d): %s\n\n", *(const char **)(v6 + 8), *(_DWORD *)v6, v10);
        if ( HIDWORD(v27) && *(_DWORD *)(v6 + 32) )
        {
          v14 = v26;
          v15 = 0;
          do
          {
            if ( *(_DWORD *)(v6 + 36) )
            {
              v16 = 0;
              do
              {
                v17 = scnprintf(
                        &v4[v13],
                        4096LL - v13,
                        "%d ",
                        *(unsigned __int16 *)(v14 + 2LL * (v16 + v15 * *(_DWORD *)(*(_QWORD *)a1 + 32LL))));
                ++v16;
                v13 += v17;
              }
              while ( v16 < *(_DWORD *)(v6 + 36) );
            }
            ++v15;
            v13 += scnprintf(&v4[v13], 4096LL - v13, "\n");
          }
          while ( v15 < *(_DWORD *)(v6 + 32) );
        }
        tpd_copy_to_tp_firmware_data(v4);
        if ( (_BYTE)v29 )
          printk(unk_34845, "syna_tcm_buf_release", (unsigned __int8)v29);
        v18 = v26;
        v19 = syna_request_managed_device();
        if ( v19 )
        {
          if ( v18 )
            devm_kfree(v19, v18);
        }
        else
        {
          printk(unk_3BE43, "syna_pal_mem_free", v20);
        }
        v27 = 0;
        LOBYTE(v29) = 0;
        kfree(v4);
      }
      else
      {
        v13 = scnprintf(v4, 4096, "Invalid testing item id:%d\n", 1280);
      }
    }
    else
    {
      v13 = scnprintf(v2, 4096, "Device is NOT connected\n");
    }
  }
  else
  {
    printk(unk_3C045, "syna_testing_pt05_zte", v3);
    v13 = -12;
  }
  _ReadStatusReg(SP_EL0);
  return v13;
}
