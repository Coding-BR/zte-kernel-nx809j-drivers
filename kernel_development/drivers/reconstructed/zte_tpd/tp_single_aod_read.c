struct ztp_device;
typedef int (*tp_single_aod_read_callback_t)(struct ztp_device *cdev);

ssize_t tp_single_aod_read(struct file *file, char __user *buffer, size_t count,
                           loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;
  __int64 *a4 = (__int64 *)offset;

  (void)file;
  __int64 result; // x0
  __int64 v5; // x8
  __int64 v8; // x22
  tp_single_aod_read_callback_t v10; // x8
  int v12; // w0
  char s[16]; // [xsp+8h] [xbp-18h] BYREF
  __attribute__((unused)) __int16 v14; // [xsp+10h] [xbp-10h]

  result = 0;
  v5 = *a4;
  v14 = 0;
  *(_QWORD *)s = 0;
  if ( !v5 )
  {
    v8 = tpd_cdev;
    v10 = *(tp_single_aod_read_callback_t *)(tpd_cdev + 0xec8);
    if ( v10 )
    {
      /* CFI check removed */
      v10((struct ztp_device *)tpd_cdev);
    }
    printk(unk_34061, "tp_single_aod_read", *(unsigned int *)(v8 + 0x450));
    v12 = snprintf(s, 0xAu, "%u\n", *(_DWORD *)(v8 + 0x450));
    result = simple_read_from_buffer(a2, a3, a4, s, v12);
  }
  return result;
}
