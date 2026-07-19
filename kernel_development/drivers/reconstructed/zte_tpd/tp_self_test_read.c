ssize_t tp_self_test_read(struct file *file, char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;
  __int64 *a4 = (__int64 *)offset;

  (void)file;
  __int64 v6; // x22
  __int64 v10; // x23
  int (__fastcall *v12)(struct ztp_device *, char *); // x8
  __int64 v13; // x22
  __int64 v14; // x19
  __int64 v15; // x0

  if ( *a4 )
    return 0;
  v6 = tpd_cdev;
  v10 = _kmalloc_cache_noprof(init_timer_key, 3520, 4096);
  if ( !v10 )
  {
    printk("\0015tpd: alloc data_buf failed");
    return -12;
  }
  if ( *a4 )
    return 0;
  v12 = *(int (__fastcall **)(struct ztp_device *, char *))(v6 + 0xf98);
  if ( v12 )
  {
    /* CFI check removed */
    v13 = v12((struct ztp_device *)v6, (char *)v10);
  }
  else
  {
    v13 = 0;
  }
  simple_read_from_buffer(a2, a3, a4, v10, v13);
  kfree(v10);
  v14 = tpd_cdev;
  v15 = *(_QWORD *)(tpd_cdev + 0xc58);
  if ( v15 )
  {
    if ( *(_QWORD *)(v15 + 8) )
    {
      vfree(*(_QWORD *)(v15 + 8));
      *(_QWORD *)(*(_QWORD *)(v14 + 0xc58) + 8LL) = 0;
      **(_QWORD **)(v14 + 0xc58) = 0;
      v15 = *(_QWORD *)(v14 + 0xc58);
    }
    kfree(v15);
    *(_QWORD *)(v14 + 0xc58) = 0;
  }
  *(_DWORD *)(v14 + 0x448) = 0;
  return v13;
}
