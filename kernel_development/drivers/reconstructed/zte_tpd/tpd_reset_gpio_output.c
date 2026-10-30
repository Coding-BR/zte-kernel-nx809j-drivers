typedef void (*tpd_gpio_output_fn)(unsigned char value);

void tpd_reset_gpio_output(unsigned char value)
{
  tpd_gpio_output_fn callback; // x8

  callback = *(tpd_gpio_output_fn *)(tpd_cdev + 0xeb0);
  if ( callback )
    callback(value & 1);
}
