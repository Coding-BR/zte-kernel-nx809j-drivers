#include "defs.h"

extern ssize_t syna_sysfs_irq_en_store(struct kobject *kobj,
                                       struct kobj_attribute *attr,
                                       const char *buf, size_t count);

__int64 sub_1F428(__int64 a1, __int64 a2, __int64 a3, __int64 a4)
{
  return syna_sysfs_irq_en_store((struct kobject *)a1,
                                 (struct kobj_attribute *)a2,
                                 (const char *)a3, (size_t)a4);
}
