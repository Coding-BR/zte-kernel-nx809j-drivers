struct ztp_device;
typedef int (*tp_smart_cover_callback_t)(struct ztp_device *cdev);

ssize_t tp_smart_cover_read(struct file *file, char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;
  __int64 *a4 = (__int64 *)offset;

  (void)file;
  __int64 result; // x0
  __int64 v5; // x8
  unsigned int *v8; // x22
  tp_smart_cover_callback_t v10; // x8
  __int64 v11; // x0
  int v12; // w0
  char s[16]; // [xsp+8h] [xbp-18h] BYREF
  __int16 v14; // [xsp+10h] [xbp-10h]

  result = 0;
  v5 = *a4;
  v14 = 0;
  *(_QWORD *)s = 0;
  if ( !v5 )
  {
    v8 = (unsigned int *)(tpd_cdev + 4);
    v10 = *(tp_smart_cover_callback_t *)(tpd_cdev + 0xE38);
    if ( v10 )
    {
      v11 = tpd_cdev;
      /* CFI check removed */
      v10((struct ztp_device *)v11);
    }
    printk(unk_3A127, "tp_smart_cover_read", *v8);
    v12 = snprintf(s, 0xAu, "%u\n", *v8);
    result = simple_read_from_buffer(a2, a3, a4, s, v12);
  }
  return result;
}
