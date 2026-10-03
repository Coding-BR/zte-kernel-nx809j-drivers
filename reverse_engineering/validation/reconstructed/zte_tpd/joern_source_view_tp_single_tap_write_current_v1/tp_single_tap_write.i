/* Analysis-only declarations for partial recovered kernel translation units. */
#ifndef NX809J_JOERN_KERNEL_COMPAT_H
#define NX809J_JOERN_KERNEL_COMPAT_H
#define __user
#define __fastcall
#define __int8 char
#define __int16 short
#define __int32 int
#define __int64 long long
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef unsigned long size_t;
typedef long ssize_t;
typedef long long loff_t;
typedef _Bool bool;
struct file;
struct inode;
struct kobject;
struct device;
struct platform_device;
#endif

#line 1 "tp_single_tap_write.c"
struct ztp_device;
typedef int (*tp_single_tap_write_callback_t)(struct ztp_device *cdev, int value);

ssize_t tp_single_tap_write(struct file *file, const char __user *buffer,
                            size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;

  (void)file;
  (void)offset;
  __int64 v3; // x19
  __int64 v4; // x20
  __int64 v6; // x2
  tp_single_tap_write_callback_t v7; // x8
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
    printk(unk_374F7, "tp_single_tap_write", v6);
    v7 = *(tp_single_tap_write_callback_t *)(v4 + 0xec0);
    if ( v7 )
    {
      /* CFI check removed */
      v7((struct ztp_device *)v4, (int)v9);
    }
  }
  return v3;
}
