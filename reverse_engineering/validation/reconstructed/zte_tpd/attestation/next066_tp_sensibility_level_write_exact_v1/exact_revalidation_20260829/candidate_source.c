ssize_t tp_sensibility_level_write(struct file *file, const char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;

  (void)file;
  (void)offset;
  __int64 v4; // x20
  size_t v5; // x19
  int v7; // w2
  void (__fastcall *v8)(__int64, __int64); // x8
  __int64 v9; // x1
  unsigned int v10; // [xsp+4h] [xbp-1Ch] BYREF
  struct __attribute__((packed)) {
    __int64 low;
    __int16 high;
  } v11 = { 0 }; // [xsp+8h] [xbp-18h] BYREF
  __int64 v13; // [xsp+18h] [xbp-8h]

  v13 = *(_QWORD *)(_ReadStatusReg(SP_EL0) + 1808);
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
    v7 = (unsigned __int8)v10;
    *(_BYTE *)(v4 + 64) = v10;
    printk("\x01\x35%s:sensibility level:val %d.\n", "tp_sensibility_level_write", v7);
    v8 = *(void (__fastcall **)(__int64, __int64))(v4 + 3504);
    if ( v8 )
    {
#if defined(__aarch64__)
      __asm__ volatile(
        "ldr w1, [sp, #4]\n"
        "mov x0, %x[device]\n"
        "ldur w16, [%x[callback], #-4]\n"
        "movk w17, #0x3dc1\n"
        "movk w17, #0xe1d6, lsl #16\n"
        "cmp w16, w17\n"
        "b.eq 1f\n"
        "brk #0x8228\n"
        "1:\n"
        "blr %x[callback]"
        :
        : [device] "r"(v4), [callback] "r"(v8)
        : "x0", "x1", "x16", "x17", "cc", "memory");
#else
      v9 = v10;
      if ( *((_DWORD *)v8 - 1) != -506053183 ) {
#if defined(ZTE_TPD_HOST_TEST)
        __break(0x8228u);
#else
        __builtin_trap();
#endif
      }
      v8(v4, v9);
#endif
    }
  }
  _ReadStatusReg(SP_EL0);
  return v5;
}
