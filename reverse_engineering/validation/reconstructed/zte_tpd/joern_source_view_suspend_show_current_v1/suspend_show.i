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

#line 1 "suspend_show.c"
struct ztp_device;
typedef int (*suspend_show_callback_t)(struct ztp_device *cdev);

ssize_t suspend_show(struct file *file, char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;
  __int64 *a4 = (__int64 *)offset;

  (void)file;
  __int64 result; // x0
  __int64 v5; // x8
  __int64 v8; // x22
  suspend_show_callback_t v10; // x8
  int v12; // w0
  char s[32]; // [xsp+8h] [xbp-28h] BYREF
  __int64 v14; // [xsp+10h] [xbp-20h]
  _WORD v15[7]; // [xsp+18h] [xbp-18h] BYREF
  __int64 v16; // [xsp+28h] [xbp-8h]

  result = 0;
  v16 = *(_QWORD *)(_ReadStatusReg(SP_EL0) + 1808);
  v5 = *a4;
  v14 = 0;
  memset(v15, 0, sizeof(v15));
  *(_QWORD *)s = 0;
  if ( !v5 )
  {
    v8 = tpd_cdev;
    v10 = *(suspend_show_callback_t *)(tpd_cdev + 0xe58);
    if ( v10 )
    {
      /* CFI check removed */
      v10((struct ztp_device *)tpd_cdev);
    }
    printk(unk_3A127, "suspend_show", *(unsigned __int8 *)(v8 + 21));
    v12 = snprintf(s, 0x1Eu, "tp suspend is: %u\n", *(unsigned __int8 *)(v8 + 21));
    result = simple_read_from_buffer(a2, a3, a4, s, v12);
  }
  return result;
}
