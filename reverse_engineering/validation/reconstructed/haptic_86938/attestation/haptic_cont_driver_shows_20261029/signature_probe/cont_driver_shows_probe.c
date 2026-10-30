struct device;
struct device_attribute;
typedef signed long ssize_t;
ssize_t cont_drv_lvl_show(struct device *dev, struct device_attribute *attr, char *buf)
{
    (void)dev;
    (void)attr;
    (void)buf;
    return 0;
}
ssize_t cont_drv_time_show(struct device *dev, struct device_attribute *attr, char *buf)
{
    (void)dev;
    (void)attr;
    (void)buf;
    return 0;
}
