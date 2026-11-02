struct ztp_device;
typedef int (*get_rotation_limit_level_callback_t)(struct ztp_device *cdev);

ssize_t get_rotation_limit_level(struct file *file, char __user *buffer,
                                 size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;
  __int64 *a4 = (__int64 *)offset;

  (void)file;
  __int64 result;
  __int64 v5;
  __int64 v8;
  get_rotation_limit_level_callback_t v10;
  int v12;
  char s[16];
  __attribute__((unused)) __int16 v14;
  __attribute__((unused)) __int64 v15;

  result = 0;
  v15 = *(_QWORD *)(_ReadStatusReg(SP_EL0) + 1808);
  v5 = *a4;
  v14 = 0;
  *(_QWORD *)s = 0;
  if ( !v5 )
  {
    v8 = tpd_cdev;
    v10 = *(get_rotation_limit_level_callback_t *)(tpd_cdev + 0xe88);
    if ( v10 )
    {
      /* CFI check removed */
      v10((struct ztp_device *)tpd_cdev);
    }
    printk(unk_3A127, "get_rotation_limit_level", *(unsigned int *)(v8 + 0xc));
    v12 = snprintf(s, 0xa, "%u\n", *(unsigned int *)(v8 + 0xc));
    result = simple_read_from_buffer(a2, a3, a4, s, v12);
  }
  return result;
}
