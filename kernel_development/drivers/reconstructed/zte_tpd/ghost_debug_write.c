ssize_t ghost_debug_write(struct file *file, const char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;

  (void)file;
  (void)offset;
  __int64 v3; // x21
  size_t v4; // x19

  char *v8; // x0
  unsigned int v9; // w22
  int v10; // w11
  int v11; // w10
  int v12; // w9
  int v13; // w8
  char v14; // w12
  char v15; // w13
  char v16; // w14
  char v17; // w15
  char v18; // w16
  unsigned int v20; // [xsp+Ch] [xbp-A4h] BYREF
  char *stringp; // [xsp+10h] [xbp-A0h] BYREF
  unsigned short parsed[20]; // [xsp+18h] [xbp-98h], contiguous stock parser area
  _QWORD v27[13]; // [xsp+40h] [xbp-70h] BYREF; stock local_b0 is 104 bytes
  int v28; // [xsp+A0h] [xbp-10h]
  __int64 v29; // [xsp+A8h] [xbp-8h]

  v29 = *(_QWORD *)(_ReadStatusReg(SP_EL0) + 1808);
  v3 = tpd_cdev;
  v28 = 0;
  if ( a3 >= 0x64 )
    v4 = 100;
  else
    v4 = a3;
  memset(v27, 0, sizeof(v27));
  v20 = 0;
  memset(parsed, 0, sizeof(parsed));
  if ( a2 && zte_inline_copy_from_user(v27, (const void __user *)a2, v4) )
  {
    printk(unk_31DF8);
    v4 = -22;
  }
  else
  {
    stringp = (char *)v27;
    v8 = strsep(&stringp, ",");
    if ( v8 )
    {
      v9 = 0;
      do
      {
        if ( !(unsigned int)kstrtouint(v8, 10, &v20) )
          parsed[v9++] = (unsigned short)v20;
        v8 = strsep(&stringp, ",");
      }
      while ( v8 && v9 < 0xA );
      v10 = parsed[5];
      v11 = parsed[6];
      v12 = parsed[7];
      v13 = parsed[8];
      v14 = (char)parsed[4];
      v15 = (char)parsed[3];
      v16 = (char)parsed[2];
      v17 = (char)parsed[1];
      v18 = (char)parsed[0];
    }
    else
    {
      v13 = 0;
      v12 = 0;
      v11 = 0;
      v10 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }
    *(_BYTE *)(v3 + 1169) = v18;
    *(_BYTE *)(v3 + 1170) = v17;
    *(_BYTE *)(v3 + 1171) = v16;
    *(_BYTE *)(v3 + 1172) = v15;
    *(_BYTE *)(v3 + 1173) = v14;
    *(_DWORD *)(v3 + 1176) = v10;
    *(_DWORD *)(v3 + 1180) = v11;
    *(_DWORD *)(v3 + 1184) = v12;
    *(_DWORD *)(v3 + 1188) = v13;
  }
  _ReadStatusReg(SP_EL0);
  return v4;
}
