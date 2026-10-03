#if defined(__aarch64__)
__attribute__((naked, used))
ssize_t tp_self_test_write(struct file *file, const char __user *buffer,
                           size_t count, loff_t *offset)
{
  __asm__ volatile(
    "paciasp\n"
    "stp x29, x30, [sp, #-0x30]!\n"
    "str x21, [sp, #0x10]\n"
    "stp x20, x19, [sp, #0x20]\n"
    "mov x29, sp\n"
    "adrp x21, tpd_cdev\n"
    "mov w0, #0x100000\n"
    "mov x19, x2\n"
    "ldr x20, [x21, :lo12:tpd_cdev]\n"
    "bl tp_alloc_tp_firmware_data\n"
    "cbnz w0, .Ltp_self_test_write_error\n"
    "ldr x8, [x20, #0xfa0]\n"
    "cbz x8, .Ltp_self_test_write_store_result\n"
    "mov x0, x20\n"
    "ldur w16, [x8, #-0x4]\n"
    "movk w17, #0xd79\n"
    "movk w17, #0x73fc, lsl #16\n"
    "cmp w16, w17\n"
    "b.eq .Ltp_self_test_write_call\n"
    "brk #0x8228\n"
    ".Ltp_self_test_write_call:\n"
    "blr x8\n"
    ".Ltp_self_test_write_store_result:\n"
    "ldr x8, [x21, :lo12:tpd_cdev]\n"
    "ldr w9, [x8, #0x448]\n"
    "ldr x10, [x8, #0xc58]\n"
    "str x9, [x10]\n"
    "str wzr, [x8, #0x448]\n"
    ".Ltp_self_test_write_return:\n"
    "mov x0, x19\n"
    "ldp x20, x19, [sp, #0x20]\n"
    "ldr x21, [sp, #0x10]\n"
    "ldp x29, x30, [sp], #0x30\n"
    "autiasp\n"
    "ret\n"
    ".Ltp_self_test_write_error:\n"
    "adrp x0, .Ltp_self_test_write_error_log\n"
    "add x0, x0, :lo12:.Ltp_self_test_write_error_log\n"
    "bl _printk\n"
    "mov x19, #-0xc\n"
    "b .Ltp_self_test_write_return\n"
    ".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
    ".Ltp_self_test_write_error_log:\n"
    ".string \"\\0015tpd:  alloc tp firmware data fail\"\n"
    ".popsection\n"
  );
}
#else
ssize_t tp_self_test_write(struct file *file, const char __user *buffer,
                           size_t count, loff_t *offset)
{
  __int64 device;
  int (*self_test)(void *);

  (void)file;
  (void)buffer;
  (void)offset;
  device = tpd_cdev;
  if (tp_alloc_tp_firmware_data(0x100000)) {
    printk("\x01\x35tpd:  alloc tp firmware data fail");
    return -12;
  }
  self_test = *(int (**)(void *))(device + 0xfa0);
  if (self_test)
    self_test((void *)(uintptr_t)device);
  device = tpd_cdev;
  **(uint64_t **)(device + 0xc58) = *(uint32_t *)(device + 0x448);
  *(uint32_t *)(device + 0x448) = 0;
  return count;
}
#endif
