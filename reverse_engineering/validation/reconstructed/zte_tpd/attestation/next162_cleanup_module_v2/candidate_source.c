#include "defs.h"

extern void syna_dev_module_exit(void);
extern void zte_touch_deinit(void);

void __exit cleanup_module(void)
{
  syna_dev_module_exit();
  zte_touch_deinit();
  platform_driver_unregister(&zte_touch_device_driver);
}
