#ifndef __user
#define __user
#endif

ssize_t tp_game_partition_write(struct file *file, const char __user *buffer, size_t count, loff_t *offset)
{
#if defined(__aarch64__)
  register const char __user *a2 __asm__("x21") = buffer;
  register size_t a3 __asm__("x19") = count;
  register __int64 v5 __asm__("x20") = tpd_cdev;
#else
  const char __user *a2 = buffer;
  size_t a3 = count;
  __int64 v5 = tpd_cdev;
#endif

  (void)file;
  (void)offset;
  void (__fastcall *v8)(__int64, char *); // x8
  char s[1024]; // [xsp+8h] [xbp-408h] BYREF

  printk("\x01\x35tpd: %s:%lu, %zu.\n", "tp_game_partition_write", 1024UL, (size_t)a3);
  if ( a3 >= 0x401 )
  {
    printk("\x01\x35tpd: %s:Input data too large.\n", "tp_game_partition_write");
    a3 = -22;
  }
  else
  {
    memset(s, 0, sizeof(s));
    _check_object_size(s, a3, 0);
    if ( zte_inline_copy_from_user(s, a2, a3) )
    {
      printk("\x01\x35tpd: %s:Failed to copy data from user space.\n", "tp_game_partition_write");
      a3 = -22;
    }
    else
    {
      v8 = *(void (__fastcall **)(__int64, char *))(v5 + 3920);
#if defined(__aarch64__)
      __asm__ volatile(
        "add x1, sp, #8\n"
        "mov x0, %x[device]\n"
        "ldur w16, [%x[callback], #-4]\n"
        "movk w17, #0x5fb2\n"
        "movk w17, #0x64f2, lsl #16\n"
        "cmp w16, w17\n"
        "b.eq 1f\n"
        "brk #0x8228\n"
        "1:\n"
        "blr %x[callback]"
        :
        : [device] "r"(v5), [callback] "r"(v8)
        : "x0", "x1", "x16", "x17", "cc", "memory");
#else
      if ( *((_DWORD *)v8 - 1) != 1693605810 ) {
#if defined(ZTE_TPD_HOST_TEST)
        __break(0x8228u);
#else
        __builtin_trap();
#endif
      }
      v8(v5, s);
#endif
      snprintf((char *)(v5 + 65), 0x400u, "%s\n", s);
      printk("\x01\x35tpd: %s:Received data: %s.\n", "tp_game_partition_write", (char *)(v5 + 65));
    }
  }
  return a3;
}
