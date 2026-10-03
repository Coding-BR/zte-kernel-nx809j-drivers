int tpd_test_cmd_show(struct ztp_device *cdev, char *a2)
{
  int ret;
#if defined(ZTE_TPD_AARCH64_INPUT)
  register char *saved_a2 asm("x19") = a2;
#else
  char *saved_a2 = a2;
#endif

  (void)cdev;
  printk(unk_34878, "tpd_test_cmd_show");
  ret = snprintf(saved_a2, 0x1000u, "%d,%d,%d,%d", 0, 16, 37, 0);
  asm volatile("" : "+r"(saved_a2), "+r"(ret) : : "memory");
  return ret;
}
