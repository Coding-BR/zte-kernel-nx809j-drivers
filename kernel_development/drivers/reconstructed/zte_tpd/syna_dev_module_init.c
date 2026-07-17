#include "defs.h"

int syna_dev_module_init(void)
{
  int result;

  result = syna_hw_interface_init();
  if ( (result & 0x80000000) == 0 )
  {
    msleep(200);
    return _platform_driver_register(&syna_dev_driver, THIS_MODULE);
  }
  return result;
}
