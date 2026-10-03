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

#line 1 "set_display_rotation.c"
struct ztp_device;
typedef int (*set_display_rotation_callback_t)(struct ztp_device *cdev, int value);

ssize_t set_display_rotation(struct file *file, const char __user *buffer,
                             size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;

  (void)file;
  (void)offset;
  __int64 v4; // x20
  size_t v5; // x19
  __int64 v7; // x2
  set_display_rotation_callback_t v8; // x8
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
  if ( zte_inline_copy_from_user(&v11, (const void __user *)a2, v5) || (unsigned int)kstrtouint((const char *)&v11, 0, &v10) )
  {
    v5 = -22;
  }
  else
  {
    v7 = v10;
    *(_DWORD *)(v4 + 16) = v10;
    printk(unk_31DC4, "set_display_rotation", v7);
    v8 = *(set_display_rotation_callback_t *)(v4 + 0xe90);
    if ( v8 )
    {
      /* CFI check removed */
      v8((struct ztp_device *)v4, (int)v10);
    }
  }
  return v5;
}
