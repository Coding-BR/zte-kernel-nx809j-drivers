struct device;
struct device_attribute;
typedef signed long ssize_t;
ssize_t haptic_audio_time_show(struct device *dev, struct device_attribute *attr, char *buf)
{
    (void)dev;
    (void)attr;
    (void)buf;
    return 0;
}
