struct ztp_device;
typedef int (*set_rotation_limit_level_callback_t)(struct ztp_device *cdev, int value);

ssize_t set_rotation_limit_level(struct file *file, const char __user *buffer,
                                 size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;

  (void)file;
  (void)offset;
  __int64 v3;
  __int64 v4;
  set_rotation_limit_level_callback_t v6;
  __int64 v7;
  unsigned int v8;

  v3 = a3;
  v4 = tpd_cdev;
  v8 = 0;
  if ( (unsigned int)kstrtouint_from_user(a2, a3, 10, &v8) )
  {
    v3 = -22;
  }
  else
  {
    printk(unk_374F7, "set_rotation_limit_level", v8);
    v6 = *(set_rotation_limit_level_callback_t *)(v4 + 0xe80);
    if ( v6 )
    {
      v7 = v8;
      /* CFI check removed */
      v6((struct ztp_device *)v4, v7);
    }
  }
  return v3;
}
