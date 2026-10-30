struct ztp_device;
typedef int (*headset_state_store_callback_t)(struct ztp_device *cdev, int value);

ssize_t headset_state_store(struct file *file, const char __user *buffer,
                            size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;

  (void)file;
  (void)offset;
  __int64 v4; // x20
  size_t v5; // x19
  headset_state_store_callback_t v8; // x8
  unsigned int v10; // [xsp+4h] [xbp-1Ch] BYREF
  struct __attribute__((packed)) {
    __int64 low;
    __int16 high;
  } v11 = { 0 }; // [xsp+8h] [xbp-18h] BYREF

  v4 = tpd_cdev;
  v10 = 0;
  if ( a3 >= 9 )
    v5 = 9;
  else
    v5 = a3;
  _check_object_size(&v11, v5, 0);
  if ( zte_inline_copy_from_user(&v11, (const void __user *)a2, v5) ||
       (unsigned int)kstrtouint((const char *)&v11, 0, &v10) )
  {
    v5 = -22;
  }
  else
  {
    v10 = (v10 != 0);
    printk(unk_31DA7, "headset_state_store", v10);
    v8 = *(headset_state_store_callback_t *)(v4 + 0xe70);
    if ( v8 )
    {
      /* CFI check removed */
      v8((struct ztp_device *)v4, (int)v10);
    }
  }
  return v5;
}
