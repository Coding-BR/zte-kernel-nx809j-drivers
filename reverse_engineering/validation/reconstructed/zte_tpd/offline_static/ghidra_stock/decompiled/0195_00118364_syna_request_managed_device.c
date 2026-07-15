
undefined8 syna_request_managed_device(void)

{
  if (p_device != 0) {
    return *(undefined8 *)(p_device + 0x70);
  }
  return 0;
}

