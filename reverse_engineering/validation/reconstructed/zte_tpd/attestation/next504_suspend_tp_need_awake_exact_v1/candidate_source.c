#include "defs.h"

int suspend_tp_need_awake(void)
{
  struct ztp_device *cdev;
  bool (*check)(struct ztp_device *cdev);

  cdev = (struct ztp_device *)(unsigned long)tpd_cdev;
  check = *(bool (**)(struct ztp_device *))(tpd_cdev + 0xe68);
  if (!check)
    return 0;
  return check(cdev) & 1;
}
