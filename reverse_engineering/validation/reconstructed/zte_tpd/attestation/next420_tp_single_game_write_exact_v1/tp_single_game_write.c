struct ztp_device;
typedef int (*tp_single_game_write_callback_t)(struct ztp_device *cdev,
                                               int value);

ssize_t tp_single_game_write(struct file *file, const char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;

  (void)file;
  (void)offset;
  __int64 v3; // x19
  __int64 v4; // x20
  int v6; // w2
  tp_single_game_write_callback_t v7; // x8
  __int64 v8; // x1
  unsigned int v9; // [xsp+4h] [xbp-Ch] BYREF

  v3 = a3;
  v4 = tpd_cdev;
  v9 = 0;
  if ( (unsigned int)kstrtouint_from_user(a2, a3, 10, &v9) )
  {
    v3 = -22;
  }
  else
  {
    if ( v9 )
      v6 = 5;
    else
      v6 = 0;
    v9 = v6;
    printk(unk_374F7, "tp_single_game_write", v6);
    v7 = *(tp_single_game_write_callback_t *)(v4 + 0xee0);
    if ( v7 )
    {
      v8 = v9;
      /* CFI check removed */
      v7((struct ztp_device *)v4, v8);
    }
  }
  return v3;
}
