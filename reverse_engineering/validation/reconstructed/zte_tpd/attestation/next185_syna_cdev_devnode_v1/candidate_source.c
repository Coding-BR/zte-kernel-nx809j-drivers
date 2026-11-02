char *syna_cdev_devnode(const struct device *device, umode_t *mode)
{
  const unsigned long *device_words;
  unsigned long value;

  if (!mode)
    return 0;
  *mode = 0x600;
  device_words = (const unsigned long *)(const void *)device;
  value = device_words[14];
  if (!value)
    value = device_words[0];
  return kasprintf(3264, "%s", (const char *)value);
}
