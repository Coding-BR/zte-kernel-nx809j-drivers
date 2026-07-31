void syna_cdev_remove(struct syna_tcm *tcm)
{
  __int64 a1 = (__int64)tcm;
  _QWORD *v4; // x20
  _QWORD **v5; // x21
  _QWORD *v6; // x8
  __int64 v7; // x9
  __int64 v8; // x0
  int v9; // w8
  __int64 v10; // x0
  __int64 v11; // x8
  __int64 v12; // x20
  __int64 result; // x0

  if ( !a1 )
  {
    printk("\0013[error] %s: Invalid tcm driver handle\n", "syna_cdev_remove");
    return;
  }
  mutex_lock(&qword_316D0);
  v4 = *(_QWORD **)(a1 + 1272);
  v5 = (_QWORD **)(a1 + 1272);
  if ( v4 != (_QWORD *)(a1 + 1272) )
  {
    do
    {
      v6 = (_QWORD *)v4[1];
      if ( unlikely(v4 != (_QWORD *)*v6) )
        goto invalid_list_entry;
      v7 = *v4;
      if ( unlikely(*(_QWORD **)(v7 + 8LL) != v4) )
        goto invalid_list_entry;
      *(_QWORD *)(v7 + 8) = v6;
      *v6 = v7;
      goto list_entry_validated;

invalid_list_entry:
      __list_del_entry_valid_or_report((struct list_head *)v4);

list_entry_validated:
      v8 = v4[2];
      *v4 = 0xDEAD000000000100LL;
      v4[1] = 0xDEAD000000000122LL;
      kfree(v8);
      kfree(v4);
      v9 = *(_DWORD *)(a1 + 1264);
      if ( v9 )
        *(_DWORD *)(a1 + 1264) = v9 - 1;
      v4 = *v5;
    }
    while ( *v5 != v5 );
  }
  v10 = mutex_unlock(&qword_316D0);
  v11 = *(_QWORD *)(a1 + 912);
  *(_DWORD *)(a1 + 900) = 0;
  if ( v11 )
  {
    device_destroy(*(_QWORD *)(a1 + 904), *(unsigned int *)(a1 + 896));
    class_destroy(*(_QWORD *)(a1 + 904));
    cdev_del(a1 + 760);
    v10 = unregister_chrdev_region(*(unsigned int *)(a1 + 896), 1);
  }
  if ( (_BYTE)qword_31698 )
    v10 = printk("\0013[error] %s: Buffer still in used, %d references\n",
                 "syna_tcm_buf_release", (unsigned __int8)qword_31698);
  v12 = qword_31658;
  result = syna_request_managed_device();
  if ( result )
  {
    if ( v12 )
      result = devm_kfree(result, v12);
  }
  else
  {
    result = printk("\0013[error] %s: Invalid managed device\n",
                    "syna_pal_mem_free");
  }
  *(_QWORD *)(a1 + 904) = 0;
  qword_31660 = 0;
  LOBYTE(qword_31698) = 0;
  *(_QWORD *)(a1 + 912) = 0;
  g_cdev_data = 0;
}
