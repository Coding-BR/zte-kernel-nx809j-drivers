#if defined(__aarch64__)
__attribute__((naked, used))
ssize_t set_finger_lock_flag(struct file *file, const char __user *buffer,
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
    "cbz w0, .Lset_finger_lock_flag_success\n"
    "mov x19, #-0x16\n"
    ".Lset_finger_lock_flag_check_canary:\n"
    "mrs x8, SP_EL0\n"
    "ldr x8, [x8, #0x710]\n"
    "ldr x9, [sp, #0x8]\n"
    "cmp x8, x9\n"
    "b.ne .Lset_finger_lock_flag_stack_fail\n"
    "mov x0, x19\n"
    "ldp x20, x19, [sp, #0x20]\n"
    "ldp x29, x30, [sp, #0x10]\n"
    "add sp, sp, #0x30\n"
    "autiasp\n"
    "ret\n"
    ".Lset_finger_lock_flag_success:\n"
    "ldr w8, [sp, #0x4]\n"
    "adrp x0, .Lset_finger_lock_flag_log\n"
    "add x0, x0, :lo12:.Lset_finger_lock_flag_log\n"
    "adrp x1, .Lset_finger_lock_flag_name\n"
    "add x1, x1, :lo12:.Lset_finger_lock_flag_name\n"
    "cmp w8, #0\n"
    "cset w2, ne\n"
    "str w2, [sp, #0x4]\n"
    "bl _printk\n"
    "ldr w8, [sp, #0x4]\n"
    "str w8, [x20, #0x474]\n"
    "cbz w8, .Lset_finger_lock_flag_check_canary\n"
    "adrp x8, ufp_tp_ops+0xa0\n"
    "ldrb w8, [x8, :lo12:ufp_tp_ops+0xa0]\n"
    "cmp w8, #0x1\n"
    "b.ne .Lset_finger_lock_flag_no_complete\n"
    "adrp x0, ufp_tp_ops+0x80\n"
    "add x0, x0, :lo12:ufp_tp_ops+0x80\n"
    "bl complete\n"
    ".Lset_finger_lock_flag_no_complete:\n"
    "ldr w8, [x20, #0x458]\n"
    "cbnz w8, .Lset_finger_lock_flag_check_canary\n"
    "mov w0, #0x64\n"
    "bl msleep\n"
    "mov w0, wzr\n"
    "bl report_ufp_uevent\n"
    "b .Lset_finger_lock_flag_check_canary\n"
    ".Lset_finger_lock_flag_stack_fail:\n"
    "bl __stack_chk_fail\n"
    ".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
    ".Lset_finger_lock_flag_log:\n"
    ".string \"\\0015tpd: %s val = %d\\n\"\n"
    ".Lset_finger_lock_flag_name:\n"
    ".asciz \"set_finger_lock_flag\"\n"
    ".popsection\n"
  );
}
#else
ssize_t set_finger_lock_flag(struct file *file, const char __user *buffer,
                             size_t count, loff_t *offset)
{
  unsigned int value = 0;
  __int64 device = tpd_cdev;

  (void)file;
  (void)offset;
  if (kstrtouint_from_user(buffer, count, 10, &value))
    return -22;
  value = value != 0;
  printk("\x01\x35tpd: %s val = %d\n", "set_finger_lock_flag", value);
  *(_DWORD *)(device + 1140) = value;
  if (value) {
    if ((unsigned char)word_314C0 == 1)
      complete(&dword_314A0);
    if (!*(_DWORD *)(device + 1112)) {
      msleep(100);
      report_ufp_uevent(0);
    }
  }
  return count;
}
#endif
