struct ztp_device;
typedef int (*tp_smart_cover_write_callback_t)(struct ztp_device *cdev, int value);

ssize_t tp_smart_cover_write(struct file *file, const char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;

  (void)file;
  (void)offset;
  __int64 v3; // x19
  __int64 v4; // x20
  tp_smart_cover_write_callback_t v7; // x8
  _BOOL4 v9; // [xsp+4h] [xbp-Ch] BYREF

  v3 = a3;
  v4 = tpd_cdev;
  v9 = 0;
  if ( (unsigned int)kstrtouint_from_user(a2, a3, 10, &v9) )
  {
    v3 = -22;
  }
  else
  {
    v9 = (v9 != 0);
    printk(unk_328A8, "tp_smart_cover_write", v9);
    v7 = *(tp_smart_cover_write_callback_t *)(v4 + 0xE40);
    if ( v7 )
    {
      /* CFI check removed */
      v7((struct ztp_device *)v4, (int)v9);
    }
  }
  return v3;
}
