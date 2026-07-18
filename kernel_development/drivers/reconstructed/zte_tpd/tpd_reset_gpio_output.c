typedef void (*tpd_gpio_output_fn)(unsigned char value);

void tpd_reset_gpio_output(unsigned char value)
{
  tpd_gpio_output_fn callback; // x8

  callback = *(tpd_gpio_output_fn *)(tpd_cdev + 3320);
  if ( callback )
  {
    if ( *((_DWORD *)callback - 1) != (unsigned int)-1560483463 )
      __break(0x8228u);
    callback(value & 1);
  }
}
