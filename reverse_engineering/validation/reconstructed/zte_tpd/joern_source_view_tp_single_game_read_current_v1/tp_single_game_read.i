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

#line 1 "tp_single_game_read.c"
struct ztp_device;
typedef int (*tp_single_game_read_callback_t)(struct ztp_device *cdev);

ssize_t tp_single_game_read(struct file *file, char __user *buffer, size_t count,
                            loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;
  __int64 *a4 = (__int64 *)offset;

  (void)file;
  __int64 result; // x0
  __int64 v5; // x8
  __int64 v8; // x22
  tp_single_game_read_callback_t v10; // x8
  int v12; // w0
  char s[16]; // [xsp+8h] [xbp-18h] BYREF
#if !defined(__aarch64__)
  __attribute__((unused))
#endif
  __int16 v14; // [xsp+10h] [xbp-10h]

  result = 0;
  v5 = *a4;
  v14 = 0;
  *(_QWORD *)s = 0;
  if ( !v5 )
  {
    v8 = tpd_cdev;
    v10 = *(tp_single_game_read_callback_t *)(tpd_cdev + 0xed8);
    if ( v10 )
    {
      /* CFI check removed */
      v10((struct ztp_device *)tpd_cdev);
    }
    printk(unk_34061, "tp_single_game_read", *(unsigned int *)(v8 + 0x454));
    v12 = snprintf(s, 0xAu, "%u\n", *(_DWORD *)(v8 + 0x454));
    result = simple_read_from_buffer(a2, a3, a4, s, v12);
  }
  return result;
}
