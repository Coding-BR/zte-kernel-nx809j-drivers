int syna_dev_enter_normal_sensing(long *device)
{
  long *power_state = (long *)device[0x4e];
  long tcm = device[0];
  u32 sleep_mode;
  int retval;

#ifdef ZTE_TPD_HOST_TEST
  sleep_mode = (*(u32 *)((u8 *)power_state + 0xb8) &&
                (*(u8 *)((u8 *)power_state + 0xbc) & 1))
                   ? 0
                   : *(u32 *)((u8 *)tcm + 0x20c);
#else
  asm volatile(
      "ldr w9, [%1, #0xb8]\n\t"
      "cbz w9, 1f\n\t"
      "ldrb w8, [%1, #0xbc]\n\t"
      "tbz w8, #0, 1f\n\t"
      "mov %w0, wzr\n\t"
      "b 2f\n"
      "1:\tldr %w0, [%2, #0x20c]\n"
      "2:"
      : "=&r"(sleep_mode), "+r"(power_state)
      : "r"(tcm)
      : "x9", "cc", "memory");
#endif

  retval = (int)syna_tcm_sleep(tcm, 0, sleep_mode);
  if (retval < 0) {
#ifdef ZTE_TPD_HOST_TEST
    int failure = retval;
#else
    register int failure asm("w19") = retval;
#endif

    printk("\0013[error] %s: Fail to exit deep sleep\n",
           "syna_dev_enter_normal_sensing");
    return failure;
  }

  if (*(u8 *)((u8 *)device + 0x581) == 1) {
    retval = (int)syna_dev_enable_lowpwr_gesture(device, 0, sleep_mode);
    if (retval < 0) {
#ifdef ZTE_TPD_HOST_TEST
      int failure = retval;
#else
      register int failure asm("w19") = retval;
#endif

      printk("\0013[error] %s: Fail to disable low power gesture mode\n",
             "syna_dev_enter_normal_sensing");
      return failure;
    }
    msleep(100);
  }

  return 0;
}
