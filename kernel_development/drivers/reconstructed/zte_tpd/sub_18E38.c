#include "defs.h"

extern int syna_cdev_create(struct syna_tcm *tcm,
                            struct platform_device *data);

__int64 sub_18E38(__int64 a1, __int64 a2)
{
  return syna_cdev_create((struct syna_tcm *)a1,
                          (struct platform_device *)a2);
}
