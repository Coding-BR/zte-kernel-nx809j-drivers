#if defined(__aarch64__)
#define SYNA_REG_X1 __asm__("x1")
#define SYNA_REG_X8 __asm__("x8")
#define SYNA_REG_X9 __asm__("x9")
#define SYNA_KEEP_REGISTER(value) __asm__ volatile("" : "+r"(value))
#else
#define SYNA_REG_X1
#define SYNA_REG_X8
#define SYNA_REG_X9
#define SYNA_KEEP_REGISTER(value) do { (void)(value); } while (0)
#endif

ssize_t syna_sysfs_fw_update_store(struct kobject *kobj,
                                   struct kobj_attribute *attr,
                                   const char *buf, size_t count)
{
  __int64 tcm;
  unsigned int value = 0;
  int ret;
  int (*set_up_app_fw)(struct syna_tcm *);
  register const char *input SYNA_REG_X8;
  register const char *error_format SYNA_REG_X8;
  register const char *error_name SYNA_REG_X1;
  register _QWORD *node SYNA_REG_X9;
  register unsigned long connected SYNA_REG_X9;

  (void)attr;

  node = *(_QWORD **)((char *)kobj + 24);
  SYNA_KEEP_REGISTER(node);
  node = (_QWORD *)node[3];
  SYNA_KEEP_REGISTER(node);
  tcm = node[19];

  connected = *(_BYTE *)(tcm + 1410);
  SYNA_KEEP_REGISTER(connected);
  if ( (connected & 1) == 0 ) {
    printk("\0014[warn ] %s: Device is NOT connected\n",
           "syna_sysfs_fw_update_store");
    return count;
  }

  input = buf;
  SYNA_KEEP_REGISTER(input);
  if ( kstrtouint(input, 10, &value) )
    return -EINVAL;

  ret = syna_dev_do_reflash((struct syna_tcm *)tcm, true);
  if ( ret < 0 ) {
    error_format = "\0013[error] %s: Fail to do reflash\n";
    error_name = "syna_sysfs_fw_update_store";
    SYNA_KEEP_REGISTER(error_format);
    SYNA_KEEP_REGISTER(error_name);
    count = (unsigned int)ret;
    printk(error_format, error_name);
  } else if ( *(_BYTE *)(*(_QWORD *)tcm + 9) == 1 ) {
    set_up_app_fw = *(int (**)(struct syna_tcm *))(tcm + 1720);
    (void)set_up_app_fw((struct syna_tcm *)tcm);
  }

  return (int)count;
}

#undef SYNA_KEEP_REGISTER
#undef SYNA_REG_X9
#undef SYNA_REG_X8
#undef SYNA_REG_X1
