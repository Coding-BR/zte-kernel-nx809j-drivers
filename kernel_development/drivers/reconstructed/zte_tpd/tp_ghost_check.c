bool tp_ghost_check(void)
{
  __int64 v0; // x21
  char *v3; // x19
  unsigned int v4; // w3
  unsigned __int8 v5; // w9
  int v6; // w13
  unsigned int v7; // w20
  __int64 v8; // x10
  unsigned int v9; // w11
  unsigned int v10; // w10
  int v11; // w4
  int v13; // w3
  int v14; // w0
  int v15; // w22
  int v16; // w0
  int v17; // w20
  int v19; // w26
  struct point_info_struct *v20; // x27
  int v21; // w26

  v0 = tpd_cdev;
  v3 = (char *)vmalloc(2048);
  if ( !v3 )
  {
    printk("\001" "5tpd: log_buffer malloc fail");
    return 0;
  }
  v4 = point_report_info[0].ghost_active;
  v5 = point_report_info[1].ghost_active != 0;
  v5 += point_report_info[0].ghost_active != 0;
  if ( point_report_info[2].ghost_active )
    ++v5;
  v6 = *(_DWORD *)(v0 + 1176);
  if ( point_report_info[3].ghost_active )
    ++v5;
  if ( point_report_info[4].ghost_active )
    ++v5;
  if ( point_report_info[5].ghost_active )
    ++v5;
  if ( point_report_info[6].ghost_active )
    ++v5;
  if ( point_report_info[7].ghost_active )
    ++v5;
  if ( point_report_info[8].ghost_active )
    ++v5;
  if ( point_report_info[9].ghost_active )
    ++v5;
  if ( *(int *)(v0 + 1164) <= (int)v5 )
    v7 = v5;
  else
    v7 = *(int *)(v0 + 1164);
  v8 = 1171;
  if ( v7 > 2 )
    v8 = 1172;
  v9 = *((unsigned __int8 *)(unsigned long)v0 + v8);
  v10 = v9 * v5;
  if ( v6 )
  {
    v11 = point_report_info[0].ghost_count;
    if ( point_report_info[0].ghost_count >= v9 )
    {
      v13 = 0;
      goto LABEL_90;
    }
    if ( point_report_info[0].ghost_active && v5 >= 6u && v10 < point_report_info[0].ghost_active )
      goto LABEL_98;
    if ( v6 == 1 )
      goto LABEL_38;
  }
  else
  {
    LOWORD(v4) = 0;
  }
  v11 = point_report_info[1].ghost_count;
  if ( point_report_info[1].ghost_count >= v9 )
  {
    v13 = 1;
    goto LABEL_90;
  }
  if ( point_report_info[1].ghost_active )
  {
    LOWORD(v4) = v4 + point_report_info[1].ghost_active;
    if ( v5 >= 6u && v10 < (unsigned __int16)v4 )
    {
      v4 = (unsigned __int16)v4;
      goto LABEL_98;
    }
  }
  if ( v6 == 2 )
  {
LABEL_43:
    v11 = point_report_info[3].ghost_count;
    if ( point_report_info[3].ghost_count >= v9 )
    {
      v13 = 3;
      goto LABEL_90;
    }
    if ( point_report_info[3].ghost_active )
    {
      LOWORD(v4) = v4 + point_report_info[3].ghost_active;
      if ( v5 >= 6u && v10 < (unsigned __int16)v4 )
      {
        v4 = (unsigned __int16)v4;
        goto LABEL_98;
      }
    }
    if ( v6 == 4 )
      goto LABEL_53;
    goto LABEL_48;
  }
LABEL_38:
  v11 = point_report_info[2].ghost_count;
  if ( point_report_info[2].ghost_count >= v9 )
  {
    v13 = 2;
    goto LABEL_90;
  }
  if ( point_report_info[2].ghost_active )
  {
    LOWORD(v4) = v4 + point_report_info[2].ghost_active;
    if ( v5 >= 6u && v10 < (unsigned __int16)v4 )
    {
      v4 = (unsigned __int16)v4;
      goto LABEL_98;
    }
  }
  if ( v6 != 3 )
    goto LABEL_43;
LABEL_48:
  v11 = point_report_info[4].ghost_count;
  if ( point_report_info[4].ghost_count >= v9 )
  {
    v13 = 4;
    goto LABEL_90;
  }
  if ( point_report_info[4].ghost_active )
  {
    LOWORD(v4) = v4 + point_report_info[4].ghost_active;
    if ( v5 >= 6u && v10 < (unsigned __int16)v4 )
    {
      v4 = (unsigned __int16)v4;
      goto LABEL_98;
    }
  }
  if ( v6 == 5 )
  {
LABEL_58:
    v11 = point_report_info[6].ghost_count;
    if ( point_report_info[6].ghost_count >= v9 )
    {
      v13 = 6;
      goto LABEL_90;
    }
    if ( point_report_info[6].ghost_active )
    {
      LOWORD(v4) = v4 + point_report_info[6].ghost_active;
      if ( v5 >= 6u && v10 < (unsigned __int16)v4 )
      {
        v4 = (unsigned __int16)v4;
        goto LABEL_98;
      }
    }
    if ( v6 == 7 )
      goto LABEL_68;
    goto LABEL_63;
  }
LABEL_53:
  v11 = point_report_info[5].ghost_count;
  if ( point_report_info[5].ghost_count >= v9 )
  {
    v13 = 5;
    goto LABEL_90;
  }
  if ( point_report_info[5].ghost_active )
  {
    LOWORD(v4) = v4 + point_report_info[5].ghost_active;
    if ( v5 >= 6u && v10 < (unsigned __int16)v4 )
    {
      v4 = (unsigned __int16)v4;
      goto LABEL_98;
    }
  }
  if ( v6 != 6 )
    goto LABEL_58;
LABEL_63:
  v11 = point_report_info[7].ghost_count;
  if ( point_report_info[7].ghost_count >= v9 )
  {
    v13 = 7;
    goto LABEL_90;
  }
  if ( point_report_info[7].ghost_active )
  {
    LOWORD(v4) = v4 + point_report_info[7].ghost_active;
    if ( v5 >= 6u && v10 < (unsigned __int16)v4 )
    {
      v4 = (unsigned __int16)v4;
      goto LABEL_98;
    }
  }
  if ( v6 == 8 )
  {
LABEL_73:
    v11 = point_report_info[9].ghost_count;
    if ( point_report_info[9].ghost_count < v9 )
    {
      if ( !point_report_info[9].ghost_active )
        goto LABEL_77;
      if ( v5 < 6u )
        goto LABEL_77;
      v4 = (unsigned __int16)(v4 + point_report_info[9].ghost_active);
      if ( v10 >= v4 )
        goto LABEL_77;
      goto LABEL_98;
    }
    v13 = 9;
LABEL_90:
    v14 = snprintf(v3, 0x800u, "single ghost detect,touch id:%d, count:%d ", v13, v11);
    goto LABEL_99;
  }
LABEL_68:
  v11 = point_report_info[8].ghost_count;
  if ( point_report_info[8].ghost_count >= v9 )
  {
    v13 = 8;
    goto LABEL_90;
  }
  if ( !point_report_info[8].ghost_active || (LOWORD(v4) = v4 + point_report_info[8].ghost_active, v5 < 6u) || v10 >= (unsigned __int16)v4 )
  {
    if ( v6 == 9 )
    {
LABEL_77:
      vfree(v3);
      return 0;
    }
    goto LABEL_73;
  }
  v4 = (unsigned __int16)v4;
LABEL_98:
  v14 = snprintf(v3, 0x800u, "multi ghost detect,ghost_count:%d. ", v4);
LABEL_99:
  v15 = v14;
  v16 = snprintf(&v3[v14], 2048 - v14, "point_down_num: %d.", v7);
  v19 = v16 + v15;
  for ( v17 = 0; v17 < (int)ARRAY_SIZE(point_report_info); ++v17 )
  {
    v20 = &point_report_info[v17];
    if ( v20->ghost_active )
    {
      v21 = snprintf(&v3[v19], 2048 - v19, " point[%d] down: %d, %d. ", v17, v20->down_x, v20->down_y) + v19;
      v19 = snprintf(&v3[v21], 2048 - v21, " point[%d] up: %d, %d. ", v17, v20->up_x, v20->up_y) + v21;
    }
  }
  printk("\001" "5tpd: %s:%s", "tp_ghost_check", v3);
  if ( *(char **)(tpd_cdev + 0xbe8) )
    snprintf(*(char **)(tpd_cdev + 0xbe8), 0x800u, v3);
  tpd_zlog_record_notify(0x10);
  vfree(v3);
  return true;
}
