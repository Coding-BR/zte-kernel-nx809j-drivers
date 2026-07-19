#include "defs.h"

ssize_t sub_12364(struct file *file, struct kobject *kobj,
                  struct bin_attribute *attr, char *buffer,
                  loff_t offset, size_t count)
{
  return tpd_sysfs_fwimage_store(file, kobj, attr, buffer, offset, count);
}
