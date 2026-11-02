#ifndef __user
#define __user
#endif

ssize_t tp_pen_only_read(struct file *file, char __user *buffer, size_t count, loff_t *offset)
{
#if defined(__aarch64__)
  register __int64 a2 __asm__("x21") = (__int64)buffer;
  register __int64 a3 __asm__("x20") = (__int64)count;
  register __int64 *a4 __asm__("x19") = (__int64 *)offset;
#else
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;
  __int64 *a4 = (__int64 *)offset;
#endif

  (void)file;
  __int64 result; // x0
  __int64 v5; // x8
  __int64 v8; // x22
  void (__fastcall *v10)(_QWORD); // x8
  __int64 v11; // x0
  int v12; // w0
  char s[10]; // [xsp+8h] [xbp-18h] BYREF

  result = 0;
  v5 = *a4;
  memset(s + 8, 0, 2);
  memset(s, 0, 8);
  if ( !v5 )
  {
#if defined(__aarch64__)
    register __int64 v8 __asm__("x22") = tpd_cdev;
#else
    v8 = tpd_cdev;
#endif
    v10 = *(void (__fastcall **)(_QWORD))(v8 + 3968);
    if ( v10 )
    {
#if defined(__aarch64__)
      __asm__ volatile(
        "mov x0, %x[device]\n"
        "ldur w16, [%x[callback], #-4]\n"
        "movk w17, #0xd79\n"
        "movk w17, #0x73fc, lsl #16\n"
        "cmp w16, w17\n"
        "b.eq 1f\n"
        "brk #0x8228\n"
        "1:\n"
        "blr %x[callback]"
        :
        : [device] "r"(v8), [callback] "r"(v10)
        : "x0", "x16", "x17", "cc", "memory");
#else
      v11 = v8;
#if defined(ZTE_TPD_HOST_TEST)
      v10(v11);
#else
      if ( *((_DWORD *)v10 - 1) != 1945916793 ) {
        __builtin_trap();
      }
      v10(v11);
#endif
#endif
    }
    printk("\x01\x35%s:pen only model: %d.\n", "tp_pen_only_read", *(unsigned __int8 *)(v8 + 1089));
    v12 = snprintf(s, 0xAu, "%u\n", *(unsigned __int8 *)(v8 + 1089));
    result = simple_read_from_buffer(a2, a3, a4, s, v12);
  }
  return result;
}
