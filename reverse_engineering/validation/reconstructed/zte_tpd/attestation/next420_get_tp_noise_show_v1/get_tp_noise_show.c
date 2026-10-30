ssize_t get_tp_noise_show(struct file *file, char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;
  __int64 *a4 = (__int64 *)offset;

  (void)file;
  __int64 result; // x0
  __int64 v5; // x8
  __int64 v8; // x22
  int (__fastcall *v10)(struct ztp_device *); // x8
  _QWORD *v11; // x8
  __int64 v12; // x23
  char s[30]; // [xsp+8h] [xbp-28h] BYREF

  result = 0;
  v5 = *a4;
  barrier();
  memset(s + 22, 0, 8);
  barrier();
  memset(s + 8, 0, 16);
  barrier();
  memset(s, 0, 8);
  if ( !v5 )
  {
    v8 = tpd_cdev;
    mutex_lock(tpd_cdev + 0xc60);
    v10 = *(int (__fastcall **)(struct ztp_device *))(v8 + 0xee8);
    if ( v10 )
    {
      /* CFI check removed */
      v10((struct ztp_device *)v8);
    }
    v11 = *(_QWORD **)(v8 + 0xc58);
    if ( v11 )
    {
      v12 = snprintf(s, 0x1Eu, "%zu\n", (size_t)*v11);
      printk("\0015tpd: get tp noise size:%zu.\n",
             (size_t)**(_QWORD **)(v8 + 0xc58));
    }
    else
    {
      v12 = 0;
    }
    mutex_unlock(v8 + 0xc60);
    result = simple_read_from_buffer(a2, a3, a4, s, v12);
  }
  return result;
}
