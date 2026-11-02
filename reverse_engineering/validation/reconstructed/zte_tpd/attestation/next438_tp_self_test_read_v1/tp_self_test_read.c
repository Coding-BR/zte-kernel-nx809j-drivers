#if defined(__aarch64__)
__attribute__((naked, used))
ssize_t tp_self_test_read(struct file *file, char __user *buffer,
                          size_t count, loff_t *offset)
{
  __asm__ volatile(
    "paciasp\n"
    "stp x29, x30, [sp, #-0x50]!\n"
    "stp x26, x25, [sp, #0x10]\n"
    "stp x24, x23, [sp, #0x20]\n"
    "stp x22, x21, [sp, #0x30]\n"
    "stp x20, x19, [sp, #0x40]\n"
    "mov x29, sp\n"
    "ldr x8, [x3]\n"
    "cbnz x8, .Ltp_self_test_read_eof\n"
    "adrp x24, tpd_cdev\n"
    "mov x19, x3\n"
    "mov x21, x1\n"
    "ldr x22, [x24, :lo12:tpd_cdev]\n"
    "mov x20, x2\n"
    "nop\n"
    "adrp x8, kmalloc_caches+0x60\n"
    "mov w1, #0xdc0\n"
    "mov w2, #0x1000\n"
    "ldr x0, [x8, :lo12:kmalloc_caches+0x60]\n"
    "bl __kmalloc_cache_noprof\n"
    "mov x23, x0\n"
    "cbz x23, .Ltp_self_test_read_alloc_failed\n"
    ".Ltp_self_test_read_offset_check:\n"
    "ldr x8, [x19]\n"
    "cbz x8, .Ltp_self_test_read_callback_entry\n"
    ".Ltp_self_test_read_eof:\n"
    "mov x0, xzr\n"
    ".Ltp_self_test_read_return:\n"
    "ldp x20, x19, [sp, #0x40]\n"
    "ldp x22, x21, [sp, #0x30]\n"
    "ldp x24, x23, [sp, #0x20]\n"
    "ldp x26, x25, [sp, #0x10]\n"
    "ldp x29, x30, [sp], #0x50\n"
    "autiasp\n"
    "ret\n"
    ".Ltp_self_test_read_callback_entry:\n"
    "ldr x8, [x22, #0xf98]\n"
    "cbz x8, .Ltp_self_test_read_no_callback\n"
    "mov x0, x22\n"
    "mov x1, x23\n"
    "ldur w16, [x8, #-0x4]\n"
    "movk w17, #0x5fb2\n"
    "movk w17, #0x64f2, lsl #16\n"
    "cmp w16, w17\n"
    "b.eq .Ltp_self_test_read_call\n"
    "brk #0x8228\n"
    ".Ltp_self_test_read_call:\n"
    "blr x8\n"
    "sxtw x22, w0\n"
    "b .Ltp_self_test_read_copy\n"
    ".Ltp_self_test_read_no_callback:\n"
    "mov x22, xzr\n"
    ".Ltp_self_test_read_copy:\n"
    "mov x0, x21\n"
    "mov x1, x20\n"
    "mov x2, x19\n"
    "mov x3, x23\n"
    "mov x4, x22\n"
    "bl simple_read_from_buffer\n"
    "mov x0, x23\n"
    "bl kfree\n"
    "ldr x19, [x24, :lo12:tpd_cdev]\n"
    "ldr x0, [x19, #0xc58]\n"
    "cbz x0, .Ltp_self_test_read_reset\n"
    "ldr x8, [x0, #0x8]\n"
    "cbz x8, .Ltp_self_test_read_free_container\n"
    "mov x0, x8\n"
    "bl vfree\n"
    "ldr x8, [x19, #0xc58]\n"
    "str xzr, [x8, #0x8]\n"
    "ldr x8, [x19, #0xc58]\n"
    "str xzr, [x8]\n"
    "ldr x0, [x19, #0xc58]\n"
    ".Ltp_self_test_read_free_container:\n"
    "bl kfree\n"
    "str xzr, [x19, #0xc58]\n"
    ".Ltp_self_test_read_reset:\n"
    "mov x0, x22\n"
    "str wzr, [x19, #0x448]\n"
    "b .Ltp_self_test_read_return\n"
    ".Ltp_self_test_read_alloc_retry:\n"
    "adrp x8, tp_self_test_read._alloc_tag\n"
    "add x8, x8, :lo12:tp_self_test_read._alloc_tag\n"
    "mrs x25, SP_EL0\n"
    "ldr x26, [x25, #0x50]\n"
    "str x8, [x25, #0x50]\n"
    "adrp x8, kmalloc_caches+0x60\n"
    "ldr x0, [x8, :lo12:kmalloc_caches+0x60]\n"
    "mov w1, #0xdc0\n"
    "mov w2, #0x1000\n"
    "bl __kmalloc_cache_noprof\n"
    "mov x23, x0\n"
    "str x26, [x25, #0x50]\n"
    "cbnz x23, .Ltp_self_test_read_offset_check\n"
    ".Ltp_self_test_read_alloc_failed:\n"
    "adrp x0, .Ltp_self_test_read_alloc_log\n"
    "add x0, x0, :lo12:.Ltp_self_test_read_alloc_log\n"
    "bl _printk\n"
    "mov x0, #-0xc\n"
    "b .Ltp_self_test_read_return\n"
    ".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
    ".Ltp_self_test_read_alloc_log:\n"
    ".string \"\\0015tpd: alloc data_buf failed\"\n"
    ".popsection\n"
    ".pushsection .codetag.alloc_tags,\"aw\",@progbits\n"
    ".globl tp_self_test_read._alloc_tag\n"
    "tp_self_test_read._alloc_tag:\n"
    ".zero 0xf8\n"
    ".popsection\n"
  );
}
#else
ssize_t tp_self_test_read(struct file *file, char __user *buffer,
                          size_t count, loff_t *offset)
{
  __int64 device;
  char *data_buf;
  int (*self_test)(void *, char *);
  __int64 result;
  void **state;

  (void)file;
  if (*offset)
    return 0;
  device = tpd_cdev;
  data_buf = kmalloc(3520, 4096);
  if (!data_buf) {
    printk("\x01\x35tpd: alloc data_buf failed");
    return -12;
  }
  if (*offset)
    return 0;
  self_test = *(int (**)(void *, char *))(device + 0xf98);
  result = self_test ? self_test((void *)(uintptr_t)device, data_buf) : 0;
  simple_read_from_buffer((__int64)buffer, (__int64)count,
                          (__int64 *)offset, data_buf, result);
  kfree(data_buf);
  state = *(void ***)(device + 0xc58);
  if (state) {
    if (state[1]) {
      vfree(state[1]);
      state[1] = 0;
      state[0] = 0;
    }
    kfree(state);
    *(void **)(device + 0xc58) = 0;
  }
  *(_DWORD *)(device + 0x448) = 0;
  return result;
}
#endif
