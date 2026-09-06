#if defined(__aarch64__)
__attribute__((naked, used))
ssize_t tp_palm_mode_write(struct file *file, const char __user *buffer,
                           size_t count, loff_t *offset)
{
  __asm__ volatile(
    "paciasp\n"
    "sub sp, sp, #0x30\n"
    "stp x29, x30, [sp, #0x10]\n"
    "stp x20, x19, [sp, #0x20]\n"
    "add x29, sp, #0x10\n"
    "mrs x8, SP_EL0\n"
    "mov x19, x2\n"
    "mov x0, x1\n"
    "ldr x8, [x8, #0x710]\n"
    "add x3, sp, #0x4\n"
    "mov x1, x2\n"
    "mov w2, #0xa\n"
    "str x8, [sp, #0x8]\n"
    "adrp x8, tpd_cdev\n"
    "ldr x20, [x8, :lo12:tpd_cdev]\n"
    "str wzr, [sp, #0x4]\n"
    "bl kstrtouint_from_user\n"
    "cbz w0, .Ltp_palm_mode_write_success\n"
    "mov x19, #-0x16\n"
    ".Ltp_palm_mode_write_check_canary:\n"
    "mrs x8, SP_EL0\n"
    "ldr x8, [x8, #0x710]\n"
    "ldr x9, [sp, #0x8]\n"
    "cmp x8, x9\n"
    "b.ne .Ltp_palm_mode_write_stack_fail\n"
    "mov x0, x19\n"
    "ldp x20, x19, [sp, #0x20]\n"
    "ldp x29, x30, [sp, #0x10]\n"
    "add sp, sp, #0x30\n"
    "autiasp\n"
    "ret\n"
    ".Ltp_palm_mode_write_success:\n"
    "ldr w8, [sp, #0x4]\n"
    "adrp x0, .Ltp_palm_mode_write_log\n"
    "add x0, x0, :lo12:.Ltp_palm_mode_write_log\n"
    "adrp x1, .Ltp_palm_mode_write_name\n"
    "add x1, x1, :lo12:.Ltp_palm_mode_write_name\n"
    "cmp w8, #0\n"
    "cset w2, ne\n"
    "str w2, [sp, #0x4]\n"
    "bl _printk\n"
    "ldr x8, [x20, #0xfb0]\n"
    "cbz x8, .Ltp_palm_mode_write_check_canary\n"
    "ldr w1, [sp, #0x4]\n"
    "mov x0, x20\n"
    "ldur w16, [x8, #-0x4]\n"
    "movk w17, #0xb499\n"
    "movk w17, #0x6af8, lsl #16\n"
    "cmp w16, w17\n"
    "b.eq .Ltp_palm_mode_write_call\n"
    "brk #0x8228\n"
    ".Ltp_palm_mode_write_call:\n"
    "blr x8\n"
    "b .Ltp_palm_mode_write_check_canary\n"
    ".Ltp_palm_mode_write_stack_fail:\n"
    "bl __stack_chk_fail\n"
    ".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
    ".Ltp_palm_mode_write_log:\n"
    ".string \"\\0015tpd: %s val = %d\\n\"\n"
    ".Ltp_palm_mode_write_name:\n"
    ".asciz \"tp_palm_mode_write\"\n"
    ".popsection\n"
  );
}
#else
ssize_t tp_palm_mode_write(struct file *file, const char __user *buffer,
                           size_t count, loff_t *offset)
{
  unsigned int value = 0;
  void (*callback)(void *, bool);

  (void)file;
  (void)offset;
  if (kstrtouint_from_user(buffer, count, 10, &value))
    return -22;
  value = value != 0;
  printk("\x01\x35tpd: %s val = %d\n", "tp_palm_mode_write", value);
  callback = *(void (**)(void *, bool))((char *)(uintptr_t)tpd_cdev + 0xfb0);
  if (callback)
    callback((void *)(uintptr_t)tpd_cdev, value);
  return (ssize_t)count;
}
#endif
