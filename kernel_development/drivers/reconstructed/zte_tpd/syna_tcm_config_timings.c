int syna_tcm_config_timings(
    struct tcm_dev *tcm, struct tcm_timings *timings,
    u32 default_value, u32 fields)
{
  if (!timings && fields == 0xffff)
  {
    printk("\x01" "3[error] %s: Invalid timing settings of product\n",
           "syna_tcm_config_timings");
    return -241;
  }

  if (timings && (fields & 4))
  {
    if (timings->value_08)
      tcm->timing_0210 = timings->value_08;
    default_value = timings->value_0c;
    if (default_value)
      tcm->timing_0214 = default_value;
  }

  if (fields & 1)
  {
    if (timings && timings->value_00)
      default_value = timings->value_00;
    if (default_value)
      tcm->timing_0208 = default_value;
  }

  if (fields & 2)
  {
    if (timings && timings->value_04)
      default_value = timings->value_04;
    if (default_value)
      tcm->command_delay_ms = default_value;
  }

  if (timings && (fields & 8))
  {
    default_value = timings->value_10;
    if (default_value)
      tcm->timing_0218 = default_value;
  }

  if (fields & 0x100)
  {
    if (timings && timings->value_20)
      default_value = timings->value_20;
    if (default_value)
      tcm->timing_01e8 = default_value;
  }

  if (fields & 0x200)
  {
    if (timings && timings->value_24)
      default_value = timings->value_24;
    if (default_value)
      tcm->timing_01ec = default_value;
  }
  return 0;
}
