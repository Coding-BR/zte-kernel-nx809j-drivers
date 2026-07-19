#include "defs.h"

extern int syna_sysfs_create_dir(struct syna_tcm *tcm,
                                 struct platform_device *parent);

__int64 sub_1E73C(__int64 a1, __int64 a2)
{
  return syna_sysfs_create_dir((struct syna_tcm *)a1,
                               (struct platform_device *)a2);
}
