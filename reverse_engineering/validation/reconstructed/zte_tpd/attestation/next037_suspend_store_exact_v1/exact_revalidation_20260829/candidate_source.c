ssize_t __nocfi suspend_store(struct file *file, const char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;

  (void)file;
  (void)offset;
  __int64 v3; // x19
  __int64 v4; // x20
  _BOOL8 v6; // x2
  _DWORD *v7; // x8
  unsigned int v8; // [xsp+4h] [xbp-Ch] BYREF

  v3 = a3;
  v4 = tpd_cdev;
  v8 = 0;
  if ( (unsigned int)kstrtouint_from_user(a2, a3, 10, &v8) )
  {
    v3 = -22;
  }
  else
  {
    v6 = v8 != 0;
    v8 = v8 != 0;
    printk("\0015tpd: %s val %d.\n", "suspend_store", v6);
    mutex_lock(v4 + 3168);
#if defined(__aarch64__)
    {
      unsigned char current_state = *(unsigned __int8 *)(v4 + 22);
      register unsigned int compare_value __asm__("w2");
      __asm__ volatile(
        "ldr %w0, [sp, #0x4]"
        : "=r"(compare_value)
        :
        : "memory");
      if ( current_state == compare_value )
#else
    if ( *(unsigned __int8 *)(v4 + 22) == v8 )
#endif
    {
      printk("\0015tpd: %s tp state don't need change.\n", "suspend_store");
    }
    else
    {
#if defined(__aarch64__)
      v6 = compare_value != 0;
#else
      v6 = v8 != 0;
#endif
      v7 = *(_DWORD **)(v4 + 3680);
      *(_BYTE *)(v4 + 22) = v6;
      if ( v7 )
      {
#if defined(__aarch64__)
        __asm__ volatile(
          "mov x0, %x[device]\n\t"
          "mov w1, wzr\n\t"
          "ldur w16, [%x[callback], #-4]\n\t"
          "movk w17, #0xb490\n\t"
          "movk w17, #0x38d5, lsl #16\n\t"
          "cmp w16, w17\n\t"
          "b.eq 1f\n\t"
          "brk #0x8228\n"
          "1:\n\t"
          "blr %x[callback]"
          :
          : [device] "r"(v4), [callback] "r"(v7)
          : "x0", "x1", "x16", "x17", "cc", "memory");
#else
        if ( *(v7 - 1) != 953529488 ) {
#if defined(ZTE_TPD_HOST_TEST)
          __break(0x8228u);
#else
          __builtin_trap();
#endif
        }
        ((void (__fastcall *)(__int64, _QWORD))v7)(v4, 0);
#endif
      }
    }
#if defined(__aarch64__)
    }
#endif
    mutex_unlock(v4 + 3168);
  }
  return v3;
}
