struct device *syna_request_managed_device(void)
{
  if ( p_device )
    return *(struct device **)(p_device + 112);
  else
    return 0;
}
