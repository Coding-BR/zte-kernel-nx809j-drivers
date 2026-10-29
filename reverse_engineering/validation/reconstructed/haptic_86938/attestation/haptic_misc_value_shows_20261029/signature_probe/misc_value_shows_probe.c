struct device;
struct device_attribute;
typedef signed long ssize_t;
ssize_t probe_state_show(struct device *dev, struct device_attribute *attr, char *buf)
{
    (void)dev;
    (void)attr;
    (void)buf;
    return 0;
}
