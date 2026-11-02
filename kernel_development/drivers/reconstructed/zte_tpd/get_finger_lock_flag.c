#if defined(__aarch64__)
__attribute__((naked, used))
ssize_t get_finger_lock_flag(struct file *file, char __user *buffer,
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
    "cbz x8, .Lget_finger_lock_flag_success\n"
    ".Lget_finger_lock_flag_check_canary:\n"
    "mrs x8, SP_EL0\n"
    "ldr x8, [x8, #0x710]\n"
    "ldur x9, [x29, #-0x8]\n"
    "cmp x8, x9\n"
    "b.ne .Lget_finger_lock_flag_stack_fail\n"
    "ldp x20, x19, [sp, #0x40]\n"
    "ldp x22, x21, [sp, #0x30]\n"
    "ldp x29, x30, [sp, #0x20]\n"
    "add sp, sp, #0x50\n"
    "autiasp\n"
    "ret\n"
    ".Lget_finger_lock_flag_success:\n"
    "adrp x8, tpd_cdev\n"
    "adrp x9, .Lget_finger_lock_flag_name\n"
    "add x9, x9, :lo12:.Lget_finger_lock_flag_name\n"
    "ldr x22, [x8, :lo12:tpd_cdev]\n"
    "adrp x0, .Lget_finger_lock_flag_log\n"
    "add x0, x0, :lo12:.Lget_finger_lock_flag_log\n"
    "mov x19, x1\n"
    "mov x1, x9\n"
    "mov x20, x2\n"
    "ldr w8, [x22, #0x474]\n"
    "mov x21, x3\n"
    "mov w2, w8\n"
    "bl _printk\n"
    "ldr w3, [x22, #0x474]\n"
    "adrp x2, .Lget_finger_lock_flag_format\n"
    "add x2, x2, :lo12:.Lget_finger_lock_flag_format\n"
    "add x0, sp, #0x8\n"
    "mov w1, #0xa\n"
    "bl snprintf\n"
    "sxtw x4, w0\n"
    "add x3, sp, #0x8\n"
    "mov x1, x20\n"
    "mov x0, x19\n"
    "mov x2, x21\n"
    "bl simple_read_from_buffer\n"
    "b .Lget_finger_lock_flag_check_canary\n"
    ".Lget_finger_lock_flag_stack_fail:\n"
    "bl __stack_chk_fail\n"
    ".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
    ".Lget_finger_lock_flag_log:\n"
    ".string \"\\0015tpd: %s val:%d.\\n\"\n"
    ".Lget_finger_lock_flag_format:\n"
    ".asciz \"%u\\n\"\n"
    ".Lget_finger_lock_flag_name:\n"
    ".asciz \"get_finger_lock_flag\"\n"
    ".popsection\n"
  );
}
#else
ssize_t get_finger_lock_flag(struct file *file, char __user *buffer,
                             size_t count, loff_t *offset)
{
  char s[32];
  unsigned int value;

  (void)file;
  if (*offset)
    return 0;
  value = *(_DWORD *)(tpd_cdev + 1140);
  printk("\x01\x35tpd: %s val:%d.\n", "get_finger_lock_flag", value);
  (void)snprintf(s, 10, "%u\n", value);
  return simple_read_from_buffer((__int64)buffer, (__int64)count,
                                 (__int64 *)offset,
                                 s, (__int64)strlen(s));
}
#endif
