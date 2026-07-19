ssize_t get_tp_noise_store(struct file *file, const char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;

  (void)file;
  (void)offset;
  __int64 v4; // x20
  __int64 v5; // x0

  v4 = tpd_cdev;
  mutex_lock(tpd_cdev + 0xc60);
  v5 = *(_QWORD *)(v4 + 0xc58);
  if ( v5 )
  {
    if ( *(_QWORD *)(v5 + 8) )
    {
      vfree(*(_QWORD *)(v5 + 8));
      *(_QWORD *)(*(_QWORD *)(v4 + 0xc58) + 8LL) = 0;
      v5 = *(_QWORD *)(v4 + 0xc58);
    }
    kfree(v5);
    *(_QWORD *)(v4 + 0xc58) = 0;
  }
  *(_DWORD *)(v4 + 0x448) = 0;
  mutex_unlock(v4 + 0xc60);
  return a3;
}
