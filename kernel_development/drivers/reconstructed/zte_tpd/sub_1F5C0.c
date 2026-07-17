#include "defs.h"

extern ssize_t syna_sysfs_pwr_store(struct kobject *kobj,
                                    struct kobj_attribute *attr,
                                    const char *buf, size_t count);

__int64 sub_1F5C0(__int64 a1, int a2, char *s1, __int64 a4)
{
  return syna_sysfs_pwr_store((struct kobject *)a1,
                              (struct kobj_attribute *)(long)a2,
                              (const char *)s1, (size_t)a4);
}
