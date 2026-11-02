typedef long ssize_t;
typedef unsigned long size_t;
struct device;
struct device_attribute;
ssize_t probe_sysfs_store(struct device *dev, struct device_attribute *attr,
                          const char *buf, size_t count)
{
	return count;
}
