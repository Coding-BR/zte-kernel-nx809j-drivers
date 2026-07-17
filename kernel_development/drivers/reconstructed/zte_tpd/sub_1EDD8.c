#include "defs.h"

extern ssize_t syna_sysfs_get_delta_show(struct kobject *kobj,
                                         struct kobj_attribute *attr, char *buf);

__int64 sub_1EDD8(__int64 a1, __int64 a2, __int64 a3)
{
  return syna_sysfs_get_delta_show((struct kobject *)a1,
                                   (struct kobj_attribute *)a2, (char *)a3);
}
