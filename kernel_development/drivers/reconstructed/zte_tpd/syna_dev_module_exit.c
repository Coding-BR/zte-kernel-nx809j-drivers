#include "defs.h"

extern void syna_hw_interface_exit(void);

void syna_dev_module_exit(void)
{
  platform_driver_unregister(&syna_dev_driver);
  syna_hw_interface_exit();
}
