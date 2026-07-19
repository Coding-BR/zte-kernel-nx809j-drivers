#include "defs.h"

ssize_t sub_12250(struct file *file, struct kobject *kobj,
                  struct bin_attribute *attr, char *buffer,
                  loff_t offset, size_t count)
{
  return tpd_sysfs_fwimage_show(file, kobj, attr, buffer, offset, count);
}
