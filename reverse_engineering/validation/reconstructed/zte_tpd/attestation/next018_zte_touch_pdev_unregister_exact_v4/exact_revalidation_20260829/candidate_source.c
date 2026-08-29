void zte_touch_pdev_unregister(void)
{
  __int64 v0 = tpd_cdev;
  void (*v1)(struct device *);

  if ( !*(_QWORD *)(v0 + 0xdd0) )
  {
#ifdef ZTE_TPD_HOST_TEST
    v1 = (void (*)(struct device *))off_338;
#else
    register void (*v1_reg)(struct device *) asm("x8");
    register struct device *arg_reg asm("x0");
    __asm__ volatile(
      "mov w8, #0x338\n"
      "mov w0, #0x10\n"
      "ldr x8, [x8]\n"
      : "=r"(v1_reg), "=r"(arg_reg) : : "memory");
    v1_reg(arg_reg);
#endif
#ifdef ZTE_TPD_HOST_TEST
    v1((struct device *)(unsigned long)16);
#endif
    platform_device_unregister(*(struct platform_device **)(v0 + 0xdd0));
  }
}
