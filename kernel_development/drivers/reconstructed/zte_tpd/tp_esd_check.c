bool tp_esd_check(void)
{
  struct ztp_device *cdev;
  bool (*check)(struct ztp_device *cdev);

  cdev = (struct ztp_device *)(unsigned long)tpd_cdev;
  check = *(bool (**)(struct ztp_device *))((u8 *)cdev + 0xe98);
  if ( !check )
    return false;

  return check(cdev);
}
