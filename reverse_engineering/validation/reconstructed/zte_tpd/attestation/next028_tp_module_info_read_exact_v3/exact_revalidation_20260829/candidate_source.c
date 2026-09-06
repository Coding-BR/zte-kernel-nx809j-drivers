ssize_t tp_module_info_read(struct file *file, char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;
  __int64 *a4 = (__int64 *)offset;

  (void)file;
  __int64 result; // x0
  __int64 v7; // x22
  int (*v9)(struct ztp_device *); // x8
  __int64 v10; // x0
  unsigned int v11; // w0
  __int64 v12; // x24
  int v13; // w0
  int v14; // w3
  unsigned __int64 v15; // x23
  int v16; // w3
  int v17; // w0
  int v18; // w3
  unsigned __int64 v19; // x23
  int v20; // w3
  _QWORD v21[25]; // [xsp+0h] BYREF

  if ( !*a4 )
  {
    v7 = tpd_cdev;
    memset(v21, 0, 200);
    v9 = *(int (**)(struct ztp_device *))(v7 + 3616);
    if ( v9 )
    {
      v10 = tpd_cdev;
      /* CFI check removed */
      v9((struct ztp_device *)v10);
    }
    v11 = snprintf((char *)v21, 0xC8u, "TP module: %s(0x%x)\n", (const char *)(v7 + 3392), *(_DWORD *)(v7 + 3324));
    if ( v11 <= 0xC8 )
    {
      v12 = v11;
      v13 = snprintf((char *)v21 + v11, 200LL - v11, "IC type : %s\n", (const char *)(v7 + 3352));
      v14 = *(_DWORD *)(v7 + 3340);
      v15 = v12 + v13;
      if ( v14 )
      {
        if ( v15 > 0xC8 )
          goto LABEL_29;
        v15 += snprintf((char *)v21 + v15, 200 - v15, "I2C address: 0x%x\n", v14);
      }
      v16 = *(_DWORD *)(v7 + 3348);
      if ( v16 )
      {
        if ( v15 > 0xC8 )
          goto LABEL_29;
        v15 += snprintf((char *)v21 + v15, 200 - v15, "Spi num: %d\n", v16);
      }
      if ( v15 <= 0xC8 )
      {
        v17 = snprintf((char *)v21 + v15, 200 - v15, "Firmware version : %d\n", *(_DWORD *)(v7 + 3328));
        v18 = *(_DWORD *)(v7 + 3332);
        v19 = v15 + v17;
        if ( v18 )
        {
          if ( v19 > 0xC8 )
            goto LABEL_29;
          v19 += snprintf((char *)v21 + v19, 200 - v19, "Config version:0x%x\n", v18);
        }
        v20 = *(_DWORD *)(v7 + 3336);
        if ( v20 )
        {
          if ( v19 > 0xC8 )
            goto LABEL_29;
          v19 += snprintf((char *)v21 + v19, 200 - v19, "Display version:0x%x\n", v20);
        }
        if ( *(_BYTE *)(v7 + 3432) )
        {
          if ( v19 > 0xC8 )
            goto LABEL_29;
          v19 += snprintf((char *)v21 + v19, 200 - v19, "Chip hard version:%s\n", (const char *)(v7 + 3432));
        }
        if ( !*(_BYTE *)(v7 + 3472) )
        {
LABEL_27:
          result = simple_read_from_buffer(a2, a3, a4, v21, v19);
          goto LABEL_28;
        }
        if ( v19 <= 0xC8 )
        {
          v19 += snprintf((char *)v21 + v19, 200 - v19, "fw update status:%s\n", (const char *)(v7 + 3472));
          goto LABEL_27;
        }
      }
    }
LABEL_29:
  /* Ghidra and the stock AArch64 body both identify this as a non-returning BRK #0x5512. */
#if defined(__aarch64__)
  __asm__ volatile("brk #0x5512");
#else
  __builtin_trap();
#endif
  __builtin_unreachable();
  }
  result = 0;
LABEL_28:
  return result;
}
