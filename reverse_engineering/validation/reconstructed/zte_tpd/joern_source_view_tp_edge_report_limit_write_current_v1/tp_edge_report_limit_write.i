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

#line 1 "tp_edge_report_limit_write.c"
ssize_t tp_edge_report_limit_write(struct file *file, const char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;

  (void)file;
  (void)offset;
  __int64 v4; // x21
  size_t v5; // x19
  int tp_algo_item_id; // w0
  int v9; // w8
  __int64 result; // x0
  __int64 v11; // x1
  unsigned int v12; // w8
  unsigned int v13; // w8
  int v14; // w22
  char *v15; // x20
  _BOOL8 v20; // x1
  __int64 v22; // x1
  unsigned __int64 v23; // x22
  char *v24; // x0
  unsigned __int8 v25; // w8
  __int64 v27; // x1
  char v28; // w8
  __int64 v30; // x1
  __int64 v32; // x1
  _BOOL8 v34; // x1
  __int64 v35; // [xsp+0h] [xbp-80h] BYREF
  char *stringp; // [xsp+8h] [xbp-78h] BYREF
  char s[104]; // [xsp+10h] [xbp-70h] BYREF

  v4 = tpd_cdev;
  if ( a3 >= 0x64 )
    v5 = 100;
  else
    v5 = a3;
  *(_QWORD *)s = 0;
  v35 = 0;
  if ( a2 && zte_inline_copy_from_user(s, (const void __user *)a2, v5) )
  {
    printk(unk_33B59);
    result = -22;
  }
  else
  {
    tp_algo_item_id = get_tp_algo_item_id(s);
    if ( (tp_algo_item_id & 0x80000000) == 0 )
    {
      v14 = tp_algo_item_id;
      v15 = strchr(s, 58) + 1;
      stringp = v15;
      printk(unk_31887, v15);
      if ( v14 <= 2 )
      {
        switch ( v14 )
        {
          case 0:
            if ( !(unsigned int)kstrtouint(v15, 10, (char *)&v35 + 4) )
            {
              v34 = HIDWORD(v35) != 0;
              HIDWORD(v35) = HIDWORD(v35) != 0;
              *(_BYTE *)(v4 + 27) = v34;
              printk(unk_37521, v34);
            }
            goto LABEL_19;
          case 1:
            if ( !(unsigned int)kstrtouint(v15, 10, (char *)&v35 + 4) )
            {
              v32 = BYTE4(v35);
              *(_BYTE *)(v4 + 36) = BYTE4(v35);
              printk(unk_39CF4, v32);
            }
            goto LABEL_19;
          case 2:
            if ( !(unsigned int)kstrtouint(v15, 10, (char *)&v35 + 4) )
            {
              v22 = WORD2(v35);
              *(_WORD *)(v4 + 62) = WORD2(v35);
              printk(unk_33421, v22);
            }
            goto LABEL_19;
        }
      }
      else
      {
        if ( v14 <= 4 )
        {
          if ( v14 == 3 )
          {
            if ( !(unsigned int)kstrtouint(v15, 10, (char *)&v35 + 4) )
            {
              v27 = BYTE4(v35);
              *(_BYTE *)(v4 + 38) = BYTE4(v35);
              printk(unk_38CA5, v27);
              v28 = *(_BYTE *)(v4 + 38);
              result = v5;
              *(_BYTE *)(v4 + 39) = v28;
              *(_BYTE *)(v4 + 40) = v28;
              *(_BYTE *)(v4 + 41) = v28;
              *(_BYTE *)(v4 + 42) = v28;
              goto LABEL_20;
            }
          }
          else if ( !(unsigned int)kstrtouint(v15, 10, (char *)&v35 + 4) )
          {
            v20 = HIDWORD(v35) != 0;
            HIDWORD(v35) = HIDWORD(v35) != 0;
            *(_BYTE *)(v4 + 37) = v20;
            printk(unk_380F6, v20);
          }
          goto LABEL_19;
        }
        if ( v14 == 5 )
        {
          if ( !(unsigned int)kstrtouint(v15, 10, (char *)&v35 + 4) )
          {
            v30 = WORD2(v35);
            *(_WORD *)(v4 + 60) = WORD2(v35);
            printk(unk_37521, v30);
          }
          goto LABEL_19;
        }
        if ( v14 == 6 )
        {
          v23 = 0;
          do
          {
            v24 = strsep(&stringp, ",");
            if ( !v24 )
              break;
            if ( !(unsigned int)kstrtouint(v24, 10, (char *)&v35 + 4) )
            {
              v25 = BYTE4(v35);
              *(_BYTE *)(v4 + 52 + v23) = BYTE4(v35);
              printk(unk_3CA2F, (unsigned __int16)v23++, v25);
            }
          }
          while ( v23 <= 3 );
          goto LABEL_19;
        }
      }
      printk(unk_3B681);
LABEL_19:
      result = v5;
      goto LABEL_20;
    }
    v9 = kstrtouint_from_user(a2, v5, 10, &v35);
    result = -22;
    if ( !v9 )
    {
      v11 = (unsigned int)v35;
      if ( (unsigned int)v35 <= 0xA )
      {
        v12 = *(unsigned __int16 *)(v4 + 1090);
        *(_BYTE *)(v4 + 56) = v35;
        if ( (unsigned int)v11 > 5 )
          v13 = ((4294968 * (unsigned __int64)(35 * v12)) >> 32) + (v11 + 65531) * ((33555 * (v12 >> 1)) >> 22);
        else
          v13 = 7 * (unsigned int)v11 * v12 / 0x3E8;
        *(_WORD *)(v4 + 44) = v13;
        *(_WORD *)(v4 + 46) = 0;
        printk(unk_328F9, v11, (unsigned __int16)v13);
        goto LABEL_19;
      }
    }
  }
LABEL_20:
  _ReadStatusReg(SP_EL0);
  return result;
}
