#if defined(__aarch64__)
__attribute__((naked, used))
ssize_t tp_pen_only_write(struct file *file, const char __user *buffer, size_t count, loff_t *offset)
{
  __asm__ volatile(
    "paciasp\n"
    "sub sp, sp, #0x50\n"
    "stp x29, x30, [sp, #0x20]\n"
    "str x21, [sp, #0x30]\n"
    "stp x20, x19, [sp, #0x40]\n"
    "add x29, sp, #0x20\n"
    "mrs x8, SP_EL0\n"
    "mov x21, x1\n"
    "add x0, sp, #0x8\n"
    "ldr x8, [x8, #0x710]\n"
    "cmp x2, #0x9\n"
    "stur x8, [x29, #-0x8]\n"
    "adrp x8, tpd_cdev\n"
    "ldr x20, [x8, :lo12:tpd_cdev]\n"
    "mov w8, #0x9\n"
    "str wzr, [sp, #0x4]\n"
    "csel x19, x2, x8, lo\n"
    "mov w2, wzr\n"
    "strh wzr, [sp, #0x10]\n"
    "mov x1, x19\n"
    "str xzr, [sp, #0x8]\n"
    "bl __check_object_size\n"
    "add x0, sp, #0x8\n"
    "mov x1, x21\n"
    "mov x2, x19\n"
    "bl _inline_copy_from_user\n"
    "cbnz w0, .Ltp_pen_only_write_error\n"
    "add x0, sp, #0x8\n"
    "add x2, sp, #0x4\n"
    "mov w1, wzr\n"
    "bl kstrtouint\n"
    "cbz w0, .Ltp_pen_only_write_success\n"
    ".Ltp_pen_only_write_error:\n"
    "mov x19, #-0x16\n"
    ".Ltp_pen_only_write_check_canary:\n"
    "mrs x8, SP_EL0\n"
    "ldr x8, [x8, #0x710]\n"
    "ldur x9, [x29, #-0x8]\n"
    "cmp x8, x9\n"
    "b.ne .Ltp_pen_only_write_stack_fail\n"
    "mov x0, x19\n"
    "ldp x20, x19, [sp, #0x40]\n"
    "ldr x21, [sp, #0x30]\n"
    "ldp x29, x30, [sp, #0x20]\n"
    "add sp, sp, #0x50\n"
    "autiasp\n"
    "ret\n"
    ".Ltp_pen_only_write_success:\n"
    "ldr w8, [sp, #0x4]\n"
    "adrp x0, .Ltp_pen_only_write_log_format\n"
    "add x0, x0, :lo12:.Ltp_pen_only_write_log_format\n"
    "adrp x1, .Ltp_pen_only_write_name\n"
    "add x1, x1, :lo12:.Ltp_pen_only_write_name\n"
    "cmp w8, #0\n"
    "cset w2, ne\n"
    "str w2, [sp, #0x4]\n"
    "strb w2, [x20, #0x441]\n"
    "bl _printk\n"
    "ldr x8, [x20, #0xf88]\n"
    "cbz x8, .Ltp_pen_only_write_check_canary\n"
    "ldr w1, [sp, #0x4]\n"
    "mov x0, x20\n"
    "ldur w16, [x8, #-4]\n"
    "movk w17, #0x3dc1\n"
    "movk w17, #0xe1d6, lsl #16\n"
    "cmp w16, w17\n"
    "b.eq .Ltp_pen_only_write_call\n"
    "brk #0x8228\n"
    ".Ltp_pen_only_write_call:\n"
    "blr x8\n"
    "b .Ltp_pen_only_write_check_canary\n"
    ".Ltp_pen_only_write_stack_fail:\n"
    "bl __stack_chk_fail\n"
    ".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
    ".Ltp_pen_only_write_log_format:\n"
    ".string \"\\0015%s:pen only mode:%d.\\n\"\n"
    ".Ltp_pen_only_write_name:\n"
    ".asciz \"tp_pen_only_write\"\n"
    ".popsection\n"
  );
}
#else
ssize_t tp_pen_only_write(struct file *file, const char __user *buffer, size_t count, loff_t *offset)
{
#if defined(__aarch64__)
  register __int64 a2 __asm__("x21") = (__int64)buffer;
  register __int64 a3 __asm__("x2") = (__int64)count;
  register __int64 v4 __asm__("x20") = tpd_cdev;
  register size_t v5 __asm__("x19");
#else
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;
  __int64 v4 = tpd_cdev;
  size_t v5;
#endif

  (void)file;
  (void)offset;
  _BOOL8 v7;
  void (__fastcall *v8)(__int64, _BOOL8);
  _BOOL8 v9;
  struct {
    unsigned int value;
    char buffer[10];
  } local;

  local.value = 0;
  memset(local.buffer + 8, 0, 2);
  memset(local.buffer, 0, 8);
  if ( a3 >= 9 )
    v5 = 9;
  else
    v5 = a3;
  _check_object_size(local.buffer, v5, 0);
  if ( zte_inline_copy_from_user(local.buffer, (const char __user *)a2, v5) ||
       (unsigned int)kstrtouint(local.buffer, 0, &local.value) )
  {
    v5 = -22;
  }
  else
  {
    v7 = local.value != 0;
    local.value = v7;
    *(_BYTE *)(v4 + 1089) = v7;
    printk("\x01\x35%s:pen only mode:%d.\n", "tp_pen_only_write", v7);
    v8 = *(void (__fastcall **)(__int64, _BOOL8))(v4 + 3976);
    if ( v8 )
    {
      v9 = local.value;
#if defined(__aarch64__)
      unsigned int callback_value = (unsigned int)v9;
      __asm__ volatile(
        "mov x0, %x[device]\n"
        "mov w1, %w[value]\n"
        "ldur w16, [%x[callback], #-4]\n"
        "movk w17, #0x3dc1\n"
        "movk w17, #0xe1d6, lsl #16\n"
        "cmp w16, w17\n"
        "b.eq 1f\n"
        "brk #0x8228\n"
        "1:\n"
        "blr %x[callback]"
        :
        : [device] "r"(v4), [callback] "r"(v8), [value] "r"(callback_value)
        : "x0", "x16", "x17", "cc", "memory");
#else
#if defined(ZTE_TPD_HOST_TEST)
      v8(v4, v9);
#else
      if ( *((_DWORD *)v8 - 1) != -506053183 )
        __builtin_trap();
      v8(v4, v9);
#endif
#endif
    }
  }
  return v5;
}
#endif
