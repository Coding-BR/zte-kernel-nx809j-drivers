ssize_t tp_self_test_write(struct file *file, const char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;

  (void)file;
  (void)offset;
  __int64 v4; // x20
  int (__fastcall *v7)(struct ztp_device *); // x8
  __int64 v8; // x8

  v4 = tpd_cdev;
  if ( (unsigned int)tp_alloc_tp_firmware_data(0x100000) )
  {
    printk("\0015tpd:  alloc tp firmware data fail");
    return -12;
  }
  else
  {
    v7 = *(int (__fastcall **)(struct ztp_device *))(v4 + 0xfa0);
    if ( v7 )
    {
      /* CFI check removed */
      v7((struct ztp_device *)v4);
    }
    v8 = tpd_cdev;
    **(_QWORD **)(tpd_cdev + 0xc58) = *(unsigned int *)(tpd_cdev + 0x448);
    *(_DWORD *)(v8 + 0x448) = 0;
  }
  return a3;
}
