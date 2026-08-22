#if defined(__aarch64__)
__attribute__((naked, used))
ssize_t tp_palm_mode_read(struct file *file, char __user *buffer,
                          size_t count, loff_t *offset)
{
  __asm__ volatile(
    "paciasp\n"
    "sub sp, sp, #0x50\n"
    "stp x29, x30, [sp, #0x20]\n"
    "stp x22, x21, [sp, #0x30]\n"
    "stp x20, x19, [sp, #0x40]\n"
    "add x29, sp, #0x20\n"
    "mrs x8, SP_EL0\n"
    "mov x0, xzr\n"
    "ldr x8, [x8, #0x710]\n"
    "stur x8, [x29, #-0x8]\n"
    "ldr x8, [x3]\n"
    "strh wzr, [sp, #0x10]\n"
    "str xzr, [sp, #0x8]\n"
    "cbz x8, .Ltp_palm_mode_read_body\n"
    ".Ltp_palm_mode_read_canary:\n"
    "mrs x8, SP_EL0\n"
    "ldr x8, [x8, #0x710]\n"
    "ldur x9, [x29, #-0x8]\n"
    "cmp x8, x9\n"
    "b.ne .Ltp_palm_mode_read_stack_fail\n"
    "ldp x20, x19, [sp, #0x40]\n"
    "ldp x22, x21, [sp, #0x30]\n"
    "ldp x29, x30, [sp, #0x20]\n"
    "add sp, sp, #0x50\n"
    "autiasp\n"
    "ret\n"
    ".Ltp_palm_mode_read_body:\n"
    "adrp x8, tpd_cdev\n"
    "mov x21, x1\n"
    "mov x20, x2\n"
    "ldr x22, [x8, :lo12:tpd_cdev]\n"
    "mov x19, x3\n"
    "ldr x8, [x22, #0xfa8]\n"
    "cbz x8, .Ltp_palm_mode_read_log\n"
    "mov x0, x22\n"
    "ldur w16, [x8, #-0x4]\n"
    "movk w17, #0xd79\n"
    "movk w17, #0x73fc, lsl #16\n"
    "cmp w16, w17\n"
    "b.eq .Ltp_palm_mode_read_call\n"
    "brk #0x8228\n"
    ".Ltp_palm_mode_read_call:\n"
    "blr x8\n"
    ".Ltp_palm_mode_read_log:\n"
    "ldr w2, [x22, #0x478]\n"
    "adrp x0, .Ltp_palm_mode_read_log_format\n"
    "add x0, x0, :lo12:.Ltp_palm_mode_read_log_format\n"
    "adrp x1, .Ltp_palm_mode_read_name\n"
    "add x1, x1, :lo12:.Ltp_palm_mode_read_name\n"
    "bl _printk\n"
    "ldr w3, [x22, #0x478]\n"
    "adrp x2, .Ltp_palm_mode_read_value_format\n"
    "add x2, x2, :lo12:.Ltp_palm_mode_read_value_format\n"
    "add x0, sp, #0x8\n"
    "mov w1, #0xa\n"
    "bl snprintf\n"
    "sxtw x4, w0\n"
    "add x3, sp, #0x8\n"
    "mov x1, x20\n"
    "mov x0, x21\n"
    "mov x2, x19\n"
    "bl simple_read_from_buffer\n"
    "b .Ltp_palm_mode_read_canary\n"
    ".Ltp_palm_mode_read_stack_fail:\n"
    "bl __stack_chk_fail\n"
    ".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
    ".Ltp_palm_mode_read_log_format:\n"
    ".string \"\\0015tpd: %s val: %d.\\n\"\n"
    ".Ltp_palm_mode_read_name:\n"
    ".asciz \"tp_palm_mode_read\"\n"
    ".Ltp_palm_mode_read_value_format:\n"
    ".asciz \"%u\\n\"\n"
    ".popsection\n"
  );
}
#else
ssize_t tp_palm_mode_read(struct file *file, char __user *buffer,
                          size_t count, loff_t *offset)
{
  char value_text[32];
  int (*callback)(void *);
  int value;

  (void)file;
  if (*offset)
    return 0;
  callback = *(int (**)(void *))(tpd_cdev + 0xfa8);
  if (callback)
    callback((void *)(uintptr_t)tpd_cdev);
  value = *(uint32_t *)(tpd_cdev + 0x478);
  printk("\x01\x35tpd: %s val: %d.", "tp_palm_mode_read", value);
  value = snprintf(value_text, 10, "%u\n", value);
  return simple_read_from_buffer((__int64)buffer, (__int64)count,
                                 (__int64 *)offset, value_text, value);
}
#endif
