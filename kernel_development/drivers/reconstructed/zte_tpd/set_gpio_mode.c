typedef int (*set_gpio_mode_callback_t)(struct ztp_device *context, u8 mode);

int set_gpio_mode(u8 mode)
{
  set_gpio_mode_callback_t callback;

  callback = *(set_gpio_mode_callback_t *)(tpd_cdev + 0xf58);
  if (!callback)
    return -EIO;
  if (*((u32 *)callback - 1) != (u32)-506053183)
    __break(0x8229u);
  return callback((struct ztp_device *)tpd_cdev, mode);
}
